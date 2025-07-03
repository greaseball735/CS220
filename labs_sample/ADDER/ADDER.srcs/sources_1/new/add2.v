module single_slice_carry_gen_old(a,b,c_in,c_out, s);

input [7:0] a,b;
input c_in;
output [3:0] c_out;
output [7:0] s;

wire [3:0] prop,gen;




LUT6_2 #(
.INIT(64'h000006600000F880) // Specify LUT Contents
) LUT6_inst_1 (
.O6(prop[0]), // LUT general output
.O5(gen[0]),
.I0(a[0]), // LUT input
.I1(b[0]), // LUT input
.I2(a[1]), // LUT input
.I3(b[1]), // LUT input
.I4(1'd0), // LUT input
.I5(1'd1) // LUT input
);

LUT6_2 #(
.INIT(64'h000006600000F880) // Specify LUT Contents
) LUT6_inst_2 (
.O6(prop[1]), // LUT general output
.O5(gen[1]),
.I0(a[2]), // LUT input
.I1(b[2]), // LUT input
.I2(a[3]), // LUT input
.I3(b[3]), // LUT input
.I4(1'd0), // LUT input
.I5(1'd1) // LUT input
);

LUT6_2 #(
.INIT(64'h000006600000F880) // Specify LUT Contents
) LUT6_inst_3 (
.O6(prop[2]), // LUT general output
.O5(gen[2]),
.I0(a[4]), // LUT input
.I1(b[4]), // LUT input
.I2(a[5]), // LUT input
.I3(b[5]), // LUT input
.I4(1'd0), // LUT input
.I5(1'd1) // LUT input
);

LUT6_2 #(
.INIT(64'h000006600000F880) // Specify LUT Contents
) LUT6_inst_4 (
.O6(prop[3]), // LUT general output
.O5(gen[3]),
.I0(a[6]), // LUT input
.I1(b[6]), // LUT input
.I2(a[7]), // LUT input
.I3(b[7]), // LUT input
.I4(1'd0), // LUT input
.I5(1'd1) // LUT input
);



CARRY4 CARRY4_inst (
.CO(c_out), // 4-bit carry out
.O(), // 4-bit carry chain XOR data out
.CI(c_in), // 1-bit carry cascade input
.CYINIT(1'd0), // 1-bit carry initialization
.DI(gen), // 4-bit carry-MUX data in
.S(prop) // 4-bit carry-MUX select input
);



endmodule
//`timescale 1ns / 1ps
//module add2(

//    );
//endmodule


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
////    (* LUT_MAP="yes" *)
////64'hE888_8000_6996_6996
//    LUT6_2 #(
//        .INIT(64'b) // Truth table for G and P
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
