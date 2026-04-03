`timescale 1ns/1ps

module alu_testbench1();
reg [7:0] a;
reg [7:0] b;
reg [2:0] alu_op;
wire [7:0] result;
integer i;

alu OUT(.a(a), .b(b), .alu_op(alu_op), .result(result));


    
    initial begin
    for (i = 0; i < 20; i = i + 1) begin
        {alu_op, a, b} = i;   
        #100;
    end

end

// Monitor values
initial begin
    $monitor("Time = %0t | a = %d | b = %d | alu_op = %b | result = %d",
              $time, a, b, alu_op, result);
end

endmodule