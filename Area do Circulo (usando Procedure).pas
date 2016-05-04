program AreadoCirculo;
uses crt;
const PI = 3.14;
var raio,area: real;
procedure escreverArea;
begin
	write('A area do circulo deu: ',area:0:2);
end;
procedure areaCirculo;
begin
	area:=PI*(sqr(raio));
	escreverArea;
end;
begin
	write('Informe o raio: ');
	readln(raio);
	areaCirculo;
	readkey;
end.
