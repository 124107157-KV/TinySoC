//------------------------------------------------------------------------------
// Simple UART Receiver (8N1, naive sampling, lint-clean)
// - Single clocked always block (no latches, no mixed assigns)
//------------------------------------------------------------------------------

module uart_rx #(
    parameter CLK_DIV = 16  // clock cycles per bit (use small for sim)
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire       rx,
    output reg  [7:0] rx_data,
    output reg        rx_ready
);

    // State encoding
    localparam ST_IDLE  = 2'b00;
    localparam ST_START = 2'b01;
    localparam ST_DATA  = 2'b10;
    localparam ST_STOP  = 2'b11;

    reg [1:0]  state;
    reg [15:0] clk_cnt;   // bit-time counter
    reg [2:0]  bit_cnt;   // counts 0..7 data bits
    reg [7:0]  shifter;   // shift register

    wire tick = (clk_cnt == (CLK_DIV - 1));

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= ST_IDLE;
            clk_cnt  <= 16'd0;
            bit_cnt  <= 3'd0;
            shifter  <= 8'd0;
            rx_data  <= 8'd0;
            rx_ready <= 1'b0;
        end else begin
            // default each cycle
            rx_ready <= 1'b0;

            case (state)
                //--------------------------------------
                // IDLE: wait for start bit (rx = 0)
                //--------------------------------------
                ST_IDLE: begin
                    clk_cnt <= 16'd0;
                    bit_cnt <= 3'd0;
                    if (!rx) begin
                        // detected start bit
                        state   <= ST_START;
                        clk_cnt <= 16'd0;
                    end
                end

                //--------------------------------------
                // START: wait one bit-time, then go DATA
                //--------------------------------------
                ST_START: begin
                    if (tick) begin
                        clk_cnt <= 16'd0;
                        state   <= ST_DATA;
                        bit_cnt <= 3'd0;
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end

                //--------------------------------------
                // DATA: sample 8 data bits
                //--------------------------------------
                ST_DATA: begin
                    if (tick) begin
                        clk_cnt <= 16'd0;
                        // shift in LSB-first
                        shifter <= {rx, shifter[7:1]};
                        if (bit_cnt == 3'd7) begin
                            state   <= ST_STOP;
                        end else begin
                            bit_cnt <= bit_cnt + 3'd1;
                        end
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end

                //--------------------------------------
                // STOP: wait one bit-time, latch byte, assert ready
                //--------------------------------------
                ST_STOP: begin
                    if (tick) begin
                        clk_cnt  <= 16'd0;
                        state    <= ST_IDLE;
                        rx_data  <= shifter;
                        rx_ready <= 1'b1;
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end

                default: begin
                    state   <= ST_IDLE;
                    clk_cnt <= 16'd0;
                    bit_cnt <= 3'd0;
                end
            endcase
        end
    end

endmodule

