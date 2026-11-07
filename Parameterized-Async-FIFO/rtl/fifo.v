`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2026 15:38:02
// Design Name: 
// Module Name: writer
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


module fifo#(parameter depth=8,width=6,w=3)
(input wr_en,wr_clk,wr_rst,rd_en,rd_clk,rd_rst,
 input [width-1:0]w_data,
 output reg[width-1:0]r_data,
 output wr_full,
 output rd_empty
);
 
 reg[w:0] rgray_sync1,wgray_sync1,rgray_sync2,wgray_sync2;
 wire[w:0]rgray,wgray;
 reg [w:0]w_addr,r_addr;
 reg[width-1:0] mem[depth-1:0];
 //next pointer generation
 wire [w:0] wbin_next, wgray_next;
 assign wbin_next = w_addr + 1'b1;
 assign wgray_next = wbin_next ^ (wbin_next >> 1);
//declaring writer and reading address
 always @(posedge wr_clk) begin
    if(wr_rst)
        w_addr<=0;
    else if(wr_en&&!wr_full)
        w_addr<=w_addr+1'b1;
 end
 always @(posedge rd_clk) begin
    if(rd_rst)
        r_addr<=0;
    else if(rd_en&&!rd_empty)
        r_addr<=r_addr+1'b1;
 end
 //binary to grey code convertor
 assign rgray=r_addr^(r_addr>>1);
 assign wgray=w_addr^(w_addr>>1);
 //2 synchronizers
 always @(posedge wr_clk) begin
    if(wr_rst) begin
        rgray_sync1<=0;
        rgray_sync2<=0;
     end
    else begin
        rgray_sync1<=rgray;
        rgray_sync2<=rgray_sync1;
     end
 end
 always @(posedge rd_clk) begin
    if(rd_rst) begin
        wgray_sync1<=0;
        wgray_sync2<=0;
     end
    else begin
        wgray_sync1<=wgray;
        wgray_sync2<=wgray_sync1;
     end
 end
 
 //conditions for full and empty
 assign wr_full = (wgray_next =={~rgray_sync2[w], ~rgray_sync2[w-1],rgray_sync2[w-2:0]});
 assign rd_empty=(rgray == wgray_sync2);

 always @(posedge wr_clk) begin
    if(!wr_rst&&wr_en&&!wr_full)
        mem[w_addr[w-1:0]]<=w_data;
 end
 
 always @(posedge rd_clk) begin
    if(!rd_rst&&rd_en&&!rd_empty)
        r_data<=mem[r_addr[w-1:0]];
 end
 
 
 
endmodule