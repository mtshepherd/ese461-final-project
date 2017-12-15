<<<<<<< HEAD
module Activation(clk, we, wdata, waddr, addr, rdata);
=======
module Activation(clk, we, wdata, addr, rdata);
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2

input clk;
input we;
input [15:0] wdata;
<<<<<<< HEAD
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
=======
input [15:0] addr;

output reg [15:0] rdata;

reg [15:0] mem [0:65535];

    always begin
        rdata = mem[addr];
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
    end

    always @(posedge clk) begin
        if(we == 1) begin
<<<<<<< HEAD
            mem[waddr_basic] <= wdata;
=======
            mem[addr] <= wdata;
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2
        end
    end
endmodule
