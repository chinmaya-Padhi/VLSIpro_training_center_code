/* ............................................. */
// 4 bit comparator .
// comparing 2 binary number 
// DATA_WIDTH = 8
//  ------------------------------------------------------

module comparator_8bit (	o_gt,
							o_lt,
							o_eq,
							i_a,
							i_b );
					
	parameter				DATA_WIDTH= 8 ;
	
	output					o_gt ;
	output					o_lt ;
	output					o_eq ;
	
	input [DATA_WIDTH-1:0]  i_a ;
	input [DATA_WIDTH-1:0]  i_b ;
	
	assign o_gt = i_a > i_b ;
	assign o_lt = i_a < i_b ;
	assign o_eq = i_a == i_b ;

endmodule
