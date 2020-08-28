module cpu_design(clk, pc, inst);
    input clk;
    input [31:0] inst;
    output [31:0] pc;
    wire [05:00] op;
    wire [04:00] rs;
    wire [04:00] rt;
    wire [04:00] rd;
    wire [15:00] imm;
    wire [31:0] qa, qb;
    wire [3:0] aluc;
    wire wreg;
    wire m2reg;
    wire wmem;
    wire aluimm;
    wire [31:0] e_out;
    wire [04:00] out;
    wire [31:0] eqa, eqb;
    wire [3:0] ealuc;
    wire ewreg;
    wire em2reg;
    wire ewmem;
    wire ealuimm;
    wire [31:0] ee_out;
    wire [04:00] eout;
    wire [31:00] b_out;
    wire [31:00] r;
    wire mwreg;
    wire mm2reg;
    wire mwmem;
    wire regrt;
    wire [108:0] ID_EX;
    wire [71:0] EXE_ME;
    wire [31:0] mr;
    wire [31:0] mqb;
    wire [31:0] meout;
    wire [31:0] do;

    instruction_fetch if1(clk, inst, op, rs, rt, imm);
    
    control_unit C1(op, wreg, m2reg, wmem, aluc, aluimm, regrt);
    
    mux1 M1(regrt, rd, rt, out);
    
    SgnExt S1(imm, e_out);
    
    regfile R1 (rs,rt,clk,qa,qb);
    
    ID_EXE id1(clk, wreg,m2reg,wmem,aluc,aluimm,out,qa,qb,e_out,ID_EX, ewreg, em2reg, ewmem, ealuc, ealuimm, eout, eqa, eqb, ee_out);
    
    mux2 M2(ealuimm, eqb, ee_out, b_out);
    
    ALU alu(ealuc, eqa, b_out, r);
    
    EXE_MEM em1(clk, ewreg, em2reg, ewmem, eout, r, eqb, EXE_ME, mwreg, mm2reg, mwmem, mr, meout, mqb);
    
    Datamem D1(mr, mqb, mwmem, do);
    
    MEM_WB mw1(clk, mwreg, mm2reg, meout, mr, do, MEM_W);
     
endmodule
