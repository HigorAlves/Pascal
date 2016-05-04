program AgendaMedica;
uses crt;
type
	pacientes = record
	 	nome,endereco,datanascimento,Telefone:string;
	 	qtdAtendimento:integer;
	 	sexo:char;
	end;
	Tatendimento=record
	 NomeMedico,DataAtendimento,TipoAtendimento,horaAtendimento:string;
	end;
var paciente:array[1..10] of pacientes;
	 Atendimento:array[1..10,1..5] of Tatendimento;
	 flag:char;
	 opcao,i,j,codigo,CodPesquisa: integer;
	//Procedures
Procedure ListarAtendimentos;
Begin
	clrscr;
	Gotoxy(30,1);
	textcolor(lightgreen);
	write('Listagem de Atendimentos');
	textcolor(7);
	gotoxy(25,3);
	write('Insira o Codigo do paciente: ');
	readln(CodPesquisa);
	if Paciente[CodPesquisa].Nome=' ' then
	Begin
		Gotoxy(20,5);
		textcolor(lightred);
		Write('Nenhum Paciente cadastrado com Este codigo!');
		textcolor(7);
	End
	Else
	Begin
		if  atendimento[codpesquisa,1].NomeMedico <> ' ' then //se tiver um cadastro na primeira posição quer dizer q tem q imprimir no minimo uma vez
			for j:=1 to 5 do
			Begin
				if atendimento[codpesquisa,j].NomeMedico <> ' ' then	//para verificar nas outras posiçoes da matriz
				begin
					writeln('Nome do paciente: ',paciente[codpesquisa].nome);
					writeln('Nome do Medico: ',atendimento[codpesquisa,j].NomeMedico);
					writeln('Data Atendimento: ',atendimento[codpesquisa,j].DataAtendimento);
					writeln('Hora Atendimento: ',atendimento[codpesquisa,j].HoraAtendimento);
					writeln('Tipo atendimento: ',atendimento[codpesquisa,j].TipoAtendimento);
					writeln();
				end;
			End
		else
		Begin
			Gotoxy(20,7);
			textcolor(lightred);
			write('Não foi cadastrado Nenhum atendimento para este paciente!');
			textcolor(7);
		End;
	End;
	readkey;
End;
Procedure CadastroAtendimento;
Begin
	repeat
		clrscr;
		Gotoxy(30,1);
		textcolor(lightgreen);
		write('Cadastro Atendimento');
		textcolor(7);
		gotoxy(25,3);
		write('Insira o Codigo do Paciente: ');
		readln(codpesquisa);
		if Paciente[CodPesquisa].Nome=' ' then
		Begin
			Gotoxy(20,5);
			textcolor(lightred);
			Write('Nenhum Paciente cadastrado com Este codigo!');
			textcolor(7);
		End
		Else
		Begin
			if paciente[CodPesquisa].qtdAtendimento > 5 then
			Begin
				Gotoxy(25,4);
				textcolor(lightred);
				write('O Paciente ja excedeu a quatidade de atendimentos!');
				textcolor(7);
			End
			Else
			Begin
				j:=paciente[codpesquisa].qtdatendimento;
				gotoxy(20,4);
				write('Insira o nome do Medico: ');
				readln(Atendimento[codpesquisa,j].NomeMedico);
				gotoxy(20,5);
				write('Insira a data do Atendimento: ');
				readln(Atendimento[codpesquisa,j].DataAtendimento);
				gotoxy(20,6);
				write('Insira a Hora do Atendimento');
				readln(Atendimento[codpesquisa,j].HoraAtendimento);
				repeat
					gotoxy(20,7);
					write('Insira o Tipo de Atendimento: [Consulta|Retorno|Exame] ');
					readln(Atendimento[codpesquisa,j].TipoAtendimento);
				until (upcase(Atendimento[codpesquisa,j].TipoAtendimento)='CONSULTA') or (upcase(Atendimento[codpesquisa,j].TipoAtendimento)='RETORNO') or (upcase(Atendimento[codpesquisa,j].TipoAtendimento)='EXAME');
				paciente[CodPesquisa].qtdAtendimento:=1+paciente[CodPesquisa].qtdAtendimento;
			End;
		End;
		Gotoxy(20,14);
		write('Deseja continuar inserindo Atendimentos? [S/N]');
		read(flag);
	Until upcase(flag)='N';
End;
Procedure ListaPacientes;
Begin
	Repeat
		clrscr;
		Gotoxy(30,1);
		textcolor(lightgreen);
		write('Listar Pacientes');
		textcolor(7);
		if Paciente[1].nome=' ' then
		Begin
			Gotoxy(20,5);
			textcolor(lightred);
			Write('Não ha nenhum Paciente Cadastrado');
			textcolor(7);
		End
		Else
		Begin
		Gotoxy(1,3);
		 for i:=1 to 10 do
		 Begin
		 	If paciente[i].nome<>' ' then
		 	Begin
		 		Writeln(i,'º Paciente nome: ',paciente[i].nome);
		 		Writeln(i,'º Paciente Endereço: ',paciente[i].Endereco);
		 		Writeln(i,'º Paciente Data Nascimento: ',paciente[i].DataNascimento);
		 		Writeln(i,'º Paciente Telefone: ',paciente[i].Telefone);
		 		Writeln(i,'º Paciente Sexo: ',paciente[i].sexo);
		 		writeln();
		 	End;
		 End;
		End;
		Gotoxy(20,14);
		write('Deseja continuar inserindo Pacientes? [S/N]');
		read(flag);
	Until upcase(flag)='N';
