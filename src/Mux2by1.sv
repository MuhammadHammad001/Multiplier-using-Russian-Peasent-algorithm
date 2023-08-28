module Mux2by1(
   input logic [31:0]a,b,
   input logic sel,
   output logic [31:0]out
    );
    always_comb begin
        if (sel==0) begin
            out=a;
        end
        else begin
            out=b;
        end
    end
endmodule
