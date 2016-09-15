//escreva um programa em pascal para ler uma frase e em seguida, remova os espaços em branco
program DeletandoEspaco;
uses crt;
var frase: string;
	 i,Posicao: integer;
Begin
	write('Insira uma Frase: ');
	readln(frase);
	for i:=1 to length(frase) do
	begin
		posicao:=pos(' ',frase);
		delete(frase,posicao,1);
	end;
	write('A frase sem espacos ficou: ',frase);
End.
