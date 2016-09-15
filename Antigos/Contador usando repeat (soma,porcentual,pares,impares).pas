Program ContadorUsandoRepeat ;
var qtpares,qtimpares,qtnumeros,n1,n2,soma,valor,contador : integer;
		media,porcentualPares,porcentualImpares : real;
Begin
soma:=0;
valor:=0;
contador:=1;
	repeat
		clrscr;
		write('Informe a quantidade de números a serem lidos: ');
		readln(qtnumeros);
		if (qtnumeros < 0) then
			begin
			write('Informe um número POSITIVO!');
			readkey;
			end;
	until qtnumeros > 0;
	repeat
		write('Informe o ',contador,' valor: ');
		readln(valor);
		soma:=soma+valor;
		if (valor mod 2 = 0) then
			qtpares:=qtpares+1
			else
			qtimpares:=qtimpares+1;
		contador:=contador+1;
	until contador > qtnumeros;
	media:=soma/qtnumeros;
	porcentualpares:=(qtpares/qtnumeros)*100;
	porcentualimpares:=(qtimpares/qtnumeros)*100;
	textcolor(lightred);
	writeln('');
	writeln('Média aritmética dos valores lidos: ',media:0:2);
	writeln('Quantidade de números pares: ',qtpares);
	writeln('Quantidade de números impares: ',qtimpares);
	writeln('Percentual de números ímpares: ',porcentualimpares:0:2);
	writeln('Percentual de números ímpares: ',porcentualpares:0:2);	  
End.