module main(clk, pc, inst);
    input clk;
    input [31:0] inst;
    output reg [31:0] pc;
    wire new_pc;
    
    initial begin
        pc = 100;
    end
    assign new_pc = pc;
    cpu_design cpu(clk, new_pc, inst);
    always @(posedge clk) begin
        pc = pc + 4;
    end
    
endmodule