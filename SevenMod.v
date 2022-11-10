module SevenMod(IN, disp);
input [4:0] IN;
output [6:0] disp; 

reg [6:0] disp;

always @ (IN)
begin
	case (IN)
		5'b00000 : disp = 7'b1000000;
		5'b00001 : disp = 7'b1111001;
		5'b00010 : disp = 7'b0100100;
		5'b00011 : disp = 7'b0110000;
		5'b00100 : disp = 7'b0011001;
		5'b00101 : disp = 7'b0010010;
		5'b00110 : disp = 7'b0000010;
		5'b00111 : disp = 7'b1111000;
		5'b01000 : disp = 7'b0000000;
		5'b01001 : disp = 7'b0010000;
		5'b01010 : disp = 7'b0001000;
		5'b01011 : disp = 7'b0000011;
		5'b01100 : disp = 7'b0000110;
		5'b01101 : disp = 7'b0100001;
		5'b01110 : disp = 7'b0000110;
		5'b01111 : disp = 7'b0001110;
		5'b10000 : disp = 7'b0001001; // displays H
		5'b10001 : disp = 7'b1111111; // displays blank
	endcase
end
endmodule
