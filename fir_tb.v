`timescale 1 ns / 1 ps

module fir_tb;

reg		[15:0]	data;
wire 	[15:0]	out;
reg clk;
wire [15:0] f1,fo1;
wire [31:0] f2,f3,f4;
fir m(data,clk,out,f1,f2,f3,f4,fo1);

initial begin
  clk=0;
  data=16'b0_10000_0000000000;
  #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00000_0000000000;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00011_1001100110;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00010_1001100110;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00001_0011001100;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00001_1001100110;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_10000_0000000000;///-1
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00001_1001100110;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00001_0011001100;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00010_1001100110;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b1_00011_1001100110;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00000_0000000000;
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
  #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
    #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
    #10 clk=~clk;
  #10 clk=~clk; data=16'b0_10000_0000000000; //////////////200u   1
    #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
    #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
    #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
    #10 clk=~clk;
  #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
    #10 clk=~clk;
    #10 clk=~clk; data=16'b0;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00011_1001100110;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00010_1001100110;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00001_0011001100;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00001_1001100110;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_10000_0000000000;///-1
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00001_1001100110;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00001_0011001100;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00010_1001100110;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b1_00011_1001100110;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b0;
    #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
    #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
    #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
      #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
      #10 clk=~clk;
    #10 clk=~clk; data=16'b0_10000_0000000000; //////////////200u   1
      #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
      #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
      #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
      #10 clk=~clk;
    #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
      #10 clk=~clk;
      #10 clk=~clk; data=16'b0;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00011_1001100110;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00010_1001100110;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00001_0011001100;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00001_1001100110;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_10000_0000000000;///-1
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00001_1001100110;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00001_0011001100;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00010_1001100110;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b1_00011_1001100110;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b0;
      #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
      #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
      #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
        #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
        #10 clk=~clk;
      #10 clk=~clk; data=16'b0_10000_0000000000; //////////////200u   1
        #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
        #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
        #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
        #10 clk=~clk;
      #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
        #10 clk=~clk;
        #10 clk=~clk; data=16'b0;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00011_1001100110;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00010_1001100110;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00001_0011001100;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00001_1001100110;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_10000_0000000000;///-1
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00001_1001100110;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00001_0011001100;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00010_1001100110;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b1_00011_1001100110;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b0;
        #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
        #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
        #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
          #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
          #10 clk=~clk;
        #10 clk=~clk; data=16'b0_10000_0000000000; //////////////200u   1
          #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
          #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
          #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
          #10 clk=~clk;
        #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
          #10 clk=~clk;
          #10 clk=~clk; data=16'b0;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00011_1001100110;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00010_1001100110;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00001_0011001100;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00001_1001100110;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_10000_0000000000;///-1
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00001_1001100110;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00001_0011001100;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00010_1001100110;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b1_00011_1001100110;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b0;
          #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
          #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
          #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
            #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
            #10 clk=~clk;
          #10 clk=~clk; data=16'b0_10000_0000000000; //////////////200u   1
            #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00001_1001100110;  //0.8
            #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00001_0011001100;  //0.6
            #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00010_1001100110;  //0.4
            #10 clk=~clk;
          #10 clk=~clk; data=16'b0_00011_1001100110;  //0.2
            #10 clk=~clk;

end

endmodule
