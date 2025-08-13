// mux 2 to 1 mux 
modul CP_mux_2_to_1_line (		o_y,
								i_en_,
								i_sel,
								i_i0,
								i_i1);
							
	output					o_y;
	
	input					i_en_;
	input					i_sel;
	input					i_i0;
	input					i_i1;
	
	assign o_y = i_en_ ? (1'bz) : (i_sel ? (i_i1) : (i_i0) ) ;
	
endmodule

// ------------------------------------------------
// test bench for mux_2_to_1_line
module top();
// no port list 

// signal initialisation
	wire 		top_z;
	
	reg			top_en;
	reg 		top_sel;
	reg 		top_i0;
	reg 		top_i1;
	
// Dut instantaneous 
	CP_mux_2_to_1_line dut(	.o_y(top_z),
							.i_en_(top_en),
							.i_sel(top_sel),
							.i_i0(top_i0),
							.i_i1(top_i1));
	// enable signal
	initial begin
					top_en = 1'b1;
			#100	top_en = 1'b0;
			#100;
	end
	
	// select signal
	initial	begin
					top_sel = 1'b0;
			#20     top_sel = 1'b1;
			#20		top_sel = 1'b0;
			#80		top_sel = 1'b1;
			#20		top_sel = 1'b0;
			#20		top_sel = 1'b1; #40;
			
	end
	
	// input signal
	initial begin
				top_i0 = 1'b0 ;		top_i1 = 1'b1 ;
			#20 top_i0 = 1'b1 ;
			#10 					top_i1 = 1'b0 ;
			#20 top_i0 = 1'b0 ;		
			#10 					top_i1 = 1'b1 ;
			#40						top_i1 = 1'b0 ;
			#20 top_i0 = 1'b1 ;
			#40 top_i0 = 1'b0 ;		top_i1 = 1'b1 ;
			#20 					top_i1 = 1'b0 ;
			#20;
	end
	
endmodule
	
