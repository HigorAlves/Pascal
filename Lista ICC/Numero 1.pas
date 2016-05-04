Program HaProcuraDosNumeros;
uses crt;
var vetor:array [0..4] of real;
    vetor2,vetor3:array [0..9] of real;
    i,cont: integer;
    igualvetor:boolean;
begin
   igualvetor:=false;
   for i:=0 to 4 do
      begin
         write('Insira um numero: '); //Leitura do primeiro vetor
         readln(vetor[i]);
      end;
   for i:=0 to 9 do
      begin
         textcolor(lightred);
         write('Insira outros 10 numeros: ');   //Leitura do segundo vetor
         readln(vetor2[i]);
      end;
   for i:=0 to 9 do  //encontra o valor
      begin
         for cont:=0 to 4 do
            begin
               if vetor[cont] = vetor2[i] then
                  begin
                     vetor3[i]:=vetor2[i];
                     igualvetor:=true;
                     textcolor(lightgreen);
                     writeln('Os valores iguais nos dois vetores sao: ',vetor3[i]:0:2);
                  end;
           end;
      end;
    textcolor(lightgreen);
    if (igualvetor=false) then //caso não haja valores iguais aparecera esta mensagem
      write('Não ha valores repetidos');
readkey;
end.
