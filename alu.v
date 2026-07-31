module alu(
input [3:0]a,
input [3:0]b,
input [3:0]opr,
output reg [7:0]y
    );
    always@(*)begin
    case(opr)
    3'b000 : y = a + b; //addition
    
    3'b001 : y = a - b; //subtraction
     
    3'b010 : y = a * b; //multiply
     
    3'b011 :begin
 if(b!=0)
   y = a/b;
 else 
   y = 0;
   end
   
    3'b100 : y = a  & b; //and
    
    3'b101 : y = a | b; //or 
    
    3'b110 : y = a << 1; // left shift
    
    3'b111 : y = a  >> 1; //right shift
    
    default : y = 8'bxxx;
    endcase
    end
endmodule
