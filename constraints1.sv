class insideconstraint;
 rand bit [10:0] address;
 rand bit [10:0] data;
 
 constraint name1 {address inside{[5:10]};}
 constraint name2 {data inside{[5:10]};}
  task display;
     begin
	  $display("address=%0d",address);
	  $display("data=%0d",data);
	 end  
  endtask
endclass


program prog;
  insideconstraint  cons;
  initial
   begin
     cons=new();
	 repeat(10)
	 begin
	 cons.randomize();
	 cons.display();
	 end
   end




endprogram