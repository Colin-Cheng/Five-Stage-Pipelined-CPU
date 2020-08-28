module EXE_MEM(clk, ewreg, em2reg, ewmem, eout, r, eqb, EXE_ME, mwreg, mm2reg, mwmem, mr, meout, mqb);
    input clk;
    input ewreg, em2reg, ewmem;
    input [4:0] eout;
    input [31:0] r;
    input [31:0] eqb;
    output reg [71:0] EXE_ME;
    output reg mwreg;
    output reg mm2reg;
    output reg mwmem;
    output reg [31:0] mr;
    output reg [31:0] meout;
    output reg [31:0] mqb;
    always @ (posedge clk) begin
        EXE_ME <= {ewreg, em2reg, ewmem, eout, r, eqb};    
        mwreg <= ewreg;
        mm2reg <= em2reg;
        mwmem <= ewmem;
        mr <= r;
        meout <= eout;
        mqb <= eqb;
    end

endmodule
