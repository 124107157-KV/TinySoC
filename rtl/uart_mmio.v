//------------------------------------------------------------------------------
// UART MMIO Wrapper
//------------------------------------------------------------------------------

module uart_mmio #(
    parameter CLK_DIV = 16
)(
    input  wire       clk,
    input  wire       rst_n,
    // bus interface
    input  wire       bus_cs,
    input  wire       bus_we,
    input  wire [7:0] bus_addr,
    input  wire [7:0] bus_wdata,
    output reg  [7:0] bus_rdata,
    // pins
    output wire       uart_tx,
    input  wire       uart_rx
);

    wire [7:0] rx_data;
    wire       rx_ready;
    reg        rx_ready_latch;

    reg        tx_start;
    reg [7:0]  tx_data;
    wire       tx_busy;

    // TX
    uart_tx #(
        .CLK_DIV(CLK_DIV)
    ) u_tx (
        .clk      (clk),
        .rst_n    (rst_n),
        .tx_start (tx_start),
        .tx_data  (tx_data),
        .tx       (uart_tx),
        .busy     (tx_busy)
    );

    // RX
    uart_rx #(
        .CLK_DIV(CLK_DIV)
    ) u_rx (
        .clk     (clk),
        .rst_n   (rst_n),
        .rx      (uart_rx),
        .rx_data (rx_data),
        .rx_ready(rx_ready)
    );

    // RX ready latch: clears on read
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_ready_latch <= 1'b0;
        end else begin
            if (rx_ready)
                rx_ready_latch <= 1'b1;
            if (bus_cs && !bus_we && bus_addr == 8'h81)
                rx_ready_latch <= 1'b0;
        end
    end

    // TX start
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_start <= 1'b0;
            tx_data  <= 8'd0;
        end else begin
            tx_start <= 1'b0;
            if (bus_cs && bus_we && bus_addr == 8'h80 && !tx_busy) begin
                tx_data  <= bus_wdata;
                tx_start <= 1'b1;
            end
        end
    end

    // Reads
    always @* begin
        bus_rdata = 8'h00;
        if (bus_cs && !bus_we) begin
            case (bus_addr)
                8'h81: bus_rdata = rx_data;
                8'h82: bus_rdata = {6'd0, rx_ready_latch, tx_busy};
                default: bus_rdata = 8'h00;
            endcase
        end
    end

endmodule

