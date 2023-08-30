//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//          Only add  the number to the final result when it is     // 
//          divisible by 2 when X is an odd number.                 //
//                                                                  //
//////////////////////////////////////////////////////////////////////

module xoddcomparator(
    input logic [31:0]x,
    output logic out
    );
    always_comb begin
       if(x[0]==1)
       begin
        out=1;
    end
       else begin
       out =0;
       end
    end
endmodule
