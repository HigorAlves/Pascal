Program SomaDeDoisNumeros ;
	var 
		n1,n2,soma:real;
Begin
   write('Informe um dos numeros da Soma: ');
   readln(n1);
   writeln('');
   write('Informe outro numero: ');
   readln(n2);
   writeln('');
   
   soma:= (n1+n2);      //lei de formação da soma 
   writeln('A soma foi de:  ',soma:0:2);
   
 readkey   // para o programa fechar somente depois do resultado sendo preciso apertar qualquer tecla para fecha-lo
End.