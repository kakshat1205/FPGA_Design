module square(input clk,rst,
	output [0:4] out);
	
wire [0:4] out1;
adder_sync AS1(.clk(clk),
					.A(4'b0010),
					.B(out1),
					.rst(rst),
					.Cin(1'b0),
					.Sum(out1)
					);

adder_sync AS2(.clk(clk),
					.A(out1),
					.B(out),
					.rst(rst),
					.Cin(1'b0),
					.Sum(out)
					);

endmodule