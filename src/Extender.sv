module Extender(
    input logic [15:0]input_value,
    output logic [31:0]output_value
    );
    logic [16:0]zeros='0;
    always_comb begin
        output_value={zeros,input_value};
    end
endmodule
