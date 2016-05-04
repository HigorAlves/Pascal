program DiaVividos;
uses crt;
const Ano = 365;
var nome:string;
	 idade,vividos: integer;
procedure DiasVividos;
begin
	Vividos:=idade*ano;
end;
procedure Imprimir;
begin
	Diasvividos;
	write(nome,' Viveu ', vividos,' dias!');
end;
begin
	write('Informe o Nome: ');
	readln(nome);
	write('Informe a idade: ');
	readln(idade);
	imprimir;
end.
