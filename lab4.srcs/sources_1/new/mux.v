module mux1(regrt, rd, rt, out);
    input regrt;
    input [04:00] rd;
    input [04:00] rt;
    output reg [04:00] out;
    
    always @(*) begin
        case(regrt)
            0: out <= rd;
            1: out <= rt;
        endcase
    end
endmodule
