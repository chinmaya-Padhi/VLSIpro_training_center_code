// half adder ................
module hf_add ( o_sum,
				o_carry,
				i_a,
				i_b);

// port declaration ......

	output 		o_sum ;
	output  	o_carry ;
	
	input   	i_a ;
	input 		i_b ;

// functionality.......

	assign { o_carry,o_sum } = i_a + i_b ;

endmodule
