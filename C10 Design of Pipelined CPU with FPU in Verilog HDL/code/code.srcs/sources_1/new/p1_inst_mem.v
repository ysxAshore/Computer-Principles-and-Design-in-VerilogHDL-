 module p1_inst_mem (
    input [31:0]a,// rom address
    output [31:0]inst// rom content = rom[a]
); // instruction memory, rom

    wire [31:0] rom [0:63]; // rom cells: 64 words * 32 bits
    // rom[word_addr] = instruction // (pc) label instruction
    assign rom[6'h00] = 32'h00000820;
    assign rom[6'h01] = 32'hc4200000;
    assign rom[6'h02] = 32'hc4210050;
    assign rom[6'h03] = 32'hc4220054;
    assign rom[6'h04] = 32'hc4230058;
    assign rom[6'h05] = 32'hc424005C;
    assign rom[6'h06] = 32'h46002100;
    assign rom[6'h07] = 32'h460418c1;
    assign rom[6'h08] = 32'h46022082;
    assign rom[6'h09] = 32'h46040842;
    assign rom[6'h0A] = 32'he4210070;
    assign rom[6'h0B] = 32'he4220074;
    assign rom[6'h0C] = 32'he4320078;
    assign rom[6'h0D] = 32'he424007c;
    assign rom[6'h0E] = 32'h20020004;
    assign rom[6'h0F] = 32'hc4230000;
    assign rom[6'h10] = 32'hc4210050;
    assign rom[6'h11] = 32'h46030840;
    assign rom[6'h12] = 32'h46030841;
    assign rom[6'h13] = 32'he4210030;
    assign rom[6'h14] = 32'hc4050004;
    assign rom[6'h15] = 32'hc4060008;
    assign rom[6'h16] = 32'hc408000c;
    assign rom[6'h17] = 32'h460629c3;
    assign rom[6'h18] = 32'h46004244;
    assign rom[6'h19] = 32'h46004a84;
    assign rom[6'h1a] = 32'h2042ffff;
    assign rom[6'h1b] = 32'h1440fff3;
    assign rom[6'h1c] = 32'h20210004;
    assign rom[6'h1d] = 32'h3c010000;
    assign rom[6'h1e] = 32'h34240050;
    assign rom[6'h1f] = 32'h0c000038;
    assign rom[6'h20] = 32'h20050004;
    assign rom[6'h21] = 32'hac820000;
    assign rom[6'h22] = 32'h8c890000;
    assign rom[6'h23] = 32'h01244022;
    assign rom[6'h24] = 32'h20050003;
    assign rom[6'h25] = 32'h20a5ffff;
    assign rom[6'h26] = 32'h34a8ffff;
    assign rom[6'h27] = 32'h39085555;
    assign rom[6'h28] = 32'h2009ffff;
    assign rom[6'h29] = 32'h312affff;
    assign rom[6'h2a] = 32'h01493025;
    assign rom[6'h2b] = 32'h01494026;
    assign rom[6'h2c] = 32'h01463824;
    assign rom[6'h2d] = 32'h10a00003;
    assign rom[6'h2e] = 32'h00000000;
    assign rom[6'h2f] = 32'h08000025;
    assign rom[6'h30] = 32'h00000000;
    assign rom[6'h31] = 32'h2005ffff;
    assign rom[6'h32] = 32'h000543c0;
    assign rom[6'h33] = 32'h00084400;
    assign rom[6'h34] = 32'h00084403;
    assign rom[6'h35] = 32'h000843c2;
    assign rom[6'h36] = 32'h08000036;
    assign rom[6'h37] = 32'h00000000;
    assign rom[6'h38] = 32'h00004020;
    assign rom[6'h39] = 32'h8c890000;
    assign rom[6'h3a] = 32'h01094020;
    assign rom[6'h3b] = 32'h20a5ffff;
    assign rom[6'h3c] = 32'h14a0fffc;
    assign rom[6'h3d] = 32'h20840004;
    assign rom[6'h3e] = 32'h03e00008;
    assign rom[6'h3f] = 32'h00081000;
    assign inst = rom[a[7:2]]; // use 6-bit word address to read rom
endmodule