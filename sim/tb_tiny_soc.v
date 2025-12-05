//------------------------------------------------------------------------------
// Testbench for TinySoC
//------------------------------------------------------------------------------

`timescale 1ns/1ps

module tb_tiny_soc;

    reg clk;
    reg rst_n;
    wire uart_tx;
    wire uart_rx;
    wire [3:0] gpio;

    // For now, loopback RX from TX
    assign uart_rx = uart_tx;

    tiny_soc dut (
        .clk    (clk),
        .rst_n  (rst_n),
        .uart_tx(uart_tx),
        .uart_rx(uart_rx),
        .gpio   (gpio)
    );

    // Clock generation
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk; // 100 MHz
    end

    // Reset
    initial begin
        rst_n = 1'b0;
        #100;
        rst_n = 1'b1;
    end

    // Monitor
    initial begin
        $dumpfile("tiny_soc.vcd");
        $dumpvars(0, tb_tiny_soc);
        #50000; // run for some time
        $finish;
    end

endmodule

