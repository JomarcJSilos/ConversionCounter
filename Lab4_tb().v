module Lab4_tb();
reg [3:0] sw;
reg [2:0] btn;

wire [6:0] hex2, hex1, hex0;

parameter time_out = 100;

Lab4 a (btn, sw, hex2, hex1, hex0);

initial $monitor(btn, sw, hex2, hex1, hex0);
always
begin

//btn0 BCD
btn = 6; 
sw = 5;
#10 sw = 11;

//btn1 DEC
btn = 5; 
sw = 5;
#10 sw = 11;

//btn0 HEX
btn = 3; 
sw = 5;
#10 sw = 11;

//btn2 + btn0
//btn0 + btn2
#10 btn = 2;
#10 sw = 5; 
#10 sw = 11;
end
endmodule
