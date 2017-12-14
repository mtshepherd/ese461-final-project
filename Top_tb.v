`timescale 1ns / 1ps

module Top_tb();

	reg clk;
	reg reset;
	reg enable;

	// Write Signals
	reg we;
	reg [15:0] wdata;
	reg [15:0] waddr;

	// Inputs
	reg [12543:0] inputs;
	reg [12543:0] weights1;
	reg [159:0] weights2;

	// Outputs
	wire signed [15:0] outputs [0:9];

	// Device under Test
	Top DUT(
		.clk(clk),
		.reset(reset),
		.enableLayer3(enable),
		.we(we),
		.wdata(wdata),
		.waddr(waddr),
		.inputs(inputs),
		.weights1(weights1),
		.weights2(weights2),
		.output0(outputs[0]),
		.output1(outputs[1]),
		.output2(outputs[2]),
		.output3(outputs[3]),
		.output4(outputs[4]),
		.output5(outputs[5]),
		.output6(outputs[6]),
		.output7(outputs[7]),
		.output8(outputs[8]),
		.output9(outputs[9])
	);

	// Regs to read memory into
	reg signed [15:0] ActivationOutputs [0:120];
	reg [15:0] ActivationInputs [0:120];
	reg signed [15:0] Inputs [0:783];
	reg signed [15:0] Layer1Weights [0:156799];
	reg signed [15:0] Layer2Weights [0:1999];

	// Integers for loading activations and weights
	integer i;
	integer j;
	integer k;

	// Error detection
	reg error;

    initial
    begin
	$dumpfile("Top.vcd");
        $dumpvars(0, Top_tb);
	$readmemb("./LookUpTableOutputValues.dat", ActivationOutputs);
	$readmemb("./LookUpTableInputValues.dat", ActivationInputs);
	$readmemb("./TestImage1.dat", Inputs);
	$readmemb("./Layer1Weights.dat", Layer1Weights);
	$readmemb("./Layer2Weights.dat", Layer2Weights);

	clk = 1;
        reset = 0;
	enable = 0;
	we = 0;
	waddr = 0;
	wdata = 0;
	error = 0;
	
        #12
	// Store Activation values in Activation modules
	we = 1;
	j = 0;
	for (i = 32768; i < 65536; i = i + 1) begin
		waddr = i;
		wdata = ActivationOutputs[j];
		if (i >= ActivationInputs[j+1] && j != 59) begin
			j = j + 1;
		end
		#20;
	end
	if (j != 59) begin
		error = 1;
	end
	j = 60;
	for (i = 0; i < 32768; i = i + 1) begin
		waddr = i;
		wdata = ActivationOutputs[j];
		if (i >= ActivationInputs[j + 1] && j != 120) begin
			j = j + 1;
		end
		#20;
	end
	we = 0;
	waddr = 0;
	wdata = 0;

	#20

	// Input data
	for (i = 0; i < 784; i = i + 1) begin
		for(j = 0; j < 16; j = j + 1) begin
			inputs[(i*16)+j] = Inputs[i][j];
		end
	end
	
	reset = 1;
	weights2 = 0;
	for (i = 0; i < 210; i = i + 1) begin
		if (i < 200) begin
			for (j = 0; j < 784; j = j + 1) begin
				for (k = 0; k < 16; k = k + 1) begin
					weights1[(j*16)+k] = Layer1Weights[(i*784)+j][k];
				end
			end
		end
		else begin
			weights1 = 0;
		end
		if (i > 10) begin
			for (j = 0; j < 10; j = j + 1) begin
				for (k = 0; k < 16; k = k + 1) begin
					weights2[(j*16)+k] = Layer2Weights[(j*200)+i-11][k];
				end
			end
		end
		else begin
			weights2 = 0;
		end
		#20;
	end
	
	weights1 = 0;
	weights2 = 0;
	enable = 1;
		
	#1000
        $finish;
    end

    always 
        #10 clk = !clk;

endmodule
