Program QualeMaior;
	var n1,n2 : integer;
Begin
	 write('Insira o primeiro n�mero: ');
	 readln(n1);
	 writeln(''); 	//apenas para dar uma estetica melhor no programa
	 write('Insira o segundo n�mero: ');
	 readln(n2);
	 writeln(''); //apenas para estetica tambem
	 
	 	//serie de testes feitos para saber qual decis�o tomar
	 	if n1 > n2 then
	 	write('O n�mero ',n1,' � maior que ',n2)
	 		else
	 			if n1 < n2 then
	 			write('Numero ',n2,' � maior que ',n1)
	 				else
	 					if n1 = n2 then
	 					write('O n�mero ',n1,' � igual a ',n2);
End.