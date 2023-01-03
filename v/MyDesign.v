
module MyDesign(dut_run,dut_busy, reset_b, clk, dut_sram_write_address,
                 dut_sram_write_data, dut_sram_write_enable,
                 dut_sram_read_address, sram_dut_read_data,
                  dut_wmem_read_address, wmem_dut_read_data
                      );
//********************INPUT-OUTPUT PORT DECLERATIONS********************//
input reset_b;
input dut_run;
output reg dut_busy;
input clk;

output reg        dut_sram_write_enable;
output reg [11:0] dut_sram_write_address;
output reg [15:0] dut_sram_write_data;
output reg [11:0] dut_wmem_read_address;
input      [15:0] wmem_dut_read_data;
output reg [11:0] dut_sram_read_address;
input      [15:0] sram_dut_read_data;
//********************2-D Array Declerations********************//

reg [15:0] input_matrix ;
reg [8:0] weight_matrix;

reg [15:0] result;
reg [8:0] a0;
reg [8:0] a1;
reg [8:0] a2;
reg [8:0] a3;
reg [3:0] output_row;
reg [3:0] sum0;
reg [3:0] sum1;
reg [3:0] sum2;
reg [3:0] sum3;

reg write_flag;
reg low_bit;

//********************STATE DECLARATIONS********************//
parameter   
     S0 = 1'b0,     // Reset State
     S1 = 1'b1;     // Read data for both
reg  current_state, next_state;

//integer op_i ;

//********************SEQUENTIAL********************//
always @ (posedge clk or negedge reset_b)
begin
  if(!reset_b)
        begin
        dut_sram_write_enable  <=0;
        dut_sram_write_address <=0;
        dut_sram_write_data    <=0;
        dut_wmem_read_address  <=0;
        dut_sram_read_address  <=0;
        dut_busy               <=0;
        current_state          <= S0;
        weight_matrix <= 0;
        end
   else begin
        if(dut_run) dut_busy   <= 1;                //Start-Computing When the dut_run go's high
        if(low_bit == 1) dut_busy <=0; 
        current_state          <= next_state;
        dut_wmem_read_address  <= 0;         
        dut_sram_read_address  <= 0;           
        dut_sram_write_address <= 0;     
                 
        weight_matrix             <= wmem_dut_read_data; //
        input_matrix              <= sram_dut_read_data; //
 
        dut_sram_write_enable  <= write_flag;
        dut_sram_write_address <= 0;
        dut_sram_write_data    <= output_row;
                 
        end
end
//********************COMBINATIONAL LOGIC********************//

always @(*) 
begin
   
  case (current_state)
     S0: begin                          //Reset State
         next_state =S0;

         write_flag = 0;
         output_row =0;
         low_bit = 0;


        if(dut_run == 1)  next_state =S1;
        else next_state = S0;
     end

     S1: begin                                      
                    
           
                a0[0] = (input_matrix[0])~^ (weight_matrix[0]);
                a0[1] = (input_matrix[1])~^ (weight_matrix[1]);
                a0[2] = (input_matrix[2])~^ (weight_matrix[2]);
                a0[3] = (input_matrix[4])~^ (weight_matrix[3]);
                a0[4] = (input_matrix[5])~^ (weight_matrix[4]);
                a0[5] = (input_matrix[6])~^ (weight_matrix[5]);
                a0[6] = (input_matrix[8])~^ (weight_matrix[6]);
                a0[7] = (input_matrix[9])~^ (weight_matrix[7]);
                a0[8] = (input_matrix[10])~^ (weight_matrix[8]);
              
                sum0  = a0[0]+ a0[1]+a0[2]+a0[3]+a0[4]+a0[5]+a0[6]+a0[7]+a0[8];
                
                if(sum0 <= 4) output_row[0] = 0;
                else         output_row[0] = 1;


		a1[0] = (input_matrix[1])~^ (weight_matrix[0]);
                a1[1] = (input_matrix[2])~^ (weight_matrix[1]);
                a1[2] = (input_matrix[3])~^ (weight_matrix[2]);
                a1[3] = (input_matrix[5])~^ (weight_matrix[3]);
                a1[4] = (input_matrix[6])~^ (weight_matrix[4]);
                a1[5] = (input_matrix[7])~^ (weight_matrix[5]);
                a1[6] = (input_matrix[9])~^ (weight_matrix[6]);
                a1[7] = (input_matrix[10])~^ (weight_matrix[7]);
                a1[8] = (input_matrix[11])~^ (weight_matrix[8]);
              
                sum1  = a1[0]+ a1[1]+a1[2]+a1[3]+a1[4]+a1[5]+a1[6]+a1[7]+a1[8];
                
                if(sum1 <= 4) output_row[1] = 0;
                else         output_row[1] = 1;

		a2[0] = (input_matrix[4])~^ (weight_matrix[0]);
                a2[1] = (input_matrix[5])~^ (weight_matrix[1]);
                a2[2] = (input_matrix[6])~^ (weight_matrix[2]);
                a2[3] = (input_matrix[8])~^ (weight_matrix[3]);
                a2[4] = (input_matrix[9])~^ (weight_matrix[4]);
                a2[5] = (input_matrix[10])~^ (weight_matrix[5]);
                a2[6] = (input_matrix[12])~^ (weight_matrix[6]);
                a2[7] = (input_matrix[13])~^ (weight_matrix[7]);
                a2[8] = (input_matrix[14])~^ (weight_matrix[8]);
              
                sum2  = a2[0]+ a2[1]+a2[2]+a2[3]+a2[4]+a2[5]+a2[6]+a2[7]+a2[8];
                
                if(sum2 <= 4) output_row[2] = 0;
                else         output_row[2] = 1;

		a3[0] = (input_matrix[5])~^ (weight_matrix[0]);
                a3[1] = (input_matrix[6])~^ (weight_matrix[1]);
                a3[2] = (input_matrix[7])~^ (weight_matrix[2]);
                a3[3] = (input_matrix[9])~^ (weight_matrix[3]);
                a3[4] = (input_matrix[10])~^ (weight_matrix[4]);
                a3[5] = (input_matrix[11])~^ (weight_matrix[5]);
                a3[6] = (input_matrix[13])~^ (weight_matrix[6]);
                a3[7] = (input_matrix[14])~^ (weight_matrix[7]);
                a3[8] = (input_matrix[15])~^ (weight_matrix[8]);
              
                sum3  = a3[0]+ a3[1]+a3[2]+a3[3]+a3[4]+a3[5]+a3[6]+a3[7]+a3[8];
                
                if(sum3 <= 4) output_row[3] = 0;
                else         output_row[3] = 1;
               // end
            next_state = S0;
            write_flag =1;  
            low_bit = 1;
        end 
    
    default: next_state = S0;       
         
  endcase
end
endmodule
