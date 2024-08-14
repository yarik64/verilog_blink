// top.v
module top(
	input CLK,

	output DS_C,
	output DS_EN1, DS_EN2, DS_EN3, DS_EN4
);

	assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = 4'b1111;
	blink  blink(.clk(CLK), .clk2(DS_C));

endmodule
