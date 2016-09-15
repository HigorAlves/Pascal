Program Pzim ;
var numero, qtdePositivos,qtdeNegativos,i: integer;
Begin
	qtdePositivos:=0; //é sempre bom definir a quantidade para garantir o funcionamento
	qtdeNegativos:=0;
	for i:=1 to 5 do 
	begin
		write('Informe um número: ');
		readln(numero);
		if numero < 0 then
			qtdeNegativos := qtdeNegativos + 1
		else
			qtdePositivos:=qtdePositivos+1;
	end;
	writeln('Foram digitados ',qtdeNegativos,' números negativos');
	writeln('Foram digitados ',qtdePositivos,' números positivos');
End.