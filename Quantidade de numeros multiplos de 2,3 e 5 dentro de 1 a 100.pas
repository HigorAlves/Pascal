Program QuantidadeMultiplosde1a100 ;
var contador, multi2,multi3,multi5,multis : integer;
Begin
contador:=1;
	repeat
		if (contador mod 2 = 0) then
			multi2:= multi2+1;
		if (contador mod 3 = 0) then
			multi3:=multi3+1;
		contador:=contador+1;
		if (contador mod 5 = 0) then
			multi5:=multi5+1;
		if (contador mod 2= 0) and	(contador mod 3= 0) and (contador mod 5= 0) then
			multis:=multis+1;
	until (contador>100);
	writeln('Quantidade de multiplos de 2: ',multi2);
	writeln('Quantidade de multiplos de 3: ',multi3);
	writeln('Quantidade de multiplos de 5: ',multi5);   
	writeln('Quantidade de multiplos de todos ao mesmo tempo: ',multis);   
End.