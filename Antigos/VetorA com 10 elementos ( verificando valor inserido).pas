{ler um vetor A com 10 elementos reais e em seguida leia um valor V. Contar e escrever quantas vezes o valor V ocorre no vetor A. Escreva tambem em quais posiçoes do vetor A o valor V aparece. Caso não exista ocorrencia de V no vetor, escreva um amensagem para isto.}
Program Untitled;
uses crt;
var vetorA:array [0..9] of real;
    valorV: real;
    i,qtd: integer;
begin
   for i:=0 to 9 do
      begin
         write('Insira um valor: ');
         read(vetorA[i]);
      end;
   writeln('');
   writeln('Insira o valor que deseja verificar: ');
   read(valorV);
   for i:=0 to 9 do
      begin
         if (vetorA[i] = valorV) then
            begin
               qtd:=qtd+1;
               writeln('O Valor ',valorV,' esta nos indices ',i);
            end;
      end;
   if (qtd>0) then
         write('O vetor apareceu: ',qtd)
            else
               write('Não achamos o valor');
readkey;
end.
