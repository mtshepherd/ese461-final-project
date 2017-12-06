	`timescale 1ns / 1ps

module shiftram_tb();

	reg clk;
	reg rst;
	reg en;

	wire data_out;

	shiftram DUT(
		.clk(clk),
		.rst(rst),
		.en(en),
		.data_out(data_out)
		);

	initial
	begin

	$dumpfile("shiftram.vcd");
	$dumpvars(0, shiftram_tb);

	rst = 0;
	clk = 0;

	#55

	rst = 1;

	#55

	en = 1;

	#100

	$finish;

	end

	always begin
		#10 clk = !clk;
	end

endmodule
