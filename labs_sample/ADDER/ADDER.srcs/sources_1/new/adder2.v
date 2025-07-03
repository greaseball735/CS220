`timescale 1ns / 1ps

module adder2(a, b, cin, s, cout);
input [1:0] a, b;
output [1:0] s;
input cin;
output cout;


LUT6_2 #(
.INIT(64'h000006600000F880) // Specify LUT Contents
) LUT6_inst_1 (
.O6(pro), // LUT general output
.O5(gen),
.I0(a0), // LUT input
.I1(b0), // LUT input
.I2(a1), // LUT input
.I3(b1), // LUT input
.I4(1'd0), // LUT input
.I5(1'd1) // LUT input
);


CARRY4 CARRY4_inst (
.CO(cout), // 4-bit carry out
.O(), // 4-bit carry chain XOR data out
.CI(cin), // 1-bit carry cascade input
.CYINIT(1'd0), // 1-bit carry initialization
.DI(gen), // 4-bit carry-MUX data in
.S(pro) // 4-bit carry-MUX select input
);


single_LUT_sum_gen x(a,b,cin,s);




endmodule


//module TwoBitAdder(
//    input [1:0] A,     // Two bits of input A
//    input [1:0] B,     // Two bits of input B
//    input Cin,         // Carry-in
//    output [1:0] S,    // Two sum bits
//    output Cout        // Carry-out
//);
//    wire [1:0] G, P;   // Generate and Propagate for each bit
//    wire Carry_out;    // Carry between the two bits

//    // LUT6_2 for Generate and Propagate
//    // LUT6 computes both G and P in a single instance
//    (* LUT_MAP="yes" *)
//    LUT6_2 #(
//        .INIT(64'hE888_8000_6996_6996) // Truth table for G and P
//    ) LUT_G_P (
//        .I0(A[0]), .I1(B[0]),   // First bit inputs
//        .I2(A[1]), .I3(B[1]),   // Second bit inputs
//        .I4(1'b0), .I5(1'b0),   // Not used for this logic
//        .O6(G[1]),              // G = A1 & B1 | (A1 ^ B1) & A0 & B0
//        .O5(P[1])               // P = (A1 ^ B1) & (A0 ^ B0)
//    );

//    // CARRY4 for Carry Propagation
//    (* CARRY4_MAP="yes" *)
//    CARRY4 carry4_inst (
//        .CI(Cin),               // Carry-in from previous stage
//        .CO({Cout, Carry_out}), // Carry-out signals
//        .DI(G),                 // Generate signals
//        .S(P)                   // Propagate signals
//    );

//    // Sum calculation using XOR
//    assign S[0] = A[0] ^ B[0] ^ Cin;
//    assign S[1] = A[1] ^ B[1] ^ Carry_out;

//endmodule
