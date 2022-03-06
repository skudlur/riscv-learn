/*
module load_byte_v2
#(
	parameter OFFSET = 4'b0,
	parameter OPCODE_VALID = 7'b0000001
)
(
	input logic clk, reset,
	input logic [6:0] op_code,
	input logic signed [7:0] reg_data_in, 
	
	output logic signed [7:0] reg_dest

);

import 

	always begin
		if(reset || op_code != OPCODE_VALID)
			res_dest <= 8'b0;
		else 
			reg32 R1 (clk, reset, reg_data_in, reg_dest);
	end
endmodule
*/