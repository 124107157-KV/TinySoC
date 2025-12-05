//------------------------------------------------------------------------------
// Timer MMIO
//------------------------------------------------------------------------------

module timer_mmio (
    input  wire       clk,
    input  wire       rst_n,
    // bus
    input  wire       bus_cs,
    input  wire       bus_we,
    input  wire [7:0] bus_addr,
    input  wire [7:0] bus_wdata,
    output reg  [7:0] bus_rdata,
    // interrupt (unused for now)
    output wire       irq
);

    reg [15:0] counter;
    reg        enable;
    reg        irq_reg;  // unused, but kept for future

    assign irq = irq_reg;

    // Counter
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 16'd0;
        end else begin
            if (bus_cs && bus_we && bus_addr == 8'h92 && bus_wdata[1])
                counter <= 16'd0;
            else if (enable)
                counter <= counter + 16'd1;
        end
    end

    // Control
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            enable <= 1'b0;
            irq_reg <= 1'b0;
        end else begin
            if (bus_cs && bus_we && bus_addr == 8'h92) begin
                enable <= bus_wdata[0];
                // bit1 was handled in counter logic for clear
            end
        end
    end

    // Reads
    always @* begin
        bus_rdata = 8'h00;
        if (bus_cs && !bus_we) begin
            case (bus_addr)
                8'h90: bus_rdata = counter[7:0];
                8'h91: bus_rdata = counter[15:8];
                8'h92: bus_rdata = {6'd0, 1'b0, enable};
                default: bus_rdata = 8'h00;
            endcase
        end
    end

endmodule

