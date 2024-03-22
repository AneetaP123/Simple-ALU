module Simple_Alu(A, B, clk, Sel, Z);
        input [7:0]A;
        input [7:0]B;
        input clk;
        input [1:0]Sel;
        output reg [15:0]Z;

        always@(posedge clk or Sel or A or B)
        begin
                case(Sel)
                        0:
                           assign Z = A + B;
                        1:
                           assign Z = A - B;
                        2:
                           assign Z = A * B;
                        3:
                           assign Z = A / B;
                endcase
        end
endmodule
