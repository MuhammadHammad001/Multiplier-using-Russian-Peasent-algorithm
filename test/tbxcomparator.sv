module tbxcomparator();

logic [31:0]x;
logic out;
xcomparator DUT(x,out);	
initial begin
   #10;
   x=32'b100;
   #20;
   x=32'd1001;
   #30;
   x=32'd100;
   $stop;
end
endmodule