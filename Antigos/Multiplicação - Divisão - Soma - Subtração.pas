Program MultiDivSomSub ;
var
n1,n2,multiplicacao,soma,divisao,subtracao:real;
Begin
  write('Informe um numero: ');
  readln(n1);
  writeln('');
  write('informe outro numero: ');
  readln(n2);
  writeln('');
 	  //Soma
  soma:= n1+n2 ;
  writeln('Soma: ',soma:0:2);
  writeln('');
  	//Subtra��o
  subtracao:= n1-n2 ;
  writeln('Subtra��o; ',subtracao:0:2);
  writeln('');
  	//Multiplica��o
  multiplicacao:= n1 * n2;
  writeln('Multiplica��o: ',multiplicacao:0:2);
  writeln('');
  	//Divis�o
  divisao:= n1/n2;
  writeln('Divis�o: ',divisao:0:2);
  
readkey		// para o programa fechar somente depois do resultado sendo preciso apertar qualquer tecla para fecha-lo
End.