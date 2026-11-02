module con_1s(data,op,count);
  input  [7:0] data;
  output  reg op;
  output reg [3:0]count;
  integer i;
  always@(*) begin
    count=0;
	op=0;
     for(i=0;i<=7;i=i+1) begin
          if (data[i]==1'b1) begin
	         count = count+1;
	          if(count>=3) 
			      op=1;
			   end
	       else
		  count=0;
        end
     end

endmodule
