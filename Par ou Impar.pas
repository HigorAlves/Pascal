Program ParOuImpar ;
 var n1 : integer;
Begin
   write('Insira um n�mero: ');
   readln(n1);
   writeln(''); //apenas para estetica do programa
   	//teste para saber se o resultado � par ou impar
   		if (n1 mod 2) <> 0 then
   		write('O n�mero informado � Impar')
   			else
   			write('O n�mero informado � Par');
End.