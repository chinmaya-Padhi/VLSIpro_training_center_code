odule fa_add ( o_sum,
				o_carry,
				i_a,
				i_b
				i_cin);

// port declaration ......

	output 		o_sum ;
	output  	o_carry ;
	
	input   	i_a ;
	input 		i_b ;
	input		i_cin

// functionality.......

	assign {o_sum , o_carry} = i_a + i_b + i_cin ;

endmodule
