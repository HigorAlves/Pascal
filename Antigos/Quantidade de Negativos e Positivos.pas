Program Pzim ;
var numero, qtdePositivos,qtdeNegativos,i: integer;
Begin
	qtdePositivos:=0; //� sempre bom definir a quantidade para garantir o funcionamento
	qtdeNegativos:=0;
	for i:=1 to 5 do 
	begin
		write('Informe um n�mero: ');
		readln(numero);
		if numero < 0 then
			qtdeNegativos := qtdeNegativos + 1
		else
			qtdePositivos:=qtdePositivos+1;
	end;
	writeln('Foram digitados ',qtdeNegativos,' n�meros negativos');
	writeln('Foram digitados ',qtdePositivos,' n�meros positivos');
End.