`timescale 1 ns / 100 ps

module sz_inner_tb;
reg rst;
reg clk;
reg [31:0]  data_in;
reg enable;
wire [1:0] data_out;
wire [31:0] phase3_data_out;
wire [15:0] phase2_data_out; // quant is 14 bits
wire phase2_valid, data_out_valid;
wire phase3_valid;

sz_inner sz0(
    rst,
    clk,
    data_in,
    enable,
    data_out,
	 data_out_valid,
    phase2_data_out,
    phase2_valid,
    phase3_data_out,
    phase3_valid
);

always #2 clk=~clk;

//integer               data_file    ; // file handler
//integer               scan_file    ; // file handler
//reg [31:0] captured_data;

integer f;

initial begin
	//f = $fopen("output.txt","w");
  //data_file = $fopen("/home/qx/compress/in.txt", "r");
  //if (data_file == 0) begin
  //  $display("data_file handle was NULL");
  //  $finish;
  //end
  
  clk=0;
  rst=1;
  enable='b0;
#102 rst=0;
#16 data_in=32'h3e702c81;
enable = 'b1;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702c81;
#4 data_in=32'h3e702625;
#4 data_in=32'h3e7022c4;
#4 data_in=32'h3e702322;
#4 data_in=32'h3e702491;
#4 data_in=32'h3e702a25;
#4 data_in=32'h3e703406;
#4 data_in=32'h3e7038db;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e702fa1;
#4 data_in=32'h3e70185e;
#4 data_in=32'h3e6ff733;
#4 data_in=32'h3e6fda19;
#4 data_in=32'h3e6fc8ae;
#4 data_in=32'h3e6fc19a;
#4 data_in=32'h3e6fbf4e;
#4 data_in=32'h3e6fb840;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6fa227;
#4 data_in=32'h3e6f70b9;
#4 data_in=32'h3e6f2b31;
#4 data_in=32'h3e6ee652;
#4 data_in=32'h3e6ea786;
#4 data_in=32'h3e6e777d;
#4 data_in=32'h3e6e4a5b;
#4 data_in=32'h3e6e1228;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
#4 data_in=32'h3e6a721e;
#4 data_in=32'h3e6972f5;
#4 data_in=32'h3e68784b;
#4 data_in=32'h3e6dca87;
#4 data_in=32'h3e6d723e;
#4 data_in=32'h3e6cf496;
#4 data_in=32'h3e6c3f87;
#4 data_in=32'h3e6b610e;
//$fwrite(f,"%b\n",   data_out);
#4000 rst=1;
#20 $stop;
end
endmodule