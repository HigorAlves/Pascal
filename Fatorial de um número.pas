Program Pzim ;
var n1,fatorial,cont : integer;
Begin
  cont:=1;
  fatorial:=1;
  write('Digite um número: ');
  readln(n1);
  while (cont <= n1) do
  begin
    fatorial:= fatorial*cont;
    cont:=cont+1;
  end; 
  write('O resultado em fatorial foi: ',fatorial);
End.