// Full subtractor module
    // Written by Rafael Espinosa

module SUBTRACTOR (A,B,BI,D,BO);
    // Inputs
    input wire A, B, BI;

    // Outputs
    output reg D, BO;

    // Module definition
    always @(A,B,BI) begin
        D = A ^ B ^ BI;
        BO = (~A & B) | (~(A ^ B) & BI);
    end

endmodule