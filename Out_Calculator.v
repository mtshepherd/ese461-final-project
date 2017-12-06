module Out_Calculator(clk, reset, value, weight, out);

input clk;
input reset;
input [15:0] value;
input [15:0] weight;

output [15:0] out;

reg [31:0] product;
reg [31:0] sum;

assign out = sum[23:8];

always @(posedge clk) begin
	if (reset == 1) begin
		product <= 0;
		sum <= 0;
	end
	else begin
		product <= value * weight;
		sum <= sum + product;
	end
end

endmodule
