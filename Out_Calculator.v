module Out_Calculator(clk, reset, value, weight, out);

input clk;
input reset;
input signed [15:0] value;
input signed [15:0] weight;

output signed [15:0] out;

reg signed [31:0] product;
reg signed [32:0] sum;

assign out = sum[23:8];

always @(posedge clk) begin
	if (!reset) begin
		product <= 0;
		sum <= 0;
	end
	else begin
		product <= value * weight;
		sum <= sum + product;
	end
end

endmodule
