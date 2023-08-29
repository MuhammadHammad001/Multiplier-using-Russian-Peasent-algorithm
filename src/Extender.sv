//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//          This is used for extending the 16 bit input to the      //
//          32 bit input for calculations                           //
//                                                                  //
//////////////////////////////////////////////////////////////////////

module Extender(
    input logic [15:0]input_value,
    output logic [31:0]output_value
    );
    logic [16:0]zeros='0;
    always_comb begin
        output_value={zeros,input_value};
    end
endmodule
