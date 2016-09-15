{Let um vetor de nomes de 10 pessoas. Em seguida, peça ao usuario que digite um nome qualquer de uma pessoa. Escreva "Achei" se o nome estiver no vetor e "Não achei" se não estiver.}
Program Untitled;
uses crt;
var nomes:array[0..9] of string;
    achado: string;
    i,x: integer;
begin
   x:=0;
   for i:=0 to 9 do
      begin
         write('Insira um nome: ');
         readln(nomes[i]);
      end;
   write('Insira o nome que queria achar: ');
   readln(achado);
   for i:=0 to 9 do
      begin
         if (achado = nomes[i]) then
            begin
               x:=x+1;
            end
      end;
   if x>0 then
      write('Achei')
   else
      write('Nao Achei');
readkey;
end.
