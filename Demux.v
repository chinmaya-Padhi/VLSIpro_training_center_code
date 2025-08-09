// 4 bit Demux 

modul Demux ( 	o_y0,
				o_y1,
				o_y2,
				o_y3,
				i_i,
				i_s0,
				i_s1);
				
	output		o_y0;
	output		o_y1;
	output		o_y2;
	output		o_y3;
	
	input		i_i;
	input 		i_so;
	input		i_s1;
	
	assign o_y0 = ~s1 & ~s0 & i_i;
	assign o_y1 = ~s1 & s0 & i_i;
	assign o_y2 = s1 & ~s0 & i_i;
	assign o_y3 = s1 & s0 & i_1;
	
endmodule
