module Project_COE312(input clk, input reset,input count_up , output reg [3:0] y);//By Mohammad Yaser Ammar | 3704975 | April / 2020
reg [2:0]state;
parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5; //we have 6 state ; because initially letter in State 0
reg[3:0] count;//Counter 10 times ; then need 4-bit | Need condtion max in 10 ; count 1 to 10

always@(posedge clk)begin
  if (reset == 0) begin
   count = 0;
   state <= S0;//System starts from the initial state
end
   else begin
	count <= count + 1; //counter 
		case (state)
		S0:begin
		if(count == 10) begin //to wait count from 1 to 10
			count <= 0;
			state<=S1;
			end
			else begin
			state<=S0; end
			y<='hC;end//value directly in hexadecimal			
		S1:begin
		if(count == 10) begin
		   count <= 0;
			state<=S2; end
			else begin
			state<=S1; end
			y<='h0;end
			
		S2:begin
		if(count == 10)begin
			count <= 0;
			state<=S3;end
			else begin
			state<=S2;end
			y<='hE;end
			
		S3:begin
		if(count == 10) begin
			count <= 0;
			state<=S4;end
			else begin
			state<=S3;end
			y<='h3;end
			
		S4:begin
		if(count == 10)begin
			count <= 0;
			state<=S5;end
			else begin
			state<=S4;end
			y<='h1;
			end
		
		S5:begin
		if(count == 10) begin
			count <= 0;
			state<=S0;end //to back repeat to C
			else begin
			state<=S5;end
			y<='h2;
			end
		default:
			y<=0;
		endcase 
		end
end
endmodule 

module test_Project_COE312;
	// Inputs
	reg clk;
	reg reset;
	reg count_up;
	// Outputs
	wire [3:0] y;
	// Instantiate the Unit Under Test (UUT)
	Project_COE312 uut (
		.clk(clk), 
		.reset(reset), 
		.count_up(count_up), 
		.y(y)
	);
	
	
	  integer i;//define integer to use in for

always #5 clk=~clk;
initial begin
		// Initialize Inputs
		clk = 0;
		count_up=0;   
	   reset = 0; //reset singnal

		#100;
    	reset=0;
		 #50
    	reset=0;
		#50
    	reset=1;
		#10	
			
	//I am using for loop to decrease lines to count
		
	for (i = 0; i < 11; i = i + 1) begin//to print C
	count_up=1;  
	#10;  //delay in for loop need semicolon	
	end//Because the RTL simulation repeat can sufficiency only this and delete the loops below
		
	for (i = 0; i < 11; i = i + 1) begin//to print O
	count_up=1;  
	#10;	
	end
	
	for (i = 0; i < 11; i = i + 1) begin//to print E
	count_up=1;  
	#10;	
	end
	
	for (i = 0; i < 11; i = i + 1) begin//to print 3
	count_up=1;  
	#10;	
	end
	
	for (i = 0; i < 11; i = i + 1) begin//to print 1
	count_up=1;  
	#10;	
	end
	for (i = 0; i < 11; i = i + 1) begin//to print 2
	count_up=1;  
	#10;	
	end

	end    
endmodule

//By: https://github.com/MohammadYAmmar
//Project in GitHub: https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim