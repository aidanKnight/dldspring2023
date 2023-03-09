  /*
 Data Encryption Standard (S-DES)
 64-bit 16-round block cipher encryption and decryption algorithm 
 using 56-bit key (64-bit key with Parity).
 */

module GenerateKeys (Key, SubKey1, SubKey2, SubKey3, SubKey4,
		     SubKey5, SubKey6, SubKey7, SubKey8,
		     SubKey9, SubKey10, SubKey11, SubKey12,
		     SubKey13, SubKey14, SubKey15, SubKey16);

			 
   
   // Generate SubKeys
	input logic [63:0]  Key;
	output logic [47:0] SubKey1;
	output logic [47:0] SubKey2;
	output logic [47:0] SubKey3;
	output logic [47:0] SubKey4;
	output logic [47:0] SubKey5;
	output logic [47:0] SubKey6;
	output logic [47:0] SubKey7;
	output logic [47:0] SubKey8;
	output logic [47:0] SubKey9;
	output logic [47:0] SubKey10;
	output logic [47:0] SubKey11;
	output logic [47:0] SubKey12;
	output logic [47:0] SubKey13;
	output logic [47:0] SubKey14;
	output logic [47:0] SubKey15;
	output logic [47:0] SubKey16;
   
   
//x's
	logic [27:0] x1;
	logic [27:0] x2;
	logic [27:0] x3;
	logic [27:0] x4;
	logic [27:0] x5;
	logic [27:0] x6;
	logic [27:0] x7;
	logic [27:0] x8;
	logic [27:0] x9;
	logic [27:0] x10;
	logic [27:0] x11;
	logic [27:0] x12;
	logic [27:0] x13;
	logic [27:0] x14;
	logic [27:0] x15;
	logic [27:0] x16;

//y's
	logic [27:0] y1;
	logic [27:0] y2;
	logic [27:0] y3;
	logic [27:0] y4;
	logic [27:0] y5;
	logic [27:0] y6;
	logic [27:0] y7;
	logic [27:0] y8;
	logic [27:0] y9;
	logic [27:0] y10;
	logic [27:0] y11;
	logic [27:0] y12;
	logic [27:0] y13;
	logic [27:0] y14;
	logic [27:0] y15;
	logic [27:0] y16;

//left blocks

	logic [27:0] left_block1;


//right blocks
	logic [27:0] right_block1;

//subkey1

PC1 PC1_Sub1(.key(Key), .left_block(left_block1),.right_block(right_block1));

	assign x1 = {left_block1[26:0], left_block1[27]};
	assign y1 = {right_block1[26:0], right_block1[27]};//shifting bits left once


	PC2 PC2_Sub1 (.left_block(x1),.right_block(y1),.subkey(SubKey1));
	
//subkey2

	assign x2 = {x1[26:0], x1[27]};
	assign y2 = {y1[26:0], y1[27]};//shifting bits left once

	PC2 PC2_Sub2 (.left_block(x2),.right_block(y2),.subkey(SubKey2));
	
//subkey3
	assign x3 = {x2[25:0], x2[27:26]};
	assign y3 = {y2[25:0], y2[27:26]};//shifting bits left once


	//assign SubKey3 =  {x3,y3};//combining then back together
PC2 PC2_Sub3 (.left_block(x3),.right_block(y3),.subkey(SubKey3));

//subkey4
	assign x4 = {x3[25:0], x3[27:26]};
	assign y4 = {y3[25:0], y3[27:26]};//shifting bits left once

	//assign SubKey4 =  {x4,y4};//combining then back together
PC2 PC2_Sub4 (.left_block(x4),.right_block(y4),.subkey(SubKey4));
//subkey5
	assign x5 = {x4[25:0], x4[27:26]};
	assign y5 = {y4[25:0], y4[27:26]};//shifting bits left once


	//assign SubKey5 =  {x5,y5};//combining then back together
PC2 PC2_Sub5 (.left_block(x5),.right_block(y5),.subkey(SubKey5));

//subkey6
	assign x6 = {x5[25:0], x5[27:26]};
	assign y6 = {y5[25:0], y5[27:26]};//shifting bits left once

	//assign SubKey6 =  {x6,y6};//combining then back together
	PC2 PC2_Sub6 (.left_block(x6),.right_block(y6),.subkey(SubKey6));

//subkey7
	assign x7 = {x6[25:0], x6[27:26]};
	assign y7 = {y6[25:0], y6[27:26]};//shifting bits left once


	//assign SubKey7 =  {x7,y7};//combining then back together
	PC2 PC2_Sub7 (.left_block(x7),.right_block(y7),.subkey(SubKey7));

//subkey8
	assign x8 = {x7[25:0], x7[27:26]};
	assign y8 = {y7[25:0], y7[27:26]};//shifting bits left once


	//assign SubKey8 =  {x8,y8};//combining then back together
	PC2 PC2_Sub8 (.left_block(x8),.right_block(y8),.subkey(SubKey8));

//subkey9
	assign x9 = {x8[26:0], x8[27]};
	assign y9 = {y8[26:0], y8[27]};//shifting bits left once


	//assign SubKey9 =  {x9,y9};//combining then back together
	PC2 PC2_Sub9 (.left_block(x9),.right_block(y9),.subkey(SubKey9));

//subkey10
	assign x10 = {x9[25:0], x9[27:26]};
	assign y10 = {y9[25:0], y9[27:26]};//shifting bits left once


	//assign SubKey10 =  {x10,y10};//combining then back together
	PC2 PC2_Sub10 (.left_block(x10),.right_block(y10),.subkey(SubKey10));

