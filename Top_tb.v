`timescale 1ns / 1ps

module Top_tb();

	reg  clk;
	reg  reset;

	//LookUpTable Signals
	reg weLUT;
	reg [15:0] wdataLUT;
	reg [15:0] addrLUT;
	wire [15:0] rdataLUT;

	LookUpTableRAM LUT1(
		.clk(clk),
		.wdata(wdataLUT),
		.addr(addrLUT),
		.rdata(rdataLUT),
		.we(weLUT)
	);

	reg [15:0] LUTOutputs [0:120];
	reg [15:0] LUTInputs [0:120];
	integer i;

    initial
    begin
	$dumpfile("Top.vcd");
        $dumpvars(0, Top_tb);
	$readmemb("./LookUpTableOutputValues.dat", LUTOutputs);
	$readmemb("./LookUpTableInputValues.dat", LUTInputs);

        reset = 1;
        clk = 0;
	weLUT = 0;
	wdataLUT = 0;
	addrLUT = 0;

        #16
        reset = 0;
	#10

	//Store LUT values in LUT RAM
	weLUT = 1;
	for (i = 0; i < 121; i = i + 1) begin
		addrLUT = LUTInputs[i];
		wdataLUT = LUTOutputs[i];
		#20;
	end
	weLUT = 0;

	#20

	for(i = 0; i < 121; i = i + 1) begin
		addrLUT = LUTInputs[i];
		#20;
	end

	#10
        $finish;
    end

    always 
        #10 clk = !clk;

endmodule
