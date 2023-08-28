module tbExtender();
logic [15:0]input_value;
logic [31:0]output_value;
Extender DUT(input_value,output_value);

initial begin
    #10;
    input_value=16'd10;
    #10;
	input_value=16'd44;
end

endmodule
