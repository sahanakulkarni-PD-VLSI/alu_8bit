module alu_8bit (
    input [7:0] a, b,     // 8-bit inputs
    input [2:0] op,       // Operation select
    input cin,            // Carry-in
    output [7:0] result,  // 8-bit result
    output cout           // Carry-out
);
    wire [7:0] carry;     // Intermediate carries

    alu_1bit alu0 (.a(a[0]), .b(b[0]), .cin(cin), .op(op), .result(result[0]), .cout(carry[0]));
    alu_1bit alu1 (.a(a[1]), .b(b[1]), .cin(carry[0]), .op(op), .result(result[1]), .cout(carry[1]));
    alu_1bit alu2 (.a(a[2]), .b(b[2]), .cin(carry[1]), .op(op), .result(result[2]), .cout(carry[2]));
    alu_1bit alu3 (.a(a[3]), .b(b[3]), .cin(carry[2]), .op(op), .result(result[3]), .cout(carry[3]));
    alu_1bit alu4 (.a(a[4]), .b(b[4]), .cin(carry[3]), .op(op), .result(result[4]), .cout(carry[4]));
    alu_1bit alu5 (.a(a[5]), .b(b[5]), .cin(carry[4]), .op(op), .result(result[5]), .cout(carry[5]));
    alu_1bit alu6 (.a(a[6]), .b(b[6]), .cin(carry[5]), .op(op), .result(result[6]), .cout(carry[6]));
    alu_1bit alu7 (.a(a[7]), .b(b[7]), .cin(carry[6]), .op(op), .result(result[7]), .cout(cout));
endmodule
