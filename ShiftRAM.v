module ShiftRAM(clk, rst, en, we, rdata, addr, wdata);

    input clk;
    input rst;
    input en;
    input we;
    input [17:0] addr;
    input [15:0] wdata;

    output reg [15:0] rdata;

    reg [17:0] mem_sel;
    reg [15:0] mem [0:156799];
    
    integer i;

    always @(posedge clk) begin
        if (!rst) begin
            mem_sel <= 0;
            rdata <= 0;
            for(i = 0; i < 156800; i=i+1) begin
                mem[i] = 0;
            end
        end
        else if (en) begin
            if (we & addr < 156800) begin
                mem[addr] = wdata;
            end
            else begin
                mem_sel <= mem_sel + 1;
                rdata <= mem[mem_sel];
            end
        end
    end
endmodule
