Program SerieFibonacci ;
var proximo,anterior1,anterior2,n1,i,soma : integer;
Begin
  anterior1:=0;
  anterior2:=1;
  soma:=0;
  i:=2;
  Write('Insira um número: ');
  readln(n1);
  write('Termos da serie Fibonacci:');
  while (i <= n1) do
    begin
      proximo:= anterior1 + anterior2;
     	write(' ', proximo);
     	anterior2:= anterior1;
     	anterior1:= proximo; 
      soma:= soma+proximo; 
     	i:= i+1; 
    end;
  writeln('');  
  Write('A soma foi de: ',soma);
End.