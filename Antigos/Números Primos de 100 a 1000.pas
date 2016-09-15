Program NumerosPrimos ;
var cont,n1 : integer;
		primo: boolean;
Begin
	 textcolor(lightred);
   write('Os números prmos de 100 a 1000');
   textcolor(lightgreen);
   for cont:=100 to 1000 do
   	begin
   		n1:=2;
   		primo:=true;
   		while (n1<cont) do 
   			begin
   				if (cont mod n1 = 0) then
   					primo:=false;
   					n1:=n1+1
   			end;
   		if (primo) then 
			 write(' ',cont);	
   	end;
End.