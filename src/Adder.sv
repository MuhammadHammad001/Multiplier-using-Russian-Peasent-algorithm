module Adder(
   input logic [31:0]value1,
   input logic [31:0]value2,
   output logic [31:0]output_logic
    );
    always_comb begin
        output_logic=value1+value2;
    end
endmodule