//subkey11
	assign x11 = {x10[25:0], x10[27:26]};
	assign y11 = {y10[25:0], y10[27:26]};//shifting bits left once


	//assign SubKey11 =  {x11,y11};//combining then back together
	PC2 PC2_Sub11 (.left_block(x11),.right_block(y11),.subkey(SubKey11));

//subkey12
	assign x12 = {x11[25:0], x11[27:26]};
	assign y12 = {y11[25:0], y11[27:26]};//shifting bits left once


	//assign SubKey12 =  {x12,y12};//combining then back together
	PC2 PC2_Sub12 (.left_block(x12),.right_block(y12),.subkey(SubKey12));

//subkey13
	assign x13 = {x12[25:0], x12[27:26]};
	assign y13 = {y12[25:0], y12[27:26]};//shifting bits left once


	//assign SubKey13 =  {x13,y13};//combining then back together
	PC2 PC2_Sub13 (.left_block(x13),.right_block(y13),.subkey(SubKey13));

//subkey14
	assign x14 = {x13[25:0], x13[27:26]};
	assign y14 = {y13[25:0], y13[27:26]};//shifting bits left once


	//assign SubKey14 =  {x14,y14};//combining then back together
	PC2 PC2_Sub14 (.left_block(x14),.right_block(y14),.subkey(SubKey14));

//subkey15
	assign x15 = {x14[25:0], x14[27:26]};
	assign y15 = {y14[25:0], y14[27:26]};//shifting bits left once


	//assign SubKey15 =  {x15,y15};//combining then back together
	PC2 PC2_Sub15 (.left_block(x15),.right_block(y15),.subkey(SubKey15));

//subkey16
	assign x16 = {x15[26:0], x15[27]};
	assign y16 = {y15[26:0], y15[27]};//shifting bits left once


	//assign SubKey16 =  {x16,y16};//combining then back together
	PC2 PC2_Sub16 (.left_block(x16),.right_block(y16),.subkey(SubKey16));


endmodule//key gen

module PC1 (key, left_block, right_block);

   input logic [63:0]  key;
   output logic [27:0] left_block;
   output logic [27:0] right_block;
   
  

	assign left_block[27] = key[64-57];
	assign left_block[26] = key[64-49];
	assign left_block[25] = key[64-41];
	assign left_block[24] = key[64-33];
	assign left_block[23] = key[64-25];
	assign left_block[22] = key[64-17];
	assign left_block[21] = key[64-9];
	assign left_block[20] = key[64-1];
	assign left_block[19] = key[64-58];
	assign left_block[18] = key[64-50];
	assign left_block[17] = key[64-42];
	assign left_block[16] = key[64-34];
	assign left_block[15] = key[64-26];
	assign left_block[14] = key[64-18];
	assign left_block[13] = key[64-10];
	assign left_block[12] = key[64-2];
	assign left_block[11] = key[64-59];
	assign left_block[10] = key[64-51];
	assign left_block[9] = key[64-43];
	assign left_block[8] = key[64-35];
	assign left_block[7] = key[64-27];
	assign left_block[6] = key[64-19];
	assign left_block[5] = key[64-11];
	assign left_block[4] = key[64-3];
	assign left_block[3] = key[64-60];
	assign left_block[2] = key[64-52];
	assign left_block[1] = key[64-44];
	assign left_block[0] = key[64-36];

	assign right_block[27] = key[64-63];
	assign right_block[26] = key[64-55];
	assign right_block[25] = key[64-47];
	assign right_block[24] = key[64-39];
	assign right_block[23] = key[64-31];
	assign right_block[22] = key[64-23];
	assign right_block[21] = key[64-15];
	assign right_block[20] = key[64-7];
	assign right_block[19] = key[64-62];
	assign right_block[18] = key[64-54];
	assign right_block[17] = key[64-46];
	assign right_block[16] = key[64-38];
	assign right_block[15] = key[64-30];
	assign right_block[14] = key[64-22];
	assign right_block[13] = key[64-14];
	assign right_block[12] = key[64-6];
	assign right_block[11] = key[64-61];
	assign right_block[10] = key[64-53];
	assign right_block[9] = key[64-45];
	assign right_block[8] = key[64-37];
	assign right_block[7] = key[64-29];
	assign right_block[6] = key[64-21];
	assign right_block[5] = key[64-13];
	assign right_block[4] = key[64-5];
	assign right_block[3] = key[64-28];
	assign right_block[2] = key[64-20];
	assign right_block[1] = key[64-12];
	assign right_block[0] = key[64-4];

endmodule // PC1

