Program ParOuImpar ;
 var n1 : integer;
Begin
   write('Insira um número: ');
   readln(n1);
   writeln(''); //apenas para estetica do programa
   	//teste para saber se o resultado é par ou impar
   		if (n1 mod 2) <> 0 then
   		write('O número informado é Impar')
   			else
   			write('O número informado é Par');
End.