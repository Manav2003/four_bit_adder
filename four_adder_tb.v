module four_adder_tb();
//signals
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;

//instantiation
four_adder DUT(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);
//dumping
initial begin
    $dumpfile("fourBit_adder.vcd");
    $dumpvars(0,four_adder_tb);
end

//stimulation

initial begin
    #5;
    a=4'b0000;
    b=4'b0000;
    cin=0;
    #5;
    a=4'b1101;
    b=4'b0010;
    cin=0;
    #5;
    a=4'b1101;
    b=4'b0010;
    cin=1;
    #5;
    a=4'b1010;
    b=4'b0011;
    cin=1;
    #5;
    a=4'b1000;
    b=4'b1000;
    cin=1;
    #5;
    $finish;
end
endmodule