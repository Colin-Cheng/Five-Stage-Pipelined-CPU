module regfile (rs,rt,clk,qa,qb); // 32x32 regfile
    input [4:0] rs; // reg # of read port A
    input [4:0] rt; // reg # of read port B
    input clk;
    output [31:0] qa, qb; // read ports A and B
    reg [31:0] register [0:31]; // 31 32-bit registers
    initial begin
        register[0] = 32'h00000000;
        register[1] = 32'h00000000;
        register[2] = 32'h00000001;
        register[3] = 32'h00000002;
        register[4] = 32'h00000003;
        register[5] = 32'h00000004;
        register[6] = 32'h00000005;
        register[7] = 32'h00000006;
        register[8] = 32'h00000007;
        register[9] = 32'h00000008;
    end
    assign qa = (rs == 0)? 0 : register[rs]; // read port A
    assign qb = (rt == 0)? 0 : register[rt]; // read port B
    
endmodule