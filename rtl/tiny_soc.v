//------------------------------------------------------------------------------
// TinySoC Top-Level
// - CPU + RAM + UART + Timer + simple bus
//------------------------------------------------------------------------------

module tiny_soc (
    input  wire        clk,
    input  wire        rst_n,
    output wire        uart_tx,
    input  wire        uart_rx,
    output wire [3:0]  gpio  // debug (e.g. ACC[3:0])
);

    // CPU <-> Bus signals
    wire [7:0] cpu_addr;
    wire [7:0] cpu_wdata;
    wire [7:0] cpu_rdata;
    wire       cpu_we;
    wire       cpu_valid;
    wire       cpu_ready;
    wire [7:0] cpu_acc;
    wire [7:0] cpu_pc;

    tiny_cpu u_cpu (
        .clk       (clk),
        .rst_n     (rst_n),
        .bus_addr  (cpu_addr),
        .bus_wdata (cpu_wdata),
        .bus_rdata (cpu_rdata),
        .bus_we    (cpu_we),
        .bus_valid (cpu_valid),
        .bus_ready (cpu_ready),
        .acc_out   (cpu_acc),
        .pc_out    (cpu_pc)
    );

    // Bus <-> RAM
    wire       ram_cs;
    wire       ram_we;
    wire [6:0] ram_addr;
    wire [7:0] ram_wdata;
    wire [7:0] ram_rdata;

    // Bus <-> UART
    wire       uart_cs;
    wire       uart_we;
    wire [7:0] uart_addr;
    wire [7:0] uart_wdata;
    wire [7:0] uart_rdata;

    // Bus <-> TIMER
    wire       timer_cs;
    wire       timer_we;
    wire [7:0] timer_addr;
    wire [7:0] timer_wdata;
    wire [7:0] timer_rdata;

    soc_bus u_bus (
        .clk        (clk),
        .rst_n      (rst_n),
        // master
        .m_addr     (cpu_addr),
        .m_wdata    (cpu_wdata),
        .m_rdata    (cpu_rdata),
        .m_we       (cpu_we),
        .m_valid    (cpu_valid),
        .m_ready    (cpu_ready),
        // RAM
        .ram_cs     (ram_cs),
        .ram_we     (ram_we),
        .ram_addr   (ram_addr),
        .ram_wdata  (ram_wdata),
        .ram_rdata  (ram_rdata),
        // UART
        .uart_cs    (uart_cs),
        .uart_we    (uart_we),
        .uart_addr  (uart_addr),
        .uart_wdata (uart_wdata),
        .uart_rdata (uart_rdata),
        // TIMER
        .timer_cs   (timer_cs),
        .timer_we   (timer_we),
        .timer_addr (timer_addr),
        .timer_wdata(timer_wdata),
        .timer_rdata(timer_rdata)
    );

    // RAM: 128 x 8
    ram_1p_128x8 u_ram (
        .clk   (clk),
        .en    (ram_cs),
        .we    (ram_cs & ram_we),
        .addr  (ram_addr),
        .wdata (ram_wdata),
        .rdata (ram_rdata)
    );

    // UART MMIO
    uart_mmio u_uart (
        .clk       (clk),
        .rst_n     (rst_n),
        .bus_cs    (uart_cs),
        .bus_we    (uart_we),
        .bus_addr  (uart_addr),
        .bus_wdata (uart_wdata),
        .bus_rdata (uart_rdata),
        .uart_tx   (uart_tx),
        .uart_rx   (uart_rx)
    );

    // TIMER MMIO
    wire timer_irq;  // currently unused, but could connect to CPU later

    timer_mmio u_timer (
        .clk       (clk),
        .rst_n     (rst_n),
        .bus_cs    (timer_cs),
        .bus_we    (timer_we),
        .bus_addr  (timer_addr),
        .bus_wdata (timer_wdata),
        .bus_rdata (timer_rdata),
        .irq       (timer_irq)
    );

    // Debug on GPIO: lower bits of ACC
    assign gpio = cpu_acc[3:0];

endmodule

