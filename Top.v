<<<<<<< HEAD
module Top(clk, reset, enableLayer3,  we, wdata, waddr, inputs, weights1, weights2, output0, output1, output2, output3, output4, output5, output6, output7, output8, output9);

input clk;
input reset;
input enableLayer3;
input we;
input signed [15:0] wdata;
input [15:0] waddr;
input [12543:0] inputs;
input [12543:0] weights1;
input [159:0] weights2;

output signed [15:0] output0;
output signed [15:0] output1;
output signed [15:0] output2;
output signed [15:0] output3;
output signed [15:0] output4;
output signed [15:0] output5;
output signed [15:0] output6;
output signed [15:0] output7;
output signed [15:0] output8;
output signed [15:0] output9;

reg reset2;

wire signed [15:0] layer1pre;
wire signed [15:0] layer1post;
reg signed [15:0] layer3postReg [0:9];

In_Calculator layer1(clk, reset, inputs, weights1, layer1pre);
Activation layer1Active(clk, we, wdata, waddr, layer1pre, layer1post);

generate
    genvar g;
    for(g = 0; g < 10; g=g+1) begin:l2
        wire signed [15:0] layer3pre;
        wire signed [15:0] layer3post;
        Out_Calculator layer2(clk, reset2, layer1post, weights2[(g*16)+15:(g*16)], layer3pre);
        Activation layer2Active(clk, we, wdata, waddr, layer3pre, layer3post);
        always @(posedge clk) begin
            if (reset) begin
                layer3postReg[g] <= 0;
            end
            else if (enableLayer3) begin
                layer3postReg[g] <= layer3post;
            end
        end
    end
endgenerate

assign output0 = layer3postReg[0];
assign output1 = layer3postReg[1];
assign output2 = layer3postReg[2];
assign output3 = layer3postReg[3];
assign output4 = layer3postReg[4];
assign output5 = layer3postReg[5];
assign output6 = layer3postReg[6];
assign output7 = layer3postReg[7];
assign output8 = layer3postReg[8];
assign output9 = layer3postReg[9];

reg prevReset;
integer i;

always @(posedge clk) begin
    if (!reset) begin
        reset2 = reset;
    end
    else begin
        if (prevReset != reset && reset == 1) begin
            i = 0;
        end
        if (i > 10) begin
            reset2 = 1;
        end
        else begin
            i = i + 1;
        end
    end
    prevReset = reset;
end
=======
module Top(clk, reset, inputs, en, we, active_we, addr, wdata, output0, output1, output2, output3, output4, output5, output6, output7, output8, output9);

input clk;
input reset;
input [12543:0] inputs;
input [1:0] en;
input [793:0] we;
input active_we;
input [17:0] addr;
input [15:0] wdata;

wire en1;
wire [783:0] we1;

wire en2;
wire [9:0] we2;

output [15:0] output0;
output [15:0] output1;
output [15:0] output2;
output [15:0] output3;
output [15:0] output4;
output [15:0] output5;
output [15:0] output6;
output [15:0] output7;
output [15:0] output8;
output [15:0] output9;

wire [12543:0] weights1;
wire [15:0] layer1pre;
wire [15:0] layer1post;
reg [15:0] layer3pre [0:9];
reg [15:0] layer3post [0:9];

In_Calculator layer1(clk, reset, inputs, weights, layer1pre);
Activation active1(clk, active_we, layer1post, layer1pre, wdata);

generate
    genvar g;
    for(g = 0; g < 784; g=g+1) begin:l1
        ShiftRAM weightsRAM1(clk, reset, en1, we1[g], weights1[((g*16)+15):(g*16)], addr, wdata);
    end
    for(g = 0; g < 10; g=g+1) begin:l2
        wire [15:0] weights2;
        ShiftRAM weightsRAM2(clk, reset, en2, we2[g], weights2, addr, wdata);
        Out_Calculator layer2(clk, reset, layer1post, weights2, layer3pre[g]);
        Activation active2(clk, active_we, layer3post[g], layer3pre[g], wdata);
    end
endgenerate

assign en1 = en[0];
assign we1 = we[783:0];
assign en2 = en[1];
assign we2 = we[793:784];
assign output0 = layer3post[0];
assign output1 = layer3post[1];
assign output2 = layer3post[2];
assign output3 = layer3post[3];
assign output4 = layer3post[4];
assign output5 = layer3post[5];
assign output6 = layer3post[6];
assign output7 = layer3post[7];
assign output8 = layer3post[8];
assign output9 = layer3post[9];
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2

endmodule
