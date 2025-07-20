module alu_1bit (
    input a, b, cin,      // Inputs: a, b, carry-in
    input [2:0] op,       // Operation select: 000=ADD, 001=SUB, 010=AND, 011=OR, 100=XOR
    output reg result,    // Result output
    output reg cout       // Carry-out
);
    always @(*) begin
        case (op)
            3'b000: {cout, result} = a + b + cin;          // Addition
            3'b001: {cout, result} = a - b - cin;          // Subtraction
            3'b010: {cout, result} = {1'b0, a & b};       // AND
            3'b011: {cout, result} = {1'b0, a | b};       // OR
            3'b100: {cout, result} = {1'b0, a ^ b};       // XOR
            default: {cout, result} = {1'b0, 1'b0};       // Default
        endcase
    end
endmodule
