module alu_32bit (
    input [31:0] A, B,
    input [2:0] sel,
    input Cin,
    output reg [31:0] result,
    output Zero, Carry, Sign
);

wire [31:0] and_out, or_out, xor_out, xnor_out, not_a;
wire [31:0] add_out, sub_out;
wire c_out_final, sub_cout;

// Logical Operations
assign and_out  = A & B;
assign or_out   = A | B;
assign xor_out  = A ^ B;
assign xnor_out = ~(A ^ B);
assign not_a    = ~A;

// Arithmetic Operations
adder_32bit adder(A, B, Cin, add_out, c_out_final);
adder_32bit subtr(A, ~B, 1'b1, sub_out, sub_cout);

// Operation Selection
always @(*) begin
    case (sel)
        3'b000: result = and_out;
        3'b001: result = or_out;
        3'b010: result = xnor_out;
        3'b011: result = xor_out;
        3'b100: result = add_out;
        3'b101: result = sub_out;
        3'b110: result = A;     
        3'b111: result = not_a;
        default: result = 32'b0;
    endcase
end

// Flags
assign Zero  = (result == 32'b0);
assign Carry = c_out_final;
assign Sign  = result[31];

endmodule