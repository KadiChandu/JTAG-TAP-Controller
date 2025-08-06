module tap_controller_tb;
	reg tck;
	reg tms;
	reg trst;
	wire cdr1;
	wire sdr1;
	wire udr1;
	wire cir1;
	wire sir1;
	wire uir1;
	tap_controller dut (
		.tck(tck), 
		.tms(tms), 
		.trst(trst), 
		.cdr1(cdr1), 
		.sdr1(sdr1), 
		.udr1(udr1), 
		.cir1(cir1), 
		.sir1(sir1), 
    .uir1(uir1) ); 
initial begin
		tck = 0;
		forever #10 tck = ~tck;
end
initial begin
		tms = 0;
		trst = 0;
		#20;
		trst = 1;
    #20;
		tms = 1;
	  #20;
	  tms = 0;
    #20;	
    tms = 0;
	  #20;
    tms = 0;
		#20;
		tms = 1;
	  #20;
	  tms = 1;
		#20;
		tms=0;
		#20;
		tms = 1;
	  #20;
	  tms = 1;
		#20
		tms = 0;
		#20;
    tms = 1;
	  #10;
	  tms = 0;
    #20;	
    tms = 0;
	  #20;
	  tms = 0; //repeat for shift high
		#20;
		tms = 1;
	  #20;
	  tms = 1; //udr1 is highr
		#20;
		tms=1;
		#100;
		tms=0;
		#100;
	end
endmodule
