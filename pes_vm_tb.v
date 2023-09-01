module pes_vm_tb;

  //inputs
  reg clk;
  reg[1:0] in;
  reg rst;

  //output
  wire out;
  wire[1:0] change;

 pes_vm uut(
  .clock(clk),
  .reset(rst),
  .in(in),
  .out(out),
  .change(change)
 );

 initial begin
   //initialise inputs
   $dumpfile("pes_vm.vcd");
   $dumpvars(0,pes_vm_tb);
  rst = 1;
  clk = 0;

  #6 rst = 0;
  in = 1;
  #19 in = 2;
  #25 $finish;

 end
 always #5 clk = ~clk;
endmodule
