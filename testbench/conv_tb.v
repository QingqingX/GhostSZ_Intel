`timescale 1 ns / 100 ps

module conv_tb;
reg rst;
reg clk;
reg [31:0]  data_in;
wire [15:0] data_out;
wire overflow, underflow;

conv model(
	 rst,
    clk,
    data_in,
    overflow,
    data_out,
    underflow
    );
always #1 clk=~clk;

initial begin
	clk=0;
	rst=1;
#11 rst=0;

#10
	//1.5; 1.6;  in: 1.71
	data_in = 32'h3fdae148;
#2  //1.6, 1.5, in:32768
	data_in = 32'h47000000;
#2  //1.5; 1.6;  in: 1.71
	data_in = 32'h3fdae148;
#2  //1.6, 1.5, in:-32769
	data_in = 32'hc7000100;	
#100 rst=1;
#20 $stop;
end

endmodule