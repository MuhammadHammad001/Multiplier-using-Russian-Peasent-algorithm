//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//          This file controls the whole workflow of the datpath,   //
//          Please refer to the datapath diagram available at the   //
//          github for further understanding.                       //
//                                                                  //
//////////////////////////////////////////////////////////////////////

module Datapath(
     input  logic   clk,rst,
     input  logic   [15:0]x1,y1,
     output logic   [31:0]mult,
     input  logic   x_sel,y_sel,x_ld,y_ld,add_en,out_en,
     output logic   x_flag,x_odd_flag
    );
    //internal signals
    logic [31:0]x,y;
    logic [31:0]x_w_reg,y_w_reg;
    logic [31:0]x_w_comp;
    logic [31:0]x_shifted,y_shifted;
    logic [31:0]final_reg_wire;
    logic [31:0]y_w_add;
    logic [31:0]final_wire;

    //Convert the 16 bit input to the 32 bit for calculations 
    Extender Ex(x1,x);
    Extender Ey(y1,y);

    //Flow for the X input

    Register        RX(x_w_reg,clk,rst,x_ld,x_w_comp);                 
    xcomparator     XCOMP(x_w_comp,x_flag);
    xoddcomparator  XODDCOMP(x_w_comp,x_odd_flag);
    RightShifter    RS(x_w_comp,x_shifted);
    Mux2by1         MX(x,x_shifted,x_sel,x_w_reg);
    
    //Flow for the Y input
    Register        RY(y_w_reg,clk,rst,y_ld,y_w_add);
    LeftShifter     LS(y_w_add,y_shifted);
    Mux2by1         MY(y,y_shifted,y_sel,y_w_reg);

    //Output calculator
    Register        RFinal(final_wire,clk,rst,add_en,final_reg_wire);
    Adder           RADD(final_reg_wire,y_w_add,final_wire);
    Register        OUTREG(final_reg_wire,clk,rst,out_en,mult);
endmodule
