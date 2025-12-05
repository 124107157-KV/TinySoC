//------------------------------------------------------------------------------
// UART Transmitter (8N1)
//------------------------------------------------------------------------------

module uart_tx #(
    parameter CLK_DIV = 16  // number of clk cycles per bit (for sim use small)
)(
    input  wire clk,
    input  wire rst_n,
    input  wire tx_start,
    input  wire [7:0] tx_data,
    output reg  tx,
    output reg  busy
);

    localparam ST_IDLE  = 2'b00;
    localparam ST_START = 2'b01;
    localparam ST_DATA  = 2'b10;
    localparam ST_STOP  = 2'b11;

    reg [1:0] state;
    reg [1:0] state_next;

    reg [7:0] shifter;
    reg [2:0] bit_cnt;
    reg [15:0] clk_cnt;  // supports big divs
    reg        tx_next;
    reg        busy_next;

    // Tick when clk_cnt reaches CLK_DIV-1
    wire tick = (clk_cnt == (CLK_DIV-1));

    // Sequential
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state   <= ST_IDLE;
            shifter <= 8'd0;
            bit_cnt <= 3'd0;
            clk_cnt <= 16'd0;
            tx      <= 1'b1;  // idle high
            busy    <= 1'b0;
        end else begin
            state   <= state_next;
            tx      <= tx_next;
            busy    <= busy_next;

            if (state != ST_IDLE) begin
                if (tick)
                    clk_cnt <= 16'd0;
                else
                    clk_cnt <= clk_cnt + 16'd1;
            end else begin
                clk_cnt <= 16'd0;
            end

            if (state == ST_IDLE && tx_start && !busy) begin
                shifter <= tx_data;
                bit_cnt <= 3'd0;
            end else if (state == ST_DATA && tick) begin
                shifter <= {1'b0, shifter[7:1]};
                bit_cnt <= bit_cnt + 3'd1;
            end
        end
    end

    // Combinational
    always @* begin
        state_next = state;
        tx_next    = tx;
        busy_next  = busy;

        case (state)
            ST_IDLE: begin
                tx_next   = 1'b1;
                busy_next = 1'b0;
                if (tx_start && !busy) begin
                    state_next = ST_START;
                    busy_next  = 1'b1;
                end
            end

            ST_START: begin
                tx_next = 1'b0; // start bit
                if (tick) begin
                    state_next = ST_DATA;
                end
            end

            ST_DATA: begin
                tx_next = shifter[0];
                if (tick && bit_cnt == 3'd7) begin
                    state_next = ST_STOP;
                end
            end

            ST_STOP: begin
                tx_next = 1'b1;
                if (tick) begin
                    state_next = ST_IDLE;
                    busy_next  = 1'b0;
                end
            end

            default: begin
                state_next = ST_IDLE;
            end
        endcase
    end

endmodule

