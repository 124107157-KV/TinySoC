//------------------------------------------------------------------------------
// 128 x 8 Single-Port RAM (flop-based)
//------------------------------------------------------------------------------

module ram_1p_128x8 (
    input  wire       clk,
    input  wire       en,
    input  wire       we,
    input  wire [6:0] addr,
    input  wire [7:0] wdata,
    output reg  [7:0] rdata
);
    reg [7:0] mem[0:127];

    integer i;
    initial begin
        for (i = 0; i < 128; i = i + 1)
            mem[i] = 8'd0;
    end

    always @(posedge clk) begin
        if (en && we) begin
            mem[addr] <= wdata;
        end
    end

    always @* begin
        if (en)
            rdata = mem[addr];
        else
            rdata = 8'd0;
    end

endmodule

