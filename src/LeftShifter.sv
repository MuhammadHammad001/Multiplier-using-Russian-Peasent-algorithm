//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//          This will divide the whole number by 2. As left         //
//          shifting by 1 will divide by 2                          //
//                                                                  //
//////////////////////////////////////////////////////////////////////

module LeftShifter(
    input logic [31:0]value,
    output logic [31:0]left_shifted
    );
    always_comb begin
        left_shifted={value<<1};
    end
endmodule
