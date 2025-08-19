// mux_2_to_1_line with 32 bit 
module CP_mux_2_to_1_line_32b (	o_y,
								i_en,
								i_sel,
								i_i0,
								i_i1);
								
	parameter  	DATA_WIDTH = 32;
	
	output	[DATA_WIDTH-1 : 0]	o_y;
	
	input 						i_en;
	input						i_sel;
	input 	[DATA_WIDTH-1 : 0]	i_i0;
	input	[DATA_WIDTH-1 : 0] 	i_i1;
	
// functionality
	assign o_y = i_en ? (32'hzzzz_zzzz) : (i_sel ? (i_i1) : (i_i0) ) ;
	
endmodule

// Testbench  ---------------

// test bench for mux_2_to_1_line_32b
module top();
// no port list 

// signal initialisation
	wire 		[31:0] top_z;
	
	reg			top_en;
	reg 		top_sel;
	reg 		[31:0] top_i0;
	reg 		[31:0] top_i1;
	
// Dut instantaneous 
	CP_mux_2_to_1_line_32b	dut (	.o_y(top_z),
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
				top_i0 = 32'h0000_0000 ;		top_i1 = 32'h0000_0001 ;
			#20 top_i0 = 32'h0000_0001;
			#10 								top_i1 =32'h0000_0000 ;
			#20 top_i0 = 32'h0000_0000 ;		
			#10 								top_i1 = 32'h0000_0001 ;
			#40									top_i1 = 32'h0000_0000 ;
			#20 top_i0 = 32'h0000_0001 ;
			#40 top_i0 = 32'h0000_0000 ;		top_i1 = 32'h0000_0001 ;
			#20 					top_i1 = 32'h0000_0000 ;
			#20;
			
	end
	
endmodule
	
