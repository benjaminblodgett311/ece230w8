module mux4x1(
    input A, B, C, D,  
    input [1:0] Sel,
    output reg  Y 
);

    always @(*) begin 
            case (Sel) 
                2'b00: Y = D; 
                2'b01: Y = C | D;
                2'b10: Y = D;
                2'b11: Y = D;
            endcase
    end

endmodule
  