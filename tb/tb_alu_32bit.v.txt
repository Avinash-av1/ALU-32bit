module tb_alu_32bit;

reg [31:0] A, B;
reg [2:0] sel;
reg Cin;

wire [31:0] result;
wire Zero, Carry, Sign;

// Instantiate ALU
alu_32bit uut (
    .A(A), .B(B), .sel(sel), .Cin(Cin),
    .result(result), .Zero(Zero), .Carry(Carry), .Sign(Sign)
);

initial begin
    A = 32'hAAAAAAAA;
    B = 32'h55555555;
    Cin = 0;

    // Logical Operations
    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;

    // Arithmetic
    sel = 3'b100; #10;
    sel = 3'b101; #10;

    // Buffer & NOT
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    #50 $finish;
end

endmodule