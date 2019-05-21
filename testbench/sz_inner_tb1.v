`timescale 1 ns / 100 ps

module sz_inner_tb1;
reg rst;
reg clk;
reg [31:0]  data_in;
reg enable;
reg hold;
wire [1:0] data_out;
wire [31:0] phase3_data_out;
wire [17:0] phase2_data_out; // quant is 16 bits+2leading bits indicating fit model
wire phase2_valid, data_out_valid;
wire phase3_valid;
`define NULL 0 
sz_inner sz0(
    rst,
    clk,
    data_in,
    enable,
	 hold,
    data_out,
	 data_out_valid,
    phase2_data_out,
    phase2_valid,
    phase3_data_out,
    phase3_valid
);


always #1 clk=~clk;

integer               in_file,outfile,outfile2,outfile3    ; // file handler
integer               scan_file    ; // file handler
reg [31:0] captured_data;
reg signal_done;  //the last input data gets into the pipelines
reg dataout_counter,dataout_counter2;
reg [1:0] bytes;
reg [17:0] ninebytes;
integer counter;

initial begin
  clk=0;
  rst=1;
  enable = 'b0;
  signal_done = 'b0;
  dataout_counter = 0;
  dataout_counter2 = 0;
  in_file = $fopen("/home/qx/compress_arria10/testfiles/in.txt", "r");
  if (in_file == `NULL) begin
    $display("data_file handle was NULL");
    $finish;
  end
  else begin
    $display("data_file found!!!!");
  end
  #11 rst=0;
  dataout_counter = 0;
  
end

always @(posedge clk) begin
  scan_file = $fscanf(in_file, "%h\n", captured_data); 
  if (!rst && !$feof(in_file)) begin
    //use captured_data as you would any other wire or reg value;
	 data_in = captured_data;	
	 enable = 'b1;  //enable moves the fitting window
	 $display("%h", captured_data); 
  end
  else if ($feof(in_file)) begin
    enable = 'b0;
    signal_done = 'b1;	 
  end
end

always @(posedge clk) begin
	if (rst) begin
		counter <= 0;		
	end else if (signal_done) begin
		counter <= counter + 1;		
	end 
end

always @ (*) hold= (counter<45);


//after the last data; counts 44 cycles for the encode_out;
// count 96 cycles for the quant_out;


initial begin
	outfile = $fopen("/home/qx/compress_arria10/testfiles/output1.txt","wb");
   outfile2 = $fopen("/home/qx/compress_arria10/testfiles/output2.txt","wb");
   outfile3 = $fopen("/home/qx/compress_arria10/testfiles/output3.txt","wb");

end
//writing is bytes by bytes need a counter



always @ (*) begin 
   if (signal_done && (counter==45)) begin
		$fclose(outfile);
	end
	else if (signal_done && (counter == 100)) 
		$stop;
end

always @ (posedge clk) begin
	if (data_out_valid) begin
	   $display("dataout_counter:  %d, dataout: %h\n", dataout_counter, data_out);	
      #2 dataout_counter = ~dataout_counter;
         $display("dataout_counter:  %d, dataout: %h\n", dataout_counter, data_out);		 
    end
  end 

always @ (dataout_counter, data_out_valid) begin 
  if (dataout_counter==0) begin
      bytes = data_out;
  end else if (dataout_counter==1) begin
    $fwrite(outfile,"%s",{bytes,data_out});
        //$display("fwrite bytes: %d\n", {bytes[3:2],data_out});
  end	
end

//for writing quant bits
always @ (posedge clk) begin
	if (phase2_valid) begin
	   $display("phase2 counter2:  %d, dataout: %h\n", dataout_counter2, phase2_data_out);	
      #2 dataout_counter2 = ~dataout_counter2;
         $display("phase2 counter2:  %d, dataout: %h\n", dataout_counter2, phase2_data_out);		 
    end
  end 

always @ (dataout_counter2, phase2_valid) begin 
  if (dataout_counter2==0) begin
      ninebytes = phase2_data_out;
  end else if (dataout_counter2==1) begin
    $fwrite(outfile2,"%s",{ninebytes,phase2_data_out});
        //$display("fwrite bytes: %d\n", {bytes[3:2],data_out});
  end	
end
//for writing the unpredicted data
always @ (phase3_valid) begin 
  $fwrite(outfile3,"%s",phase3_data_out);
        //$display("fwrite bytes: %d\n", {bytes[3:2],data_out});	
end

endmodule
