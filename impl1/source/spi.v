
module spi #(parameter dataWitdh = 7, parameter counterWidth = 3) (clock, data, spiClock, spiMOSI, led0,led1,led2,led3, spiEnablerClock);

input clock, data, spiEnablerClock;

output spiClock,spiMOSI,led0,led1,led2,led3;

wire [dataWitdh:0]data;

// reg [1983:0]jaapBuffer;

reg [1:0]counter;
reg [counterWidth:0]bit; // 0 .. 7

reg regSPIClock;
reg regSPIData;

reg syncerA;
reg syncerB;

reg jaap;

	initial begin
		counter = 2'b00;
		bit = 0;
		
		syncerA = 1'b0;
		syncerB = 1'b0;
		
		regSPIClock = 0;
		
		jaap = 0;
	end
	
	always @(posedge spiEnablerClock) begin
		
		if(syncerA == syncerB) begin
			syncerA = syncerA == 1'b0;
		end
	end

	// 
	always @(posedge clock) begin
		
		if(counter == 2'b00) begin
						
			counter = 2'b01;
			
		end
		else if(counter == 2'b01) begin
			regSPIClock = 1;
			
			counter = 2'b10;
			
		end
		else if(counter == 2'b10) begin
			regSPIClock = 0;
			
			counter = 2'b11;
			
		end
		else if(counter == 2'b11) begin
			
			if (bit == dataWitdh) begin
				bit = 0;
				syncerB = syncerB == 1'b0;
				
				jaap = 1'b1;
			end else begin
				bit = bit + 1;
			end
			
			
			counter = 2'b00;
			
		end

		
	end
	
	assign spiClock = ( 1'b1 == regSPIClock);
	assign spiMOSI = ( 1'b1 == data[bit]);
	/*
	assign led0 = syncerA == 1'b0;
	assign led1 = syncerB == 1'b0;
	
	assign led2 = syncerA != syncerB;
	assign led3 = jaap == 1'b0;
	*/

endmodule