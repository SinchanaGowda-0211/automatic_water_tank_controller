module water_tank_controller (
    input  high_sensor,
    input  low_sensor,
    output reg pump
);

always @(*) begin
    if (high_sensor == 1'b0 && low_sensor == 1'b1)
        pump = 1'b1;
    else
        pump = 1'b0;
end

endmodule
