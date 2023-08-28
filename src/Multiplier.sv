module Multiplier(
    input logic [15:0]x,y,
    input logic start,clk,rst,
    output logic [31:0]mult
    );
    logic x_sel,y_sel,x_ld,y_ld,add_en,out_en,x_flag,x_odd_flag;
    
    Datapath DP(clk,rst,x,y,mult,x_sel,y_sel,x_ld,y_ld,add_en,out_en,x_flag,x_odd_flag);
    
    Controller Cont(clk,rst,start,x_flag,x_odd_flag,x_sel,y_sel,x_ld,y_ld,add_en,out_en);
    
endmodule
