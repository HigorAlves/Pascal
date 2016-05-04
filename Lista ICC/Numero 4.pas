Program SomaMatrizes;
uses crt;
var A,B,C,D:array [1..3,1..3] of real; //colocado de 1 a 3 e não de 0 a 2 pois na hora de escrever ficaria estranho dentro da matriz
    i,j: integer; //i linha e j coluna, são simbolos matematicos
begin
   textcolor(lightgreen);
   gotoxy(24,1);
   writeln('Soma e Subtracao de duas Matrizes quadradas 3x3');
   textcolor(7); //cor padrão do dev
   gotoxy(1,3);
   for i:=1 to 3 do
      begin
         for j:=1 to 3 do
            begin
               write('Entre com o valor da matriz A[',i, ',',j, '] : ');
               readln(A[i][j]);
            end;
      end;
   for i:=1 to 3 do
      begin
         for j:=1 to 3 do
            begin
               write('Entre com o valor da Matriz B[',i,',',j,'] : ');
               readln(B[i][j]);
            end;
      end;
   for i:=1 to 3 do
      begin
         for j:=1 to 3 do
            begin
               C[i][j]:=A[i][j]+B[i][j];
               D[i][j]:=A[i][j]-B[i][j];
            end;
      end;
   clrscr;
   gotoxy(24,1);
   textcolor(lightgreen);
   writeln('Soma e Subtracao de duas Matrizes quadradas 3x3');
   textcolor(7);
   writeln('Matriz A : ');
   For i:= 1 to 3 do
      writeln(A[i,1]:0:2,'    ', A[i,2]:0:2,'    ', A[i,3]:0:2);
   writeln('');
   writeln('Matriz B : ');
   For i:= 1 to 3 do
      writeln(B[i,1]:0:2,'    ',B[i,2]:0:2,'    ',B[i,3]:0:2);
   writeln('');
   writeln('(Soma)Matriz C : ');
   For i:= 1 to 3 do
      writeln(C[i,1]:0:2,'    ',C[i,2]:0:2,'    ',C[i,3]:0:2);
   writeln('');
   writeln('(Subtracao)Matriz D : ');
   For i:= 1 to 3 do
      writeln(D[i,1]:0:2,'    ',D[i,2]:0:2,'    ',D[i,3]:0:2);
readkey
end.
