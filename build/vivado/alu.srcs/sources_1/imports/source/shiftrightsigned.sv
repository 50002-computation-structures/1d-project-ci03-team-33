/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module shiftrightsigned #(
        parameter SHIFT = 4'h8
    ) (
        input wire [31:0] a,
        input wire shift,
        input wire pad,
        output reg [31:0] out
    );
    logic [4:0] R_2a4d3499_i;
    logic [5:0] RR_2a4d3499_i;
    logic [31:0] M_mux_2_32_s0;
    logic [31:0][1:0] M_mux_2_32_in;
    logic [31:0] M_mux_2_32_out;
    
    genvar idx_0_1723877263;
    
    generate
        for (idx_0_1723877263 = 0; idx_0_1723877263 < 32; idx_0_1723877263 = idx_0_1723877263 + 1) begin: forLoop_idx_0_1723877263
            mux_2 mux_2_32 (
                .s0(M_mux_2_32_s0[idx_0_1723877263]),
                .in(M_mux_2_32_in[idx_0_1723877263]),
                .out(M_mux_2_32_out[idx_0_1723877263])
            );
        end
    endgenerate
    
    
    logic [31:0] shifted_bits;
    always @* begin
        shifted_bits = {{SHIFT{pad}}, a[5'h1f:SHIFT]};
        M_mux_2_32_in = {{2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0, 2'h0}};
        M_mux_2_32_s0 = {6'h20{shift}};
        for (RR_2a4d3499_i = 0; RR_2a4d3499_i < 6'h20; RR_2a4d3499_i = RR_2a4d3499_i + 1) begin
      R_2a4d3499_i = (0) + RR_2a4d3499_i * (1);
            M_mux_2_32_in[R_2a4d3499_i][1'h0] = a[R_2a4d3499_i];
            M_mux_2_32_in[R_2a4d3499_i][1'h1] = shifted_bits[R_2a4d3499_i];
        end
        out = M_mux_2_32_out;
    end
    
    
endmodule