//------------------------------------------------------------------------------
// Tiny ROM: hard-coded program
//------------------------------------------------------------------------------

module tiny_rom (
    input  wire [7:0] addr,
    output reg  [7:0] data
);
    always @* begin
        case (addr)
            8'd0: data = 8'h15; // LDI 5
            8'd1: data = 8'h21; // ADDI 1 (ACC = 6) just demo
            8'd2: data = 8'h31; // SUBI 1
            8'd3: data = 8'h53; // JZ  3 (if ACC==0, jump to self)
            8'd4: data = 8'h68; // OUT imm=8 -> UART TX
            8'd5: data = 8'h00; // NOP
            default: data = 8'h00;
        endcase
    end
endmodule

