/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module bin_to_dec #(
        parameter DIGITS = 3'h4,
        parameter LEADING_ZEROS = 1'h0
    ) (
        input wire [($clog2((64'(4'ha) ** (DIGITS))))-1:0] value,
        output reg [(DIGITS)-1:0][3:0] digits
    );
    logic [31:0] R_3f946428_j;
    logic [31:0] RR_3f946428_j;
    logic [3:0] R_243e6425_i;
    logic [3:0] RR_243e6425_i;
    logic [($bits(value))-1:0] L_4c7dccf8_remainder;
    logic L_4c7dccf8_blank;
    logic [($bits(value))-1:0] L_728b1a12_scale;
    logic [($bits(value))-1:0] L_1e1789a8_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_4c7dccf8_remainder = value;
        L_4c7dccf8_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_3f946428_j = 0; RR_3f946428_j < DIGITS; RR_3f946428_j = RR_3f946428_j + 1) begin
        R_3f946428_j = (DIGITS - 1'h1) + RR_3f946428_j * (-2'sh1);
                L_728b1a12_scale = (64'(4'ha) ** (R_3f946428_j));
                if (L_4c7dccf8_remainder < L_728b1a12_scale) begin
                    if (R_3f946428_j != 1'h0 && L_4c7dccf8_blank) begin
                        digits[R_3f946428_j] = 4'ha;
                    end else begin
                        digits[R_3f946428_j] = 1'h0;
                    end
                end else begin
                    L_4c7dccf8_blank = 1'h0;
                    L_1e1789a8_sub_value = 1'h0;
                    for (RR_243e6425_i = 0; RR_243e6425_i < 4'h9; RR_243e6425_i = RR_243e6425_i + 1) begin
            R_243e6425_i = (4'h9) + RR_243e6425_i * (-2'sh1);
                        if (L_4c7dccf8_remainder < (R_243e6425_i + 1'h1) * L_728b1a12_scale) begin
                            digits[R_3f946428_j] = R_243e6425_i;
                            L_1e1789a8_sub_value = R_243e6425_i * L_728b1a12_scale;
                        end
                    end
                    L_4c7dccf8_remainder = L_4c7dccf8_remainder - L_1e1789a8_sub_value;
                end
            end
        end
    end
    
    
endmodule