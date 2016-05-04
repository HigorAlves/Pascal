Program Contador ;
var contador,a : integer;
Begin
	write('Insira um número: ');
	readln(a);
	for contador := 1 to 10 do
		begin
		a:=a+5;
		writeln(a); //Mostrar o todo o processo de soma
		end;
	write('O valor contado é de: ',a); 
readkey	 
End.