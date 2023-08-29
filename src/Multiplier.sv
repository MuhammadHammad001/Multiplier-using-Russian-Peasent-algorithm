//////////////////////////////////////////////////////////////////////////////////
// __   __    ____  _ _     __  __       _ _   _       _ _                      //
///__ | / /   |  _ \(_) |   |  \/  |     | | | (_)     | (_)                    //
//  | |/ /_   | |_) |_| |_  | \  / |_   _| | |_ _ _ __ | |_  ___ _ __           //
//  | | '_ \  |  _ <| | __| | |\/| | | | | | __| | '_ \| | |/ _ \ '__|          //
//  | | (_) | | |_) | | |_  | |  | | |_| | | |_| | |_) | | |  __/ |             //
//  |_|\___/  |____/|_|\__| |_|  |_|\__,_|_|\__|_| .__/|_|_|\___|_|             //
//                                               | |                            //
//                                               |_|                            //
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//  Author: Muhammad Hammad Bashir                                              //
//  Description:                                                                //
//          16 bit datapath and controller design for a multiplier using        //
//          SV. This is the top module for the project.                         //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
module Multiplier(
    input logic [15:0]x,y,
    input logic start,clk,rst,
    output logic [31:0]mult
    );
    logic x_sel,y_sel,x_ld,y_ld,add_en,out_en,x_flag,x_odd_flag;
    
    Datapath DP(clk,rst,x,y,mult,x_sel,y_sel,x_ld,y_ld,add_en,out_en,x_flag,x_odd_flag);
    
    Controller Cont(clk,rst,start,x_flag,x_odd_flag,x_sel,y_sel,x_ld,y_ld,add_en,out_en);
    
endmodule