module PC2 (left_block, right_block, subkey);

   input logic [27:0] left_block;
   input logic [27:0] right_block;
   output logic [47:0] subkey;

	logic [55:0] in_block;
	assign in_block = {left_block, right_block};//combining them together

	assign subkey[47] = in_block[56-14];
	assign subkey[46]= in_block[56-17];
	assign subkey[45]= in_block[56-11];
	assign subkey[44]= in_block[56-24];
	assign subkey[43]= in_block[56-1];
	assign subkey[42]= in_block[56-5];
	assign subkey[41]= in_block[56-3];
	assign subkey[40]= in_block[56-28];
	assign subkey[39]= in_block[56-15];
	assign subkey[38]= in_block[56-6];
	assign subkey[37]= in_block[56-21];
	assign subkey[36]= in_block[56-10];
	assign subkey[35]= in_block[56-23];
	assign subkey[34]= in_block[56-19];
	assign subkey[33]= in_block[56-12];
	assign subkey[32]= in_block[56-4];
	assign subkey[31]= in_block[56-26];
	assign subkey[30]= in_block[56-8];
	assign subkey[29] =in_block[56-16];
	assign subkey[28] =in_block[56-7];
	assign subkey[27] =in_block[56-27];
	assign subkey[26] =in_block[56-20];
	assign subkey[25] =in_block[56-13];
	assign subkey[24] =in_block[56-2];
	assign subkey[23] =in_block[56-41];
	assign subkey[22] =in_block[56-52];
	assign subkey[21] =in_block[56-31];
	assign subkey[20] =in_block[56-37];
	assign subkey[19]= in_block[56-47];
	assign subkey[18]= in_block[56-55];
	assign subkey[17]= in_block[56-30];
	assign subkey[16]= in_block[56-40];
	assign subkey[15]= in_block[56-51];
	assign subkey[14]= in_block[56-45];
	assign subkey[13]= in_block[56-33];
	assign subkey[12]= in_block[56-48];
	assign subkey[11]= in_block[56-44];
	assign subkey[10]= in_block[56-49];
	assign subkey[9]= in_block[56-39];
	assign subkey[8]= in_block[56-56];
	assign subkey[7]= in_block[56-34];
	assign subkey[6]= in_block[56-53];
	assign subkey[5]= in_block[56-46];
	assign subkey[4]= in_block[56-42];
	assign subkey[3]= in_block[56-50];
	assign subkey[2]= in_block[56-36];
	assign subkey[1] =in_block[56-29];
	assign subkey[0] =in_block[56-32];


endmodule // PC2


// Straight Function
module SF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [31:0] out_block;

   assign out_block[31]= inp_block[32-16];
   assign out_block[30]=inp_block[32-7];
   assign out_block[29]=inp_block[32-20];
   assign out_block[28]=inp_block[32-21];
   assign out_block[27]=inp_block[32-29];
   assign out_block[26]=inp_block[32-12];
   assign out_block[25]=inp_block[32-28];
   assign out_block[24]=inp_block[32-17];
   assign out_block[23]=inp_block[32-1];
   assign out_block[22]=inp_block[32-15];
   assign out_block[21]=inp_block[32-23];
   assign out_block[20]=inp_block[32-26];
   assign out_block[19]=inp_block[32-5];
   assign out_block[18]=inp_block[32-18];
   assign out_block[17]=inp_block[32-31];
   assign out_block[16]=inp_block[32-10];
   assign out_block[15]=inp_block[32-2];
   assign out_block[14]=inp_block[32-8];
   assign out_block[13]=inp_block[32-24];
   assign out_block[12]=inp_block[32-14];
   assign out_block[11]=inp_block[32-32];
   assign out_block[10]=inp_block[32-27];
   assign out_block[9]=inp_block[32-3];
   assign out_block[8]=inp_block[32-9];
   assign out_block[7]=inp_block[32-19];
   assign out_block[6]=inp_block[32-13];
   assign out_block[5]=inp_block[32-30];
   assign out_block[4]=inp_block[32-6];
   assign out_block[3]=inp_block[32-22];
   assign out_block[2]=inp_block[32-11];
   assign out_block[1]=inp_block[32-4];
   assign out_block[0]=inp_block[32-25];

endmodule // SF

// Expansion Function
module EF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [47:0] out_block;
	
	
	assign out_block[47]= inp_block[32-32];
	assign out_block[46]= inp_block[32-1];
	assign out_block[45]= inp_block[32-2];
	assign out_block[44]= inp_block[32-3];
	assign out_block[43]= inp_block[32-4];
	assign out_block[42]= inp_block[32-5];
	assign out_block[41]= inp_block[32-4];
	assign out_block[40]= inp_block[32-5];
	assign out_block[39]= inp_block[32-6];
	assign out_block[38]= inp_block[32-7];
	assign out_block[37]= inp_block[32-8];
	assign out_block[36]= inp_block[32-9];
	assign out_block[35]= inp_block[32-8];
	assign out_block[34]= inp_block[32-9];
	assign out_block[33]= inp_block[32-10];
	assign out_block[32]= inp_block[32-11];
	assign out_block[31]= inp_block[32-12];
    assign out_block[30]=inp_block[32-13];
    assign out_block[29]=inp_block[32-12];
    assign out_block[28]=inp_block[32-13];
    assign out_block[27]=inp_block[32-14];
    assign out_block[26]=inp_block[32-15];
    assign out_block[25]=inp_block[32-16];
    assign out_block[24]=inp_block[32-17];
    assign out_block[23]=inp_block[32-16];
    assign out_block[22]=inp_block[32-17];
    assign out_block[21]=inp_block[32-18];
    assign out_block[20]=inp_block[32-19];
    assign out_block[19]=inp_block[32-20];
    assign out_block[18]=inp_block[32-21];
    assign out_block[17]=inp_block[32-20];
    assign out_block[16]=inp_block[32-21];
    assign out_block[15]=inp_block[32-22];
    assign out_block[14]=inp_block[32-23];
    assign out_block[13]=inp_block[32-24];
    assign out_block[12]=inp_block[32-25];
    assign out_block[11]=inp_block[32-24];
    assign out_block[10]=inp_block[32-25];
    assign out_block[9]=inp_block[32-26];
    assign out_block[8]=inp_block[32-27];
    assign out_block[7]=inp_block[32-28];
    assign out_block[6]=inp_block[32-29];
    assign out_block[5]=inp_block[32-28];
    assign out_block[4]=inp_block[32-29];
    assign out_block[3]=inp_block[32-30];
    assign out_block[2]=inp_block[32-31];
    assign out_block[1]=inp_block[32-32];
    assign out_block[0]=inp_block[32-1];



endmodule // EF

