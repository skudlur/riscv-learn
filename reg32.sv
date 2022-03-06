module reg32 
(
	input logic clk, reset,
	input logic [31:0]in_data,
	output logic [31:0]out_data
);

	always_ff @(posedge clk) begin
		if(reset)
			out_data <= 32'b0;
		else 
			out_data <= in_data;
	end
endmodule
