
module MEM_WB(clk, mwreg, mm2reg, meout, mr, do, MEM_W);
    input clk;
    input mwreg, mm2reg;
    input [4:0] meout;
    input [31:0] mr;
    input [31:0] do;
    output reg [67:0] MEM_W;
    
    always @ (posedge clk) begin
        MEM_W <= {mwreg, mm2reg, meout, mr, do};    
    end
endmodule
