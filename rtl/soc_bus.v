//------------------------------------------------------------------------------
// Simple SoC Bus: 1 master, 3 slaves (RAM, UART, TIMER)
//------------------------------------------------------------------------------

module soc_bus (
    input  wire       clk,
    input  wire       rst_n,

    // Master side (CPU)
    input  wire [7:0] m_addr,
    input  wire [7:0] m_wdata,
    output reg  [7:0] m_rdata,
    input  wire       m_we,
    input  wire       m_valid,
    output wire       m_ready,

    // RAM
    output wire       ram_cs,
    output wire       ram_we,
    output wire [6:0] ram_addr,
    output wire [7:0] ram_wdata,
    input  wire [7:0] ram_rdata,

    // UART
    output wire       uart_cs,
    output wire       uart_we,
    output wire [7:0] uart_addr,
    output wire [7:0] uart_wdata,
    input  wire [7:0] uart_rdata,

    // TIMER
    output wire       timer_cs,
    output wire       timer_we,
    output wire [7:0] timer_addr,
    output wire [7:0] timer_wdata,
    input  wire [7:0] timer_rdata
);

    // Always-ready bus for now
    assign m_ready = 1'b1;

    // Chip-selects based on address range
    assign ram_cs   = m_valid & (m_addr < 8'h80);
    assign uart_cs  = m_valid & (m_addr >= 8'h80 && m_addr < 8'h90);
    assign timer_cs = m_valid & (m_addr >= 8'h90 && m_addr < 8'hA0);

    // RAM interface
    assign ram_we    = ram_cs & m_we;
    assign ram_addr  = m_addr[6:0];
    assign ram_wdata = m_wdata;

    // UART interface
    assign uart_we    = uart_cs & m_we;
    assign uart_addr  = m_addr;
    assign uart_wdata = m_wdata;

    // TIMER interface
    assign timer_we    = timer_cs & m_we;
    assign timer_addr  = m_addr;
    assign timer_wdata = m_wdata;

    // Read mux
    always @* begin
        if (ram_cs)
            m_rdata = ram_rdata;
        else if (uart_cs)
            m_rdata = uart_rdata;
        else if (timer_cs)
            m_rdata = timer_rdata;
        else
            m_rdata = 8'h00;
    end

endmodule

