module adder1_tb;
    wire so,co;
	reg a,b,ci;
	adder1 U1 (a,b,ci,so,co);
	
	initial
	begin
	        a=0;b=0;ci=0;
	    #20 a=0;b=0;ci=1;
	    #20 a=0;b=1;ci=0;
	    #20 a=0;b=1;ci=1;
	    #20 a=1;b=0;ci=1;
	    #20 a=1;b=1;ci=1;
	    #200 $finish;
	end
	
	/*iverilog*/
	initial
	begin
	    $dumpfile ("adder1.vcd");
		$dumpvars (0,adder1_tb);
	end 
	
endmodule
