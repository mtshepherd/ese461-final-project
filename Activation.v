module Activation(clk, we, wdata, addr, rdata);

input clk;
input we;
input [15:0] wdata;
input [15:0] addr;

output reg [15:0] rdata;

reg [15:0] mem [0:65535];

    always begin
        rdata = mem[addr];
    end

    always @(posedge clk) begin
        if(we == 1) begin
            mem[addr] <= wdata;
        end
    end
endmodule
