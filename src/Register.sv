//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//          This is a simple 32 bit Register                        //
//                                                                  //
//////////////////////////////////////////////////////////////////////

module Register(
    input logic [31:0]value1,
    input logic clk,rst,
    input logic value_ld,
    output logic [31:0]output_value
    );
    always_ff @(posedge clk)
    begin
        if(rst==1) begin
            output_value<=0;
        end
         
        else if (value_ld==1) begin
            output_value<=value1;
        end
    end
endmodule