module feistel (inp_block, subkey, out_block);

   input logic [31:0]  inp_block;
   input logic [47:0]  subkey;
   output logic [31:0] out_block;
   
   logic [47:0] Exout;

   EF e1 (.inp_block(inp_block),.out_block(Exout));

    logic [47:0] foo;
    logic [31:0] result;

  assign foo = Exout^subkey;

S1_Box s1(.inp_bits(foo[47:42]),.out_bits(result[31:28]));
S2_Box s2(.inp_bits(foo[41:36]),.out_bits(result[27:24]));
S3_Box s3(.inp_bits(foo[35:30]),.out_bits(result[23:20]));
S4_Box s4(.inp_bits(foo[29:24]),.out_bits(result[19:16]));
S5_Box s5(.inp_bits(foo[23:18]),.out_bits(result[15:12]));
S6_Box s6(.inp_bits(foo[17:12]),.out_bits(result[11:8]));
S7_Box s7(.inp_bits(foo[11:6]),.out_bits(result[7:4]));
S8_Box s8(.inp_bits(foo[5:0]),.out_bits(result[3:0]));

SF sf1(.inp_block(result),.out_block(out_block));

endmodule // Feistel

// DES block round
module round (left_in, right_in, subkey, left_out, right_out);

   input logic [31:0]  right_in;
   input logic [31:0]  left_in;
   input logic [47:0]  subkey;
   output logic [31:0]  right_out;
   output logic [31:0]  left_out;

   logic[31:0] fout;


   assign left_out = right_in;

   feistel f1(right_in,subkey,fout);
   assign right_out = left_in^fout;//set to ro



endmodule // round

// Initial Permutation
module IP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-58];
   assign out_block[62] = inp_block[64-50];
   assign out_block[61] = inp_block[64-42];
   assign out_block[60] = inp_block[64-34];
   assign out_block[59] = inp_block[64-26];
   assign out_block[58] = inp_block[64-18];
   assign out_block[57] = inp_block[64-10];
   assign out_block[56] = inp_block[64-2];
   assign out_block[55] = inp_block[64-60];
   assign out_block[54] = inp_block[64-52];   
   assign out_block[53] = inp_block[64-44];   
   assign out_block[52] = inp_block[64-36];
   assign out_block[51] = inp_block[64-28];
   assign out_block[50] = inp_block[64-20];
   assign out_block[49] = inp_block[64-12];
   assign out_block[48] = inp_block[64-4];
   assign out_block[47] = inp_block[64-62];
   assign out_block[46] = inp_block[64-54];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-38];   
   assign out_block[43] = inp_block[64-30];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-14];
   assign out_block[40] = inp_block[64-6];
   assign out_block[39] = inp_block[64-64];
   assign out_block[38] = inp_block[64-56];
   assign out_block[37] = inp_block[64-48];
   assign out_block[36] = inp_block[64-40];
   assign out_block[35] = inp_block[64-32];
   assign out_block[34] = inp_block[64-24];   
   assign out_block[33] = inp_block[64-16];
   assign out_block[32] = inp_block[64-8];   
   assign out_block[31] = inp_block[64-57];
   assign out_block[30] = inp_block[64-49];
   assign out_block[29] = inp_block[64-41];
   assign out_block[28] = inp_block[64-33];
   assign out_block[27] = inp_block[64-25];
   assign out_block[26] = inp_block[64-17];
   assign out_block[25] = inp_block[64-9];   
   assign out_block[24] = inp_block[64-1];   
   assign out_block[23] = inp_block[64-59];
   assign out_block[22] = inp_block[64-51];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-35];
   assign out_block[19] = inp_block[64-27];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-11];
   assign out_block[16] = inp_block[64-3];
   assign out_block[15] = inp_block[64-61];
   assign out_block[14] = inp_block[64-53];   
   assign out_block[13] = inp_block[64-45];
   assign out_block[12] = inp_block[64-37];   
   assign out_block[11] = inp_block[64-29];
   assign out_block[10] = inp_block[64-21];
   assign out_block[9] = inp_block[64-13];
   assign out_block[8] = inp_block[64-5];
   assign out_block[7] = inp_block[64-63];
   assign out_block[6] = inp_block[64-55];
   assign out_block[5] = inp_block[64-47];
   assign out_block[4] = inp_block[64-39];   
   assign out_block[3] = inp_block[64-31];
   assign out_block[2] = inp_block[64-23];    
   assign out_block[1] = inp_block[64-15];
   assign out_block[0] = inp_block[64-7];   

endmodule // IP

