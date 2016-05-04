program Nuemro1;
uses crt;
var matriz:array[1..3,1..3] of integer;
	i,j:integer;
begin
	write('Soma Matriz');
	for i:=1 to 3 do
		for j:=1 to 3 do
			begin
				matriz[i,j]:=i+j;
				gotoxy(j*6,i+6);
				write(matriz[i,j]);
			end;
end.
