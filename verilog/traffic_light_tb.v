`timescale 1ns / 1ps

module traffic_light_tb;

    reg clk;
    reg rst;
    wire [2:0] lights;

    Traffic_Light_Controller uut (
        .clk(clk),
        .rst(rst),
        .lights(lights)
    );

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        #5 rst = 0;

        // Run simulation for a sufficient amount of time
        #1000 $finish;
    end

    always #1 clk = ~clk; // Generate clock signal

    initial begin
        $monitor("Time: %0d, Lights: %b", $time, lights);
    end

endmodule