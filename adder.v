// Full adder module
    // Written by Rafael Espinosa

module ADDER (A,B,CI,R,CO);
    // Inputs
    input wire A, B, CI;

    // Outputs
    output reg R, CO;

    // Wires and regs
    reg p,q,s;

    // Module definition
    always @(A,B,CI) begin
        s = A & B;
        p = A ^ B;
        q = p & CI;

        R <= p ^ CI;
        CO <= q | s;
    end

endmodule