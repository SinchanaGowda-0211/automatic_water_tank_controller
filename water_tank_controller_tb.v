`timescale 1ns/1ps

module water_tank_controller_tb;

    reg high_sensor;
    reg low_sensor;
    wire pump;

    // Instantiate the design under test
    water_tank_controller uut (
        .high_sensor(high_sensor),
        .low_sensor(low_sensor),
        .pump(pump)
    );

    initial begin

        // Create waveform file
        $dumpfile("water_tank_controller.vcd");
        $dumpvars(0, water_tank_controller_tb);

        // Test 1: Both sensors LOW
        high_sensor = 1'b0;
        low_sensor  = 1'b0;
        #10;

        // Test 2: Water below low-level sensor
        high_sensor = 1'b0;
        low_sensor  = 1'b1;
        #10;

        // Test 3: High-level sensor active
        high_sensor = 1'b1;
        low_sensor  = 1'b0;
        #10;

        // Test 4: Both sensors HIGH
        high_sensor = 1'b1;
        low_sensor  = 1'b1;
        #10;

        $finish;
    end

endmodule
