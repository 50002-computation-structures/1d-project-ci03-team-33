/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn,
        output reg [31:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    logic [4:0] R_532f4619_i;
    logic [5:0] RR_532f4619_i;
    localparam _MP_SIZE_1345123947 = 6'h20;
    logic [31:0] M_adder1_a;
    logic [31:0] M_adder1_b;
    logic [5:0] M_adder1_alufn;
    logic [31:0] M_adder1_out;
    logic M_adder1_z;
    logic M_adder1_v;
    logic M_adder1_n;
    
    adder #(
        .SIZE(_MP_SIZE_1345123947)
    ) adder1 (
        .a(M_adder1_a),
        .b(M_adder1_b),
        .alufn(M_adder1_alufn),
        .out(M_adder1_out),
        .z(M_adder1_z),
        .v(M_adder1_v),
        .n(M_adder1_n)
    );
    
    
    logic M_compare_z;
    logic M_compare_v;
    logic M_compare_n;
    logic [5:0] M_compare_alufn;
    logic [31:0] M_compare_cmp;
    
    compare compare (
        .z(M_compare_z),
        .v(M_compare_v),
        .n(M_compare_n),
        .alufn(M_compare_alufn),
        .cmp(M_compare_cmp)
    );
    
    
    localparam _MP_SIZE_1737349699 = 6'h20;
    logic [31:0] M_boolean1_a;
    logic [31:0] M_boolean1_b;
    logic [5:0] M_boolean1_alufn;
    logic [31:0] M_boolean1_bool;
    
    boolean #(
        .SIZE(_MP_SIZE_1737349699)
    ) boolean1 (
        .a(M_boolean1_a),
        .b(M_boolean1_b),
        .alufn(M_boolean1_alufn),
        .bool(M_boolean1_bool)
    );
    
    
    logic [31:0] M_shifter1_a;
    logic [4:0] M_shifter1_b;
    logic [5:0] M_shifter1_alufn;
    logic [31:0] M_shifter1_shift;
    
    shifter shifter1 (
        .a(M_shifter1_a),
        .b(M_shifter1_b),
        .alufn(M_shifter1_alufn),
        .shift(M_shifter1_shift)
    );
    
    
    logic [31:0] M_multiplier1_a;
    logic [31:0] M_multiplier1_b;
    logic [31:0] M_multiplier1_mul;
    
    multiplier multiplier1 (
        .a(M_multiplier1_a),
        .b(M_multiplier1_b),
        .mul(M_multiplier1_mul)
    );
    
    
    logic [31:0] M_mux4_final32_s0;
    logic [31:0] M_mux4_final32_s1;
    logic [31:0][3:0] M_mux4_final32_in;
    logic [31:0] M_mux4_final32_out;
    
    genvar idx_0_226191059;
    
    generate
        for (idx_0_226191059 = 0; idx_0_226191059 < 32; idx_0_226191059 = idx_0_226191059 + 1) begin: forLoop_idx_0_226191059
            mux_4 mux4_final32 (
                .s0(M_mux4_final32_s0[idx_0_226191059]),
                .s1(M_mux4_final32_s1[idx_0_226191059]),
                .in(M_mux4_final32_in[idx_0_226191059]),
                .out(M_mux4_final32_out[idx_0_226191059])
            );
        end
    endgenerate
    
    
    logic [31:0] M_mux4_final32_1_s0;
    logic [31:0] M_mux4_final32_1_s1;
    logic [31:0][3:0] M_mux4_final32_1_in;
    logic [31:0] M_mux4_final32_1_out;
    
    genvar idx_0_1898172405;
    
    generate
        for (idx_0_1898172405 = 0; idx_0_1898172405 < 32; idx_0_1898172405 = idx_0_1898172405 + 1) begin: forLoop_idx_0_1898172405
            mux_4 mux4_final32_1 (
                .s0(M_mux4_final32_1_s0[idx_0_1898172405]),
                .s1(M_mux4_final32_1_s1[idx_0_1898172405]),
                .in(M_mux4_final32_1_in[idx_0_1898172405]),
                .out(M_mux4_final32_1_out[idx_0_1898172405])
            );
        end
    endgenerate
    
    
    logic [31:0] M_divider1_a;
    logic [31:0] M_divider1_b;
    logic [31:0] M_divider1_d;
    
    divider divider1 (
        .a(M_divider1_a),
        .b(M_divider1_b),
        .d(M_divider1_d)
    );
    
    
    always @* begin
        M_adder1_a = a;
        M_adder1_b = b;
        M_adder1_alufn = alufn;
        z = M_adder1_z;
        v = M_adder1_v;
        n = M_adder1_n;
        M_compare_z = M_adder1_z;
        M_compare_v = M_adder1_v;
        M_compare_n = M_adder1_n;
        M_compare_alufn = alufn;
        M_boolean1_a = a;
        M_boolean1_b = b;
        M_boolean1_alufn = alufn;
        M_shifter1_a = a;
        M_shifter1_b = b[3'h4:1'h0];
        M_shifter1_alufn = alufn;
        M_multiplier1_a = a;
        M_multiplier1_b = b;
        M_divider1_a = a;
        M_divider1_b = b;
        M_mux4_final32_1_s0 = {6'h20{alufn[1'h0]}};
        M_mux4_final32_1_s1 = {6'h20{alufn[1'h1]}};
        M_mux4_final32_s0 = {6'h20{alufn[3'h4]}};
        M_mux4_final32_s1 = {6'h20{alufn[3'h5]}};
        for (RR_532f4619_i = 0; RR_532f4619_i < 6'h20; RR_532f4619_i = RR_532f4619_i + 1) begin
      R_532f4619_i = (0) + RR_532f4619_i * (1);
            M_mux4_final32_1_in[R_532f4619_i][1'h0] = M_adder1_out[R_532f4619_i];
            M_mux4_final32_1_in[R_532f4619_i][2'h2] = M_multiplier1_mul[R_532f4619_i];
            M_mux4_final32_1_in[R_532f4619_i][2'h3] = M_divider1_d[R_532f4619_i];
            M_mux4_final32_1_in[R_532f4619_i][1'h1] = M_adder1_out[R_532f4619_i];
            M_mux4_final32_in[R_532f4619_i][1'h0] = M_mux4_final32_1_out[R_532f4619_i];
            M_mux4_final32_in[R_532f4619_i][1'h1] = M_boolean1_bool[R_532f4619_i];
            M_mux4_final32_in[R_532f4619_i][2'h2] = M_shifter1_shift[R_532f4619_i];
            if (R_532f4619_i == 1'h0) begin
                M_mux4_final32_in[R_532f4619_i][2'h3] = M_compare_cmp;
            end else begin
                M_mux4_final32_in[R_532f4619_i][2'h3] = 1'h0;
            end
        end
        out = M_mux4_final32_out;
    end
    
    
endmodule