// Final Permutation
module FP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-40];
   assign out_block[62] = inp_block[64-8];
   assign out_block[61] = inp_block[64-48];
   assign out_block[60] = inp_block[64-16];
   assign out_block[59] = inp_block[64-56];
   assign out_block[58] = inp_block[64-24];
   assign out_block[57] = inp_block[64-64];
   assign out_block[56] = inp_block[64-32];   
   assign out_block[55] = inp_block[64-39];
   assign out_block[54] = inp_block[64-7];   
   assign out_block[53] = inp_block[64-47];   
   assign out_block[52] = inp_block[64-15];
   assign out_block[51] = inp_block[64-55];
   assign out_block[50] = inp_block[64-23];
   assign out_block[49] = inp_block[64-63];
   assign out_block[48] = inp_block[64-31];   
   assign out_block[47] = inp_block[64-38];
   assign out_block[46] = inp_block[64-6];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-14];   
   assign out_block[43] = inp_block[64-54];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-62];
   assign out_block[40] = inp_block[64-30];   
   assign out_block[39] = inp_block[64-37];
   assign out_block[38] = inp_block[64-5];
   assign out_block[37] = inp_block[64-45];
   assign out_block[36] = inp_block[64-13];
   assign out_block[35] = inp_block[64-53];
   assign out_block[34] = inp_block[64-21];   
   assign out_block[33] = inp_block[64-61];
   assign out_block[32] = inp_block[64-29];   
   assign out_block[31] = inp_block[64-36];
   assign out_block[30] = inp_block[64-4];
   assign out_block[29] = inp_block[64-44];
   assign out_block[28] = inp_block[64-12];
   assign out_block[27] = inp_block[64-52];
   assign out_block[26] = inp_block[64-20];
   assign out_block[25] = inp_block[64-60];   
   assign out_block[24] = inp_block[64-28];   
   assign out_block[23] = inp_block[64-35];
   assign out_block[22] = inp_block[64-3];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-11];
   assign out_block[19] = inp_block[64-51];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-59];
   assign out_block[16] = inp_block[64-27];   
   assign out_block[15] = inp_block[64-34];
   assign out_block[14] = inp_block[64-2];   
   assign out_block[13] = inp_block[64-42];
   assign out_block[12] = inp_block[64-10];   
   assign out_block[11] = inp_block[64-50];
   assign out_block[10] = inp_block[64-18];
   assign out_block[9] = inp_block[64-58];
   assign out_block[8] = inp_block[64-26];   
   assign out_block[7] = inp_block[64-33];
   assign out_block[6] = inp_block[64-1];
   assign out_block[5] = inp_block[64-41];   
   assign out_block[4] = inp_block[64-9];
   assign out_block[3] = inp_block[64-49];    
   assign out_block[2] = inp_block[64-17];
   assign out_block[1] = inp_block[64-57];
   assign out_block[0] = inp_block[64-25];  

endmodule // FP

module S1_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd14;             
	  6'd1  : out_bits = 4'd4;             
	  6'd2  : out_bits = 4'd13;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd2;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd10;             
	  6'd10 : out_bits = 4'd6;             
	  6'd11 : out_bits = 4'd12;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd9;             
	  6'd14 : out_bits = 4'd0;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd0;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd7;             
	  6'd19 : out_bits = 4'd4;             
	  6'd20 : out_bits = 4'd14;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd10;             
	  6'd25 : out_bits = 4'd6;             
	  6'd26 : out_bits = 4'd12;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd9;             
	  6'd29 : out_bits = 4'd5;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd1;             
	  6'd34 : out_bits = 4'd14;             
	  6'd35 : out_bits = 4'd8;             
	  6'd36 : out_bits = 4'd13;             
	  6'd37 : out_bits = 4'd6;             
	  6'd38 : out_bits = 4'd2;             
	  6'd39 : out_bits = 4'd11;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd12;             
	  6'd42 : out_bits = 4'd9;             
	  6'd43 : out_bits = 4'd7;             
	  6'd44 : out_bits = 4'd3;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd0;             
	  6'd48 : out_bits = 4'd15;             
	  6'd49 : out_bits = 4'd12;             
	  6'd50 : out_bits = 4'd8;             
	  6'd51 : out_bits = 4'd2;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd1;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd5;        
	  6'd57 : out_bits = 4'd11;        
	  6'd58 : out_bits = 4'd3;       
	  6'd59 : out_bits = 4'd14;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd13;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S1_Box

module S2_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})             
	  6'd0  : out_bits = 4'd15;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd11;             
	  6'd6  : out_bits = 4'd3;             
	  6'd7  : out_bits = 4'd4;             
	  6'd8  : out_bits = 4'd9;             
	  6'd9  : out_bits = 4'd7;             
	  6'd10 : out_bits = 4'd2;             
	  6'd11 : out_bits = 4'd13;             
	  6'd12 : out_bits = 4'd12;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd10;             
	  6'd16 : out_bits = 4'd3;             
	  6'd17 : out_bits = 4'd13;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd15;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd8;             
	  6'd23 : out_bits = 4'd14;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd1;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd6;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd11;             
	  6'd31 : out_bits = 4'd5;             
	  6'd32 : out_bits = 4'd0;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd7;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd4;             
	  6'd38 : out_bits = 4'd13;             
	  6'd39 : out_bits = 4'd1;             
	  6'd40 : out_bits = 4'd5;             
	  6'd41 : out_bits = 4'd8;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd6;             
	  6'd44 : out_bits = 4'd9;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd2;             
	  6'd47 : out_bits = 4'd15;             
	  6'd48 : out_bits = 4'd13;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd10;             
	  6'd51 : out_bits = 4'd1;             
	  6'd52 : out_bits = 4'd3;             
	  6'd53 : out_bits = 4'd15;            
	  6'd54 : out_bits = 4'd4;             
	  6'd55 : out_bits = 4'd2;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd6;        
	  6'd58 : out_bits = 4'd7;       
	  6'd59 : out_bits = 4'd12;       
	  6'd60 : out_bits = 4'd0;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd14;      
	  6'd63 : out_bits = 4'd9;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S2_Box

