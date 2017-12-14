module Activation(clk, we, wdata, waddr, addr, rdata);

input clk;
input we;
input [15:0] wdata;
input [15:0] waddr;

input [15:0] addr;
output reg [15:0] rdata;

wire [8:0] waddr_basic;
wire [8:0] addr_basic;
reg [15:0] mem [0:511];

assign waddr_basic = { waddr[15], waddr[10:3] };
assign addr_basic = { addr[15], addr[10:3] };

    always @(posedge clk) begin
        rdata = mem[addr_basic];
    end

    always @(posedge clk) begin
        if(we == 1) begin
            mem[waddr_basic] <= wdata;
        end
    end
endmodule
