// 4bit ripple carry addder

module ripple_carry_adder (		o_sum,
								o_carry,
								i_a,
								i_b);
								
// port declaration....
	parameter					DATA_WIDTH = 4;
	
	output	[DATA_WIDTH-1:0]	o_sum ;
	output	                	o_carry ;
	
	input	[DATA_WIDTH-1:0]	i_a ;
	input	[DATA_WIDTH-1:0]	i_b	;

// arithmatic operation
	
	assign {o_sum , o_carry} = i_a + i_b ;
	
endmodule
