/*
    This file was generated automatically by Alchitry Labs 2.0.24-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module divider (
        input wire [31:0] a,
        input wire [31:0] b,
        output reg [31:0] d
    );
    always @* begin
        d = a / b;
    end
    
    
endmodule