program MaterialDeConstrucao;
uses crt;
var   vendedor,comissao,salario:array[1..7] of real;
      indice,opcao: integer;
      venda,totalvendas:real;
begin
   opcao:=0;
   totalvendas:=0;
   venda:=0;
   while opcao <> 6 do
      begin
         indice:=0;
         clrscr;
         gotoxy(19,1);  //inicio menu
         textcolor(lightgreen); //estetica do programa
         write('Programa Vendas de Material para Construcao');
         textcolor(7);  //cor padrão do dev
         gotoxy(25,3);
         write('1-Inserir Valor de Venda');
         gotoxy(25,4);
         write('2-Calcular comissao parcial');
         gotoxy(25,5);
         write('3-Relatorio de Valores de 1 Vendedor');
         gotoxy(25,6);
         write('4-Relatorio de Valores de todos os Vendedores');
         gotoxy(25,7);
         write('5-Fechamento do dia');
         gotoxy(25,8);
         write('6-Sair do Programa');
         gotoxy(25,10);
         write('Insira uma Opcao: ');
         readln(opcao);    //fim menu
         while (opcao <1) or (opcao >6) do //caso a opção nao seja um das pre-estabelecidas
               begin
                    gotoxy(25,11);
                    textcolor(lightred); //destaque na opçao invalida
                    write('Opcao Invalida');
                    textcolor(7); //cor padrao do dev
                    gotoxy(25,10);
                    write('Insira uma opcao: ');
                    clreol;
                    gotoxy(43,10);
                    read(opcao);
               end;
         clrscr; //apos escolher a opção a tela é limpa para aparecer o menu da opção
         gotoxy(19,1);
         textcolor(lightgreen);
         write('Programa Vendas de Material para Construcao');
         textcolor(7);
         case opcao of
            1: begin    //faz todos os calculos nessesarios dentro do programa alem de receber o valor das vendas, mas somente mostra o valor da venda adicionada para cada vendedor
                    gotoxy(25,3);
                    textcolor(lightgreen);
                    write('Inserir o valor da Venda');
                    textcolor(7);
                    gotoxy(23,5);
                    write('Insira o numero do vendedor: ');
                    readln(indice); //indice do vendedor
                    gotoxy(25,6);
                    write('Insira o Valor da Venda: ');
                    readln(venda);
                    vendedor[indice]:=venda+vendedor[indice];//valor das vendas do vendedor
                    if (vendedor[indice]>500) then // calculo comissao do vendedor
                        comissao[indice]:=vendedor[indice]*1.5/100
                    else
                        comissao[indice]:=vendedor[indice]*1/100;  //fim do calculo de comissao
                    if (comissao[indice]>100) then  //calculo salario do vendedor
                        salario[indice]:=300+comissao[indice]
                    else
                        salario[indice]:=150+comissao[indice]; //fim calculo salario
                    gotoxy(10,7);
                    write('Foi adicionado R$',venda:0:2,' e agora ele esta com a quantia de R$',vendedor[indice]:0:2); //mensagem somente das vendas do vendedor
                    readkey;
                 end;
            2: begin    //mostra a comissao do vendedor os calculos ja foram feitos assim economizando linhas
                  gotoxy(27,3);
                  textcolor(lightgreen);
                  write('Calcular Comissao parcial');
                  textcolor(7);
                  gotoxy(33,5);
                  write('Qual vendedor? ');
                  readln(indice);
                  gotoxy(23,6);
                  write('A comissao do Vendedor ',indice,' foi de ',comissao[indice]:0:2);
                  readkey;
               end;
            3: begin    //relatorio da comissao, vendas e salario de um vendedor escolhido
                  gotoxy(25,3);
                  textcolor(lightgreen);
                  write('Relatorio de Valores de um Vendedor');
                  textcolor(7);
                  gotoxy(25,5);
                  write('Insira o numero do Vendedor: ');
                  readln(indice);
                  gotoxy(1,6);
                  write('O vendedor ',indice,' vendeu R$',vendedor[indice]:0:2,', tem uma comissao de R$',comissao[indice]:0:2,' e um salario de R$',salario[indice]:0:2);
                  readkey;
               end;
            4: begin    //relatorio da comissao, vendas e salario de todos os vendedores
                  gotoxy(19,3);
                  textcolor(lightgreen);
                  write('Relatorio de Valores de todos os Vendedores');
                  textcolor(7);
                  gotoxy(1,6);
                  for indice:=1 to 7 do
                     writeln('O vendedor ',indice,' vendeu R$',vendedor[indice]:0:2,', tem uma comissao de R$',comissao[indice]:0:2,' e um salario de R$',salario[indice]:0:2);
                  readkey;
               end;
            5: begin    //fechamento do dia soma de todas as vendas
                  gotoxy(30,3);
                  textcolor(lightgreen);
                  write('Fechamento do dia');
                  textcolor(7);
                  for indice:=1 to 7 do   //calculando a venda de todos os vendedores
                     totalvendas:=vendedor[indice]+totalvendas;
                  gotoxy(20,5);
                  write('O total de vendas hoje foi de R$',totalvendas:0:2);
                  readkey;
               end;
        end;
      end;
end.
