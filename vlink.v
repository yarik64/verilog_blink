// vlink.v

module vlink(
	input  clk,
	output data
);
assign data = q;
reg [9:0]cnt;
reg q;

always @(posedge clk) begin
	cnt  <= (cnt == 10) ?  0 : cnt+1;
	q    <= (cnt ==  0) ? ~q : q;
end

endmodule
