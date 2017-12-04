`timescale 1ns / 1ps

module Node_Calculator_tb();

    reg  clk;
    reg  reset;
    reg  [15:0] a;
    reg  [15:0] b;
    wire [15:0] layer_output;

    Node_Calculator DUT(
        .clk(clk),
        .reset(reset),
	.value(a),
	.weight(b),
	.out(layer_output)
        );

    initial
    begin
        $dumpfile("Node_Calculator.vcd");
        $dumpvars(0, Node_Calculator);

        reset = 1;
        clk = 0;
	a = 0;
	b = 0;
        
	// a[0] = 1.25; b[0] = 1.5
        #16
        reset = 0;
	a = 8'b00010100;
	b = 8'b00011000;

	// a[1] = 2.5; b[1] = 1.5
        #20
	a = 8'b00101000;
	b = 8'b00011000;

	// a[2] = 2.5; b[2] = 5
	#20
	a = 8'b00101000;
	b = 8'b01010000;

	// a[3] = 2; b[3] = 2
	#20
	a = 8'b00100000;
	b = 8'b00100000;

	// a[4] = 3; b[4] = 5
	#20
	a = 8'b00110000;
	b = 8'b01010000;

	// a[5] = 2; b[5] = 3
	#20
	a = 8'b00100000;
	b = 8'b00110000;

	// a[6] = 1.25; b[6] = 3.5
	#20
	a = 8'b00010100;
	b = 8'b00111000;

	// a[7] = 3.5; b[7] = 5
	#20
	a = 8'b00111000;
	b = 8'b01010000;
	
	// a[8] = 4.5; b[8] = 4
	#20
	a = 8'b01001000;
	b = 8'b01000000;

	// a[9] = 2; b[9] = 3
	#20
	a = 8'b00100000;
	b = 8'b00110000;
	
	#20
	a = 0;
	b = 0;

	#1000

        $finish;
    end

    always 
        #10 clk = !clk;

endmodule
