module tb_alu(  );
reg [3:0]a;
reg [3:0]b;
reg  [3:0]opr;
wire [7:0]y;
alu dut (.a(a),
    .b(b),
    .opr(opr),
    .y(y));
initial begin

$monitor("The value of y is a:%d, b:%d, opr:%d, y:%d",a,b,opr,y);

 //addition
 a=6;b=3; opr =3'b000;#5;
 
 //subtraction
 a=6;b=3; opr =3'b001;#5;
 
 //mutliply
 a=6;b=3; opr =3'b010;#5;

//division
 a=6;b=3; opr =3'b011;#5;
 
 //and
 a=6;b=3; opr =3'b100;#5;
 
 //or
 a=6;b=3; opr =3'b101;#5;
 
 //left shift
 a=6; opr =3'b110;#5;
 
 //right shift
 a=6; opr =3'b111;#5;

#5;
$finish;
end
endmodule
