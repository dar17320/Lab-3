module fetchff (q,qn,clk,d, reset);
input  clk,d, reset ;
output q,qn;
reg q;
always @(posedge clk or negedge reset)            //asynchronous reset
 begin
    if (~reset) begin
     q <= 1'b0;
    end
 else    begin
        q <= d;
   end
end
assign  qn=~q;
endmodule


