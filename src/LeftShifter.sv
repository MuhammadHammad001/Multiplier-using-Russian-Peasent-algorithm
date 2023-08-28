module LeftShifter(
    input logic [31:0]value,
    output logic [31:0]left_shifted
    );
    always_comb begin
        left_shifted={value<<1};
    end
endmodule
