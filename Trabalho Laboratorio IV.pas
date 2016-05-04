Program AgenciaTuristica;
Uses Crt;
var	Opcao :Integer;
Begin
	While (Opcao <> 8) do
	Begin
		Textcolor(7);
		Clrscr;
		Gotoxy(25,1);
		Textcolor(lightgreen);
		Write('Agencia Turistica');
		Textcolor(7);
		Gotoxy(25,3);
		Write('1 Cadastrar Cliente');
		Gotoxy(25,4);
		Write('2 Cadastrar Viagem');
		Gotoxy(25,5);
		Write('3 Alterar Empresa Area');
		Gotoxy(25,6);
		Write('4 Alterar Data de Embarque');
		Gotoxy(25,7);
		Write('5 Relatorio Nome dos Clientes Por Data');
		Gotoxy(25,8);
		Write('6 Pesquisa Cliente por CPF');
		Gotoxy(25,8);
		Write('7 Relatorio de Viagens');
		Gotoxy(25,9);
		Write('8 Sair');
		Gotoxy(35,10);
		Write('Opção: ');
		readln(opcao);
		Case Opcao of
			1:	Begin
				End;
			2: Begin
				End;
			3: Begin
				End;
			4: Begin
				End;
			5: Begin
				End;
			6: Begin
				End;
			7: Begin
				End;
			8: Begin
				End;
			else
			Begin
				Textcolor(lightred);
				Gotoxy(30,11);
				Write('Opção Invalida!');
				readkey;
			End;			
		End;
	End;
End.
