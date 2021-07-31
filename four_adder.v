
module four_adder(
    input wire [3:0]a,b,
    input wire cin,
    output wire [3:0]s,
    output wire cout
);
//Signal declarations
wire [2:0]W;
//functionality
full_adder f0 (a[0],b[0],cin,s[0],W[0]);
full_adder f1 (a[1],b[1],W[0] ,s[1],W[1]);
full_adder f2 (a[2],b[2],W[1] ,s[2],W[2]);
full_adder f3 (a[3],b[3],W[2] ,s[3],cout);

endmodule