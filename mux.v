module mux( 	o_y,
				i_i0,
				i_i1,
				i_i2,
				i_i3,
				i_s0,
				i_s1);
				
	output  	o_y;
	
	input		i_i0;
	input		i_i1;
	input		i_i2;
	input		i_i3;
	input		i_s0;
	input		i_s1;
	
	assign o_y = i_s1 ? (i_s0 ? i_i3 : i_i2) : (i_s0 ? i_i1 : i_i0);
	
endmodule