End;
Procedure ConsultarDados;
Begin
	Repeat
		clrscr;
		Gotoxy(30,1);
		Textcolor(lightgreen);
		write('Consultar Paciente');
		textcolor(7);
		gotoxy(25,3);
		write('Insira o Codigo do paciente: ');
		readln(CodPesquisa);
		if Paciente[CodPesquisa].Nome=' ' then
		Begin
			Gotoxy(20,5);
			textcolor(lightred);
			Write('Nenhum Paciente cadastrado com Este codigo!');
			textcolor(7);
		End
		Else
		Begin
			Gotoxy(25,4);
			Write('Codigo do Cliente: ',CodPesquisa);
			with Paciente[CodPesquisa] do
			Begin
				Gotoxy(25,5);
				Write('Nome do Paciente: ',nome);
				Gotoxy(25,6);
				Write('Endereço: ',endereco);
				gotoxy(25,7);
				Write('Data de Nascimento: ',Datanascimento);
				Gotoxy(25,8);
				Write('Telefone: ',telefone);
				Gotoxy(25,9);
				Write('Sexo:  ',sexo);
			End;		
		End;
		Gotoxy(20,12);
		write('Deseja continuar Consultando? [S/N]');
		read(flag);
	Until upcase(flag)='N';
End;
Procedure AlterarDadosPaciente;
Begin
	Repeat
		clrscr;
		gotoxy(30,1);
		textcolor(lightgreen);
		write('2 Alterar Dados do Paciente');
		textcolor(7);
		gotoxy(25,3);
		Write('Insira o Codigo do Paciente: ');
		readln(CodPesquisa);
		if Paciente[CodPesquisa].Nome=' ' then
		Begin
			Gotoxy(20,5);
			textcolor(lightred);
			Write('Nenhum Paciente cadastrado com Este codigo!');
			textcolor(7);
		End
		Else
		Begin
			Gotoxy(25,4);
			Write('Insira os Novos Dados Abaixo:');
			Gotoxy(25,5);
			Write('Codigo do Cliente: ',CodPesquisa);
			with Paciente[CodPesquisa] do
			Begin
				Gotoxy(25,6);
				Write('Insira o nome do Cliente: ');
				Readln(nome);
				Gotoxy(25,7);
				Write('Insira o Endereço: ');
				readln(endereco);
				gotoxy(25,8);
				Write('Insira a Data de Nascimento: ',Datanascimento);
				Gotoxy(25,9);
				Write('Insira o telefone: ');
				Readln(telefone);
				Gotoxy(25,10);
				repeat
					Write('Insira o Sexo: [F|M] ');
					Readln(sexo);
				until (upcase(sexo) = 'F') or (upcase(sexo) = 'M');
			End;	
		End;
		Gotoxy(20,12);
		write('Deseja continuar Alterando dados? [S/N]');
		read(flag);
	Until upcase(flag)='N';
End;
Procedure CadastroPaciente;
Begin
	repeat //continuar fazendo cadastro de paciente ate a flag de saida ser 'N'
		clrscr;
		gotoxy(30,1);
		textcolor(lightgreen);
		write('Cadastro de Paciente');
		textcolor(7);
		Gotoxy(25,3);
		Write('Codigo do Cliente: ',Codigo);
		with Paciente[codigo] do
		Begin
			Gotoxy(25,4);
			readln(nome);
			Write('Insira o nome do Cliente: ');
			Readln(nome);
			Gotoxy(25,5);
			Write('Insira o Endereço: ');
			readln(endereco);
			gotoxy(25,6);
			Write('Insira a Data de Nascimento: ');
			Readln(datanascimento);
			Gotoxy(25,7);
			Write('Insira o telefone: ');
			Readln(telefone);
			repeat
				Gotoxy(25,8);
				Write('Insira o Sexo: [F|M] ');
				Readln(sexo);
			until (upcase(sexo) = 'F') or (upcase(sexo) = 'M');
		End;
		Gotoxy(20,10);
		write('Deseja continuar inserindo Pacientes? [S/N]');
		read(flag);
		Codigo:=Codigo+1;
	until upcase(flag) = 'N';
End;
//Programa Principal
Begin
	opcao:=0;
	codigo:=1;
	for i:=1 to 10 do
		for j:=1 to 5 do
			Atendimento[i,j].NomeMedico:=' ';
	for i:=1 to 10 do
	Begin
		paciente[i].nome:=' ';
		paciente[i].qtdAtendimento:=1;
	End;
	while (opcao<>7) do
	begin
		clrscr;
		gotoxy(30,1);
		textcolor(lightgreen);
		write('Agenda Medica');
		textcolor(7); //voltar a cor padrão
		gotoxy(25,3);
		write('1 Cadastro de Paciente');//feito
		gotoxy(25,4);
		write('2 Alterar Dados do Paciente');//feito
		gotoxy(25,5);
		write('3 Consultar');//feito
		gotoxy(25,6);
		write('4 Listar Pacientes');//feito
		gotoxy(25,7);
		write('5 Cadastro de Atendimentos');//feito
		gotoxy(25,8);
		write('6 Listagem de Atendimentos');//listar todos os atendimentos de um paciente escollhido
		gotoxy(25,9);
		write('7 Sair');
		gotoxy(30,11);
		write('Opcao: ');
		read(opcao);
		case opcao of
			1:	begin //cadastro de paciente
					CadastroPaciente;
			  	end;
			2:	begin
					AlterarDadosPaciente;
		  		end;
			3:	begin
					ConsultarDados;
		  		end;
			4:	begin
					ListaPacientes;
		  		end;
			5:	begin
					CadastroAtendimento;
		  		end;
			6:	begin
					ListarAtendimentos;
		  		end;
			7:	begin
		  		end;
			else
			begin
				textcolor(lightred);
				gotoxy(30,12);
				write('Opcao invalida');
				textcolor(7);
				readkey;
			end;
		end;//end do case
	end;//end do while
	readkey;
End.
