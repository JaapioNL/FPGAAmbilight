
module Default_w_standby_top (spiClock, spiMOSI, led0, led1, led2, led3, led4, led5, led6, led7,
extclock, dataEnable,

redIn, greenIn, blueIn);

// spi
parameter dataWidth = 1568;	
parameter bitWidth = 16;

output spiClock,spiMOSI;

reg [dataWidth:0]data;

reg state;
reg bitTicker;

wire jaap = (clock);


reg[15:0] pixel12Red;
reg[15:0] pixel12Green;
reg[15:0] pixel12Blue;

reg[15:0] pixel11Red;
reg[15:0] pixel11Green;
reg[15:0] pixel11Blue;

reg[15:0] pixel10Red;
reg[15:0] pixel10Green;
reg[15:0] pixel10Blue;

reg[15:0] pixel9Red;
reg[15:0] pixel9Green;
reg[15:0] pixel9Blue;

reg[15:0] pixel8Red;
reg[15:0] pixel8Green;
reg[15:0] pixel8Blue;

reg[15:0] pixel7Red;
reg[15:0] pixel7Green;
reg[15:0] pixel7Blue;

reg[15:0] pixel6Red;
reg[15:0] pixel6Green;
reg[15:0] pixel6Blue;

reg[15:0] pixel5Red;
reg[15:0] pixel5Green;
reg[15:0] pixel5Blue;

reg[15:0] pixel4Red;
reg[15:0] pixel4Green;
reg[15:0] pixel4Blue;

reg[15:0] pixel3Red;
reg[15:0] pixel3Green;
reg[15:0] pixel3Blue;

reg[15:0] pixel2Red;
reg[15:0] pixel2Green;
reg[15:0] pixel2Blue;

reg[15:0] pixel1Red;
reg[15:0] pixel1Green;
reg[15:0] pixel1Blue;

reg[15:0] pixel36Red;
reg[15:0] pixel36Green;
reg[15:0] pixel36Blue;

reg[15:0] pixel37Red;
reg[15:0] pixel37Green;
reg[15:0] pixel37Blue;

reg[15:0] pixel38Red;
reg[15:0] pixel38Green;
reg[15:0] pixel38Blue;

reg[15:0] pixel39Red;
reg[15:0] pixel39Green;
reg[15:0] pixel39Blue;

reg[15:0] pixel40Red;
reg[15:0] pixel40Green;
reg[15:0] pixel40Blue;

reg[15:0] pixel41Red;
reg[15:0] pixel41Green;
reg[15:0] pixel41Blue;

reg[15:0] pixel42Red;
reg[15:0] pixel42Green;
reg[15:0] pixel42Blue;

reg[15:0] pixel43Red;
reg[15:0] pixel43Green;
reg[15:0] pixel43Blue;

reg[15:0] pixel44Red;
reg[15:0] pixel44Green;
reg[15:0] pixel44Blue;

reg[15:0] pixel45Red;
reg[15:0] pixel45Green;
reg[15:0] pixel45Blue;

reg[15:0] pixel46Red;
reg[15:0] pixel46Green;
reg[15:0] pixel46Blue;

reg[15:0] pixel47Red;
reg[15:0] pixel47Green;
reg[15:0] pixel47Blue;

reg[15:0] pixel13Red;
reg[15:0] pixel13Green;
reg[15:0] pixel13Blue;

reg[15:0] pixel14Red;
reg[15:0] pixel14Green;
reg[15:0] pixel14Blue;

reg[15:0] pixel15Red;
reg[15:0] pixel15Green;
reg[15:0] pixel15Blue;

reg[15:0] pixel16Red;
reg[15:0] pixel16Green;
reg[15:0] pixel16Blue;

reg[15:0] pixel17Red;
reg[15:0] pixel17Green;
reg[15:0] pixel17Blue;

reg[15:0] pixel18Red;
reg[15:0] pixel18Green;
reg[15:0] pixel18Blue;

reg[15:0] pixel19Red;
reg[15:0] pixel19Green;
reg[15:0] pixel19Blue;

reg[15:0] pixel20Red;
reg[15:0] pixel20Green;
reg[15:0] pixel20Blue;

reg[15:0] pixel21Red;
reg[15:0] pixel21Green;
reg[15:0] pixel21Blue;

reg[15:0] pixel22Red;
reg[15:0] pixel22Green;
reg[15:0] pixel22Blue;

reg[15:0] pixel23Red;
reg[15:0] pixel23Green;
reg[15:0] pixel23Blue;

reg[15:0] pixel24Red;
reg[15:0] pixel24Green;
reg[15:0] pixel24Blue;

reg[15:0] pixel25Red;
reg[15:0] pixel25Green;
reg[15:0] pixel25Blue;

reg[15:0] pixel26Red;
reg[15:0] pixel26Green;
reg[15:0] pixel26Blue;

reg[15:0] pixel27Red;
reg[15:0] pixel27Green;
reg[15:0] pixel27Blue;

reg[15:0] pixel28Red;
reg[15:0] pixel28Green;
reg[15:0] pixel28Blue;

reg[15:0] pixel29Red;
reg[15:0] pixel29Green;
reg[15:0] pixel29Blue;

reg[15:0] pixel30Red;
reg[15:0] pixel30Green;
reg[15:0] pixel30Blue;

reg[15:0] pixel31Red;
reg[15:0] pixel31Green;
reg[15:0] pixel31Blue;

reg[15:0] pixel32Red;
reg[15:0] pixel32Green;
reg[15:0] pixel32Blue;

reg[15:0] pixel33Red;
reg[15:0] pixel33Green;
reg[15:0] pixel33Blue;

reg[15:0] pixel34Red;
reg[15:0] pixel34Green;
reg[15:0] pixel34Blue;

reg[15:0] pixel35Red;
reg[15:0] pixel35Green;
reg[15:0] pixel35Blue;





// lcd output
input	extclock, dataEnable;


input [7:0]redIn;
input [7:0]greenIn;
input [7:0]blueIn;

output	led0, led1, led2, led3, led4, led5, led6, led7;

reg		spiEnableToggle;

reg		[16:0] cnt;

reg		[16:0] xCounter;
reg		[16:0] yCounter;

reg		[16:0] leds;

reg		[16:0] deLowCounter;


reg clearX;
reg clearY;



spi#(dataWidth,bitWidth) mySPI( jaap, data, spiClock, spiMOSI, led0,led1,led2,led3, spiEnableToggle);

OSCH #(.NOM_FREQ("38.00")) rc_oscillator(.STDBY(1'b0), .OSC(clock));

	
	initial
	begin
		 spiEnableToggle <= 1'b0;
		
		 cnt <= 1'b0;
		 deLowCounter <= 1'b0;
		 
		 xCounter <= 1'b0;
		 yCounter <= 1'b0;
		 
		 clearX <= 1'b0;
		 clearY <= 1'b0;
		 
		 leds <= 16'b111111111111111;
		 

		pixel12Red = 0;
		pixel12Green = 0;
		pixel12Blue = 0;
		pixel11Red = 0;
		pixel11Green = 0;
		pixel11Blue = 0;
		pixel10Red = 0;
		pixel10Green = 0;
		pixel10Blue = 0;
		pixel9Red = 0;
		pixel9Green = 0;
		pixel9Blue = 0;
		pixel8Red = 0;
		pixel8Green = 0;
		pixel8Blue = 0;
		pixel7Red = 0;
		pixel7Green = 0;
		pixel7Blue = 0;
		pixel6Red = 0;
		pixel6Green = 0;
		pixel6Blue = 0;
		pixel5Red = 0;
		pixel5Green = 0;
		pixel5Blue = 0;
		pixel4Red = 0;
		pixel4Green = 0;
		pixel4Blue = 0;
		pixel3Red = 0;
		pixel3Green = 0;
		pixel3Blue = 0;
		pixel2Red = 0;
		pixel2Green = 0;
		pixel2Blue = 0;
		pixel1Red = 0;
		pixel1Green = 0;
		pixel1Blue = 0;
		pixel36Red = 0;
		pixel36Green = 0;
		pixel36Blue = 0;
		pixel37Red = 0;
		pixel37Green = 0;
		pixel37Blue = 0;
		pixel38Red = 0;
		pixel38Green = 0;
		pixel38Blue = 0;
		pixel39Red = 0;
		pixel39Green = 0;
		pixel39Blue = 0;
		pixel40Red = 0;
		pixel40Green = 0;
		pixel40Blue = 0;
		pixel41Red = 0;
		pixel41Green = 0;
		pixel41Blue = 0;
		pixel42Red = 0;
		pixel42Green = 0;
		pixel42Blue = 0;
		pixel43Red = 0;
		pixel43Green = 0;
		pixel43Blue = 0;
		pixel44Red = 0;
		pixel44Green = 0;
		pixel44Blue = 0;
		pixel45Red = 0;
		pixel45Green = 0;
		pixel45Blue = 0;
		pixel46Red = 0;
		pixel46Green = 0;
		pixel46Blue = 0;
		pixel47Red = 0;
		pixel47Green = 0;
		pixel47Blue = 0;
		pixel13Red = 0;
		pixel13Green = 0;
		pixel13Blue = 0;
		pixel14Red = 0;
		pixel14Green = 0;
		pixel14Blue = 0;
		pixel15Red = 0;
		pixel15Green = 0;
		pixel15Blue = 0;
		pixel16Red = 0;
		pixel16Green = 0;
		pixel16Blue = 0;
		pixel17Red = 0;
		pixel17Green = 0;
		pixel17Blue = 0;
		pixel18Red = 0;
		pixel18Green = 0;
		pixel18Blue = 0;
		pixel19Red = 0;
		pixel19Green = 0;
		pixel19Blue = 0;
		pixel20Red = 0;
		pixel20Green = 0;
		pixel20Blue = 0;
		pixel21Red = 0;
		pixel21Green = 0;
		pixel21Blue = 0;
		pixel22Red = 0;
		pixel22Green = 0;
		pixel22Blue = 0;
		pixel23Red = 0;
		pixel23Green = 0;
		pixel23Blue = 0;
		pixel24Red = 0;
		pixel24Green = 0;
		pixel24Blue = 0;
		pixel25Red = 0;
		pixel25Green = 0;
		pixel25Blue = 0;
		pixel26Red = 0;
		pixel26Green = 0;
		pixel26Blue = 0;
		pixel27Red = 0;
		pixel27Green = 0;
		pixel27Blue = 0;
		pixel28Red = 0;
		pixel28Green = 0;
		pixel28Blue = 0;
		pixel29Red = 0;
		pixel29Green = 0;
		pixel29Blue = 0;
		pixel30Red = 0;
		pixel30Green = 0;
		pixel30Blue = 0;
		pixel31Red = 0;
		pixel31Green = 0;
		pixel31Blue = 0;
		pixel32Red = 0;
		pixel32Green = 0;
		pixel32Blue = 0;
		pixel33Red = 0;
		pixel33Green = 0;
		pixel33Blue = 0;
		pixel34Red = 0;
		pixel34Green = 0;
		pixel34Blue = 0;
		pixel35Red = 0;
		pixel35Green = 0;
		pixel35Blue = 0;
		pixel36Red = 0;
		pixel36Green = 0;
		pixel36Blue = 0;


// Initial header	
		// byte #1
       data[0] = 0;
       data[1] = 0;
       data[2] = 0;
       data[3] = 0;
       data[4] = 0;
       data[5] = 0;
       data[6] = 0;
       data[7] = 0;

		// byte #2
       data[8] = 0;
       data[9] = 0;
       data[10] = 0;
       data[11] = 0;
       data[12] = 0;
       data[13] = 0;
       data[14] = 0;
       data[15] = 0;

		// byte #3
       data[16] = 0;
       data[17] = 0;
       data[18] = 0;
       data[19] = 0;
       data[20] = 0;
       data[21] = 0;
       data[22] = 0;
       data[23] = 0;

		// byte #4
       data[24] = 0;
       data[25] = 0;
       data[26] = 0;
       data[27] = 0;
       data[28] = 0;
       data[29] = 0;
       data[30] = 0;
       data[31] = 0;


// Initial Colors
		data[1528:32] = 0;

// Initial footer
/*		// byte #1
       data[1952] = 1;
       data[1953] = 1;
       data[1954] = 1;
       data[1955] = 1;
       data[1956] = 1;
       data[1957] = 1;
       data[1958] = 1;
       data[1959] = 1;

		// byte #2
       data[1960] = 1;
       data[1961] = 1;
       data[1962] = 1;
       data[1963] = 1;
       data[1964] = 1;
       data[1965] = 1;
       data[1966] = 1;
       data[1967] = 1;

		// byte #3
       data[1968] = 1;
       data[1969] = 1;
       data[1970] = 1;
       data[1971] = 1;
       data[1972] = 1;
       data[1973] = 1;
       data[1974] = 1;
       data[1975] = 1;

		// byte #4
       data[1976] = 1;
       data[1977] = 1;
       data[1978] = 1;
       data[1979] = 1;
       data[1980] = 1;
       data[1981] = 1;
       data[1982] = 1;
       data[1983] = 1;*/
	   


data[1543:1536] <= 8'b11111111;
data[1551:1544] <= 8'b11111111;
data[1559:1552] <= 8'b11111111;
data[1567:1560] <= 8'b11111111;



	
	end // end of initial

//always @(posedge osc_clk)

