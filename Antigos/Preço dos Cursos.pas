Program Precodoscursos ;
var aluno : string;
		curso : char; //usado para poder usar o case
		dias : integer; //os dias tem de ser inteiros, n�o sendo possivel calcular 1.5 dia
		preco : real;
Begin
	 writeln('Iremos calcula o pre�o do curso, por favor:');
   write('Insira o n�mero do Aluno: ');
   readln(aluno);
   writeln(''); //apenas para estetica do programa, faz uma linha em branca
   write('Informe quantos horas o Aluno quer estudar no dia: ');
   read(dias);
   writeln(''); //apenas para estetica do programa, faz uma linha em branca
   write('Informe o curso pretendido pelo aluno (B=Basico,I=Intermediario e A= Avan�ado): ');
   read(curso);
   writeln(''); //apenas para estetica do programa, faz uma linha em branca
	 	curso:=upcase(curso); //para que mesmo se o usuario inserir uma letra em caixa baixa o programa reconhe�a
   		case curso of  
   		'B' : preco :=(dias*7)*15;
   		'I' : preco :=(dias*8.5)*20;
   		'A' : preco :=(dias*10)*25
   		end;
   	write('O nome do aluno �, ',aluno);
   	writeln(''); //apenas para estetica do programa, faz uma linha em branca
   	write('Ele deseja realizar ',dias,' hora(s) ao dia no curso ',curso,' e custar�, ',preco:2:0);
   	writeln('');
   	write('Aperte qualquer tecla para sair');
	 readkey
End.