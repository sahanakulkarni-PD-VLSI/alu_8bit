module alu_8bit_tb;
    reg [7:0] a, b;
    reg [2:0] op;
    reg cin;
    wire [7:0] result;
    wire cout;

    alu_8bit dut (.a(a), .b(b), .op(op), .cin(cin), .result(result), .cout(cout));

    initial begin
        $dumpfile("alu_8bit.vcd");
        $dumpvars(0, alu_8bit_tb);

        // Test Case 1: Addition (a=10, b=5, op=000)
        a = 8'd10; b = 8'd5; op = 3'b000; cin = 0;
        #10;
        $display("ADD: %d + %d = %d, Cout = %b", a, b, result, cout);

        // Test Case 2: Subtraction (a=10, b=5, op=001)
        op = 3'b001;
        #10;
        $display("SUB: %d - %d = %d, Cout = %b", a, b, result, cout);

        // Test Case 3: AND (a=10, b=5, op=010)
        op = 3'b010;
        #10;
        $display("AND: %d & %d = %d", a, b, result);

        // Test Case 4: OR (a=10, b=5, op=011)
        op = 3'b011;
        #10;
        $display("OR: %d | %d = %d", a, b, result);

        // Test Case 5: XOR (a=10, b=5, op=100)
        op = 3'b100;
        #10;
        $display("XOR: %d ^ %d = %d", a, b, result);

        #10 $finish;
    end
endmodule
