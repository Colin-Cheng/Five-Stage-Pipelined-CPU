module ID_EXE(clk, wreg,m2reg,wmem,aluc,aluimm,out,qa,qb,e_out,ID_EX, ewreg, em2reg, ewmem, ealuc, ealuimm, eout, eqa, eqb, ee_out);
    input clk;
    input wreg, m2reg, wmem, aluimm;
    input [3:0] aluc;
    input [31:00] qa;
    input [31:00] qb;
    input [4:0] out;
    input [31:00] e_out;
    output reg [108:0] ID_EX;
    output reg ewreg, em2reg, ewmem, ealuimm;
    output reg [3:0] ealuc;
    output reg [4:0] eout;
    output reg [31:00] eqa;
    output reg [31:00] eqb;
    output reg [31:00] ee_out;
    
    always @ (posedge clk) begin
        ID_EX <= {wreg, m2reg, wmem, aluc, aluimm, out, qa, qb, e_out};    
        ewreg <= wreg;
        em2reg <= m2reg;
        ewmem <= wmem;
        ealuc <= aluc;
        ealuimm <= aluimm;
        eout <= out;
        eqa <= qa;
        eqb <= qb;
        ee_out <= e_out;
    end
endmodule
