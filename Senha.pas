//escreva um programa em pascal para ler caracteres digitados pelo usuario e quando o usuario digitar a tecla enter limpe a tela e exiba no centro da tela na cor vermelha todos os caracteres digitados de forma concatenada.
Program SenhaComandosUteis ;
var caracter : char;
		palavra : string;
Begin
	write('Insira diversos caracteres e por fim tecle enter: ');
	caracter:=readkey;
	write('*');
	while (caracter <> chr(13)) do
		begin		
			palavra:=palavra+caracter;
			caracter:=readkey;
			write('*');
		end;
	clrscr;
	textcolor(lightred);
	gotoxy(23,12);
	write('A senha digitada foi: ',palavra);	
End.