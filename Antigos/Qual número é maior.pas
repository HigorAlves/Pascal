Program QualeMaior;
	var n1,n2 : integer;
Begin
	 write('Insira o primeiro número: ');
	 readln(n1);
	 writeln(''); 	//apenas para dar uma estetica melhor no programa
	 write('Insira o segundo número: ');
	 readln(n2);
	 writeln(''); //apenas para estetica tambem
	 
	 	//serie de testes feitos para saber qual decisão tomar
	 	if n1 > n2 then
	 	write('O número ',n1,' é maior que ',n2)
	 		else
	 			if n1 < n2 then
	 			write('Numero ',n2,' é maior que ',n1)
	 				else
	 					if n1 = n2 then
	 					write('O número ',n1,' é igual a ',n2);
End.