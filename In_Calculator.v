module In_Calculator(clk, reset, values, weights, out);
    input clk;
    input reset;
    input [12543:0] values;
    input [12543:0] weights;

    output [15:0] out;

    wire signed [15:0] inputs [0:783];
    wire signed [15:0] multipliers [0:783];

    reg signed [31:0] products [0:783];
    reg signed [41:0] sums1 [0:391];
    reg signed [41:0] sums2 [0:195];
    reg signed [41:0] sums3 [0:97];
    reg signed [41:0] sums4 [0:48];
    reg signed [41:0] sums5 [0:24];
    reg signed [41:0] sums6 [0:12];
    reg signed [41:0] sums7 [0:6];
    reg signed [41:0] sums8 [0:3];
    reg signed [41:0] sums9 [0:1];
    reg signed [31:0] outReg;

    integer i;

generate
    genvar g;
    for(g = 0; g < 784; g=g+1) begin:m
        assign inputs[g] = values[((g*16)+15):(g*16)];
        assign multipliers[g] = weights[((g*16)+15):(g*16)];
    end
endgenerate

assign out = outReg[23:8];

always @(posedge clk) begin
if (reset == 1) begin
    for(i = 0; i < 784; i=i+1) begin
        products[i] <= inputs[i] * multipliers[i];
    end
    for(i = 0; i < 392; i=i+1) begin
        sums1[i] <= { {10{products[i*2][31]}}, products[i*2] } + { {10{products[(i*2)+1][31]}}, products[(i*2)+1] };
    end
    for(i = 0; i < 196; i=i+1) begin
        sums2[i] <= sums1[i*2] + sums1[(i*2)+1];
    end
    for(i = 0; i < 98; i=i+1) begin
        sums3[i] <= sums2[i*2] + sums2[(i*2)+1];
    end
    for(i = 0; i < 49; i=i+1) begin
        sums4[i] <= sums3[i*2] + sums3[(i*2)+1];
    end
    for(i = 0; i < 24; i=i+1) begin
        sums5[i] <= sums4[i*2] + sums4[(i*2)+1];
    end
    sums5[24] <= sums4[48];
    for(i = 0; i < 12; i=i+1) begin
        sums6[i] <= sums5[i*2] + sums5[(i*2)+1];
    end
    sums6[12] <= sums5[24];
    for(i = 0; i < 6; i=i+1) begin
        sums7[i] <= sums6[i*2] + sums6[(i*2)+1];
    end
    sums7[6] <= sums6[12];
    for(i = 0; i < 4; i=i+1) begin
        sums8[i] <= sums7[i*2] + sums7[(i*2)+1];
    end
    sums9[0] <= sums8[0] + sums8[1];
    sums9[1] <= sums8[2];
    outReg <= sums9[0][31:0] + sums9[1][31:0]; 
end
else begin
    for(i = 0; i < 784; i=i+1) begin
        products[i] <= 0;
    end
end
end

endmodule
