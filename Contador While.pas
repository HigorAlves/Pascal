Program Contador_While ;
var a, contador : integer;
Begin
   write('Insira um número: ');
   read(a);
   contador:=1;
   while (contador<=10) do
   begin
   a:= a+5;
   contador:=contador+1;
   end;
   writeln('Numero: ',a);
End.