module S3_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd10;             
	  6'd1  : out_bits = 4'd0;             
	  6'd2  : out_bits = 4'd9;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd3;             
	  6'd6  : out_bits = 4'd15;             
	  6'd7  : out_bits = 4'd5;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd12;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd4;             
	  6'd14 : out_bits = 4'd2;             
	  6'd15 : out_bits = 4'd8;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd7;             
	  6'd18 : out_bits = 4'd0;             
	  6'd19 : out_bits = 4'd9;             
	  6'd20 : out_bits = 4'd3;             
	  6'd21 : out_bits = 4'd4;             
	  6'd22 : out_bits = 4'd6;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd2;             
	  6'd25 : out_bits = 4'd8;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd12;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd15;             
	  6'd31 : out_bits = 4'd1;             
	  6'd32 : out_bits = 4'd13;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd9;             
	  6'd36 : out_bits = 4'd8;             
	  6'd37 : out_bits = 4'd15;             
	  6'd38 : out_bits = 4'd3;             
	  6'd39 : out_bits = 4'd0;             
	  6'd40 : out_bits = 4'd11;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd2;             
	  6'd43 : out_bits = 4'd12;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd14;             
	  6'd47 : out_bits = 4'd7;             
	  6'd48 : out_bits = 4'd1;             
	  6'd49 : out_bits = 4'd10;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd0;             
	  6'd52 : out_bits = 4'd6;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd4;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd14;       
	  6'd59 : out_bits = 4'd3;       
	  6'd60 : out_bits = 4'd11;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd12;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S3_Box

module S4_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd7;             
	  6'd1  : out_bits = 4'd13;             
	  6'd2  : out_bits = 4'd14;            
	  6'd3  : out_bits = 4'd3;             
	  6'd4  : out_bits = 4'd0;             
	  6'd5  : out_bits = 4'd6;             
	  6'd6  : out_bits = 4'd9;             
	  6'd7  : out_bits = 4'd10;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd2;             
	  6'd10 : out_bits = 4'd8;             
	  6'd11 : out_bits = 4'd5;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd12;             
	  6'd14 : out_bits = 4'd4;             
	  6'd15 : out_bits = 4'd15;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd8;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd5;             
	  6'd20 : out_bits = 4'd6;             
	  6'd21 : out_bits = 4'd15;             
	  6'd22 : out_bits = 4'd0;             
	  6'd23 : out_bits = 4'd3;             
	  6'd24 : out_bits = 4'd4;             
	  6'd25 : out_bits = 4'd7;             
	  6'd26 : out_bits = 4'd2;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd1;             
	  6'd29 : out_bits = 4'd10;             
	  6'd30 : out_bits = 4'd14;             
	  6'd31 : out_bits = 4'd9;             
	  6'd32 : out_bits = 4'd10;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd9;             
	  6'd35 : out_bits = 4'd0;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd11;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd13;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd3;             
	  6'd43 : out_bits = 4'd14;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd2;             
	  6'd46 : out_bits = 4'd8;             
	  6'd47 : out_bits = 4'd4;             
	  6'd48 : out_bits = 4'd3;             
	  6'd49 : out_bits = 4'd15;             
	  6'd50 : out_bits = 4'd0;             
	  6'd51 : out_bits = 4'd6;             
	  6'd52 : out_bits = 4'd10;             
	  6'd53 : out_bits = 4'd1;            
	  6'd54 : out_bits = 4'd13;             
	  6'd55 : out_bits = 4'd8;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd4;        
	  6'd58 : out_bits = 4'd5;       
	  6'd59 : out_bits = 4'd11;       
	  6'd60 : out_bits = 4'd12;       
	  6'd61 : out_bits = 4'd7;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd14;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S4_Box

module S5_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd2;             
	  6'd1  : out_bits = 4'd12;             
	  6'd2  : out_bits = 4'd4;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd7;             
	  6'd5  : out_bits = 4'd10;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd6;             
	  6'd8  : out_bits = 4'd8;             
	  6'd9  : out_bits = 4'd5;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd15;             
	  6'd12 : out_bits = 4'd13;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd14;             
	  6'd15 : out_bits = 4'd9;             
	  6'd16 : out_bits = 4'd14;             
	  6'd17 : out_bits = 4'd11;             
	  6'd18 : out_bits = 4'd2;             
	  6'd19 : out_bits = 4'd12;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd7;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd5;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd15;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd3;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd2;             
	  6'd34 : out_bits = 4'd1;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd13;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd8;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd9;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd5;             
	  6'd44 : out_bits = 4'd6;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd0;             
	  6'd47 : out_bits = 4'd14;             
	  6'd48 : out_bits = 4'd11;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd12;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd14;            
	  6'd54 : out_bits = 4'd2;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd6;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd9;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd4;       
	  6'd62 : out_bits = 4'd5;      
	  6'd63 : out_bits = 4'd3;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S5_Box

module S6_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd12;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd10;            
	  6'd3  : out_bits = 4'd15;             
	  6'd4  : out_bits = 4'd9;             
	  6'd5  : out_bits = 4'd2;             
	  6'd6  : out_bits = 4'd6;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd0;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd4;             
	  6'd12 : out_bits = 4'd14;             
	  6'd13 : out_bits = 4'd7;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd11;             
	  6'd16 : out_bits = 4'd10;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd2;             
	  6'd20 : out_bits = 4'd7;             
	  6'd21 : out_bits = 4'd12;             
	  6'd22 : out_bits = 4'd9;             
	  6'd23 : out_bits = 4'd5;             
	  6'd24 : out_bits = 4'd6;             
	  6'd25 : out_bits = 4'd1;             
	  6'd26 : out_bits = 4'd13;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd9;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd15;             
	  6'd35 : out_bits = 4'd5;             
	  6'd36 : out_bits = 4'd2;             
	  6'd37 : out_bits = 4'd8;             
	  6'd38 : out_bits = 4'd12;             
	  6'd39 : out_bits = 4'd3;             
	  6'd40 : out_bits = 4'd7;             
	  6'd41 : out_bits = 4'd0;             
	  6'd42 : out_bits = 4'd4;             
	  6'd43 : out_bits = 4'd10;             
	  6'd44 : out_bits = 4'd1;             
	  6'd45 : out_bits = 4'd13;             
	  6'd46 : out_bits = 4'd11;             
	  6'd47 : out_bits = 4'd6;             
	  6'd48 : out_bits = 4'd4;             
	  6'd49 : out_bits = 4'd3;             
	  6'd50 : out_bits = 4'd2;             
	  6'd51 : out_bits = 4'd12;             
	  6'd52 : out_bits = 4'd9;             
	  6'd53 : out_bits = 4'd5;            
	  6'd54 : out_bits = 4'd15;             
	  6'd55 : out_bits = 4'd10;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd14;        
	  6'd58 : out_bits = 4'd1;       
	  6'd59 : out_bits = 4'd7;       
	  6'd60 : out_bits = 4'd6;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd8;      
	  6'd63 : out_bits = 4'd13;	  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S6_Box

