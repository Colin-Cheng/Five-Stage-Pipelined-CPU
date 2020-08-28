module mux2(ealuimm, eqb, ee_out, b_out);
    input ealuimm;
    input [31:00] eqb;
    input [31:00] ee_out;
    output reg [31:00] b_out;
    
    always @(*) begin
        case(ealuimm)
            0: b_out <= eqb;
            1: b_out <= ee_out;
        endcase
    end
endmodule
