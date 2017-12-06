`timescale 1ns / 1ps

module In_Calculator_tb();

    reg  clk;
    reg  reset;
    reg  [12543:0] values;
    reg  [12543:0] weights;
    wire [15:0] layer_output;
    integer i;
    integer j;

    In_Calculator DUT(
        .clk(clk),
        .reset(reset),
	.values(values),
	.weights(weights),
	.out(layer_output)
        );

    initial
    begin
        $dumpfile("In_Calculator.vcd");
        $dumpvars(0, In_Calculator);

        reset = 0;
        clk = 1;
        #10
        for(i = 0; i < 784; i=i+1) begin
            for(j = 0; j < 16; j=j+1) begin
                if (j==1) begin
                    values[(16*i)+j] = 1;
                end
                else begin
                    values[(16*i)+j] = 0;
                end
                if (i[0]&j==0) begin
                    weights[(16*i)+j] = 1;
                end
                else begin
                    weights[(16*i)+j] = 0;
                end
            end
        end
        
        #5
        reset = 1;

        #10
        for(i = 0; i < 12544; i=i+1) begin
            values[i] = 0;
            weights[i] = 0;
        end

	#1000

        $finish;
    end

    always 
        #10 clk = !clk;

endmodule
