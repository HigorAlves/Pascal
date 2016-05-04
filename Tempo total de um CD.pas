Program TempoTotal_das_MusicasDeUmCD ;
var tempototal,tempo : real;
		musica : string;
		flag : char;
Begin
 flag:='S';
 	while (flag = 'S') do
 	 begin
 		Write('Insira o nome da música : ');
		readln(musica);
		write('Insira o tempo da musica: ');
		read(tempo);
		tempototal:=tempo+tempototal;
		write('Deseja inserir mais musicas? [S / N] ');
		read(flag);
		flag:=upcase(flag);
	 end;
	 write('Tempo total do CD: ',tempototal,'[hrs:Minutos:s);
		  
End.