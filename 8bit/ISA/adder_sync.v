module adder_sync(
	input [0:3] A,B,
	input Cin,
	output reg [0:4]Sum,
	input clk,rst);
	
always @(posedge clk) begin
	if(!rst) begin
		Sum <= 5'b0;
	end
	else begin
		Sum <= A + B + Cin;
	end
	end
endmodule

	
