Program ComandosUteis ;
var x,y : integer;
Begin
	clrscr; //Limpa a tela
	gotoxy(10,5); //Vai para coluna e linha (na algebra é linha depois coluna
	writeln('Estou na coluna 10, linha 5');
	x:=40;
	y:=20;
	gotoxy(x,y);
	writeln('Estou na coluna 40 linha 20');
	x:=x-20;
	y:=y+1;
	gotoxy(x,y);
	writeln('Estou na linha seguinte pressione qq tecla para continuar');
	readkey;
	gotoxy(29,21);
	writeln;
	readkey; //espera uma tecla ser apertada	  
End.