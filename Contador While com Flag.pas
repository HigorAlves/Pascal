Program Contador_flag ;
var a, flag : integer;
Begin
	write('Insira um número: ');
	read(a);
	flag := 0;
	while(flag <> -1) do
		begin
		a:=a+5;
		write(a);
		write('Digite -1 para parar: ');
		read(flag);
		writeln(''); //apenas para estetica
		end;
		writeln(''); //apenas para estetica
		write('O número é :',a);
End.