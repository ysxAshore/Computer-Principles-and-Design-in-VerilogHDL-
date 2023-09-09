`timescale 1ns / 1ps

module top_test();
    reg clk,clrn,intr;
    wire inta;
    wire [31:0]pc;
    wire [31:0]inst;
    wire [31:0]aluoutM,aluoutE,wd;
    initial begin
        clk=0;clrn=0;intr=0;
        #3;clrn=1;
        #1;clrn=0;
        #516;intr=1;
        #10;intr=0;
    end
    always #5 clk=~clk;
    top  top_inst (
    .clk(clk),
    .clrn(clrn),
    .intr(intr),
    .pc(pc),
    .inst(inst),
    .aluoutM(aluoutM),
    .aluoutE(aluoutE),
    .wd(wd),
    .inta(inta)
  );
endmodule