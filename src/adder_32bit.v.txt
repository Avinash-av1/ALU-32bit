module adder_32bit (
    input [31:0] A, B,
    input Cin,
    output [31:0] sum,
    output cout_final
);

wire [32:0] carry;
assign carry[0] = Cin;

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin : ripple
        full_adder fa(A[i], B[i], carry[i], sum[i], carry[i+1]);
    end
endgenerate

assign cout_final = carry[32];

endmodule