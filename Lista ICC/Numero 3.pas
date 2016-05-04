Program MegaSena;
uses crt;
var resultado:array[0..5] of integer;
    aposta:array[0..9] of integer;
    i,x,acertos: integer; //variaveis de controle
begin
   textcolor(lightgreen);
   writeln('Verificador de pontos no sorteio da MegaSena');
   textcolor(7); //cor zinza padrão
   for i:=0 to 9 do
      begin
         write('Insira o sua aposta feita: ');
         readln(aposta[i]);
      end;
   writeln(' ');
   textcolor(lightgreen);
   writeln('Agora insira os numeros sorteados pela MegaSena');
   textcolor(7);
   for x:=0 to 5 do
      begin
         write('Numeros Sorteados:');
         readln(resultado[x]);
      end;
   for x:=0 to 5 do
      begin
         for i:=0 to 9 do
            begin
               if (resultado[x] = aposta[i]) then
                  acertos:=acertos+1;
            end;
      end;
   textcolor(lightgreen);
   write('Voce acertou ',acertos,' ponto(s)');
 readkey;
end.
