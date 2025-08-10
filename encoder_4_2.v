// 4 : 2 encoder

module encoder_4_2 (	o_y0,
						o_y1,
						i_i0,
						i_i1,
						i_i2,
						i_i3);
	
	output				o_y0;
	output				o_y1;
	
	input				i_i0;
	input				i_i1;
	input				i_i2;
	input				i_i3;
	
	assign o_y0 = i_i1 | i_i3;
	assign o_y1 = i_i2 | i_i3;
	
endmodule
