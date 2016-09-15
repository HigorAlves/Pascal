program nome ;
//cubo,raiz,sair
uses crt;
var n1,n2,resultado : real;
    flag : char;

begin
     textcolor(lightred);
     gotoxy(32,1);
     writeln('Calculadora');
                 //Menu
     textcolor(lightgreen);
     gotoxy(25,3);
      writeln('Insira uma opcao');
     gotoxy(25,5);
      writeln('1 - Soma');
     gotoxy(25,6);
      writeln('2 - Subtracao');
     gotoxy(25,7);
      writeln('3 - Multiplicao');
     gotoxy(25,8);
      writeln('4 - Divisao');
     gotoxy(25,9);
      writeln('5 - Percentual');
     gotoxy(25,10);
      writeln('6 - Quadrado');
     gotoxy(25,11);
      writeln('7 - Cubo');
     gotoxy(25,12);
      writeln('8 - Raiz Quadrada');
     gotoxy(25,13);
      writeln('9 - Sair');
     gotoxy(23,15);
      write('Opcao: ');
     flag:=readkey;
     clrscr;
     case flag of
          '1': begin
                 textcolor(lightred);
                 gotoxy(30,1);
                 write('Opcao: Soma');
                 textcolor(lightgreen);
                 gotoxy(25,4);
                 write('Insira um numero: ');
                 read(n1);
                 gotoxy(25,5);
                 write('Insira o segundo numero: ');
                 read(n2);
                 resultado:=n1+n2;
             end;
           '2': begin
                  textcolor(lightred);
                  gotoxy(30,1);
                  write('Opcao: Subtracao');
                  textcolor(lightgreen);
                  gotoxy(25,4);
                  write('Insira um numero: ');
                  read(n1);
                  gotoxy(25,5);
                  write('Insira o segundo numero: ');
                  read(n2);
                  resultado:=n1-n2;
                end;
           '3': begin
                  textcolor(lightred);
                  gotoxy(30,1);
                  write('Opcao: Multiplicacao');
                  textcolor(lightgreen);
                  gotoxy(25,4);
                  write('Insira um numero: ');
                  read(n1);
                  gotoxy(25,5);
                  write('Insira o segundo numero: ');
                  read(n2);
                  resultado:=n1*n2;
                  end;
            '4': begin
                   textcolor(lightred);
                   gotoxy(30,1);
                   write('Opcao: Divisao');
                   textcolor(lightgreen);
                   gotoxy(25,4);
                   write('Insira um numero: ');
                   read(n1);
                   gotoxy(25,5);
                   write('Insira o segundo numero: ');
                   read(n2);
                   resultado:=n1/n2;
                  end;
            '5': begin
                   textcolor(lightred);
                   gotoxy(30,1);
                   write('Opcao: Percentual');
                   textcolor(lightgreen);
                   gotoxy(25,4);
                   write('Insira um numero: ');
                   read(n1);
                   gotoxy(25,5);
                   write('Insira o segundo numero: ');
                   read(n2);
                   resultado:=n1/100*n2;
                 end;
             '6': begin
                    textcolor(lightred);
                    gotoxy(30,1);
                    write('Opcao: Quadrado');
                    textcolor(lightgreen);
                    gotoxy(25,4);
                    write('Insira um numero: ');
                    read(n1);
                    resultado:=sqr(n1);
                  end;
             '7': begin
                    textcolor(lightred);
                    gotoxy(30,1);
                    write('Opcao: Cubo');
                    textcolor(lightgreen);
                    gotoxy(25,4);
                    write('Insira um numero: ');
                    read(n1);
                    resultado:=n1*n1*n1;
                  end;
     end;
     gotoxy(25,7);
     write('O resultado foi: ', resultado:0:2);
readkey;
end.