module S7_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd4;             
	  6'd1  : out_bits = 4'd11;             
	  6'd2  : out_bits = 4'd2;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd15;             
	  6'd5  : out_bits = 4'd0;             
	  6'd6  : out_bits = 4'd8;             
	  6'd7  : out_bits = 4'd13;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd12;             
	  6'd10 : out_bits = 4'd9;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd10;             
	  6'd14 : out_bits = 4'd6;             
	  6'd15 : out_bits = 4'd1;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd0;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd9;             
	  6'd22 : out_bits = 4'd1;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd14;             
	  6'd25 : out_bits = 4'd3;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd2;             
	  6'd29 : out_bits = 4'd15;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd1;             
	  6'd33 : out_bits = 4'd4;             
	  6'd34 : out_bits = 4'd11;             
	  6'd35 : out_bits = 4'd13;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd3;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd14;             
	  6'd40 : out_bits = 4'd10;             
	  6'd41 : out_bits = 4'd15;             
	  6'd42 : out_bits = 4'd6;             
	  6'd43 : out_bits = 4'd8;             
	  6'd44 : out_bits = 4'd0;             
	  6'd45 : out_bits = 4'd5;             
	  6'd46 : out_bits = 4'd9;             
	  6'd47 : out_bits = 4'd2;             
	  6'd48 : out_bits = 4'd6;             
	  6'd49 : out_bits = 4'd11;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd8;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd4;            
	  6'd54 : out_bits = 4'd10;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd5;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd15;       
	  6'd60 : out_bits = 4'd14;       
	  6'd61 : out_bits = 4'd2;       
	  6'd62 : out_bits = 4'd3;      
	  6'd63 : out_bits = 4'd12;  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S7_Box

module S8_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd13;             
	  6'd1  : out_bits = 4'd2;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd4;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd1;             
	  6'd8  : out_bits = 4'd10;             
	  6'd9  : out_bits = 4'd9;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd14;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd12;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd1;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd13;             
	  6'd19 : out_bits = 4'd8;             
	  6'd20 : out_bits = 4'd10;             
	  6'd21 : out_bits = 4'd3;             
	  6'd22 : out_bits = 4'd7;             
	  6'd23 : out_bits = 4'd4;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd5;             
	  6'd26 : out_bits = 4'd6;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd14;             
	  6'd30 : out_bits = 4'd9;             
	  6'd31 : out_bits = 4'd2;             
	  6'd32 : out_bits = 4'd7;             
	  6'd33 : out_bits = 4'd11;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd1;             
	  6'd36 : out_bits = 4'd9;             
	  6'd37 : out_bits = 4'd12;             
	  6'd38 : out_bits = 4'd14;             
	  6'd39 : out_bits = 4'd2;             
	  6'd40 : out_bits = 4'd0;             
	  6'd41 : out_bits = 4'd6;             
	  6'd42 : out_bits = 4'd10;             
	  6'd43 : out_bits = 4'd13;             
	  6'd44 : out_bits = 4'd15;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd8;             
	  6'd48 : out_bits = 4'd2;             
	  6'd49 : out_bits = 4'd1;             
	  6'd50 : out_bits = 4'd14;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd10;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd15;        
	  6'd57 : out_bits = 4'd12;        
	  6'd58 : out_bits = 4'd9;       
	  6'd59 : out_bits = 4'd0;       
	  6'd60 : out_bits = 4'd3;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd11;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S8_Box

module DES (input logic [63:0] key, input logic [63:0] plaintext, 
	    input logic encrypt, output logic [63:0] ciphertext);

     logic [47:0] SubKey1;
	 logic [47:0] SubKey2;
	 logic [47:0] SubKey3;
	 logic [47:0] SubKey4;
	 logic [47:0] SubKey5;
	 logic [47:0] SubKey6;
	 logic [47:0] SubKey7;
	 logic [47:0] SubKey8;
	 logic [47:0] SubKey9;
	 logic [47:0] SubKey10;
	 logic [47:0] SubKey11;
	 logic [47:0] SubKey12;
	 logic [47:0] SubKey13;
	 logic [47:0] SubKey14;
	 logic [47:0] SubKey15;
	 logic [47:0] SubKey16;

	 //intL	
	logic[31:0] intL1;
	logic[31:0] intL2;
	logic[31:0] intL3;
	logic[31:0] intL4;
	logic[31:0] intL5;
	logic[31:0] intL6;
	logic[31:0] intL7;
	logic[31:0] intL8;
	logic[31:0] intL9;
	logic[31:0] intL10;
	logic[31:0] intL11;
	logic[31:0] intL12;
	logic[31:0] intL13;
	logic[31:0] intL14;
	logic[31:0] intL15;
	logic[31:0] intL16;
	
