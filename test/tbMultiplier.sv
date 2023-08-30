//////////////////////////////////////////////////////////////////////
// _______        _   _                     _     					//
// |__   __|      | | | |                   | |    					//
//    | | ___  ___| |_| |__   ___ _ __   ___| |__  					//
//    | |/ _ \/ __| __| '_ \ / _ \ '_ \ / __| '_ \ 					//
//    | |  __/\__ \ |_| |_) |  __/ | | | (__| | | |					//
//    |_|\___||___/\__|_.__/ \___|_| |_|\___|_| |_|					//
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//                                                                  //
//  Author: Muhammad Hammad Bashir                                  //
//  Description:                                                    //
//			This file contains the testbench for the Multiplier, I  //
//			have tried multiple numbers for the multiplication which//
//			you may refer to below.clk								//
//////////////////////////////////////////////////////////////////////
												


module tbMultiplier();
	logic [15:0]	x,y;
	logic 			start,clk,rst;
	logic [31:0]	mult;

Multiplier MUL(.x(x),.y(y),.start(start),.clk(clk),.rst(rst),.mult(mult));

  initial begin
    clk<=0;
	forever begin
	 #5
	 clk=~clk;
	end 
   end
   
   initial begin
    rst<=1;
	start<=0;
	x<=45;
	y<=40;
	repeat(5) @(posedge clk);
	rst<=0;
	repeat(5) @(posedge clk);
	start<=1;
	@(posedge clk);
	start<=0;
	#150;
	rst<=1;
	start<=0;
	x<=202;
	y<=1500;
	repeat(5) @(posedge clk);
	rst<=0;
	repeat(5) @(posedge clk);
	start<=1;
	@(posedge clk);
	start<=0;
	#150;
	#150;
	rst<=1;
	start<=0;
	x<=-420;
	y<=69;
	repeat(5) @(posedge clk);
	rst<=0;
	repeat(5) @(posedge clk);
	start<=1;
	@(posedge clk);
	start<=0;
	#150;

	$stop;
   end
endmodule
