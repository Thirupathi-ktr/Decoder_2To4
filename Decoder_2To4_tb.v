module tb();
  reg [1:0]a;
  wire [3:0]y;
  
  decoder_2to4 dut(.a(a),
                   .y(y) );
  
  initial
    begin
      a = 2'b00;
      #20;
      a = 2'b01;
      #20;
      a = 2'b10;
      #20;
      a = 2'b11;
      #20;
      a = 2'b01;
      #20;
    end
  
  initial
    begin
      $monitor("input a = %b, output y = %b",a,y);
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
                
                
