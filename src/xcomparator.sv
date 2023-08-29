//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//          This is a comparator designed specifically for          //
//          comparison of X with 1. As, X is divided by 1 on each   //
//          cycle. So, as X becomes equal to 1, our multiplication  //
//          is done.                                                //
//                                                                  //
//////////////////////////////////////////////////////////////////////

module xcomparator(
    input logic [31:0]x,
    output logic out
    );
    always_comb begin
       if(x==1)
       begin
        out=1;
    end
       else begin
       out =0;
       end
    end
endmodule
