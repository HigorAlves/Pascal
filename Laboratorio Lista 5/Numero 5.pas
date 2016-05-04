program Numero5;
uses crt;
var matriz:array [1..3,1..3] of integer;
	 i,j,V,linha,coluna: integer;
	 achou: boolean;
begin
	achou:=false;
	write('Insira os valores da matriz:');
	for i:=1 to 3 do
		for j:=1 to 3 do
			begin
				gotoxy(j*6,i+6);
				readln(matriz[i,j]);
			end;
	write('Insira um valor a ser verificado: ');
	readln(v);
	for i:=1 to 3 do
		for j:=1 to 3 do
				if (v=matriz[i,j]) then
					begin
						achou:=true;
						linha:=i;
						coluna:=j;
					end;
	if achou = true then
		write('O valor ',v,' foi achado na linha ',linha,' e na coluna ',coluna)
	else
		write('O valor nao foi achado');	
end.
