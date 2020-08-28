module Datamem(mr, mqb, mwmem, do);
    input mwmem;
    input [31:0] mr;
    input [31:0] mqb;
    output reg [31:0] do;
    reg [31:0] ram [0:31];
    
    initial begin
         ram[0] = 32'hA00000AA;
         ram[1] = 32'h10000011;
         ram[2] = 32'h20000022;
         ram[3] = 32'h30000033;
         ram[4] = 32'h40000044;
         ram[5] = 32'h50000055;
         ram[6] = 32'h60000066;
         ram[7] = 32'h70000077;
         ram[8] = 32'h80000088;
         ram[9] = 32'h90000099;
    end
    
    always @ (mwmem == 1) begin
        do <= ram[mr/4];
    end
    
endmodule
