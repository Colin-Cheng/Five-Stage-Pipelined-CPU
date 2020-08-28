module instruction_fetch(clk,inst, op, rs, rt, imm);
    input clk;
    input [31:0] inst;
    output reg [05:00] op;
    output reg [04:00] rs;
    output reg [04:00] rt;
    output reg [15:00] imm;
    always @ (posedge clk) begin
        op <= inst[31:26];
        rs <= inst[25:21];
        rt <= inst[20:16];
        imm <= inst[15:0];
    end
endmodule