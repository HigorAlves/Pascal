program CadastroAluno;
uses crt;
var aluno:array[1..5] of string;
    nota:array[1..5,1..3] of real;
    media,somanotas: array [1..5] of real;
    opcao,i,j,cont:integer ;
    nome:string;
    achoualuno,temaluno: boolean;
begin
   temaluno:=false;
   aluno[1]:='@';
   achoualuno:=false;
   opcao:=1;
   while opcao <> 4 do
      begin
         clrscr;
         textcolor(lightgreen);
         gotoxy(30,1);
         write('Cadastro de Aluno');
         textcolor(7); //cor padrão do dev-pascal
         gotoxy(28,3);
         write('1- Cadastro de Alunos');
         gotoxy(28,4);
         write('2- Cadastro de Notas');
         gotoxy(28,5);
         write('3- Consulta da situacao');
         gotoxy(28,6);
         write('4- Sair');
         gotoxy(28,8);
         write('Opcao: ');
         readln(opcao);
         while (opcao < 1) or (opcao>4) do
            begin
               clreol;
               gotoxy(28,9);
               textcolor(lightred);
               write('OPCAO INVALIDA');
               textcolor(7);
               gotoxy(35,8);
               read(opcao);
            end;
         case opcao of
            1: begin
                  clrscr;
                  textcolor(lightgreen);
                  gotoxy(30,1);
                  write('Cadastro de Aluno');
                  textcolor(7); //cor padrão do dev-pascal
                  gotoxy(27,3);
                  for i:=1 to 5 do
                     begin
                        write('Insira o nome do aluno: ');
                        readln(aluno[i]);
                     end;
               end;
            2: begin
                  clrscr;
                  gotoxy(30,1);
                  textcolor(lightgreen);
                  write('Cadastro de notas');
                  if (aluno[1] = '@') then
                     begin
                        gotoxy(22,4);
                        textcolor(lightred);
                        write('Nao foi inserido nenhum aluno no cadastro');
                     end
                  else
                     begin
                        textcolor(7);
                        gotoxy(27,3);
                        write('Insira o nome do aluno: ');
                        readln(nome);
                        for i:=1 to 5 do
                           begin
                              if (nome = aluno[i]) then
                                 begin
                                    achoualuno:=true;
                                    cont:=i;  //se achar o nome do aluno o contador armazena a linha que esta o aluno
                                 end;
                           end;
                        if (achoualuno=true) then
                           begin
                              for j:=1 to 3 do
                                 begin
                                    write('Insira o valor da nota: ');
                                    readln(nota[cont,j]);
                                    somanotas[cont]:=nota[cont,j]+somanotas[cont];
                                 end;
                              media[cont]:=somanotas[cont]/3;
                           end
                        else
                           write('Aluno nao encontrado');
                  end;
                  readkey;
               end;
            3: begin
                  clrscr;
                  textcolor(lightgreen);
                  gotoxy(30,1);
                  write('Consulta da situacao');
                  textcolor(7); //cor padrão do dev-pascal
                  gotoxy(27,3);
                  write('Digite o nome do aluno: ');
                  readln(nome);
                  for i:=1 to 5 do
                     begin
                        if (nome = aluno[i]) then
                           begin
                              temaluno:=true;
                              cont:=i;
                           end;
                     end;
                  if temaluno = true then
                     begin
                        if (nota[cont,1] <= 0) then
                           begin
                              gotoxy(10,4);
                              textcolor(lightred);
                              Write('Nao ha nenhuma nota cadastrada neste aluno');
                           end
                        else
                           begin
                              gotoxy(10,4);
                              write('O aluno tem as seguintes notas: ');
                              for i:=1 to 3 do
                                 write(nota[cont,i]:0:2,'  ');
                              if (media[cont]>=60) then
                                 begin
                                    textcolor(lightgreen);
                                    write('Aluno Aprovado');
                                 end
                              else
                                 begin
                                    textcolor(lightred);
                                    write('Aluno Reprovado');
                                 end;
                           end;
                     end;
                  readkey;
               end;
         end;
      end;
end.
