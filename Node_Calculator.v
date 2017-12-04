module Node_Calculator(clk, reset, value, weight, out);

input clk;
input reset;
input [15:0] value;
input [15:0] weight;

output [15:0] out;

wire [31:0] product;
reg [15:0] sum;

assign out = sum;

always @(posedge clk) begin
	if (reset == 1) begin
		product <= 0;
		sum <= 0;
	end
	else begin
		product <= value * weight;
		sum <= sum + product[23:8];
	end
end

endmodule
