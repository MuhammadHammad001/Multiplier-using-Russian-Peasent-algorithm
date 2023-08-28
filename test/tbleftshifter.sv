module tbleftshifter();
logic [31:0]value;
logic [31:0]left_shifted;

LeftShifter DUT(.value(value),.left_shifted(left_shifted));

initial begin
   #10;
   value=32'd10;
   #10;
   value=32'd55;
   #10;
   value=32'd69;
   #10;
   value=32'd44;

end
endmodule