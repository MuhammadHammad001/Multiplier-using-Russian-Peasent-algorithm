module Controller(
    input logic clk,rst,start,
    input logic x_flag,x_odd_flag,
    output logic x_sel,y_sel,x_ld,y_ld,add_en,out_en
    );
    logic [2:0]NS,CS;
    parameter S0=3'b000;
    parameter S1=3'b001;
    parameter S2=3'b010;
    parameter S3=3'b011;
    parameter S4=3'b100;

    always_ff @(posedge clk)
    begin
         if (rst==1)
            CS<=S0;
         else
            CS<=NS;
    end
    
    always_comb begin
         case(CS)
                S0: begin
                   if(start==0)
                         NS<=S0;
                   else
                         NS<=S1;
                end
                S1: begin
                   if (x_flag==1)
                         NS<=S4;
                   else if (x_flag==0 && x_odd_flag==0)
                         NS<=S3;
                   else if (x_flag==0 && x_odd_flag==1)
                         NS<=S2;
                end
                S2: begin
                   if (x_flag==0 && x_odd_flag==1)
                         NS<=S2;
                   else if(x_flag==0 && x_odd_flag==0)
                         NS<=S3;
                   else if(x_flag==1)
                         NS<=S4;
                end
                S3: begin
                   if (x_flag==0 && x_odd_flag==1)
                      NS<=S2;
                else if(x_flag==0 && x_odd_flag==0)
                      NS<=S3;
                else if(x_flag==1)
                      NS<=S4;
             end
                S4: begin
                      NS<=S0;
                end
         endcase
    end
    
    
    always_comb begin
         case(CS)
                S0: begin
            if(start==0) begin
                  x_sel=0;
                  y_sel=0;
                  x_ld=0;
                  y_ld=0;
                  add_en=0;
                  out_en=0;
                end
            else begin
                  x_sel=0;
                  y_sel=0;
                  x_ld=1;
                  y_ld=1;
                end
         end
         S1: begin
            if (x_flag==1) begin
                  add_en=1;
                  out_en=0;
                end
            else if (x_flag==0 && x_odd_flag==0) begin
                  x_sel=1;
                  y_sel=1;
                  x_ld=1;
                  y_ld=1;
                  add_en=0;
                  out_en=0;
                end
            else if (x_flag==0 && x_odd_flag==1) begin
                  x_sel=1;
                  y_sel=1;
                  x_ld=1;
                  y_ld=1;
                  add_en=1;
                  out_en=0;
                end
         end
         S2: begin
            if (x_flag==0 && x_odd_flag==1) begin
                  x_sel=1;
                  y_sel=1;
                  x_ld=1;
                  y_ld=1;
                  add_en=1;
                  out_en=0;
           end
            else if(x_flag==0 && x_odd_flag==0) begin
                  x_sel=1;
                  y_sel=1;
                  x_ld=1;
                  y_ld=1;
                  add_en=0;
                  out_en=0;
               end
            else if(x_flag==1) begin
                  add_en=1;
                  out_en=0;
               end
         end
         S3: begin
            if (x_flag==0 && x_odd_flag==1) begin
                  x_sel=1;
                  y_sel=1;
                  x_ld=1;
                  y_ld=1;
                  add_en=1;
                  out_en=0;
            end
         else if(x_flag==0 && x_odd_flag==0) begin
                  x_sel=1;
                  y_sel=1;
                  x_ld=1;
                  y_ld=1;
                  add_en=0;
                  out_en=0;
             end
         else if(x_flag==1) begin
                   add_en=1;
                   out_en=0;
              end
         end
         S4: begin
               if(x_flag==1)
                   out_en=1;
         end
         endcase
    end
endmodule




















