program numero3;
uses crt;
var matriz:array[1..5,1..5] of integer;
	 i,j,cont: integer;
begin
	cont:=0;
	write('Matriz predefinida');
	for j:=1 to 5 do
		for i:=1 to 5 do
			begin
				cont:=cont+1;
				matriz[i,j]:=cont;
				gotoxy(i*6,j+6);
				write(matriz[i,j]);
			end;
end.
