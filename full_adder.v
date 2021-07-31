module full_adder(
    input wire A,
    input wire B,
    input wire Cin,
    output wire S,
    output wire Cout
);
//signal declarations
wire w1;
wire w2;
wire w3;
//functionality
xor X0(w1, A, B);
xor X1(S, w1, Cin);
and A0( w2, w1 , Cin);
and A1(w3, A, B);
or O1(Cout, w2, w3);

endmodule