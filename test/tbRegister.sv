module tbRegister();

logic clk,rst,value_ld;
logic [31:0]value1,output_value;

Register DUT(value1,clk,rst,value_ld,output_value);

initial begin
     clk=0;
	 forever begin
	    #5;
		clk=~clk;
	 end
end

initial begin
   rst<=0;
   #10;
   rst<=1;
   #10;
   rst<=0;
   value1<=32'd10;
   value_ld<=1;
   #10
   rst<=1;
   #10
   rst<=0;
   $stop;
end
endmodule
