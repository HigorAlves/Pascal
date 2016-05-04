program Numero2;
uses crt;
var A,B,S,D,M: array [1..4,1..4] of integer;
	 i,j,k:integer;
BEGIN
	Write('Insira os Valores da Matriz A');
	for i:=1 to 4 do
	begin
		for j:=1 to 4 do
		begin
			gotoxy(j*6,i+1);
			read(A[i,j]);
		end;
	end;
	clrscr;
	write('Insira os Valores da Matriz B');
	for i:=1 to 4 do
	begin
		for j:=1 to 4 do
		begin
			gotoxy(j*6,i+1);
			read(B[i,j]);
		end;
	end;
	clrscr;
	write('Matriz S (Soma de A+B)');
	for i:=1 to 4 do
	begin
		for j:=1 to 4 do
		begin
			s[i,j]:=a[i,j]+b[i,j];
			gotoxy(j*6,i+1);
			write(S[i,j]);
		end;
	end;
	readkey;
	clrscr;
	write('Matriz D (diferenca de A-B)');
	for i:=1 to 4 do
	begin
		for j:=1 to 4 do
		begin
			d[i,j]:=a[i,j]-b[i,j];
			gotoxy(j*6,i+1);
			write(d[i,j]);
		end;
	end;
	readkey;
	clrscr;
	write('Matriz M (Multiplicacao de A*B)');
	for i:=1 to 4 do
	begin
		for j:=1 to 4 do
		begin
			M[i,j]:=0;
			for k:=1 to 4 do
				M[i,j]:=M[i,j]+A[i,k]*B[k,j];
			gotoxy(j*6,i+1);
			write(M[i,j]);
		end;
	end;
END.
