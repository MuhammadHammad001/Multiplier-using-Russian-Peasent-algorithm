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
