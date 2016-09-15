Program NumeroViraAsteriscos ;
var numero, cont : integer; 
Begin
  cont:= 1
   Write('Informe um número: ');
   readln(numero);
   while (cont < numero) do
    begin;
    write('*');
    cont:=cont +1;
    end;
End.