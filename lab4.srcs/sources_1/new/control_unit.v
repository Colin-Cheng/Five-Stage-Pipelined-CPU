module control_unit(op, wreg, m2reg, wmem, aluc, aluimm, regrt);
    input [5:0] op;
    output reg wreg;
    output reg m2reg;
    output reg wmem;
    output reg [3:0] aluc;
    output reg aluimm;
    output reg regrt;
    
    always @(op) begin 
        wreg <= 1;
        m2reg <= 1;
        wmem <= 0;
        aluc <= 4'b0010;
        aluimm <= 1;
        regrt <= 1;
    end 
    
endmodule