always @(negedge extclock) begin
	
	if(dataEnable ==  0) begin
			
		deLowCounter = deLowCounter + 1;
						
		if (deLowCounter > 1900) begin		
			clearY = 1'b1;	
		end if (deLowCounter == 41) begin
			clearX = 1'b1;
		end
		
	end else begin	
		
		if(clearY == 1'b1) begin
			
			deLowCounter <= 1'b0;
			
			xCounter = 0;
			yCounter = 0;


			// value scaler

			pixel12Red = pixel12Red / 4 ; 
			pixel12Green = pixel12Green / 4; 
			pixel12Blue = pixel12Blue / 4; 
			pixel11Red = pixel11Red / 4 ; 
			pixel11Green = pixel11Green / 4; 
			pixel11Blue = pixel11Blue / 4; 
			pixel10Red = pixel10Red / 4 ; 
			pixel10Green = pixel10Green / 4; 
			pixel10Blue = pixel10Blue / 4; 
			pixel9Red = pixel9Red / 4 ; 
			pixel9Green = pixel9Green / 4; 
			pixel9Blue = pixel9Blue / 4; 
			pixel8Red = pixel8Red / 4 ; 
			pixel8Green = pixel8Green / 4; 
			pixel8Blue = pixel8Blue / 4; 
			pixel7Red = pixel7Red / 4 ; 
			pixel7Green = pixel7Green / 4; 
			pixel7Blue = pixel7Blue / 4; 
			pixel6Red = pixel6Red / 4 ; 
			pixel6Green = pixel6Green / 4; 
			pixel6Blue = pixel6Blue / 4; 
			pixel5Red = pixel5Red / 4 ; 
			pixel5Green = pixel5Green / 4; 
			pixel5Blue = pixel5Blue / 4; 
			pixel4Red = pixel4Red / 4 ; 
			pixel4Green = pixel4Green / 4; 
			pixel4Blue = pixel4Blue / 4; 
			pixel3Red = pixel3Red / 4 ; 
			pixel3Green = pixel3Green / 4; 
			pixel3Blue = pixel3Blue / 4; 
			pixel2Red = pixel2Red / 4 ; 
			pixel2Green = pixel2Green / 4; 
			pixel2Blue = pixel2Blue / 4; 
			pixel1Red = pixel1Red / 4 ; 
			pixel1Green = pixel1Green / 4; 
			pixel1Blue = pixel1Blue / 4; 
			pixel36Red = pixel36Red / 4 ; 
			pixel36Green = pixel36Green / 4; 
			pixel36Blue = pixel36Blue / 4; 
			pixel37Red = pixel37Red / 4 ; 
			pixel37Green = pixel37Green / 4; 
			pixel37Blue = pixel37Blue / 4; 
			pixel38Red = pixel38Red / 4 ; 
			pixel38Green = pixel38Green / 4; 
			pixel38Blue = pixel38Blue / 4; 
			pixel39Red = pixel39Red / 4 ; 
			pixel39Green = pixel39Green / 4; 
			pixel39Blue = pixel39Blue / 4; 
			pixel40Red = pixel40Red / 4 ; 
			pixel40Green = pixel40Green / 4; 
			pixel40Blue = pixel40Blue / 4; 
			pixel41Red = pixel41Red / 4 ; 
			pixel41Green = pixel41Green / 4; 
			pixel41Blue = pixel41Blue / 4; 
			pixel42Red = pixel42Red / 4 ; 
			pixel42Green = pixel42Green / 4; 
			pixel42Blue = pixel42Blue / 4; 
			pixel43Red = pixel43Red / 4 ; 
			pixel43Green = pixel43Green / 4; 
			pixel43Blue = pixel43Blue / 4; 
			pixel44Red = pixel44Red / 4 ; 
			pixel44Green = pixel44Green / 4; 
			pixel44Blue = pixel44Blue / 4; 
			pixel45Red = pixel45Red / 4 ; 
			pixel45Green = pixel45Green / 4; 
			pixel45Blue = pixel45Blue / 4; 
			pixel46Red = pixel46Red / 4 ; 
			pixel46Green = pixel46Green / 4; 
			pixel46Blue = pixel46Blue / 4; 
			pixel47Red = pixel47Red / 4 ; 
			pixel47Green = pixel47Green / 4; 
			pixel47Blue = pixel47Blue / 4; 
			pixel13Red = pixel13Red / 4 ; 
			pixel13Green = pixel13Green / 4; 
			pixel13Blue = pixel13Blue / 4; 
			pixel14Red = pixel14Red / 4 ; 
			pixel14Green = pixel14Green / 4; 
			pixel14Blue = pixel14Blue / 4; 
			pixel15Red = pixel15Red / 4 ; 
			pixel15Green = pixel15Green / 4; 
			pixel15Blue = pixel15Blue / 4; 
			pixel16Red = pixel16Red / 4 ; 
			pixel16Green = pixel16Green / 4; 
			pixel16Blue = pixel16Blue / 4; 
			pixel17Red = pixel17Red / 4 ; 
			pixel17Green = pixel17Green / 4; 
			pixel17Blue = pixel17Blue / 4; 
			pixel18Red = pixel18Red / 4 ; 
			pixel18Green = pixel18Green / 4; 
			pixel18Blue = pixel18Blue / 4; 
			pixel19Red = pixel19Red / 4 ; 
			pixel19Green = pixel19Green / 4; 
			pixel19Blue = pixel19Blue / 4; 
			pixel20Red = pixel20Red / 4 ; 
			pixel20Green = pixel20Green / 4; 
			pixel20Blue = pixel20Blue / 4; 
			pixel21Red = pixel21Red / 4 ; 
			pixel21Green = pixel21Green / 4; 
			pixel21Blue = pixel21Blue / 4; 
			pixel22Red = pixel22Red / 4 ; 
			pixel22Green = pixel22Green / 4; 
			pixel22Blue = pixel22Blue / 4; 
			pixel23Red = pixel23Red / 4 ; 
			pixel23Green = pixel23Green / 4; 
			pixel23Blue = pixel23Blue / 4; 
			pixel24Red = pixel24Red / 4 ; 
			pixel24Green = pixel24Green / 4; 
			pixel24Blue = pixel24Blue / 4; 
			pixel25Red = pixel25Red / 4 ; 
			pixel25Green = pixel25Green / 4; 
			pixel25Blue = pixel25Blue / 4; 
			pixel26Red = pixel26Red / 4 ; 
			pixel26Green = pixel26Green / 4; 
			pixel26Blue = pixel26Blue / 4; 
			pixel27Red = pixel27Red / 4 ; 
			pixel27Green = pixel27Green / 4; 
			pixel27Blue = pixel27Blue / 4; 
			pixel28Red = pixel28Red / 4 ; 
			pixel28Green = pixel28Green / 4; 
			pixel28Blue = pixel28Blue / 4; 
			pixel29Red = pixel29Red / 4 ; 
			pixel29Green = pixel29Green / 4; 
			pixel29Blue = pixel29Blue / 4; 
			pixel30Red = pixel30Red / 4 ; 
			pixel30Green = pixel30Green / 4; 
			pixel30Blue = pixel30Blue / 4; 
			pixel31Red = pixel31Red / 4 ; 
			pixel31Green = pixel31Green / 4; 
			pixel31Blue = pixel31Blue / 4; 
			pixel32Red = pixel32Red / 4 ; 
			pixel32Green = pixel32Green / 4; 
			pixel32Blue = pixel32Blue / 4; 
			pixel33Red = pixel33Red / 4 ; 
			pixel33Green = pixel33Green / 4; 
			pixel33Blue = pixel33Blue / 4; 
			pixel34Red = pixel34Red / 4 ; 
			pixel34Green = pixel34Green / 4; 
			pixel34Blue = pixel34Blue / 4; 
			pixel35Red = pixel35Red / 4 ; 
			pixel35Green = pixel35Green / 4; 
			pixel35Blue = pixel35Blue / 4; 
			pixel36Red = pixel36Red / 4 ; 
			pixel36Green = pixel36Green / 4; 
			pixel36Blue = pixel36Blue / 4;


			// end of value scaler



			//pixelRed <= (pixelRedCur + pixelRedPrev) / 9; // Make it a bit less bright	
			//pixelGreen <= (pixelGreenCur + pixelGreenPrev) / 9; // Make it a bit less bright
			//pixelBlue <= (pixelBlueCur + pixelBluePrev) / 9; // Make it a bit less bright
			//			leds[7:0] = pixelRed[7:0];
	
// Header	
			// byte #1
		   data[0] = 0;
		   data[1] = 0;
		   data[2] = 0;
		   data[3] = 0;
		   data[4] = 0;
		   data[5] = 0;
		   data[6] = 0;
		   data[7] = 0;

			// byte #2
		   data[8] = 0;
		   data[9] = 0;
		   data[10] = 0;
		   data[11] = 0;
		   data[12] = 0;
		   data[13] = 0;
		   data[14] = 0;
		   data[15] = 0;

			// byte #3
		   data[16] = 0;
		   data[17] = 0;
		   data[18] = 0;
		   data[19] = 0;
		   data[20] = 0;
		   data[21] = 0;
		   data[22] = 0;
		   data[23] = 0;

			// byte #4
		   data[24] = 0;
		   data[25] = 0;
		   data[26] = 0;
		   data[27] = 0;
		   data[28] = 0;
		   data[29] = 0;
		   data[30] = 0;
		   data[31] = 0;


		// Colors

			
// Led # 1
data[39:32] <= 8'b11111111;
data[47] <= pixel1Blue[0];
data[46] <= pixel1Blue[1];
data[45] <= pixel1Blue[2];
data[44] <= pixel1Blue[3];
data[43] <= pixel1Blue[4];
data[42] <= pixel1Blue[5];
data[41] <= pixel1Blue[6];
data[40] <= pixel1Blue[7];
data[55] <= pixel1Green[0];
data[54] <= pixel1Green[1];
data[53] <= pixel1Green[2];
data[52] <= pixel1Green[3];
data[51] <= pixel1Green[4];
data[50] <= pixel1Green[5];
data[49] <= pixel1Green[6];
data[48] <= pixel1Green[7];
data[63] <= pixel1Red[0];
data[62] <= pixel1Red[1];
data[61] <= pixel1Red[2];
data[60] <= pixel1Red[3];
data[59] <= pixel1Red[4];
data[58] <= pixel1Red[5];
data[57] <= pixel1Red[6];
data[56] <= pixel1Red[7];

// Led # 2
data[71:64] <= 8'b11111111;
data[79] <= pixel2Blue[0];
data[78] <= pixel2Blue[1];
data[77] <= pixel2Blue[2];
data[76] <= pixel2Blue[3];
data[75] <= pixel2Blue[4];
data[74] <= pixel2Blue[5];
data[73] <= pixel2Blue[6];
data[72] <= pixel2Blue[7];
data[87] <= pixel2Green[0];
data[86] <= pixel2Green[1];
data[85] <= pixel2Green[2];
data[84] <= pixel2Green[3];
data[83] <= pixel2Green[4];
data[82] <= pixel2Green[5];
data[81] <= pixel2Green[6];
data[80] <= pixel2Green[7];
data[95] <= pixel2Red[0];
data[94] <= pixel2Red[1];
data[93] <= pixel2Red[2];
data[92] <= pixel2Red[3];
data[91] <= pixel2Red[4];
data[90] <= pixel2Red[5];
data[89] <= pixel2Red[6];
data[88] <= pixel2Red[7];

// Led # 3
data[103:96] <= 8'b11111111;
data[111] <= pixel3Blue[0];
data[110] <= pixel3Blue[1];
data[109] <= pixel3Blue[2];
data[108] <= pixel3Blue[3];
data[107] <= pixel3Blue[4];
data[106] <= pixel3Blue[5];
data[105] <= pixel3Blue[6];
data[104] <= pixel3Blue[7];
data[119] <= pixel3Green[0];
data[118] <= pixel3Green[1];
data[117] <= pixel3Green[2];
data[116] <= pixel3Green[3];
data[115] <= pixel3Green[4];
data[114] <= pixel3Green[5];
data[113] <= pixel3Green[6];
data[112] <= pixel3Green[7];
data[127] <= pixel3Red[0];
data[126] <= pixel3Red[1];
data[125] <= pixel3Red[2];
data[124] <= pixel3Red[3];
data[123] <= pixel3Red[4];
data[122] <= pixel3Red[5];
data[121] <= pixel3Red[6];
data[120] <= pixel3Red[7];

// Led # 4
data[135:128] <= 8'b11111111;
data[143] <= pixel4Blue[0];
data[142] <= pixel4Blue[1];
data[141] <= pixel4Blue[2];
data[140] <= pixel4Blue[3];
data[139] <= pixel4Blue[4];
data[138] <= pixel4Blue[5];
data[137] <= pixel4Blue[6];
data[136] <= pixel4Blue[7];
data[151] <= pixel4Green[0];
data[150] <= pixel4Green[1];
data[149] <= pixel4Green[2];
data[148] <= pixel4Green[3];
data[147] <= pixel4Green[4];
data[146] <= pixel4Green[5];
data[145] <= pixel4Green[6];
data[144] <= pixel4Green[7];
data[159] <= pixel4Red[0];
data[158] <= pixel4Red[1];
data[157] <= pixel4Red[2];
data[156] <= pixel4Red[3];
data[155] <= pixel4Red[4];
data[154] <= pixel4Red[5];
data[153] <= pixel4Red[6];
data[152] <= pixel4Red[7];

// Led # 5
data[167:160] <= 8'b11111111;
data[175] <= pixel5Blue[0];
data[174] <= pixel5Blue[1];
data[173] <= pixel5Blue[2];
data[172] <= pixel5Blue[3];
data[171] <= pixel5Blue[4];
data[170] <= pixel5Blue[5];
data[169] <= pixel5Blue[6];
data[168] <= pixel5Blue[7];
data[183] <= pixel5Green[0];
data[182] <= pixel5Green[1];
data[181] <= pixel5Green[2];
data[180] <= pixel5Green[3];
data[179] <= pixel5Green[4];
data[178] <= pixel5Green[5];
data[177] <= pixel5Green[6];
data[176] <= pixel5Green[7];
data[191] <= pixel5Red[0];
data[190] <= pixel5Red[1];
data[189] <= pixel5Red[2];
data[188] <= pixel5Red[3];
data[187] <= pixel5Red[4];
data[186] <= pixel5Red[5];
data[185] <= pixel5Red[6];
data[184] <= pixel5Red[7];

// Led # 6
data[199:192] <= 8'b11111111;
data[207] <= pixel6Blue[0];
data[206] <= pixel6Blue[1];
data[205] <= pixel6Blue[2];
data[204] <= pixel6Blue[3];
data[203] <= pixel6Blue[4];
data[202] <= pixel6Blue[5];
data[201] <= pixel6Blue[6];
data[200] <= pixel6Blue[7];
data[215] <= pixel6Green[0];
data[214] <= pixel6Green[1];
data[213] <= pixel6Green[2];
data[212] <= pixel6Green[3];
data[211] <= pixel6Green[4];
data[210] <= pixel6Green[5];
data[209] <= pixel6Green[6];
data[208] <= pixel6Green[7];
data[223] <= pixel6Red[0];
data[222] <= pixel6Red[1];
data[221] <= pixel6Red[2];
data[220] <= pixel6Red[3];
data[219] <= pixel6Red[4];
data[218] <= pixel6Red[5];
data[217] <= pixel6Red[6];
data[216] <= pixel6Red[7];

// Led # 7
data[231:224] <= 8'b11111111;
data[239] <= pixel7Blue[0];
data[238] <= pixel7Blue[1];
data[237] <= pixel7Blue[2];
data[236] <= pixel7Blue[3];
data[235] <= pixel7Blue[4];
data[234] <= pixel7Blue[5];
data[233] <= pixel7Blue[6];
data[232] <= pixel7Blue[7];
data[247] <= pixel7Green[0];
data[246] <= pixel7Green[1];
data[245] <= pixel7Green[2];
data[244] <= pixel7Green[3];
data[243] <= pixel7Green[4];
data[242] <= pixel7Green[5];
data[241] <= pixel7Green[6];
data[240] <= pixel7Green[7];
data[255] <= pixel7Red[0];
data[254] <= pixel7Red[1];
data[253] <= pixel7Red[2];
data[252] <= pixel7Red[3];
data[251] <= pixel7Red[4];
data[250] <= pixel7Red[5];
data[249] <= pixel7Red[6];
data[248] <= pixel7Red[7];

// Led # 8
data[263:256] <= 8'b11111111;
data[271] <= pixel8Blue[0];
data[270] <= pixel8Blue[1];
data[269] <= pixel8Blue[2];
data[268] <= pixel8Blue[3];
data[267] <= pixel8Blue[4];
data[266] <= pixel8Blue[5];
data[265] <= pixel8Blue[6];
data[264] <= pixel8Blue[7];
data[279] <= pixel8Green[0];
data[278] <= pixel8Green[1];
data[277] <= pixel8Green[2];
data[276] <= pixel8Green[3];
data[275] <= pixel8Green[4];
data[274] <= pixel8Green[5];
data[273] <= pixel8Green[6];
data[272] <= pixel8Green[7];
data[287] <= pixel8Red[0];
data[286] <= pixel8Red[1];
data[285] <= pixel8Red[2];
data[284] <= pixel8Red[3];
data[283] <= pixel8Red[4];
data[282] <= pixel8Red[5];
data[281] <= pixel8Red[6];
data[280] <= pixel8Red[7];

// Led # 9
data[295:288] <= 8'b11111111;
data[303] <= pixel9Blue[0];
data[302] <= pixel9Blue[1];
data[301] <= pixel9Blue[2];
data[300] <= pixel9Blue[3];
data[299] <= pixel9Blue[4];
data[298] <= pixel9Blue[5];
data[297] <= pixel9Blue[6];
data[296] <= pixel9Blue[7];
data[311] <= pixel9Green[0];
data[310] <= pixel9Green[1];
data[309] <= pixel9Green[2];
data[308] <= pixel9Green[3];
data[307] <= pixel9Green[4];
data[306] <= pixel9Green[5];
data[305] <= pixel9Green[6];
data[304] <= pixel9Green[7];
data[319] <= pixel9Red[0];
data[318] <= pixel9Red[1];
data[317] <= pixel9Red[2];
data[316] <= pixel9Red[3];
data[315] <= pixel9Red[4];
data[314] <= pixel9Red[5];
data[313] <= pixel9Red[6];
data[312] <= pixel9Red[7];

// Led # 10
data[327:320] <= 8'b11111111;
data[335] <= pixel10Blue[0];
data[334] <= pixel10Blue[1];
data[333] <= pixel10Blue[2];
data[332] <= pixel10Blue[3];
data[331] <= pixel10Blue[4];
data[330] <= pixel10Blue[5];
data[329] <= pixel10Blue[6];
data[328] <= pixel10Blue[7];
data[343] <= pixel10Green[0];
data[342] <= pixel10Green[1];
data[341] <= pixel10Green[2];
data[340] <= pixel10Green[3];
data[339] <= pixel10Green[4];
data[338] <= pixel10Green[5];
data[337] <= pixel10Green[6];
data[336] <= pixel10Green[7];
data[351] <= pixel10Red[0];
data[350] <= pixel10Red[1];
data[349] <= pixel10Red[2];
data[348] <= pixel10Red[3];
data[347] <= pixel10Red[4];
data[346] <= pixel10Red[5];
data[345] <= pixel10Red[6];
data[344] <= pixel10Red[7];

// Led # 11
data[359:352] <= 8'b11111111;
data[367] <= pixel11Blue[0];
data[366] <= pixel11Blue[1];
data[365] <= pixel11Blue[2];
data[364] <= pixel11Blue[3];
data[363] <= pixel11Blue[4];
data[362] <= pixel11Blue[5];
data[361] <= pixel11Blue[6];
data[360] <= pixel11Blue[7];
data[375] <= pixel11Green[0];
data[374] <= pixel11Green[1];
data[373] <= pixel11Green[2];
data[372] <= pixel11Green[3];
data[371] <= pixel11Green[4];
data[370] <= pixel11Green[5];
data[369] <= pixel11Green[6];
data[368] <= pixel11Green[7];
data[383] <= pixel11Red[0];
data[382] <= pixel11Red[1];
data[381] <= pixel11Red[2];
data[380] <= pixel11Red[3];
data[379] <= pixel11Red[4];
data[378] <= pixel11Red[5];
data[377] <= pixel11Red[6];
data[376] <= pixel11Red[7];

// Led # 12
data[391:384] <= 8'b11111111;
data[399] <= pixel12Blue[0];
data[398] <= pixel12Blue[1];
data[397] <= pixel12Blue[2];
data[396] <= pixel12Blue[3];
data[395] <= pixel12Blue[4];
data[394] <= pixel12Blue[5];
data[393] <= pixel12Blue[6];
data[392] <= pixel12Blue[7];
data[407] <= pixel12Green[0];
data[406] <= pixel12Green[1];
data[405] <= pixel12Green[2];
data[404] <= pixel12Green[3];
data[403] <= pixel12Green[4];
data[402] <= pixel12Green[5];
data[401] <= pixel12Green[6];
data[400] <= pixel12Green[7];
data[415] <= pixel12Red[0];
data[414] <= pixel12Red[1];
data[413] <= pixel12Red[2];
data[412] <= pixel12Red[3];
data[411] <= pixel12Red[4];
data[410] <= pixel12Red[5];
data[409] <= pixel12Red[6];
data[408] <= pixel12Red[7];

// Led # 13
data[423:416] <= 8'b11111111;
data[431] <= pixel13Blue[0];
data[430] <= pixel13Blue[1];
data[429] <= pixel13Blue[2];
data[428] <= pixel13Blue[3];
data[427] <= pixel13Blue[4];
data[426] <= pixel13Blue[5];
data[425] <= pixel13Blue[6];
data[424] <= pixel13Blue[7];
data[439] <= pixel13Green[0];
data[438] <= pixel13Green[1];
data[437] <= pixel13Green[2];
data[436] <= pixel13Green[3];
data[435] <= pixel13Green[4];
data[434] <= pixel13Green[5];
data[433] <= pixel13Green[6];
data[432] <= pixel13Green[7];
data[447] <= pixel13Red[0];
data[446] <= pixel13Red[1];
data[445] <= pixel13Red[2];
data[444] <= pixel13Red[3];
data[443] <= pixel13Red[4];
data[442] <= pixel13Red[5];
data[441] <= pixel13Red[6];
data[440] <= pixel13Red[7];

// Led # 14
data[455:448] <= 8'b11111111;
data[463] <= pixel14Blue[0];
data[462] <= pixel14Blue[1];
data[461] <= pixel14Blue[2];
data[460] <= pixel14Blue[3];
data[459] <= pixel14Blue[4];
data[458] <= pixel14Blue[5];
data[457] <= pixel14Blue[6];
data[456] <= pixel14Blue[7];
data[471] <= pixel14Green[0];
data[470] <= pixel14Green[1];
data[469] <= pixel14Green[2];
data[468] <= pixel14Green[3];
data[467] <= pixel14Green[4];
data[466] <= pixel14Green[5];
data[465] <= pixel14Green[6];
data[464] <= pixel14Green[7];
data[479] <= pixel14Red[0];
data[478] <= pixel14Red[1];
data[477] <= pixel14Red[2];
data[476] <= pixel14Red[3];
data[475] <= pixel14Red[4];
data[474] <= pixel14Red[5];
data[473] <= pixel14Red[6];
data[472] <= pixel14Red[7];

// Led # 15
data[487:480] <= 8'b11111111;
data[495] <= pixel15Blue[0];
data[494] <= pixel15Blue[1];
data[493] <= pixel15Blue[2];
data[492] <= pixel15Blue[3];
data[491] <= pixel15Blue[4];
data[490] <= pixel15Blue[5];
data[489] <= pixel15Blue[6];
data[488] <= pixel15Blue[7];
data[503] <= pixel15Green[0];
data[502] <= pixel15Green[1];
data[501] <= pixel15Green[2];
data[500] <= pixel15Green[3];
data[499] <= pixel15Green[4];
data[498] <= pixel15Green[5];
data[497] <= pixel15Green[6];
data[496] <= pixel15Green[7];
data[511] <= pixel15Red[0];
data[510] <= pixel15Red[1];
data[509] <= pixel15Red[2];
data[508] <= pixel15Red[3];
data[507] <= pixel15Red[4];
data[506] <= pixel15Red[5];
data[505] <= pixel15Red[6];
data[504] <= pixel15Red[7];

// Led # 16
data[519:512] <= 8'b11111111;
data[527] <= pixel16Blue[0];
data[526] <= pixel16Blue[1];
data[525] <= pixel16Blue[2];
data[524] <= pixel16Blue[3];
data[523] <= pixel16Blue[4];
data[522] <= pixel16Blue[5];
data[521] <= pixel16Blue[6];
data[520] <= pixel16Blue[7];
data[535] <= pixel16Green[0];
data[534] <= pixel16Green[1];
data[533] <= pixel16Green[2];
data[532] <= pixel16Green[3];
data[531] <= pixel16Green[4];
data[530] <= pixel16Green[5];
data[529] <= pixel16Green[6];
data[528] <= pixel16Green[7];
data[543] <= pixel16Red[0];
data[542] <= pixel16Red[1];
data[541] <= pixel16Red[2];
data[540] <= pixel16Red[3];
data[539] <= pixel16Red[4];
data[538] <= pixel16Red[5];
data[537] <= pixel16Red[6];
data[536] <= pixel16Red[7];

// Led # 17
data[551:544] <= 8'b11111111;
data[559] <= pixel17Blue[0];
data[558] <= pixel17Blue[1];
data[557] <= pixel17Blue[2];
data[556] <= pixel17Blue[3];
data[555] <= pixel17Blue[4];
data[554] <= pixel17Blue[5];
data[553] <= pixel17Blue[6];
data[552] <= pixel17Blue[7];
data[567] <= pixel17Green[0];
data[566] <= pixel17Green[1];
data[565] <= pixel17Green[2];
data[564] <= pixel17Green[3];
data[563] <= pixel17Green[4];
data[562] <= pixel17Green[5];
data[561] <= pixel17Green[6];
data[560] <= pixel17Green[7];
data[575] <= pixel17Red[0];
data[574] <= pixel17Red[1];
data[573] <= pixel17Red[2];
data[572] <= pixel17Red[3];
data[571] <= pixel17Red[4];
data[570] <= pixel17Red[5];
data[569] <= pixel17Red[6];
data[568] <= pixel17Red[7];

// Led # 18
data[583:576] <= 8'b11111111;
data[591] <= pixel18Blue[0];
data[590] <= pixel18Blue[1];
data[589] <= pixel18Blue[2];
data[588] <= pixel18Blue[3];
data[587] <= pixel18Blue[4];
data[586] <= pixel18Blue[5];
data[585] <= pixel18Blue[6];
data[584] <= pixel18Blue[7];
data[599] <= pixel18Green[0];
data[598] <= pixel18Green[1];
data[597] <= pixel18Green[2];
data[596] <= pixel18Green[3];
data[595] <= pixel18Green[4];
data[594] <= pixel18Green[5];
data[593] <= pixel18Green[6];
data[592] <= pixel18Green[7];
data[607] <= pixel18Red[0];
data[606] <= pixel18Red[1];
data[605] <= pixel18Red[2];
data[604] <= pixel18Red[3];
data[603] <= pixel18Red[4];
data[602] <= pixel18Red[5];
data[601] <= pixel18Red[6];
data[600] <= pixel18Red[7];

// Led # 19
data[615:608] <= 8'b11111111;
data[623] <= pixel19Blue[0];
data[622] <= pixel19Blue[1];
data[621] <= pixel19Blue[2];
data[620] <= pixel19Blue[3];
data[619] <= pixel19Blue[4];
data[618] <= pixel19Blue[5];
data[617] <= pixel19Blue[6];
data[616] <= pixel19Blue[7];
data[631] <= pixel19Green[0];
data[630] <= pixel19Green[1];
data[629] <= pixel19Green[2];
data[628] <= pixel19Green[3];
data[627] <= pixel19Green[4];
data[626] <= pixel19Green[5];
data[625] <= pixel19Green[6];
data[624] <= pixel19Green[7];
data[639] <= pixel19Red[0];
data[638] <= pixel19Red[1];
data[637] <= pixel19Red[2];
data[636] <= pixel19Red[3];
data[635] <= pixel19Red[4];
data[634] <= pixel19Red[5];
data[633] <= pixel19Red[6];
data[632] <= pixel19Red[7];

// Led # 20
data[647:640] <= 8'b11111111;
data[655] <= pixel20Blue[0];
data[654] <= pixel20Blue[1];
data[653] <= pixel20Blue[2];
data[652] <= pixel20Blue[3];
data[651] <= pixel20Blue[4];
data[650] <= pixel20Blue[5];
data[649] <= pixel20Blue[6];
data[648] <= pixel20Blue[7];
data[663] <= pixel20Green[0];
data[662] <= pixel20Green[1];
data[661] <= pixel20Green[2];
data[660] <= pixel20Green[3];
data[659] <= pixel20Green[4];
data[658] <= pixel20Green[5];
data[657] <= pixel20Green[6];
data[656] <= pixel20Green[7];
data[671] <= pixel20Red[0];
data[670] <= pixel20Red[1];
data[669] <= pixel20Red[2];
data[668] <= pixel20Red[3];
data[667] <= pixel20Red[4];
data[666] <= pixel20Red[5];
data[665] <= pixel20Red[6];
data[664] <= pixel20Red[7];

// Led # 21
data[679:672] <= 8'b11111111;
data[687] <= pixel21Blue[0];
data[686] <= pixel21Blue[1];
data[685] <= pixel21Blue[2];
data[684] <= pixel21Blue[3];
data[683] <= pixel21Blue[4];
data[682] <= pixel21Blue[5];
data[681] <= pixel21Blue[6];
data[680] <= pixel21Blue[7];
data[695] <= pixel21Green[0];
data[694] <= pixel21Green[1];
data[693] <= pixel21Green[2];
data[692] <= pixel21Green[3];
data[691] <= pixel21Green[4];
data[690] <= pixel21Green[5];
data[689] <= pixel21Green[6];
data[688] <= pixel21Green[7];
data[703] <= pixel21Red[0];
data[702] <= pixel21Red[1];
data[701] <= pixel21Red[2];
data[700] <= pixel21Red[3];
data[699] <= pixel21Red[4];
data[698] <= pixel21Red[5];
data[697] <= pixel21Red[6];
data[696] <= pixel21Red[7];

// Led # 22
data[711:704] <= 8'b11111111;
data[719] <= pixel22Blue[0];
data[718] <= pixel22Blue[1];
data[717] <= pixel22Blue[2];
data[716] <= pixel22Blue[3];
data[715] <= pixel22Blue[4];
data[714] <= pixel22Blue[5];
data[713] <= pixel22Blue[6];
data[712] <= pixel22Blue[7];
data[727] <= pixel22Green[0];
data[726] <= pixel22Green[1];
data[725] <= pixel22Green[2];
data[724] <= pixel22Green[3];
data[723] <= pixel22Green[4];
data[722] <= pixel22Green[5];
data[721] <= pixel22Green[6];
data[720] <= pixel22Green[7];
data[735] <= pixel22Red[0];
data[734] <= pixel22Red[1];
data[733] <= pixel22Red[2];
data[732] <= pixel22Red[3];
data[731] <= pixel22Red[4];
data[730] <= pixel22Red[5];
data[729] <= pixel22Red[6];
data[728] <= pixel22Red[7];

// Led # 23
data[743:736] <= 8'b11111111;
data[751] <= pixel23Blue[0];
data[750] <= pixel23Blue[1];
data[749] <= pixel23Blue[2];
data[748] <= pixel23Blue[3];
data[747] <= pixel23Blue[4];
data[746] <= pixel23Blue[5];
data[745] <= pixel23Blue[6];
data[744] <= pixel23Blue[7];
data[759] <= pixel23Green[0];
data[758] <= pixel23Green[1];
data[757] <= pixel23Green[2];
data[756] <= pixel23Green[3];
data[755] <= pixel23Green[4];
data[754] <= pixel23Green[5];
data[753] <= pixel23Green[6];
data[752] <= pixel23Green[7];
data[767] <= pixel23Red[0];
data[766] <= pixel23Red[1];
data[765] <= pixel23Red[2];
data[764] <= pixel23Red[3];
data[763] <= pixel23Red[4];
data[762] <= pixel23Red[5];
data[761] <= pixel23Red[6];
data[760] <= pixel23Red[7];

// Led # 24
data[775:768] <= 8'b11111111;
data[783] <= pixel24Blue[0];
data[782] <= pixel24Blue[1];
data[781] <= pixel24Blue[2];
data[780] <= pixel24Blue[3];
data[779] <= pixel24Blue[4];
data[778] <= pixel24Blue[5];
data[777] <= pixel24Blue[6];
data[776] <= pixel24Blue[7];
data[791] <= pixel24Green[0];
data[790] <= pixel24Green[1];
data[789] <= pixel24Green[2];
data[788] <= pixel24Green[3];
data[787] <= pixel24Green[4];
data[786] <= pixel24Green[5];
data[785] <= pixel24Green[6];
data[784] <= pixel24Green[7];
data[799] <= pixel24Red[0];
data[798] <= pixel24Red[1];
data[797] <= pixel24Red[2];
data[796] <= pixel24Red[3];
data[795] <= pixel24Red[4];
data[794] <= pixel24Red[5];
data[793] <= pixel24Red[6];
data[792] <= pixel24Red[7];

// Led # 25
data[807:800] <= 8'b11111111;
data[815] <= pixel25Blue[0];
data[814] <= pixel25Blue[1];
data[813] <= pixel25Blue[2];
data[812] <= pixel25Blue[3];
data[811] <= pixel25Blue[4];
data[810] <= pixel25Blue[5];
data[809] <= pixel25Blue[6];
data[808] <= pixel25Blue[7];
data[823] <= pixel25Green[0];
data[822] <= pixel25Green[1];
data[821] <= pixel25Green[2];
data[820] <= pixel25Green[3];
data[819] <= pixel25Green[4];
data[818] <= pixel25Green[5];
data[817] <= pixel25Green[6];
data[816] <= pixel25Green[7];
data[831] <= pixel25Red[0];
data[830] <= pixel25Red[1];
data[829] <= pixel25Red[2];
data[828] <= pixel25Red[3];
data[827] <= pixel25Red[4];
data[826] <= pixel25Red[5];
data[825] <= pixel25Red[6];
data[824] <= pixel25Red[7];

// Led # 26
data[839:832] <= 8'b11111111;
data[847] <= pixel26Blue[0];
data[846] <= pixel26Blue[1];
data[845] <= pixel26Blue[2];
data[844] <= pixel26Blue[3];
data[843] <= pixel26Blue[4];
data[842] <= pixel26Blue[5];
data[841] <= pixel26Blue[6];
data[840] <= pixel26Blue[7];
data[855] <= pixel26Green[0];
data[854] <= pixel26Green[1];
data[853] <= pixel26Green[2];
data[852] <= pixel26Green[3];
data[851] <= pixel26Green[4];
data[850] <= pixel26Green[5];
data[849] <= pixel26Green[6];
data[848] <= pixel26Green[7];
data[863] <= pixel26Red[0];
data[862] <= pixel26Red[1];
data[861] <= pixel26Red[2];
data[860] <= pixel26Red[3];
data[859] <= pixel26Red[4];
data[858] <= pixel26Red[5];
data[857] <= pixel26Red[6];
data[856] <= pixel26Red[7];

// Led # 27
data[871:864] <= 8'b11111111;
data[879] <= pixel27Blue[0];
data[878] <= pixel27Blue[1];
data[877] <= pixel27Blue[2];
data[876] <= pixel27Blue[3];
data[875] <= pixel27Blue[4];
data[874] <= pixel27Blue[5];
data[873] <= pixel27Blue[6];
data[872] <= pixel27Blue[7];
data[887] <= pixel27Green[0];
data[886] <= pixel27Green[1];
data[885] <= pixel27Green[2];
data[884] <= pixel27Green[3];
data[883] <= pixel27Green[4];
data[882] <= pixel27Green[5];
data[881] <= pixel27Green[6];
data[880] <= pixel27Green[7];
data[895] <= pixel27Red[0];
data[894] <= pixel27Red[1];
data[893] <= pixel27Red[2];
data[892] <= pixel27Red[3];
data[891] <= pixel27Red[4];
data[890] <= pixel27Red[5];
data[889] <= pixel27Red[6];
data[888] <= pixel27Red[7];

// Led # 28
data[903:896] <= 8'b11111111;
data[911] <= pixel28Blue[0];
data[910] <= pixel28Blue[1];
data[909] <= pixel28Blue[2];
data[908] <= pixel28Blue[3];
data[907] <= pixel28Blue[4];
data[906] <= pixel28Blue[5];
data[905] <= pixel28Blue[6];
data[904] <= pixel28Blue[7];
data[919] <= pixel28Green[0];
data[918] <= pixel28Green[1];
data[917] <= pixel28Green[2];
data[916] <= pixel28Green[3];
data[915] <= pixel28Green[4];
data[914] <= pixel28Green[5];
data[913] <= pixel28Green[6];
data[912] <= pixel28Green[7];
data[927] <= pixel28Red[0];
data[926] <= pixel28Red[1];
data[925] <= pixel28Red[2];
data[924] <= pixel28Red[3];
data[923] <= pixel28Red[4];
data[922] <= pixel28Red[5];
data[921] <= pixel28Red[6];
data[920] <= pixel28Red[7];

// Led # 29
data[935:928] <= 8'b11111111;
data[943] <= pixel29Blue[0];
data[942] <= pixel29Blue[1];
data[941] <= pixel29Blue[2];
data[940] <= pixel29Blue[3];
data[939] <= pixel29Blue[4];
data[938] <= pixel29Blue[5];
data[937] <= pixel29Blue[6];
data[936] <= pixel29Blue[7];
data[951] <= pixel29Green[0];
data[950] <= pixel29Green[1];
data[949] <= pixel29Green[2];
data[948] <= pixel29Green[3];
data[947] <= pixel29Green[4];
data[946] <= pixel29Green[5];
data[945] <= pixel29Green[6];
data[944] <= pixel29Green[7];
data[959] <= pixel29Red[0];
data[958] <= pixel29Red[1];
data[957] <= pixel29Red[2];
data[956] <= pixel29Red[3];
data[955] <= pixel29Red[4];
data[954] <= pixel29Red[5];
data[953] <= pixel29Red[6];
data[952] <= pixel29Red[7];

// Led # 30
data[967:960] <= 8'b11111111;
data[975] <= pixel30Blue[0];
data[974] <= pixel30Blue[1];
data[973] <= pixel30Blue[2];
data[972] <= pixel30Blue[3];
data[971] <= pixel30Blue[4];
data[970] <= pixel30Blue[5];
data[969] <= pixel30Blue[6];
data[968] <= pixel30Blue[7];
data[983] <= pixel30Green[0];
data[982] <= pixel30Green[1];
data[981] <= pixel30Green[2];
data[980] <= pixel30Green[3];
data[979] <= pixel30Green[4];
data[978] <= pixel30Green[5];
data[977] <= pixel30Green[6];
data[976] <= pixel30Green[7];
data[991] <= pixel30Red[0];
data[990] <= pixel30Red[1];
data[989] <= pixel30Red[2];
data[988] <= pixel30Red[3];
data[987] <= pixel30Red[4];
data[986] <= pixel30Red[5];
data[985] <= pixel30Red[6];
data[984] <= pixel30Red[7];

// Led # 31
data[999:992] <= 8'b11111111;
data[1007] <= pixel31Blue[0];
data[1006] <= pixel31Blue[1];
data[1005] <= pixel31Blue[2];
data[1004] <= pixel31Blue[3];
data[1003] <= pixel31Blue[4];
data[1002] <= pixel31Blue[5];
data[1001] <= pixel31Blue[6];
data[1000] <= pixel31Blue[7];
data[1015] <= pixel31Green[0];
data[1014] <= pixel31Green[1];
data[1013] <= pixel31Green[2];
data[1012] <= pixel31Green[3];
data[1011] <= pixel31Green[4];
data[1010] <= pixel31Green[5];
data[1009] <= pixel31Green[6];
data[1008] <= pixel31Green[7];
data[1023] <= pixel31Red[0];
data[1022] <= pixel31Red[1];
data[1021] <= pixel31Red[2];
data[1020] <= pixel31Red[3];
data[1019] <= pixel31Red[4];
data[1018] <= pixel31Red[5];
data[1017] <= pixel31Red[6];
data[1016] <= pixel31Red[7];

// Led # 32
data[1031:1024] <= 8'b11111111;
data[1039] <= pixel32Blue[0];
data[1038] <= pixel32Blue[1];
data[1037] <= pixel32Blue[2];
data[1036] <= pixel32Blue[3];
data[1035] <= pixel32Blue[4];
data[1034] <= pixel32Blue[5];
data[1033] <= pixel32Blue[6];
data[1032] <= pixel32Blue[7];
data[1047] <= pixel32Green[0];
data[1046] <= pixel32Green[1];
data[1045] <= pixel32Green[2];
data[1044] <= pixel32Green[3];
data[1043] <= pixel32Green[4];
data[1042] <= pixel32Green[5];
data[1041] <= pixel32Green[6];
data[1040] <= pixel32Green[7];
data[1055] <= pixel32Red[0];
data[1054] <= pixel32Red[1];
data[1053] <= pixel32Red[2];
data[1052] <= pixel32Red[3];
data[1051] <= pixel32Red[4];
data[1050] <= pixel32Red[5];
data[1049] <= pixel32Red[6];
data[1048] <= pixel32Red[7];

// Led # 33
data[1063:1056] <= 8'b11111111;
data[1071] <= pixel33Blue[0];
data[1070] <= pixel33Blue[1];
data[1069] <= pixel33Blue[2];
data[1068] <= pixel33Blue[3];
data[1067] <= pixel33Blue[4];
data[1066] <= pixel33Blue[5];
data[1065] <= pixel33Blue[6];
data[1064] <= pixel33Blue[7];
data[1079] <= pixel33Green[0];
data[1078] <= pixel33Green[1];
data[1077] <= pixel33Green[2];
data[1076] <= pixel33Green[3];
data[1075] <= pixel33Green[4];
data[1074] <= pixel33Green[5];
data[1073] <= pixel33Green[6];
data[1072] <= pixel33Green[7];
data[1087] <= pixel33Red[0];
data[1086] <= pixel33Red[1];
data[1085] <= pixel33Red[2];
data[1084] <= pixel33Red[3];
data[1083] <= pixel33Red[4];
data[1082] <= pixel33Red[5];
data[1081] <= pixel33Red[6];
data[1080] <= pixel33Red[7];

// Led # 34
data[1095:1088] <= 8'b11111111;
data[1103] <= pixel34Blue[0];
data[1102] <= pixel34Blue[1];
data[1101] <= pixel34Blue[2];
data[1100] <= pixel34Blue[3];
data[1099] <= pixel34Blue[4];
data[1098] <= pixel34Blue[5];
data[1097] <= pixel34Blue[6];
data[1096] <= pixel34Blue[7];
data[1111] <= pixel34Green[0];
data[1110] <= pixel34Green[1];
data[1109] <= pixel34Green[2];
data[1108] <= pixel34Green[3];
data[1107] <= pixel34Green[4];
data[1106] <= pixel34Green[5];
data[1105] <= pixel34Green[6];
data[1104] <= pixel34Green[7];
data[1119] <= pixel34Red[0];
data[1118] <= pixel34Red[1];
data[1117] <= pixel34Red[2];
data[1116] <= pixel34Red[3];
data[1115] <= pixel34Red[4];
data[1114] <= pixel34Red[5];
data[1113] <= pixel34Red[6];
data[1112] <= pixel34Red[7];

// Led # 35
data[1127:1120] <= 8'b11111111;
data[1135] <= pixel35Blue[0];
data[1134] <= pixel35Blue[1];
data[1133] <= pixel35Blue[2];
data[1132] <= pixel35Blue[3];
data[1131] <= pixel35Blue[4];
data[1130] <= pixel35Blue[5];
data[1129] <= pixel35Blue[6];
data[1128] <= pixel35Blue[7];
data[1143] <= pixel35Green[0];
data[1142] <= pixel35Green[1];
data[1141] <= pixel35Green[2];
data[1140] <= pixel35Green[3];
data[1139] <= pixel35Green[4];
data[1138] <= pixel35Green[5];
data[1137] <= pixel35Green[6];
data[1136] <= pixel35Green[7];
data[1151] <= pixel35Red[0];
data[1150] <= pixel35Red[1];
data[1149] <= pixel35Red[2];
data[1148] <= pixel35Red[3];
data[1147] <= pixel35Red[4];
data[1146] <= pixel35Red[5];
data[1145] <= pixel35Red[6];
data[1144] <= pixel35Red[7];

// Led # 36
data[1159:1152] <= 8'b11111111;
data[1167] <= pixel36Blue[0];
data[1166] <= pixel36Blue[1];
data[1165] <= pixel36Blue[2];
data[1164] <= pixel36Blue[3];
data[1163] <= pixel36Blue[4];
data[1162] <= pixel36Blue[5];
data[1161] <= pixel36Blue[6];
data[1160] <= pixel36Blue[7];
data[1175] <= pixel36Green[0];
data[1174] <= pixel36Green[1];
data[1173] <= pixel36Green[2];
data[1172] <= pixel36Green[3];
data[1171] <= pixel36Green[4];
data[1170] <= pixel36Green[5];
data[1169] <= pixel36Green[6];
data[1168] <= pixel36Green[7];
data[1183] <= pixel36Red[0];
data[1182] <= pixel36Red[1];
data[1181] <= pixel36Red[2];
data[1180] <= pixel36Red[3];
data[1179] <= pixel36Red[4];
data[1178] <= pixel36Red[5];
data[1177] <= pixel36Red[6];
data[1176] <= pixel36Red[7];

// Led # 37
data[1191:1184] <= 8'b11111111;
data[1199] <= pixel37Blue[0];
data[1198] <= pixel37Blue[1];
data[1197] <= pixel37Blue[2];
data[1196] <= pixel37Blue[3];
data[1195] <= pixel37Blue[4];
data[1194] <= pixel37Blue[5];
data[1193] <= pixel37Blue[6];
data[1192] <= pixel37Blue[7];
data[1207] <= pixel37Green[0];
data[1206] <= pixel37Green[1];
data[1205] <= pixel37Green[2];
data[1204] <= pixel37Green[3];
data[1203] <= pixel37Green[4];
data[1202] <= pixel37Green[5];
data[1201] <= pixel37Green[6];
data[1200] <= pixel37Green[7];
data[1215] <= pixel37Red[0];
data[1214] <= pixel37Red[1];
data[1213] <= pixel37Red[2];
data[1212] <= pixel37Red[3];
data[1211] <= pixel37Red[4];
data[1210] <= pixel37Red[5];
data[1209] <= pixel37Red[6];
data[1208] <= pixel37Red[7];

// Led # 38
data[1223:1216] <= 8'b11111111;
data[1231] <= pixel38Blue[0];
data[1230] <= pixel38Blue[1];
data[1229] <= pixel38Blue[2];
data[1228] <= pixel38Blue[3];
data[1227] <= pixel38Blue[4];
data[1226] <= pixel38Blue[5];
data[1225] <= pixel38Blue[6];
data[1224] <= pixel38Blue[7];
data[1239] <= pixel38Green[0];
data[1238] <= pixel38Green[1];
data[1237] <= pixel38Green[2];
data[1236] <= pixel38Green[3];
data[1235] <= pixel38Green[4];
data[1234] <= pixel38Green[5];
data[1233] <= pixel38Green[6];
data[1232] <= pixel38Green[7];
data[1247] <= pixel38Red[0];
data[1246] <= pixel38Red[1];
data[1245] <= pixel38Red[2];
data[1244] <= pixel38Red[3];
data[1243] <= pixel38Red[4];
data[1242] <= pixel38Red[5];
data[1241] <= pixel38Red[6];
data[1240] <= pixel38Red[7];

// Led # 39
data[1255:1248] <= 8'b11111111;
data[1263] <= pixel39Blue[0];
data[1262] <= pixel39Blue[1];
data[1261] <= pixel39Blue[2];
data[1260] <= pixel39Blue[3];
data[1259] <= pixel39Blue[4];
data[1258] <= pixel39Blue[5];
data[1257] <= pixel39Blue[6];
data[1256] <= pixel39Blue[7];
data[1271] <= pixel39Green[0];
data[1270] <= pixel39Green[1];
data[1269] <= pixel39Green[2];
data[1268] <= pixel39Green[3];
data[1267] <= pixel39Green[4];
data[1266] <= pixel39Green[5];
data[1265] <= pixel39Green[6];
data[1264] <= pixel39Green[7];
data[1279] <= pixel39Red[0];
data[1278] <= pixel39Red[1];
data[1277] <= pixel39Red[2];
data[1276] <= pixel39Red[3];
data[1275] <= pixel39Red[4];
data[1274] <= pixel39Red[5];
data[1273] <= pixel39Red[6];
data[1272] <= pixel39Red[7];

// Led # 40
data[1287:1280] <= 8'b11111111;
data[1295] <= pixel40Blue[0];
data[1294] <= pixel40Blue[1];
data[1293] <= pixel40Blue[2];
data[1292] <= pixel40Blue[3];
data[1291] <= pixel40Blue[4];
data[1290] <= pixel40Blue[5];
data[1289] <= pixel40Blue[6];
data[1288] <= pixel40Blue[7];
data[1303] <= pixel40Green[0];
data[1302] <= pixel40Green[1];
data[1301] <= pixel40Green[2];
data[1300] <= pixel40Green[3];
data[1299] <= pixel40Green[4];
data[1298] <= pixel40Green[5];
data[1297] <= pixel40Green[6];
data[1296] <= pixel40Green[7];
data[1311] <= pixel40Red[0];
data[1310] <= pixel40Red[1];
data[1309] <= pixel40Red[2];
data[1308] <= pixel40Red[3];
data[1307] <= pixel40Red[4];
data[1306] <= pixel40Red[5];
data[1305] <= pixel40Red[6];
data[1304] <= pixel40Red[7];

// Led # 41
data[1319:1312] <= 8'b11111111;
data[1327] <= pixel41Blue[0];
data[1326] <= pixel41Blue[1];
data[1325] <= pixel41Blue[2];
data[1324] <= pixel41Blue[3];
data[1323] <= pixel41Blue[4];
data[1322] <= pixel41Blue[5];
data[1321] <= pixel41Blue[6];
data[1320] <= pixel41Blue[7];
data[1335] <= pixel41Green[0];
data[1334] <= pixel41Green[1];
data[1333] <= pixel41Green[2];
data[1332] <= pixel41Green[3];
data[1331] <= pixel41Green[4];
data[1330] <= pixel41Green[5];
data[1329] <= pixel41Green[6];
data[1328] <= pixel41Green[7];
data[1343] <= pixel41Red[0];
data[1342] <= pixel41Red[1];
data[1341] <= pixel41Red[2];
data[1340] <= pixel41Red[3];
data[1339] <= pixel41Red[4];
data[1338] <= pixel41Red[5];
data[1337] <= pixel41Red[6];
data[1336] <= pixel41Red[7];

// Led # 42
data[1351:1344] <= 8'b11111111;
data[1359] <= pixel42Blue[0];
data[1358] <= pixel42Blue[1];
data[1357] <= pixel42Blue[2];
data[1356] <= pixel42Blue[3];
data[1355] <= pixel42Blue[4];
data[1354] <= pixel42Blue[5];
data[1353] <= pixel42Blue[6];
data[1352] <= pixel42Blue[7];
data[1367] <= pixel42Green[0];
data[1366] <= pixel42Green[1];
data[1365] <= pixel42Green[2];
data[1364] <= pixel42Green[3];
data[1363] <= pixel42Green[4];
data[1362] <= pixel42Green[5];
data[1361] <= pixel42Green[6];
data[1360] <= pixel42Green[7];
data[1375] <= pixel42Red[0];
data[1374] <= pixel42Red[1];
data[1373] <= pixel42Red[2];
data[1372] <= pixel42Red[3];
data[1371] <= pixel42Red[4];
data[1370] <= pixel42Red[5];
data[1369] <= pixel42Red[6];
data[1368] <= pixel42Red[7];

// Led # 43
data[1383:1376] <= 8'b11111111;
data[1391] <= pixel43Blue[0];
data[1390] <= pixel43Blue[1];
data[1389] <= pixel43Blue[2];
data[1388] <= pixel43Blue[3];
data[1387] <= pixel43Blue[4];
data[1386] <= pixel43Blue[5];
data[1385] <= pixel43Blue[6];
data[1384] <= pixel43Blue[7];
data[1399] <= pixel43Green[0];
data[1398] <= pixel43Green[1];
data[1397] <= pixel43Green[2];
data[1396] <= pixel43Green[3];
data[1395] <= pixel43Green[4];
data[1394] <= pixel43Green[5];
data[1393] <= pixel43Green[6];
data[1392] <= pixel43Green[7];
data[1407] <= pixel43Red[0];
data[1406] <= pixel43Red[1];
data[1405] <= pixel43Red[2];
data[1404] <= pixel43Red[3];
data[1403] <= pixel43Red[4];
data[1402] <= pixel43Red[5];
data[1401] <= pixel43Red[6];
data[1400] <= pixel43Red[7];

// Led # 44
data[1415:1408] <= 8'b11111111;
data[1423] <= pixel44Blue[0];
data[1422] <= pixel44Blue[1];
data[1421] <= pixel44Blue[2];
data[1420] <= pixel44Blue[3];
data[1419] <= pixel44Blue[4];
data[1418] <= pixel44Blue[5];
data[1417] <= pixel44Blue[6];
data[1416] <= pixel44Blue[7];
data[1431] <= pixel44Green[0];
data[1430] <= pixel44Green[1];
data[1429] <= pixel44Green[2];
data[1428] <= pixel44Green[3];
data[1427] <= pixel44Green[4];
data[1426] <= pixel44Green[5];
data[1425] <= pixel44Green[6];
data[1424] <= pixel44Green[7];
data[1439] <= pixel44Red[0];
data[1438] <= pixel44Red[1];
data[1437] <= pixel44Red[2];
data[1436] <= pixel44Red[3];
data[1435] <= pixel44Red[4];
data[1434] <= pixel44Red[5];
data[1433] <= pixel44Red[6];
data[1432] <= pixel44Red[7];

// Led # 45
data[1447:1440] <= 8'b11111111;
data[1455] <= pixel45Blue[0];
data[1454] <= pixel45Blue[1];
data[1453] <= pixel45Blue[2];
data[1452] <= pixel45Blue[3];
data[1451] <= pixel45Blue[4];
data[1450] <= pixel45Blue[5];
data[1449] <= pixel45Blue[6];
data[1448] <= pixel45Blue[7];
data[1463] <= pixel45Green[0];
data[1462] <= pixel45Green[1];
data[1461] <= pixel45Green[2];
data[1460] <= pixel45Green[3];
data[1459] <= pixel45Green[4];
data[1458] <= pixel45Green[5];
data[1457] <= pixel45Green[6];
data[1456] <= pixel45Green[7];
data[1471] <= pixel45Red[0];
data[1470] <= pixel45Red[1];
data[1469] <= pixel45Red[2];
data[1468] <= pixel45Red[3];
data[1467] <= pixel45Red[4];
data[1466] <= pixel45Red[5];
data[1465] <= pixel45Red[6];
data[1464] <= pixel45Red[7];

// Led # 46
data[1479:1472] <= 8'b11111111;
data[1487] <= pixel46Blue[0];
data[1486] <= pixel46Blue[1];
data[1485] <= pixel46Blue[2];
data[1484] <= pixel46Blue[3];
data[1483] <= pixel46Blue[4];
data[1482] <= pixel46Blue[5];
data[1481] <= pixel46Blue[6];
data[1480] <= pixel46Blue[7];
data[1495] <= pixel46Green[0];
data[1494] <= pixel46Green[1];
data[1493] <= pixel46Green[2];
data[1492] <= pixel46Green[3];
data[1491] <= pixel46Green[4];
data[1490] <= pixel46Green[5];
data[1489] <= pixel46Green[6];
data[1488] <= pixel46Green[7];
data[1503] <= pixel46Red[0];
data[1502] <= pixel46Red[1];
data[1501] <= pixel46Red[2];
data[1500] <= pixel46Red[3];
data[1499] <= pixel46Red[4];
data[1498] <= pixel46Red[5];
data[1497] <= pixel46Red[6];
data[1496] <= pixel46Red[7];

// Led # 47
data[1511:1504] <= 8'b11111111;
data[1519] <= pixel47Blue[0];
data[1518] <= pixel47Blue[1];
data[1517] <= pixel47Blue[2];
data[1516] <= pixel47Blue[3];
data[1515] <= pixel47Blue[4];
data[1514] <= pixel47Blue[5];
data[1513] <= pixel47Blue[6];
data[1512] <= pixel47Blue[7];
data[1527] <= pixel47Green[0];
data[1526] <= pixel47Green[1];
data[1525] <= pixel47Green[2];
data[1524] <= pixel47Green[3];
data[1523] <= pixel47Green[4];
data[1522] <= pixel47Green[5];
data[1521] <= pixel47Green[6];
data[1520] <= pixel47Green[7];
data[1535] <= pixel47Red[0];
data[1534] <= pixel47Red[1];
data[1533] <= pixel47Red[2];
data[1532] <= pixel47Red[3];
data[1531] <= pixel47Red[4];
data[1530] <= pixel47Red[5];
data[1529] <= pixel47Red[6];
data[1528] <= pixel47Red[7];



// start Reset footer

data[1543:1536] <= 8'b11111111;
data[1551:1544] <= 8'b11111111;
data[1559:1552] <= 8'b11111111;
data[1567:1560] <= 8'b11111111;

// end Reset footer



		// Start pixel reset
		pixel12Red = 0;
		pixel12Green = 0;
		pixel12Blue = 0;
		pixel11Red = 0;
		pixel11Green = 0;
		pixel11Blue = 0;
		pixel10Red = 0;
		pixel10Green = 0;
		pixel10Blue = 0;
		pixel9Red = 0;
		pixel9Green = 0;
		pixel9Blue = 0;
		pixel8Red = 0;
		pixel8Green = 0;
		pixel8Blue = 0;
		pixel7Red = 0;
		pixel7Green = 0;
		pixel7Blue = 0;
		pixel6Red = 0;
		pixel6Green = 0;
		pixel6Blue = 0;
		pixel5Red = 0;
		pixel5Green = 0;
		pixel5Blue = 0;
		pixel4Red = 0;
		pixel4Green = 0;
		pixel4Blue = 0;
		pixel3Red = 0;
		pixel3Green = 0;
		pixel3Blue = 0;
		pixel2Red = 0;
		pixel2Green = 0;
		pixel2Blue = 0;
		pixel1Red = 0;
		pixel1Green = 0;
		pixel1Blue = 0;
		pixel36Red = 0;
		pixel36Green = 0;
		pixel36Blue = 0;
		pixel37Red = 0;
		pixel37Green = 0;
		pixel37Blue = 0;
		pixel38Red = 0;
		pixel38Green = 0;
		pixel38Blue = 0;
		pixel39Red = 0;
		pixel39Green = 0;
		pixel39Blue = 0;
		pixel40Red = 0;
		pixel40Green = 0;
		pixel40Blue = 0;
		pixel41Red = 0;
		pixel41Green = 0;
		pixel41Blue = 0;
		pixel42Red = 0;
		pixel42Green = 0;
		pixel42Blue = 0;
		pixel43Red = 0;
		pixel43Green = 0;
		pixel43Blue = 0;
		pixel44Red = 0;
		pixel44Green = 0;
		pixel44Blue = 0;
		pixel45Red = 0;
		pixel45Green = 0;
		pixel45Blue = 0;
		pixel46Red = 0;
		pixel46Green = 0;
		pixel46Blue = 0;
		pixel47Red = 0;
		pixel47Green = 0;
		pixel47Blue = 0;
		pixel13Red = 0;
		pixel13Green = 0;
		pixel13Blue = 0;
		pixel14Red = 0;
		pixel14Green = 0;
		pixel14Blue = 0;
		pixel15Red = 0;
		pixel15Green = 0;
		pixel15Blue = 0;
		pixel16Red = 0;
		pixel16Green = 0;
		pixel16Blue = 0;
		pixel17Red = 0;
		pixel17Green = 0;
		pixel17Blue = 0;
		pixel18Red = 0;
		pixel18Green = 0;
		pixel18Blue = 0;
		pixel19Red = 0;
		pixel19Green = 0;
		pixel19Blue = 0;
		pixel20Red = 0;
		pixel20Green = 0;
		pixel20Blue = 0;
		pixel21Red = 0;
		pixel21Green = 0;
		pixel21Blue = 0;
		pixel22Red = 0;
		pixel22Green = 0;
		pixel22Blue = 0;
		pixel23Red = 0;
		pixel23Green = 0;
		pixel23Blue = 0;
		pixel24Red = 0;
		pixel24Green = 0;
		pixel24Blue = 0;
		pixel25Red = 0;
		pixel25Green = 0;
		pixel25Blue = 0;
		pixel26Red = 0;
		pixel26Green = 0;
		pixel26Blue = 0;
		pixel27Red = 0;
		pixel27Green = 0;
		pixel27Blue = 0;
		pixel28Red = 0;
		pixel28Green = 0;
		pixel28Blue = 0;
		pixel29Red = 0;
		pixel29Green = 0;
		pixel29Blue = 0;
		pixel30Red = 0;
		pixel30Green = 0;
		pixel30Blue = 0;
		pixel31Red = 0;
		pixel31Green = 0;
		pixel31Blue = 0;
		pixel32Red = 0;
		pixel32Green = 0;
		pixel32Blue = 0;
		pixel33Red = 0;
		pixel33Green = 0;
		pixel33Blue = 0;
		pixel34Red = 0;
		pixel34Green = 0;
		pixel34Blue = 0;
		pixel35Red = 0;
		pixel35Green = 0;
		pixel35Blue = 0;
		pixel36Red = 0;
		pixel36Green = 0;
		pixel36Blue = 0;
		// End pixel reset



			clearX = 1'b0;
			clearY = 1'b0;
			

			
			spiEnableToggle = 1'b1;
						
		end else if( clearX == 1'b1 && clearY == 1'b0) begin
			
			deLowCounter = 1'b0;
			
			xCounter = 0;
			yCounter = yCounter + 1;

			clearX = 0;


		end else begin
			
//			deLowCounter = 1'b0;
			
			xCounter = xCounter + 1;
			
			if(spiEnableToggle == 1'b1) begin
				spiEnableToggle = 1'b0;
			end
			
			
			
			// start of data


			// start of fetch
			if(xCounter == 3 ) begin
				 if(yCounter == 4) begin
					pixel36Red <= pixel36Red + redIn;
					pixel36Green <= pixel36Green + greenIn;
					pixel36Blue <= pixel36Blue + blueIn;
				end
				else  if(yCounter == 7) begin
					pixel36Red <= pixel36Red + redIn;
					pixel36Green <= pixel36Green + greenIn;
					pixel36Blue <= pixel36Blue + blueIn;
				end
				else  if(yCounter == 25) begin
					pixel37Red <= pixel37Red + redIn;
					pixel37Green <= pixel37Green + greenIn;
					pixel37Blue <= pixel37Blue + blueIn;
				end
				else  if(yCounter == 28) begin
					pixel37Red <= pixel37Red + redIn;
					pixel37Green <= pixel37Green + greenIn;
					pixel37Blue <= pixel37Blue + blueIn;
				end
				else  if(yCounter == 46) begin
					pixel38Red <= pixel38Red + redIn;
					pixel38Green <= pixel38Green + greenIn;
					pixel38Blue <= pixel38Blue + blueIn;
				end
				else  if(yCounter == 49) begin
					pixel38Red <= pixel38Red + redIn;
					pixel38Green <= pixel38Green + greenIn;
					pixel38Blue <= pixel38Blue + blueIn;
				end
				else  if(yCounter == 67) begin
					pixel39Red <= pixel39Red + redIn;
					pixel39Green <= pixel39Green + greenIn;
					pixel39Blue <= pixel39Blue + blueIn;
				end
				else  if(yCounter == 70) begin
					pixel39Red <= pixel39Red + redIn;
					pixel39Green <= pixel39Green + greenIn;
					pixel39Blue <= pixel39Blue + blueIn;
				end
				else  if(yCounter == 88) begin
					pixel40Red <= pixel40Red + redIn;
					pixel40Green <= pixel40Green + greenIn;
					pixel40Blue <= pixel40Blue + blueIn;
				end
				else  if(yCounter == 91) begin
					pixel40Red <= pixel40Red + redIn;
					pixel40Green <= pixel40Green + greenIn;
					pixel40Blue <= pixel40Blue + blueIn;
				end
				else  if(yCounter == 109) begin
					pixel41Red <= pixel41Red + redIn;
					pixel41Green <= pixel41Green + greenIn;
					pixel41Blue <= pixel41Blue + blueIn;
				end
				else  if(yCounter == 112) begin
					pixel41Red <= pixel41Red + redIn;
					pixel41Green <= pixel41Green + greenIn;
					pixel41Blue <= pixel41Blue + blueIn;
				end
				else  if(yCounter == 130) begin
					pixel42Red <= pixel42Red + redIn;
					pixel42Green <= pixel42Green + greenIn;
					pixel42Blue <= pixel42Blue + blueIn;
				end
				else  if(yCounter == 133) begin
					pixel42Red <= pixel42Red + redIn;
					pixel42Green <= pixel42Green + greenIn;
					pixel42Blue <= pixel42Blue + blueIn;
				end
				else  if(yCounter == 151) begin
					pixel43Red <= pixel43Red + redIn;
					pixel43Green <= pixel43Green + greenIn;
					pixel43Blue <= pixel43Blue + blueIn;
				end
				else  if(yCounter == 154) begin
					pixel43Red <= pixel43Red + redIn;
					pixel43Green <= pixel43Green + greenIn;
					pixel43Blue <= pixel43Blue + blueIn;
				end
				else  if(yCounter == 172) begin
					pixel44Red <= pixel44Red + redIn;
					pixel44Green <= pixel44Green + greenIn;
					pixel44Blue <= pixel44Blue + blueIn;
				end
				else  if(yCounter == 175) begin
					pixel44Red <= pixel44Red + redIn;
					pixel44Green <= pixel44Green + greenIn;
					pixel44Blue <= pixel44Blue + blueIn;
				end
				else  if(yCounter == 193) begin
					pixel45Red <= pixel45Red + redIn;
					pixel45Green <= pixel45Green + greenIn;
					pixel45Blue <= pixel45Blue + blueIn;
				end
				else  if(yCounter == 196) begin
					pixel45Red <= pixel45Red + redIn;
					pixel45Green <= pixel45Green + greenIn;
					pixel45Blue <= pixel45Blue + blueIn;
				end
				else  if(yCounter == 214) begin
					pixel46Red <= pixel46Red + redIn;
					pixel46Green <= pixel46Green + greenIn;
					pixel46Blue <= pixel46Blue + blueIn;
				end
				else  if(yCounter == 217) begin
					pixel46Red <= pixel46Red + redIn;
					pixel46Green <= pixel46Green + greenIn;
					pixel46Blue <= pixel46Blue + blueIn;
				end
				else  if(yCounter == 235) begin
					pixel47Red <= pixel47Red + redIn;
					pixel47Green <= pixel47Green + greenIn;
					pixel47Blue <= pixel47Blue + blueIn;
				end
				else  if(yCounter == 238) begin
					pixel47Red <= pixel47Red + redIn;
					pixel47Green <= pixel47Green + greenIn;
					pixel47Blue <= pixel47Blue + blueIn;
				end
			end else if(xCounter == 7 ) begin
				 if(yCounter == 4) begin
					pixel36Red <= pixel36Red + redIn;
					pixel36Green <= pixel36Green + greenIn;
					pixel36Blue <= pixel36Blue + blueIn;
				end
				else  if(yCounter == 7) begin
					pixel36Red <= pixel36Red + redIn;
					pixel36Green <= pixel36Green + greenIn;
					pixel36Blue <= pixel36Blue + blueIn;
					pixel35Red <= pixel35Red + redIn;
					pixel35Green <= pixel35Green + greenIn;
					pixel35Blue <= pixel35Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel35Red <= pixel35Red + redIn;
					pixel35Green <= pixel35Green + greenIn;
					pixel35Blue <= pixel35Blue + blueIn;
				end
				else  if(yCounter == 25) begin
					pixel37Red <= pixel37Red + redIn;
					pixel37Green <= pixel37Green + greenIn;
					pixel37Blue <= pixel37Blue + blueIn;
				end
				else  if(yCounter == 28) begin
					pixel37Red <= pixel37Red + redIn;
					pixel37Green <= pixel37Green + greenIn;
					pixel37Blue <= pixel37Blue + blueIn;
				end
				else  if(yCounter == 46) begin
					pixel38Red <= pixel38Red + redIn;
					pixel38Green <= pixel38Green + greenIn;
					pixel38Blue <= pixel38Blue + blueIn;
				end
				else  if(yCounter == 49) begin
					pixel38Red <= pixel38Red + redIn;
					pixel38Green <= pixel38Green + greenIn;
					pixel38Blue <= pixel38Blue + blueIn;
				end
				else  if(yCounter == 67) begin
					pixel39Red <= pixel39Red + redIn;
					pixel39Green <= pixel39Green + greenIn;
					pixel39Blue <= pixel39Blue + blueIn;
				end
				else  if(yCounter == 70) begin
					pixel39Red <= pixel39Red + redIn;
					pixel39Green <= pixel39Green + greenIn;
					pixel39Blue <= pixel39Blue + blueIn;
				end
				else  if(yCounter == 88) begin
					pixel40Red <= pixel40Red + redIn;
					pixel40Green <= pixel40Green + greenIn;
					pixel40Blue <= pixel40Blue + blueIn;
				end
				else  if(yCounter == 91) begin
					pixel40Red <= pixel40Red + redIn;
					pixel40Green <= pixel40Green + greenIn;
					pixel40Blue <= pixel40Blue + blueIn;
				end
				else  if(yCounter == 109) begin
					pixel41Red <= pixel41Red + redIn;
					pixel41Green <= pixel41Green + greenIn;
					pixel41Blue <= pixel41Blue + blueIn;
				end
				else  if(yCounter == 112) begin
					pixel41Red <= pixel41Red + redIn;
					pixel41Green <= pixel41Green + greenIn;
					pixel41Blue <= pixel41Blue + blueIn;
				end
				else  if(yCounter == 130) begin
					pixel42Red <= pixel42Red + redIn;
					pixel42Green <= pixel42Green + greenIn;
					pixel42Blue <= pixel42Blue + blueIn;
				end
				else  if(yCounter == 133) begin
					pixel42Red <= pixel42Red + redIn;
					pixel42Green <= pixel42Green + greenIn;
					pixel42Blue <= pixel42Blue + blueIn;
				end
				else  if(yCounter == 151) begin
					pixel43Red <= pixel43Red + redIn;
					pixel43Green <= pixel43Green + greenIn;
					pixel43Blue <= pixel43Blue + blueIn;
				end
				else  if(yCounter == 154) begin
					pixel43Red <= pixel43Red + redIn;
					pixel43Green <= pixel43Green + greenIn;
					pixel43Blue <= pixel43Blue + blueIn;
				end
				else  if(yCounter == 172) begin
					pixel44Red <= pixel44Red + redIn;
					pixel44Green <= pixel44Green + greenIn;
					pixel44Blue <= pixel44Blue + blueIn;
				end
				else  if(yCounter == 175) begin
					pixel44Red <= pixel44Red + redIn;
					pixel44Green <= pixel44Green + greenIn;
					pixel44Blue <= pixel44Blue + blueIn;
				end
				else  if(yCounter == 193) begin
					pixel45Red <= pixel45Red + redIn;
					pixel45Green <= pixel45Green + greenIn;
					pixel45Blue <= pixel45Blue + blueIn;
				end
				else  if(yCounter == 196) begin
					pixel45Red <= pixel45Red + redIn;
					pixel45Green <= pixel45Green + greenIn;
					pixel45Blue <= pixel45Blue + blueIn;
				end
				else  if(yCounter == 214) begin
					pixel46Red <= pixel46Red + redIn;
					pixel46Green <= pixel46Green + greenIn;
					pixel46Blue <= pixel46Blue + blueIn;
				end
				else  if(yCounter == 217) begin
					pixel46Red <= pixel46Red + redIn;
					pixel46Green <= pixel46Green + greenIn;
					pixel46Blue <= pixel46Blue + blueIn;
				end
				else  if(yCounter == 235) begin
					pixel47Red <= pixel47Red + redIn;
					pixel47Green <= pixel47Green + greenIn;
					pixel47Blue <= pixel47Blue + blueIn;
				end
				else  if(yCounter == 238) begin
					pixel47Red <= pixel47Red + redIn;
					pixel47Green <= pixel47Green + greenIn;
					pixel47Blue <= pixel47Blue + blueIn;
				end
			end else if(xCounter == 11 ) begin
				 if(yCounter == 7) begin
					pixel35Red <= pixel35Red + redIn;
					pixel35Green <= pixel35Green + greenIn;
					pixel35Blue <= pixel35Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel35Red <= pixel35Red + redIn;
					pixel35Green <= pixel35Green + greenIn;
					pixel35Blue <= pixel35Blue + blueIn;
				end
			end else if(xCounter == 26 ) begin
				 if(yCounter == 7) begin
					pixel34Red <= pixel34Red + redIn;
					pixel34Green <= pixel34Green + greenIn;
					pixel34Blue <= pixel34Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel34Red <= pixel34Red + redIn;
					pixel34Green <= pixel34Green + greenIn;
					pixel34Blue <= pixel34Blue + blueIn;
				end
			end else if(xCounter == 30 ) begin
				 if(yCounter == 7) begin
					pixel34Red <= pixel34Red + redIn;
					pixel34Green <= pixel34Green + greenIn;
					pixel34Blue <= pixel34Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel34Red <= pixel34Red + redIn;
					pixel34Green <= pixel34Green + greenIn;
					pixel34Blue <= pixel34Blue + blueIn;
				end
			end else if(xCounter == 45 ) begin
				 if(yCounter == 7) begin
					pixel33Red <= pixel33Red + redIn;
					pixel33Green <= pixel33Green + greenIn;
					pixel33Blue <= pixel33Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel33Red <= pixel33Red + redIn;
					pixel33Green <= pixel33Green + greenIn;
					pixel33Blue <= pixel33Blue + blueIn;
				end
			end else if(xCounter == 49 ) begin
				 if(yCounter == 7) begin
					pixel33Red <= pixel33Red + redIn;
					pixel33Green <= pixel33Green + greenIn;
					pixel33Blue <= pixel33Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel33Red <= pixel33Red + redIn;
					pixel33Green <= pixel33Green + greenIn;
					pixel33Blue <= pixel33Blue + blueIn;
				end
			end else if(xCounter == 64 ) begin
				 if(yCounter == 7) begin
					pixel32Red <= pixel32Red + redIn;
					pixel32Green <= pixel32Green + greenIn;
					pixel32Blue <= pixel32Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel32Red <= pixel32Red + redIn;
					pixel32Green <= pixel32Green + greenIn;
					pixel32Blue <= pixel32Blue + blueIn;
				end
			end else if(xCounter == 68 ) begin
				 if(yCounter == 7) begin
					pixel32Red <= pixel32Red + redIn;
					pixel32Green <= pixel32Green + greenIn;
					pixel32Blue <= pixel32Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel32Red <= pixel32Red + redIn;
					pixel32Green <= pixel32Green + greenIn;
					pixel32Blue <= pixel32Blue + blueIn;
				end
			end else if(xCounter == 83 ) begin
				 if(yCounter == 7) begin
					pixel31Red <= pixel31Red + redIn;
					pixel31Green <= pixel31Green + greenIn;
					pixel31Blue <= pixel31Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel31Red <= pixel31Red + redIn;
					pixel31Green <= pixel31Green + greenIn;
					pixel31Blue <= pixel31Blue + blueIn;
				end
			end else if(xCounter == 87 ) begin
				 if(yCounter == 7) begin
					pixel31Red <= pixel31Red + redIn;
					pixel31Green <= pixel31Green + greenIn;
					pixel31Blue <= pixel31Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel31Red <= pixel31Red + redIn;
					pixel31Green <= pixel31Green + greenIn;
					pixel31Blue <= pixel31Blue + blueIn;
				end
			end else if(xCounter == 102 ) begin
				 if(yCounter == 7) begin
					pixel30Red <= pixel30Red + redIn;
					pixel30Green <= pixel30Green + greenIn;
					pixel30Blue <= pixel30Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel30Red <= pixel30Red + redIn;
					pixel30Green <= pixel30Green + greenIn;
					pixel30Blue <= pixel30Blue + blueIn;
				end
			end else if(xCounter == 106 ) begin
				 if(yCounter == 7) begin
					pixel30Red <= pixel30Red + redIn;
					pixel30Green <= pixel30Green + greenIn;
					pixel30Blue <= pixel30Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel30Red <= pixel30Red + redIn;
					pixel30Green <= pixel30Green + greenIn;
					pixel30Blue <= pixel30Blue + blueIn;
				end
			end else if(xCounter == 121 ) begin
				 if(yCounter == 7) begin
					pixel29Red <= pixel29Red + redIn;
					pixel29Green <= pixel29Green + greenIn;
					pixel29Blue <= pixel29Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel29Red <= pixel29Red + redIn;
					pixel29Green <= pixel29Green + greenIn;
					pixel29Blue <= pixel29Blue + blueIn;
				end
			end else if(xCounter == 125 ) begin
				 if(yCounter == 7) begin
					pixel29Red <= pixel29Red + redIn;
					pixel29Green <= pixel29Green + greenIn;
					pixel29Blue <= pixel29Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel29Red <= pixel29Red + redIn;
					pixel29Green <= pixel29Green + greenIn;
					pixel29Blue <= pixel29Blue + blueIn;
				end
			end else if(xCounter == 140 ) begin
				 if(yCounter == 7) begin
					pixel28Red <= pixel28Red + redIn;
					pixel28Green <= pixel28Green + greenIn;
					pixel28Blue <= pixel28Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel28Red <= pixel28Red + redIn;
					pixel28Green <= pixel28Green + greenIn;
					pixel28Blue <= pixel28Blue + blueIn;
				end
			end else if(xCounter == 144 ) begin
				 if(yCounter == 7) begin
					pixel28Red <= pixel28Red + redIn;
					pixel28Green <= pixel28Green + greenIn;
					pixel28Blue <= pixel28Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel28Red <= pixel28Red + redIn;
					pixel28Green <= pixel28Green + greenIn;
					pixel28Blue <= pixel28Blue + blueIn;
				end
			end else if(xCounter == 159 ) begin
				 if(yCounter == 7) begin
					pixel27Red <= pixel27Red + redIn;
					pixel27Green <= pixel27Green + greenIn;
					pixel27Blue <= pixel27Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel27Red <= pixel27Red + redIn;
					pixel27Green <= pixel27Green + greenIn;
					pixel27Blue <= pixel27Blue + blueIn;
				end
			end else if(xCounter == 163 ) begin
				 if(yCounter == 7) begin
					pixel27Red <= pixel27Red + redIn;
					pixel27Green <= pixel27Green + greenIn;
					pixel27Blue <= pixel27Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel27Red <= pixel27Red + redIn;
					pixel27Green <= pixel27Green + greenIn;
					pixel27Blue <= pixel27Blue + blueIn;
				end
			end else if(xCounter == 178 ) begin
				 if(yCounter == 7) begin
					pixel26Red <= pixel26Red + redIn;
					pixel26Green <= pixel26Green + greenIn;
					pixel26Blue <= pixel26Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel26Red <= pixel26Red + redIn;
					pixel26Green <= pixel26Green + greenIn;
					pixel26Blue <= pixel26Blue + blueIn;
				end
			end else if(xCounter == 182 ) begin
				 if(yCounter == 7) begin
					pixel26Red <= pixel26Red + redIn;
					pixel26Green <= pixel26Green + greenIn;
					pixel26Blue <= pixel26Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel26Red <= pixel26Red + redIn;
					pixel26Green <= pixel26Green + greenIn;
					pixel26Blue <= pixel26Blue + blueIn;
				end
			end else if(xCounter == 197 ) begin
				 if(yCounter == 7) begin
					pixel25Red <= pixel25Red + redIn;
					pixel25Green <= pixel25Green + greenIn;
					pixel25Blue <= pixel25Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel25Red <= pixel25Red + redIn;
					pixel25Green <= pixel25Green + greenIn;
					pixel25Blue <= pixel25Blue + blueIn;
				end
			end else if(xCounter == 201 ) begin
				 if(yCounter == 7) begin
					pixel25Red <= pixel25Red + redIn;
					pixel25Green <= pixel25Green + greenIn;
					pixel25Blue <= pixel25Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel25Red <= pixel25Red + redIn;
					pixel25Green <= pixel25Green + greenIn;
					pixel25Blue <= pixel25Blue + blueIn;
				end
			end else if(xCounter == 216 ) begin
				 if(yCounter == 7) begin
					pixel24Red <= pixel24Red + redIn;
					pixel24Green <= pixel24Green + greenIn;
					pixel24Blue <= pixel24Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel24Red <= pixel24Red + redIn;
					pixel24Green <= pixel24Green + greenIn;
					pixel24Blue <= pixel24Blue + blueIn;
				end
			end else if(xCounter == 220 ) begin
				 if(yCounter == 7) begin
					pixel24Red <= pixel24Red + redIn;
					pixel24Green <= pixel24Green + greenIn;
					pixel24Blue <= pixel24Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel24Red <= pixel24Red + redIn;
					pixel24Green <= pixel24Green + greenIn;
					pixel24Blue <= pixel24Blue + blueIn;
				end
			end else if(xCounter == 235 ) begin
				 if(yCounter == 7) begin
					pixel23Red <= pixel23Red + redIn;
					pixel23Green <= pixel23Green + greenIn;
					pixel23Blue <= pixel23Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel23Red <= pixel23Red + redIn;
					pixel23Green <= pixel23Green + greenIn;
					pixel23Blue <= pixel23Blue + blueIn;
				end
			end else if(xCounter == 239 ) begin
				 if(yCounter == 7) begin
					pixel23Red <= pixel23Red + redIn;
					pixel23Green <= pixel23Green + greenIn;
					pixel23Blue <= pixel23Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel23Red <= pixel23Red + redIn;
					pixel23Green <= pixel23Green + greenIn;
					pixel23Blue <= pixel23Blue + blueIn;
				end
			end else if(xCounter == 254 ) begin
				 if(yCounter == 7) begin
					pixel22Red <= pixel22Red + redIn;
					pixel22Green <= pixel22Green + greenIn;
					pixel22Blue <= pixel22Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel22Red <= pixel22Red + redIn;
					pixel22Green <= pixel22Green + greenIn;
					pixel22Blue <= pixel22Blue + blueIn;
				end
			end else if(xCounter == 258 ) begin
				 if(yCounter == 7) begin
					pixel22Red <= pixel22Red + redIn;
					pixel22Green <= pixel22Green + greenIn;
					pixel22Blue <= pixel22Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel22Red <= pixel22Red + redIn;
					pixel22Green <= pixel22Green + greenIn;
					pixel22Blue <= pixel22Blue + blueIn;
				end
			end else if(xCounter == 273 ) begin
				 if(yCounter == 7) begin
					pixel21Red <= pixel21Red + redIn;
					pixel21Green <= pixel21Green + greenIn;
					pixel21Blue <= pixel21Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel21Red <= pixel21Red + redIn;
					pixel21Green <= pixel21Green + greenIn;
					pixel21Blue <= pixel21Blue + blueIn;
				end
			end else if(xCounter == 277 ) begin
				 if(yCounter == 7) begin
					pixel21Red <= pixel21Red + redIn;
					pixel21Green <= pixel21Green + greenIn;
					pixel21Blue <= pixel21Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel21Red <= pixel21Red + redIn;
					pixel21Green <= pixel21Green + greenIn;
					pixel21Blue <= pixel21Blue + blueIn;
				end
			end else if(xCounter == 292 ) begin
				 if(yCounter == 7) begin
					pixel20Red <= pixel20Red + redIn;
					pixel20Green <= pixel20Green + greenIn;
					pixel20Blue <= pixel20Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel20Red <= pixel20Red + redIn;
					pixel20Green <= pixel20Green + greenIn;
					pixel20Blue <= pixel20Blue + blueIn;
				end
			end else if(xCounter == 296 ) begin
				 if(yCounter == 7) begin
					pixel20Red <= pixel20Red + redIn;
					pixel20Green <= pixel20Green + greenIn;
					pixel20Blue <= pixel20Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel20Red <= pixel20Red + redIn;
					pixel20Green <= pixel20Green + greenIn;
					pixel20Blue <= pixel20Blue + blueIn;
				end
			end else if(xCounter == 311 ) begin
				 if(yCounter == 7) begin
					pixel19Red <= pixel19Red + redIn;
					pixel19Green <= pixel19Green + greenIn;
					pixel19Blue <= pixel19Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel19Red <= pixel19Red + redIn;
					pixel19Green <= pixel19Green + greenIn;
					pixel19Blue <= pixel19Blue + blueIn;
				end
			end else if(xCounter == 315 ) begin
				 if(yCounter == 7) begin
					pixel19Red <= pixel19Red + redIn;
					pixel19Green <= pixel19Green + greenIn;
					pixel19Blue <= pixel19Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel19Red <= pixel19Red + redIn;
					pixel19Green <= pixel19Green + greenIn;
					pixel19Blue <= pixel19Blue + blueIn;
				end
			end else if(xCounter == 330 ) begin
				 if(yCounter == 7) begin
					pixel18Red <= pixel18Red + redIn;
					pixel18Green <= pixel18Green + greenIn;
					pixel18Blue <= pixel18Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel18Red <= pixel18Red + redIn;
					pixel18Green <= pixel18Green + greenIn;
					pixel18Blue <= pixel18Blue + blueIn;
				end
			end else if(xCounter == 334 ) begin
				 if(yCounter == 7) begin
					pixel18Red <= pixel18Red + redIn;
					pixel18Green <= pixel18Green + greenIn;
					pixel18Blue <= pixel18Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel18Red <= pixel18Red + redIn;
					pixel18Green <= pixel18Green + greenIn;
					pixel18Blue <= pixel18Blue + blueIn;
				end
			end else if(xCounter == 349 ) begin
				 if(yCounter == 7) begin
					pixel17Red <= pixel17Red + redIn;
					pixel17Green <= pixel17Green + greenIn;
					pixel17Blue <= pixel17Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel17Red <= pixel17Red + redIn;
					pixel17Green <= pixel17Green + greenIn;
					pixel17Blue <= pixel17Blue + blueIn;
				end
			end else if(xCounter == 353 ) begin
				 if(yCounter == 7) begin
					pixel17Red <= pixel17Red + redIn;
					pixel17Green <= pixel17Green + greenIn;
					pixel17Blue <= pixel17Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel17Red <= pixel17Red + redIn;
					pixel17Green <= pixel17Green + greenIn;
					pixel17Blue <= pixel17Blue + blueIn;
				end
			end else if(xCounter == 368 ) begin
				 if(yCounter == 7) begin
					pixel16Red <= pixel16Red + redIn;
					pixel16Green <= pixel16Green + greenIn;
					pixel16Blue <= pixel16Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel16Red <= pixel16Red + redIn;
					pixel16Green <= pixel16Green + greenIn;
					pixel16Blue <= pixel16Blue + blueIn;
				end
			end else if(xCounter == 372 ) begin
				 if(yCounter == 7) begin
					pixel16Red <= pixel16Red + redIn;
					pixel16Green <= pixel16Green + greenIn;
					pixel16Blue <= pixel16Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel16Red <= pixel16Red + redIn;
					pixel16Green <= pixel16Green + greenIn;
					pixel16Blue <= pixel16Blue + blueIn;
				end
			end else if(xCounter == 387 ) begin
				 if(yCounter == 7) begin
					pixel15Red <= pixel15Red + redIn;
					pixel15Green <= pixel15Green + greenIn;
					pixel15Blue <= pixel15Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel15Red <= pixel15Red + redIn;
					pixel15Green <= pixel15Green + greenIn;
					pixel15Blue <= pixel15Blue + blueIn;
				end
			end else if(xCounter == 391 ) begin
				 if(yCounter == 7) begin
					pixel15Red <= pixel15Red + redIn;
					pixel15Green <= pixel15Green + greenIn;
					pixel15Blue <= pixel15Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel15Red <= pixel15Red + redIn;
					pixel15Green <= pixel15Green + greenIn;
					pixel15Blue <= pixel15Blue + blueIn;
				end
			end else if(xCounter == 406 ) begin
				 if(yCounter == 7) begin
					pixel14Red <= pixel14Red + redIn;
					pixel14Green <= pixel14Green + greenIn;
					pixel14Blue <= pixel14Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel14Red <= pixel14Red + redIn;
					pixel14Green <= pixel14Green + greenIn;
					pixel14Blue <= pixel14Blue + blueIn;
				end
			end else if(xCounter == 410 ) begin
				 if(yCounter == 7) begin
					pixel14Red <= pixel14Red + redIn;
					pixel14Green <= pixel14Green + greenIn;
					pixel14Blue <= pixel14Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel14Red <= pixel14Red + redIn;
					pixel14Green <= pixel14Green + greenIn;
					pixel14Blue <= pixel14Blue + blueIn;
				end
			end else if(xCounter == 425 ) begin
				 if(yCounter == 7) begin
					pixel13Red <= pixel13Red + redIn;
					pixel13Green <= pixel13Green + greenIn;
					pixel13Blue <= pixel13Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel13Red <= pixel13Red + redIn;
					pixel13Green <= pixel13Green + greenIn;
					pixel13Blue <= pixel13Blue + blueIn;
				end
			end else if(xCounter == 429 ) begin
				 if(yCounter == 7) begin
					pixel13Red <= pixel13Red + redIn;
					pixel13Green <= pixel13Green + greenIn;
					pixel13Blue <= pixel13Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel13Red <= pixel13Red + redIn;
					pixel13Green <= pixel13Green + greenIn;
					pixel13Blue <= pixel13Blue + blueIn;
				end
			end else if(xCounter == 444 ) begin
				 if(yCounter == 7) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
			end else if(xCounter == 448 ) begin
				 if(yCounter == 7) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
				else  if(yCounter == 10) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
			end else if(xCounter == 469 ) begin
				 if(yCounter == 4) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
				else  if(yCounter == 7) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
				else  if(yCounter == 25) begin
					pixel11Red <= pixel11Red + redIn;
					pixel11Green <= pixel11Green + greenIn;
					pixel11Blue <= pixel11Blue + blueIn;
				end
				else  if(yCounter == 28) begin
					pixel11Red <= pixel11Red + redIn;
					pixel11Green <= pixel11Green + greenIn;
					pixel11Blue <= pixel11Blue + blueIn;
				end
				else  if(yCounter == 46) begin
					pixel10Red <= pixel10Red + redIn;
					pixel10Green <= pixel10Green + greenIn;
					pixel10Blue <= pixel10Blue + blueIn;
				end
				else  if(yCounter == 49) begin
					pixel10Red <= pixel10Red + redIn;
					pixel10Green <= pixel10Green + greenIn;
					pixel10Blue <= pixel10Blue + blueIn;
				end
				else  if(yCounter == 67) begin
					pixel9Red <= pixel9Red + redIn;
					pixel9Green <= pixel9Green + greenIn;
					pixel9Blue <= pixel9Blue + blueIn;
				end
				else  if(yCounter == 70) begin
					pixel9Red <= pixel9Red + redIn;
					pixel9Green <= pixel9Green + greenIn;
					pixel9Blue <= pixel9Blue + blueIn;
				end
				else  if(yCounter == 88) begin
					pixel8Red <= pixel8Red + redIn;
					pixel8Green <= pixel8Green + greenIn;
					pixel8Blue <= pixel8Blue + blueIn;
				end
				else  if(yCounter == 91) begin
					pixel8Red <= pixel8Red + redIn;
					pixel8Green <= pixel8Green + greenIn;
					pixel8Blue <= pixel8Blue + blueIn;
				end
				else  if(yCounter == 109) begin
					pixel7Red <= pixel7Red + redIn;
					pixel7Green <= pixel7Green + greenIn;
					pixel7Blue <= pixel7Blue + blueIn;
				end
				else  if(yCounter == 112) begin
					pixel7Red <= pixel7Red + redIn;
					pixel7Green <= pixel7Green + greenIn;
					pixel7Blue <= pixel7Blue + blueIn;
				end
				else  if(yCounter == 130) begin
					pixel6Red <= pixel6Red + redIn;
					pixel6Green <= pixel6Green + greenIn;
					pixel6Blue <= pixel6Blue + blueIn;
				end
				else  if(yCounter == 133) begin
					pixel6Red <= pixel6Red + redIn;
					pixel6Green <= pixel6Green + greenIn;
					pixel6Blue <= pixel6Blue + blueIn;
				end
				else  if(yCounter == 151) begin
					pixel5Red <= pixel5Red + redIn;
					pixel5Green <= pixel5Green + greenIn;
					pixel5Blue <= pixel5Blue + blueIn;
				end
				else  if(yCounter == 154) begin
					pixel5Red <= pixel5Red + redIn;
					pixel5Green <= pixel5Green + greenIn;
					pixel5Blue <= pixel5Blue + blueIn;
				end
				else  if(yCounter == 172) begin
					pixel4Red <= pixel4Red + redIn;
					pixel4Green <= pixel4Green + greenIn;
					pixel4Blue <= pixel4Blue + blueIn;
				end
				else  if(yCounter == 175) begin
					pixel4Red <= pixel4Red + redIn;
					pixel4Green <= pixel4Green + greenIn;
					pixel4Blue <= pixel4Blue + blueIn;
				end
				else  if(yCounter == 193) begin
					pixel3Red <= pixel3Red + redIn;
					pixel3Green <= pixel3Green + greenIn;
					pixel3Blue <= pixel3Blue + blueIn;
				end
				else  if(yCounter == 196) begin
					pixel3Red <= pixel3Red + redIn;
					pixel3Green <= pixel3Green + greenIn;
					pixel3Blue <= pixel3Blue + blueIn;
				end
				else  if(yCounter == 214) begin
					pixel2Red <= pixel2Red + redIn;
					pixel2Green <= pixel2Green + greenIn;
					pixel2Blue <= pixel2Blue + blueIn;
				end
				else  if(yCounter == 217) begin
					pixel2Red <= pixel2Red + redIn;
					pixel2Green <= pixel2Green + greenIn;
					pixel2Blue <= pixel2Blue + blueIn;
				end
				else  if(yCounter == 235) begin
					pixel1Red <= pixel1Red + redIn;
					pixel1Green <= pixel1Green + greenIn;
					pixel1Blue <= pixel1Blue + blueIn;
				end
				else  if(yCounter == 238) begin
					pixel1Red <= pixel1Red + redIn;
					pixel1Green <= pixel1Green + greenIn;
					pixel1Blue <= pixel1Blue + blueIn;
				end
			end else if(xCounter == 473 ) begin
				 if(yCounter == 4) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
				else  if(yCounter == 7) begin
					pixel12Red <= pixel12Red + redIn;
					pixel12Green <= pixel12Green + greenIn;
					pixel12Blue <= pixel12Blue + blueIn;
				end
				else  if(yCounter == 25) begin
					pixel11Red <= pixel11Red + redIn;
					pixel11Green <= pixel11Green + greenIn;
					pixel11Blue <= pixel11Blue + blueIn;
				end
				else  if(yCounter == 28) begin
					pixel11Red <= pixel11Red + redIn;
					pixel11Green <= pixel11Green + greenIn;
					pixel11Blue <= pixel11Blue + blueIn;
				end
				else  if(yCounter == 46) begin
					pixel10Red <= pixel10Red + redIn;
					pixel10Green <= pixel10Green + greenIn;
					pixel10Blue <= pixel10Blue + blueIn;
				end
				else  if(yCounter == 49) begin
					pixel10Red <= pixel10Red + redIn;
					pixel10Green <= pixel10Green + greenIn;
					pixel10Blue <= pixel10Blue + blueIn;
				end
				else  if(yCounter == 67) begin
					pixel9Red <= pixel9Red + redIn;
					pixel9Green <= pixel9Green + greenIn;
					pixel9Blue <= pixel9Blue + blueIn;
				end
				else  if(yCounter == 70) begin
					pixel9Red <= pixel9Red + redIn;
					pixel9Green <= pixel9Green + greenIn;
					pixel9Blue <= pixel9Blue + blueIn;
				end
				else  if(yCounter == 88) begin
					pixel8Red <= pixel8Red + redIn;
					pixel8Green <= pixel8Green + greenIn;
					pixel8Blue <= pixel8Blue + blueIn;
				end
				else  if(yCounter == 91) begin
					pixel8Red <= pixel8Red + redIn;
					pixel8Green <= pixel8Green + greenIn;
					pixel8Blue <= pixel8Blue + blueIn;
				end
				else  if(yCounter == 109) begin
					pixel7Red <= pixel7Red + redIn;
					pixel7Green <= pixel7Green + greenIn;
					pixel7Blue <= pixel7Blue + blueIn;
				end
				else  if(yCounter == 112) begin
					pixel7Red <= pixel7Red + redIn;
					pixel7Green <= pixel7Green + greenIn;
					pixel7Blue <= pixel7Blue + blueIn;
				end
				else  if(yCounter == 130) begin
					pixel6Red <= pixel6Red + redIn;
					pixel6Green <= pixel6Green + greenIn;
					pixel6Blue <= pixel6Blue + blueIn;
				end
				else  if(yCounter == 133) begin
					pixel6Red <= pixel6Red + redIn;
					pixel6Green <= pixel6Green + greenIn;
					pixel6Blue <= pixel6Blue + blueIn;
				end
				else  if(yCounter == 151) begin
					pixel5Red <= pixel5Red + redIn;
					pixel5Green <= pixel5Green + greenIn;
					pixel5Blue <= pixel5Blue + blueIn;
				end
				else  if(yCounter == 154) begin
					pixel5Red <= pixel5Red + redIn;
					pixel5Green <= pixel5Green + greenIn;
					pixel5Blue <= pixel5Blue + blueIn;
				end
				else  if(yCounter == 172) begin
					pixel4Red <= pixel4Red + redIn;
					pixel4Green <= pixel4Green + greenIn;
					pixel4Blue <= pixel4Blue + blueIn;
				end
				else  if(yCounter == 175) begin
					pixel4Red <= pixel4Red + redIn;
					pixel4Green <= pixel4Green + greenIn;
					pixel4Blue <= pixel4Blue + blueIn;
				end
				else  if(yCounter == 193) begin
					pixel3Red <= pixel3Red + redIn;
					pixel3Green <= pixel3Green + greenIn;
					pixel3Blue <= pixel3Blue + blueIn;
				end
				else  if(yCounter == 196) begin
					pixel3Red <= pixel3Red + redIn;
					pixel3Green <= pixel3Green + greenIn;
					pixel3Blue <= pixel3Blue + blueIn;
				end
				else  if(yCounter == 214) begin
					pixel2Red <= pixel2Red + redIn;
					pixel2Green <= pixel2Green + greenIn;
					pixel2Blue <= pixel2Blue + blueIn;
				end
				else  if(yCounter == 217) begin
					pixel2Red <= pixel2Red + redIn;
					pixel2Green <= pixel2Green + greenIn;
					pixel2Blue <= pixel2Blue + blueIn;
				end
				else  if(yCounter == 235) begin
					pixel1Red <= pixel1Red + redIn;
					pixel1Green <= pixel1Green + greenIn;
					pixel1Blue <= pixel1Blue + blueIn;
				end
				else  if(yCounter == 238) begin
					pixel1Red <= pixel1Red + redIn;
					pixel1Green <= pixel1Green + greenIn;
					pixel1Blue <= pixel1Blue + blueIn;
				end
			end
			// end of fetch



			
			// end of data

		end
		
	end

end

//	if (stdby_in)
//		cnt <= 0;
	// else	
//	    cnt <= cnt + 1;


assign led0 = 1'b0 == leds[7];
assign led1 = 1'b0 == leds[6];
assign led2 = 1'b0 == leds[5];
assign led3 = 1'b0 == leds[4];
assign led4 = 1'b0 == leds[3];
assign led5 = 1'b0 == leds[2];
assign led6 = 1'b0 == leds[1];
assign led7 = 1'b0 == leds[0];


endmodule
