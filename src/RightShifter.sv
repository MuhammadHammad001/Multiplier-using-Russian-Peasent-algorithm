module RightShifter(
    input logic [31:0]value,
    output logic [31:0]right_shifted
    );
    always_comb begin
        right_shifted={value>>1};
    end
endmodule
