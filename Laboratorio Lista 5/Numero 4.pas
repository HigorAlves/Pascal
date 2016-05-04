program numero4;
uses crt;
var notas:array[1..25,1..3] of real;
	 mediafinal:array[1..25] of real;
	 i,j,aprovados,reprovados:integer;
begin
	reprovados:=0;
	aprovados:=0;
	for i:=1 to 25 do
		begin
			clrscr;
			for j:=1 to 3 do
				begin
					write('Insira a nota do aluno ',i,': ');
					readln(notas[i,j]);
					mediafinal[i]:=mediafinal[i]+notas[i,j];
				end;
		end;
	for i:=1 to 25 do
		begin
		 writeln('O aluno ',i,' teve a media de: ',mediafinal[i]/3:0:2);
		 if (mediafinal[i]/3 >= 7) then
		 	aprovados:=aprovados+1
		 else
		 	reprovados:=reprovados+1;
		end;
	writeln('Teve ',aprovados,' aprovados e ',reprovados,' reprovados');
end.
