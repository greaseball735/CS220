`timescale 1ns / 1ps
module ALU(
    input [31:0] A, // Operand 1
    input [31:0] B, // Operand 2
    input [4:0] ALUControl, // ALU Control Signal
    output reg [31:0] Result, // ALU Output
    output Zero // Zero Flag
);

    // always @(*) begin
    //     case (ALUControl)
    //         5'b00000: Result = A + B; 
    //         5'b00001: Result = A & B; 
    //         5'b00010: Result = A | B; 
    //         5'b00011: Result = A ^ B; 
    //         5'b00100: Result = (A < B) ? 32'b1 : 32'b0; 
    //         5'b00101: Result = 0 //lui // NOT (NOR operation simulated as NOT A)
    //         5'b00110: Result =  A - B       //B << A[4:0];/ // SLL (Shift Left Logical)
    //         5'b10100: Result =  ~(A- B); // SRL (Shift Right Logical)
    //         5'b00111: Result = (A < B) ? 32'b1 : 32'b0;   
    //         5'b01000:Result = (A < B) ? 32'b1 : 32'b0; 
    //         5'b01000:Result = (A > B) ? 32'b1 : 32'b0; 
    //         5'b01001:Result = (A > B) ? 32'b1 : 32'b0; 
    //         5'b01010:Result = //BGTU
    //         // 5/ 4'b1101: Result = $signed(B) >>> A[4:0]; // SRA (Shift Right Arithmetic)
    //         5'b0111: Result = (A < B) ? 32'b1 : 32'b0; // SLT (Set Less Than)
    //         default: Result = 32'b0; // Default case
    //     endcase
    // end
    always @(*) begin
    case (ALUControl)
        5'b00000: Result = A + B;              // add, addi, addu, addiu
        5'b00001: Result = A & B;              // and, andi
        5'b00010: Result = A | B;              // or, ori
        5'b00011: Result = A ^ B;              // xor, xori
        5'b00100: Result = ($signed(A) < $signed(B)) ? 32'b1 : 32'b0; // slt, slti
        5'b00101: Result = {B[15:0], 16'b0};   // lui
        5'b00110: Result = (A == B) ? 32'b1 : 32'b0; // beq
        5'b00111: Result = ($signed(A) > $signed(B)) ? 32'b1 : 32'b0; // bgt, bgte
        5'b01000: Result = ($signed(A) < $signed(B)) ? 32'b1 : 32'b0; // ble, bleq
        5'b01001: Result = (A < B) ? 32'b1 : 32'b0;       // bleu (unsigned)
        5'b01010: Result = (A > B) ? 32'b1 : 32'b0;       // bgtu (unsigned)
        5'b01011: Result = A - B;              // sub, subu
        5'b01100: Result = B << shamt;         // sll
        5'b01101: Result = B >> shamt;         // srl
        5'b01110: Result = $signed(B) >>> shamt; // sra
        5'b01111: Result = ~A;                 // not
        5'b10000: Result = A * B;              // madd
        5'b10001: Result = A * B;              // maddu (you can handle HI/LO separately if needed)
        5'b10010: Result = A * B;              // mul
        5'b10011: Result = (A == B) ? 32'b1 : 32'b0; // seq
        default:  Result = 32'b0;
    endcase
end

    
    assign Zero = (Result == 32'b0) ? 1'b1 : 1'b0;

endmodule

// //alu op and funct
// module ALU (
//     ALUOp,
//     funct,
//     ALUControl

// );




// endmodule
