//------------------------------------------------------------------------------
// Tiny 8-bit Accumulator CPU with Simple Bus Interface
//------------------------------------------------------------------------------

module tiny_cpu (
    input  wire       clk,
    input  wire       rst_n,

    // Simple memory-mapped bus master
    output reg  [7:0] bus_addr,
    output reg  [7:0] bus_wdata,
    input  wire [7:0] bus_rdata,
    output reg        bus_we,      // 1 = write, 0 = read
    output reg        bus_valid,
    input  wire       bus_ready,

    // Debug
    output wire [7:0] acc_out,
    output wire [7:0] pc_out
);

    // Registers
    reg [7:0] acc;
    reg [7:0] pc;

    wire [7:0] instr;

    // ROM
    tiny_rom u_rom (
        .addr (pc),
        .data (instr)
    );

    // FSM states
    localparam ST_FETCH = 2'b00;
    localparam ST_EXEC  = 2'b01;
    localparam ST_WAIT  = 2'b10;

    reg [1:0] state, state_next;
    reg [7:0] acc_next;
    reg [7:0] pc_next;

    // decode fields
    wire [3:0] opcode = instr[7:4];
    wire [3:0] imm    = instr[3:0];

    // address map function (combinational)
    function [7:0] map_addr;
        input [3:0] imm4;
        begin
            // example map:
            // 0x0-0x7  -> RAM 0x00-0x07
            // 0x8      -> UART TX (0x80)
            // 0x9      -> UART STATUS (0x82)
            // 0xA      -> TIMER control (0x92)
            case (imm4)
                4'h0: map_addr = 8'h00;
                4'h1: map_addr = 8'h01;
                4'h2: map_addr = 8'h02;
                4'h3: map_addr = 8'h03;
                4'h4: map_addr = 8'h04;
                4'h5: map_addr = 8'h05;
                4'h6: map_addr = 8'h06;
                4'h7: map_addr = 8'h07;
                4'h8: map_addr = 8'h80; // UART TX
                4'h9: map_addr = 8'h82; // UART status
                4'hA: map_addr = 8'h92; // TIMER control
                default: map_addr = {4'b0000, imm4};
            endcase
        end
    endfunction

    // Combinational next-state logic
    always @* begin
        // defaults
        acc_next   = acc;
        pc_next    = pc + 8'd1;
        state_next = state;

        bus_addr   = 8'd0;
        bus_wdata  = 8'd0;
        bus_we     = 1'b0;
        bus_valid  = 1'b0;

        case (state)
            ST_FETCH: begin
                // instruction is available on instr
                state_next = ST_EXEC;
            end

            ST_EXEC: begin
                case (opcode)
                    4'h0: begin
                        // NOP
                    end

                    4'h1: begin
                        // LDI imm
                        acc_next = {4'd0, imm};
                    end

                    4'h2: begin
                        // ADDI imm
                        acc_next = acc + {4'd0, imm};
                    end

                    4'h3: begin
                        // SUBI imm
                        acc_next = acc - {4'd0, imm};
                    end

                    4'h4: begin
                        // JMP imm
                        pc_next = {4'd0, imm};
                    end

                    4'h5: begin
                        // JZ imm
                        if (acc == 8'd0)
                            pc_next = {4'd0, imm};
                    end

                    4'h6: begin
                        // OUT imm -> write ACC to mapped addr
                        bus_addr   = map_addr(imm);
                        bus_wdata  = acc;
                        bus_we     = 1'b1;
                        bus_valid  = 1'b1;
                        state_next = ST_WAIT;
                    end

                    4'h7: begin
                        // LOAD imm -> read from mapped addr into ACC
                        bus_addr   = map_addr(imm);
                        bus_we     = 1'b0;
                        bus_valid  = 1'b1;
                        state_next = ST_WAIT;
                    end

                    default: begin
                        // NOP
                    end
                endcase
            end

            ST_WAIT: begin
                // Wait for bus_ready (assumed always 1, but generic)
                if (bus_ready) begin
                    if (opcode == 4'h7) begin
                        // LOAD completes
                        acc_next = bus_rdata;
                    end
                    state_next = ST_FETCH;
                end
            end

            default: begin
                state_next = ST_FETCH;
            end
        endcase
    end

    // Sequential update
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc   <= 8'd0;
            pc    <= 8'd0;
            state <= ST_FETCH;
        end else begin
            acc   <= acc_next;
            pc    <= pc_next;
            state <= state_next;
        end
    end

    assign acc_out = acc;
    assign pc_out  = pc;

endmodule

