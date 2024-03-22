module Simple_Alu_test;
reg [7:0]A, B;
reg [1:0]Sel;
reg clk;
wire [15:0]Z;

Simple_Alu Alu1(.A(A),.B(B),.Sel(Sel),.clk(clk),.Z(Z));

initial
begin
        A = 0;
        B = 0;
        Sel = 2'b00;
        clk = 0;


        #10 A = 5;
        B = 3;
        Sel = 2'b00;

        #10 A = 6;
        B = 1;
        Sel = 2'b01;

        #10 A = 2;
        B = 3;
        Sel = 2'b10;

        #10 A = 6;
        B = 2;
        Sel = 2'b11;

end


always #6 clk = ~clk;
endmodule

