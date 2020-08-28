module ALU(ealuc, eqa, b_out, r);
    input [3:0] ealuc;
    input [31:0] eqa;
    input [31:0] b_out;
    output reg [31:0] r;
    
    always @(*) begin
        case(ealuc)
            0: r <= eqa & b_out;
            1: r <= eqa | b_out;
            2: r <= eqa + b_out;
            3: r <= b_out << eqa;
            6: r <= eqa - b_out;
            7: r <= eqa < b_out ? 1 : 0;
            12: r <= ~(eqa | b_out);
        endcase
    end
endmodule