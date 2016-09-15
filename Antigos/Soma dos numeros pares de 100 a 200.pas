Program SomaNumerosPares100a200 ;
var soma, contador,i,soma2 : integer;
Begin
	soma:=0;
	contador:=100;
	while (contador <=200) do
		begin
		soma:= soma+contador;
		contador:= contador+2;
		end;
	writeln('A soma dos pares de 100 a 200 é de: ',soma);
	
	//usando for
	for i:=100 to 200 do
		begin
			if (i mod 2=0) then
				soma2:=soma2+i;	
		end;
		writeln('Usando o for:',soma2); 
readkey		  
End.