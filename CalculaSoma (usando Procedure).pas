program CalculaSoma;
uses crt;
var valor1,valor2,soma: integer;
procedure EfetuarSoma;
begin
	soma:=valor1+valor2;
end;
begin
	write('Informe um valor: ');
	readln(valor1);
	write('Informe outro valor: ');
	readln(valor2);
	EfetuarSoma;
	write('Soma: ',soma);
end.
