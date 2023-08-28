module tbMultiplier();
logic [15:0]x,y;
logic start,clk,rst;
logic [31:0]mult;

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
