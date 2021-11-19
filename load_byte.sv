module load_byte
#(
	parameter OFFSET = 0,
	parameter LOAD_BYTE_OP = 7'b0000001
)
(
	input logic [6:0] op_code,
	input logic signed [7:0] reg_data_in, 
	
	output logic signed [7:0] reg_dest

); 

// reg_data_in here is to represent the register data from the memory.

// reg_dest is to represent the destination register. The data from the other register gets loaded to this for further use.

	always begin
		if(op_code == LOAD_BYTE_OP)
			reg_dest = reg_data_in;
	end

endmodule
