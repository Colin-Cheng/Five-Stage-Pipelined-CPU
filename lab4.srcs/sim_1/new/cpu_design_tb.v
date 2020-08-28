`timescale 1ns / 1ps

module cpu_design_tb();
    reg clk_tb;
    reg [31:0] inst_tb;
    
    wire [31:0] pc_tb;
    wire [31:0] IF_ID;
    wire [108:0] ID_EXE;
    wire [71:0] EXE_MEM;
    wire [67:0] MEM_WB;

    assign IF_ID = main_tb.cpu.if1.inst;
    assign ID_EXE = main_tb.cpu.id1.ID_EX;
    assign EXE_MEM = main_tb.cpu.em1.EXE_ME;
    assign MEM_WB = main_tb.cpu.mw1.MEM_W;
    
    main main_tb(clk_tb, pc_tb, inst_tb);
 
    initial begin
        clk_tb = 1;
        forever #10 clk_tb = ~clk_tb;
    end
    

    initial begin
        inst_tb = 32'h8c220000; //lw $2, 00($1)
        #20
        inst_tb = 32'h8c230004; //lw $3, 04($1)
        #20
        inst_tb = 32'h8c240008; //lw $4, 08($1)
        #20
        inst_tb = 32'h8c25000c; //lw $5, 12($1)
        #80
        $finish;
    end
endmodule
