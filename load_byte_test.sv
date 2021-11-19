module load_byte_test();

	reg [6:0] op_code;
	reg [7:0] reg_data_in;
	
	wire [7:0] reg_dest;
	
	load_byte dut (op_code, reg_data_in, reg_dest);
	
	initial begin
		op_code = 7'b0000001; reg_data_in = 8'b0000_0001; #10
		assert (reg_dest == 8'b0000_0001) else $error ("opcode error.");
		
		op_code = 7'b0000001; reg_data_in = 8'b0110_1001; #10
		assert (reg_dest == 8'b0110_1001) else $error ("opcode error.");
		
		op_code = 7'b0000011; reg_data_in = 8'b1111_1111; #10
		assert (reg_dest == 8'b1111_1111) else $error ("opcode error.");
		
		op_code = 7'b0000001; reg_data_in = 4'b0101; #10
		assert (reg_dest == 4'b0101) else $error ("opcode error.");
		
		op_code = 7'b0001001; reg_data_in = 8'b0101_1001; #10
		assert (reg_dest == 8'b0101_1001) else $error ("opcode error.");
		
		op_code = 7'b0000001; reg_data_in = 8'b1010_0101; #10
		assert (reg_dest == 8'b1010_0101) else $error ("opcode error.");
	end
endmodule
	