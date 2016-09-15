{Escreva um programa em pascal que leia uma frase e conte quantas palavras existem na frase. Considere que cada palavra é um conjunto de caracteres delimitados
por um espaço em branco. Utilize no minimo 3 procedimentos.}
Program ContadorDePalavras;
var Texto: String;
	 QtPalavras,i: integer;
Procedure Resultado;
Begin
	Write('Há aproximadamente ',QtPalavras,' palavras no seu texto');
End;
Procedure ContadorPalavras;
Begin
	for i:=1 to length(texto) do
	Begin
		if texto[i]=' ' then
			QtPalavras:=QtPalavras+1;
	End;
	Resultado;	
End;
Procedure InformeTexto;
Begin
	repeat
	write('Insira o Texto: ');
	readln(texto);
	until (texto[1] <> ' ') ;
	ContadorPalavras;
End;
BEGIN
	Qtpalavras:=1;
	InformeTexto;
END.
