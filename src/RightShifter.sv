//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//          This will mutliply the whole number by 2. As right      //
//          shifting by 1 will multiply by 2                        //
//                                                                  //
//////////////////////////////////////////////////////////////////////

module RightShifter(
    input logic [31:0]value,
    output logic [31:0]right_shifted
    );
    always_comb begin
        right_shifted={value>>1};
    end
endmodule
