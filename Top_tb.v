`timescale 1ns / 1ps

module Top_tb();

	reg  clk;
	reg  reset;

	// Write Signals
	reg [1:0] en;
	reg [793:0] we;
	reg active_we;
	reg [15:0] wdata;
	reg [17:0] addr;
	
	// Outputs
	wire [15:0] outputs [0:9];

	// Device under Test
	Top DUT(
		.clk(clk),
		.reset(reset),
		.en(en),
		.we(we),
		.active_we(active_we),
		.wdata(wdata),
		.addr(addr),
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

	//Regs to read memory into
	reg [15:0] ActiveOutputs [0:120];
	reg [15:0] ActiveInputs [0:120];
	reg [15:0] Layer1Weights [0:156799];
	reg [15:0] Layer2Weights [0:1999];

	// Integers for looping
	integer i;
	integer j;

    initial
    begin
	$dumpfile("Top.vcd");
        $dumpvars(0, Top_tb);
	$readmemb("./LookUpTableOutputValues.dat", ActiveOutputs);
	$readmemb("./LookUpTableInputValues.dat", ActiveInputs);
	//$readmemb("./Layer1Weights.dat", Layer1Weights);
	//$readmemb("./Layer2Weights.dat", Layer2Weights);

	clk = 1;
        reset = 0;
	en = 0;
	we = 0;
	active_we = 0;
	addr = 0;
	wdata = 0;
	
        #12
	reset = 1;

	// Store Activation values in Activation modules
	active_we = 1;
	for (i = 0; i < 121; i = i + 1) begin
		addr = ActivationInputs[i];
		wdata = ActivationOutputs[i];
		#20;
	end
	weLUT = 0;

	#20

	//Store Weights in layer 1 ShiftSRAM modules
	en[0] = 1;
	for(i = 0; i < 784; i = i + 1) begin
		addr = i;
		for(j = 0; j < 200; j = j + 1) begin
			we[j] = 1;
                        wdata = layer1Data[(i*200)+j];
			#20
                        we[j] = 0;
		end
	end
	en[0] = 0;

	//Store Weights in layer 2 ShiftRAM modules
	en[1] = 1;
        for(i = 0; i < 200; i = i + 1) begin
		addr = i;
		for(j = 0; j < 10; j = j + 1) begin
			we[j] = 1;
			wdata = layer2Data[(i*10)+j];
			#20
			we[j] = 0;
		end
	end
	en[1] = 0;
	we = 0;

	//Store Activations
	j = 0;
	active_we = 1;
	for(i = 0; i < 156800; i = i + 1) begin
		addr = i;
		wdata = activation[j];
	end
	active_we = 0;

	#10
        $finish;
    end

    always 
        #10 clk = !clk;

endmodule
