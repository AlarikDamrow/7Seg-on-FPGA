`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2021 03:10:06 PM
// Design Name: 
// Module Name: BCD_To_7seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BCD_To_7seg(
    input [3:0] Q,
    output reg [7:0] cathode
    );
    
    always@(*) begin
        case(Q)
            4'b0000 : cathode = 8'b00000011;
            4'b0001 : cathode = 8'b10011111;
            4'b0010 : cathode = 8'b00100101;
            4'b0011 : cathode = 8'b00001101;
            4'b0100 : cathode = 8'b10011001;
            4'b0101 : cathode = 8'b01001001;
            4'b0110 : cathode = 8'b01000001;
            4'b0111 : cathode = 8'b00011111;
            4'b1000 : cathode = 8'b00000001;
            4'b1001 : cathode = 8'b00001001;
            4'b1010 : cathode = 8'b11111110;
            default : cathode = 8'b11111111;
        endcase
    end
endmodule
