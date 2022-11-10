module Lab4(btn, sw, hex2, hex1, hex0);
input [2:0] btn;
input [3:0] sw;
output [6:0] hex2, hex1, hex0;

reg [4:0] disp2, disp1, disp0;

always @ (*) begin
	case (btn) // btn2 = HEX; btn 1 = DEC; btn0 = BIN;
		6: begin //btn 0 (001) BCD
			if (sw < 10 ) begin
				disp2 = 5'b01011; //displays b
				disp1 = 5'b10001; //clear
				disp0 = {1'b0, sw}; //displays input
			end
			else if (sw >= 10) begin
				disp2 = 5'b01011; //displays b
				disp1 = 5'b10001; //clear
				disp0 = 5'b01001; //displays 9
			end
		end
		5: begin //btn 1 (010) DEC
			if (sw < 10 ) begin
				disp2 = 5'b01101; //displays d
				disp1 = 5'b10001; //clear
				disp0 = {1'b0, sw}; //displays input
			end
			else if (sw >= 10) begin
				disp2 = 5'b01101; //displays d
				disp1 = 5'b00001; //displays 1
				disp0 = {1'b0, sw - 10}; 
			end
		end
		3: begin //btn 2 (100) HEX
				begin
				disp2 = 5'b10000; //displays h
				disp1 = 5'b10001; //clear
				disp0 = {1'b0, sw}; //displays input
				end
		end
		default : begin  
			disp2 = 5'b10001; //clear
			disp1 = 5'b10001; //clear
			disp0 = 5'b10001; //clear

end
endcase
end
SevenMod c(hex2, disp2);
SevenMod b(hex1, disp1);
SevenMod a(hex0, disp0);


endmodule
