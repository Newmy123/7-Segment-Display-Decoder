module lab2_part2 (
	input [3:0] SW,
	output [0:6] HEX0,HEX1
);
	wire z;
	wire [3:0] A;
	wire [3:0] d0;
	wire [3:0] d1;
	
	// z = 1 when V > 9 
	assign z = SW[3] & (SW[2] | SW[1]);
	// A = z - 10 when V > 9
	assign A = SW - 4'd10;
	
	//multiplexer logic: select between V and A
	assign d0 = z ? A : SW; //d0 is A when z = 1 ortherwise SW
	assign d1 = z ? 4'd1 : 4'd0; //d1 is 1 when z = 1 ortherwise 0
	
	// HEX0 display logic
    assign HEX0[0] = (~d0[3] & ~d0[2] & ~d0[1] & d0[0]) | //1
		     (~d0[3] & d0[2] & d0[1] & d0[0]) | //7
		     (~d0[3] & ~d0[2] & ~d0[1] & ~d0[0]); //0
	

    assign HEX0[1] = 
                     (~d0[3] & ~d0[2] & ~d0[1] & d0[0]) | //1
		     (~d0[3] & ~d0[2] & d0[1] & ~d0[0]) | //2
		     (~d0[3] & d0[2] & d0[1] & d0[0]) | //7
		     (~d0[3] & ~d0[2] & d0[1] & d0[0]); //3
	
	

    assign HEX0[2] = (~d0[3] & ~d0[2] & ~d0[1] & d0[0]) | //1
		     (~d0[3] & d0[2] & ~d0[1] & d0[0]) | //5
		     (~d0[3] & d0[2] & ~d0[1] & ~d0[0]) | //4
		     (~d0[3] & d0[2] & d0[1] & d0[0]) | //7
		     (d0[3] & ~d0[2] & ~d0[1] & d0[0]) | //9
		     (~d0[3] & ~d0[2] & d0[1] & d0[0]); //3


    assign HEX0[3] = (~d0[3] & ~d0[2] & ~d0[1] & d0[0]) | //1
		     (~d0[3] & d0[2] & ~d0[1] & ~d0[0]) | //4
		     (~d0[3] & d0[2] & d0[1] & d0[0]); //7


    assign HEX0[4] =  (~d0[3] & ~d0[2] & d0[1] & ~d0[0]); //2
	
		     
    assign HEX0[5] = (~d0[3] & d0[2] & d0[1] & ~d0[0]) | //6
		     (~d0[3] & d0[2] & ~d0[1] & d0[0]); //5


    assign HEX0[6] = (~d0[3] & ~d0[2] & ~d0[1] & d0[0]) | //1
		     (~d0[3] & d0[2] & ~d0[1] & ~d0[0]); //4
		    

			
	// 7-segment display logic for HEX1 (only 0 and 1 are needed)
	 assign HEX1[0] = (~d1[3] & ~d1[2] & ~d1[1] & d1[0]) | //1
			  (~d1[3] & ~d1[2] & ~d1[1] & ~d1[0]); //0
	 assign HEX1[1] = (~d1[3] & ~d1[2] & ~d1[1] & d1[0]); //1
	 assign HEX1[2] = (~d1[3] & ~d1[2] & ~d1[1] & d1[0]); //1
	 assign HEX1[3] = (~d1[3] & ~d1[2] & ~d1[1] & d1[0]); //1
	 assign HEX1[4] = 1'b0;
	 assign HEX1[5] = 1'b0;
	 assign HEX1[6] = (~d1[3] & ~d1[2] & ~d1[1] & d1[0]); //1
			  


endmodule 
	
