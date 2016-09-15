Program Somatoria1a100;
var cont,n1,n2 : integer;
Begin
n1:=0;
n2:=0;
cont:=1;
	writeln('Somatoria dos números de 1 a 100');
	while (cont<=100) do
		begin
			n1:=cont;
			n2:=n1*n1; 
			cont:=cont+1;
			writeln(n1,'/',n2);
		end;
readkey		  
End.