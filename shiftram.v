module shiftram (
	
	clk,
	rst,
	en,

	data_out,

);

	input clk;
	input rst;
	input en;

	output reg [15:0] data_out;

	reg [15:0] dataD;

	reg [17:0] addr;

	reg [15:0] mem [0:156799]; // WHY

	initial begin

		mem[0] = 16'h00000000;
		mem[1] = 16'h11111111;
		mem[2] = 16'h10101010;
		mem[3] = 16'h01010101;

	end

	always@(posedge clk) begin
	
		if (!rst) begin

			addr <= 0;
			dataD <= 0;
			data_out <= 0;

		end else if (en) begin

			addr <= addr + 1;
			data_out <= dataD;
			
		end

	end

	always@(*) begin

		dataD = mem[addr];

	end


endmodule
