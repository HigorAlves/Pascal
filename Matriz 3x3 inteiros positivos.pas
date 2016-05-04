program AcharNumeroNamatriz;
uses crt;
var matriz:array[1..3,1..3] of integer;
    i,j,achar:integer;
    achei:boolean;
begin
  achei:=false;
  write('Insira um numero positivo e inteiro: ');
  for i:=1 to 3 do
    begin
      for j:=1 to 3 do
        begin
          repeat
            gotoxy(i*6,j+1);
            readln(matriz[i,j]);
          until (matriz[i,j]>=0);
         end;
    end;
  clrscr;
  write('Insira o numero que deseja achar: ');
  readln(achar);
  for i:=1 to 3 do
    for j:=1 to 3 do
      if achar = matriz[i,j] then
         achei:=true;
  textcolor(lightgreen);
  if achei then
    write('O valor foi encontradado na matriz')
  else
    write('O valor nao foi encontrado na matriz');
readkey;
end.