//intR
	logic[31:0] intR1;
	logic[31:0] intR2;
	logic[31:0] intR3;
	logic[31:0] intR4;
	logic[31:0] intR5;
	logic[31:0] intR6;
	logic[31:0] intR7;
	logic[31:0] intR8;
	logic[31:0] intR9;
	logic[31:0] intR10;
	logic[31:0] intR11;
	logic[31:0] intR12;
	logic[31:0] intR13;
	logic[31:0] intR14;
	logic[31:0] intR15;
	logic[31:0] intR16;
	

logic [63:0] 	ip_out;   
logic [63:0] 	r16_out; 
logic [63:0]  r16D_out
logic[31:0] left;
logic[31:0] right;

	assign left= ip_out[63:32];
   	assign right= ip_out[31:0];
	
	



   // SubKey generation
   GenerateKeys k1 (key, SubKey1, SubKey2, SubKey3, SubKey4,
		    SubKey5, SubKey6, SubKey7, SubKey8,
		    SubKey9, SubKey10, SubKey11, SubKey12,
		    SubKey13, SubKey14, SubKey15, SubKey16);

   // encrypt (encrypt=1) or decrypt (encrypt=0) 

   // Initial Permutation (IP)
   IP b1 (plaintext, ip_out);

   	 logic [47:0] out1;
	 logic [47:0] out2;
	 logic [47:0] out3;
	 logic [47:0] out4;
	 logic [47:0] out5;
	 logic [47:0] out6;
	 logic [47:0] out7;
	 logic [47:0] out8;
	 logic [47:0] out9;
	 logic [47:0] out10;
	 logic [47:0] out11;
	 logic [47:0] out12;
	 logic [47:0] out13;
	 logic [47:0] out14;
	 logic [47:0] out15;
	 logic [47:0] out16;


		//de cryp steppin
	mux m1(encrypt,SubKey1,SubKey16,out1);
	mux m2(encrypt,SubKey2,SubKey15,out2);
	mux m3(encrypt,SubKey3,SubKey14,out3);
	mux m4(encrypt,SubKey4,SubKey13,out4);
	mux m5(encrypt,SubKey5,SubKey12,out5);
	mux m6(encrypt,SubKey6,SubKey11,out6);
	mux m7(encrypt,SubKey7,SubKey10,out7);
	mux m8(encrypt,SubKey8,SubKey9,out8);
	mux m9(encrypt,SubKey9,SubKey8,out9);
	mux m10(encrypt,SubKey10,SubKey7,out10);
	mux m11(encrypt,SubKey11,SubKey6,out11);
	mux m12(encrypt,SubKey12,SubKey5,out12);
	mux m13(encrypt,SubKey13,SubKey4,out13);
	mux m14(encrypt,SubKey14,SubKey3,out14);
	mux m15(encrypt,SubKey15,SubKey2,out15);
	mux m16(encrypt,SubKey16,SubKey1,out16);




 
 // (left_in, right_in, subkey, left_out, right_out);

   // round 1
		round r1(.left_in(left),.right_in(right),.subkey(out1),.left_out(intL1),.right_out(intR1));
   // round 2
		round r2(.left_in(intL1),.right_in(intR1),.subkey(out2),.left_out(intL2),.right_out(intR2));

   // round 3
		round r3(.left_in(intL2),.right_in(intR2),.subkey(out3),.left_out(intL3),.right_out(intR3));
   // round 4
		round r4(.left_in(intL3),.right_in(intR3),.subkey(out4),.left_out(intL4),.right_out(intR4));
   // round 5
		round r5(.left_in(intL4),.right_in(intR4),.subkey(out5),.left_out(intL5),.right_out(intR5));
   // round 6
		round r6(.left_in(intL5),.right_in(intR5),.subkey(out6),.left_out(intL6),.right_out(intR6));
   // round 7
		round r7(.left_in(intL6),.right_in(intR6),.subkey(out7),.left_out(intL7),.right_out(intR7));
   // round 8
		round r8(.left_in(intL7),.right_in(intR7),.subkey(out8),.left_out(intL8),.right_out(intR8));
   // round 9
		round r9(.left_in(intL8),.right_in(intR8),.subkey(out9),.left_out(intL9),.right_out(intR9));
   // round 10
		round r10(.left_in(intL9),.right_in(intR9),.subkey(out10),.left_out(intL10),.right_out(intR10));
   // round 11
		round r11(.left_in(intL10),.right_in(intR10),.subkey(out11),.left_out(intL11),.right_out(intR11));

   // round 12
		round r12(.left_in(intL11),.right_in(intR11),.subkey(out12),.left_out(intL12),.right_out(intR12));
   // round 13
		round r13(.left_in(intL12),.right_in(intR12),.subkey(out13),.left_out(intL13),.right_out(intR13));
   // round 14
		round r14(.left_in(intL13),.right_in(intR13),.subkey(out14),.left_out(intL14),.right_out(intR14));
   // round 15
		//round r15(intL14,intR14,out15,intL15,intR15);
		round r15(.left_in(intL14),.right_in(intR14),.subkey(out15),.left_out(intL15),.right_out(intR15));
   // round 16
		round r16(.left_in(intL15),.right_in(intR15),.subkey(out16),.left_out(intL16),.right_out(intR16));
		
		assign r16_out={intR16, intL16};//combi  swap //pc2
		//assign r16_out=out16;



		

   // Final Permutation (IP^{-1}) (swap output of round16)
   FP FP(.inp_block(r16_out), .out_block(ciphertext));  //check FP block make sure inputs and outupts agree
   
endmodule // DES


//mux take in 2 keys out one
module mux(encrypt, first,second,out);
input logic encrypt;
input logic [47:0] first;
input logic [47:0] second;
output logic [47:0] out;


//assign out = first;
	 assign out = encrypt == 1 ? first : second;


endmodule
