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
  	//Subtração
  subtracao:= n1-n2 ;
  writeln('Subtração; ',subtracao:0:2);
  writeln('');
  	//Multiplicação
  multiplicacao:= n1 * n2;
  writeln('Multiplicação: ',multiplicacao:0:2);
  writeln('');
  	//Divisão
  divisao:= n1/n2;
  writeln('Divisão: ',divisao:0:2);
  
readkey		// para o programa fechar somente depois do resultado sendo preciso apertar qualquer tecla para fecha-lo
End.