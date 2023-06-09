// all arithmetic modules are here (16 bits)
// like a 16 bit adder, subtractor, etc.

`include "adder.v"
`include "subtractor.v"

module ADD16b (N1,N2,RES);
    // Inputs
    input wire [15:0] N1,N2;

    // Outpus
    output wire [16:0] RES;

    // Wires
    wire C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15;

    // ADDERS
    ADDER ADD1(.A(N1[0]), .B(N2[0]), .CI(1'b0), .R(RES[0]), .CO(C1));
    ADDER ADD2(.A(N1[1]), .B(N2[1]), .CI(C1), .R(RES[1]), .CO(C2));
    ADDER ADD3(.A(N1[2]), .B(N2[2]), .CI(C2), .R(RES[2]), .CO(C3));
    ADDER ADD4(.A(N1[3]), .B(N2[3]), .CI(C3), .R(RES[3]), .CO(C4));
    ADDER ADD5(.A(N1[4]), .B(N2[4]), .CI(C4), .R(RES[4]), .CO(C5));
    ADDER ADD6(.A(N1[5]), .B(N2[5]), .CI(C5), .R(RES[5]), .CO(C6));
    ADDER ADD7(.A(N1[6]), .B(N2[6]), .CI(C6), .R(RES[6]), .CO(C7));
    ADDER ADD8(.A(N1[7]), .B(N2[7]), .CI(C7), .R(RES[7]), .CO(C8));
    ADDER ADD9(.A(N1[8]), .B(N2[8]), .CI(C8), .R(RES[8]), .CO(C9));
    ADDER ADD10(.A(N1[9]), .B(N2[9]), .CI(C9), .R(RES[9]), .CO(C10));
    ADDER ADD11(.A(N1[10]), .B(N2[10]), .CI(C10), .R(RES[10]), .CO(C11));
    ADDER ADD12(.A(N1[11]), .B(N2[11]), .CI(C11), .R(RES[11]), .CO(C12));
    ADDER ADD13(.A(N1[12]), .B(N2[12]), .CI(C12), .R(RES[12]), .CO(C13));
    ADDER ADD14(.A(N1[13]), .B(N2[13]), .CI(C13), .R(RES[13]), .CO(C14));
    ADDER ADD15(.A(N1[14]), .B(N2[14]), .CI(C14), .R(RES[14]), .CO(C15));
    ADDER ADD16(.A(N1[15]), .B(N2[15]), .CI(C15), .R(RES[15]), .CO(RES[16]));

endmodule

module SUB16b (N1,N2,RES);
    // Inputs
    input wire [15:0] N1,N2;

    // Outpus
    output wire [16:0] RES;

    // Wires
    wire C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15;

    // SUBTRACTORS
    SUBTRACTOR SUBB1(.A(N1[0]), .B(N2[0]), .BI(1'b0), .D(RES[0]), .BO(C1));
    SUBTRACTOR SUBB2(.A(N1[1]), .B(N2[1]), .BI(C1), .D(RES[1]), .BO(C2));
    SUBTRACTOR SUBB3(.A(N1[2]), .B(N2[2]), .BI(C2), .D(RES[2]), .BO(C3));
    SUBTRACTOR SUBB4(.A(N1[3]), .B(N2[3]), .BI(C3), .D(RES[3]), .BO(C4));
    SUBTRACTOR SUBB5(.A(N1[4]), .B(N2[4]), .BI(C4), .D(RES[4]), .BO(C5));
    SUBTRACTOR SUBB6(.A(N1[5]), .B(N2[5]), .BI(C5), .D(RES[5]), .BO(C6));
    SUBTRACTOR SUBB7(.A(N1[6]), .B(N2[6]), .BI(C6), .D(RES[6]), .BO(C7));
    SUBTRACTOR SUBB8(.A(N1[7]), .B(N2[7]), .BI(C7), .D(RES[7]), .BO(C8));
    SUBTRACTOR SUBB9(.A(N1[8]), .B(N2[8]), .BI(C8), .D(RES[8]), .BO(C9));
    SUBTRACTOR SUBB10(.A(N1[9]), .B(N2[9]), .BI(C9), .D(RES[9]), .BO(C10));
    SUBTRACTOR SUBB11(.A(N1[10]), .B(N2[10]), .BI(C10), .D(RES[10]), .BO(C11));
    SUBTRACTOR SUBB12(.A(N1[11]), .B(N2[11]), .BI(C11), .D(RES[11]), .BO(C12));
    SUBTRACTOR SUBB13(.A(N1[12]), .B(N2[12]), .BI(C12), .D(RES[12]), .BO(C13));
    SUBTRACTOR SUBB14(.A(N1[13]), .B(N2[13]), .BI(C13), .D(RES[13]), .BO(C14));
    SUBTRACTOR SUBB15(.A(N1[14]), .B(N2[14]), .BI(C14), .D(RES[14]), .BO(C15));
    SUBTRACTOR SUBB16(.A(N1[15]), .B(N2[15]), .BI(C15), .D(RES[15]), .BO(RES[16]));

endmodule