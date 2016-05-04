//ValarMorghulis
program Estacionamento;
uses crt;
var opcao,carro,vaga,hora,i,j,horaSaida,cont: integer;
	 VagaHora:array[1..20,7..19] of integer;
	 CadastroCliente: array[1..30] of string;
	 HoraCarro:array[1..20] of integer;
	 flag:char;
	 TemVaga,carroVaga:boolean;
	 TempoEstadia,valorFinal:real;
Begin
	TemVaga:=true;
	opcao:=0;
	for i:=1 to 20 do
		Horacarro[i]:=0;
	for i:=1 to 20 do
		for j:=7 to 19 do
			VagaHora[i,j]:= 0;
	for carro:=1 to 30 do
		CadastroCliente[carro]:= ' ';
	Carro:=0;
	while opcao <> 8 do
	begin
		TempoEstadia:=0;
		ValorFinal:=0;
		vaga:=0;
		hora:=0;
		horasaida:=0;
		clrscr;
		gotoxy(25,1);
		textcolor(lightgreen);
		write('Programa para Estacionamento');
		textcolor(7);
		gotoxy(20,3);
		write('1 Cadastrar Carro/Cliente');
		gotoxy(20,4);
		write('2 Entrada de Carro');
		gotoxy(20,5);
		write('3 Saída de Carro');
		gotoxy(20,6);
		write('4 Relatório de Todos os Carros');
		gotoxy(20,7);
		write('5 Relatório de Vagas ocupadas');
		gotoxy(20,8);
		write('6 Relatório de valor a Receber');
		gotoxy(20,9);
		write('7 Zerar o Dia');
		gotoxy(20,10);
		write('8 Sair');
		gotoxy(30,12);
		write('Opcao: ');
		readln(opcao);
		case opcao of
			1: Begin //pronto
					repeat
						carro:=carro+1;	//Codigo do carro do cliente
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Cadastrar Carro/Cliente');
						textcolor(7);
						if carro <=30 then //controla a quantidade de clientes
						begin
							gotoxy(15,3);
							write('Insira o Nome do Cliente e a Placa da Carro: ');
							readln(CadastroCliente[carro]);
							gotoxy(25,4);
							write('O codigo do Cliente é: ',carro);
							gotoxy(15,6);
							write('Deseja Continuar cadastrando Clientes? [S/N]');
							readln(flag);
						end
						else
							begin
								gotoxy(25,6);
								textcolor(lightred);
								Write('Limite de cadastros alcançado');
								readkey;
								flag:='N'
							end;
					until upcase(flag) = 'N';
				End;//fim da um
			2:	Begin	//Entrada de Carro
					repeat
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Entrada de Carro');
						textcolor(7);
						gotoxy(20,3);
						write('Insira o codigo do Cliente: ');
						readln(carro);
						if (carro>=1) and (carro<=30) then	//verifica se o carro esta dentro dos limites de cadastro
						begin
							if CadastroCliente[carro] = ' ' then	//verifica se o cadastro esta vazia
							begin
								gotoxy(12,6);
								textcolor(lightred);
								write('Não há nenhum cliente cadastrado com este Codigo');
							end
							else	//caso a o Codigo tenha um cadastro
							begin
								repeat
									gotoxy(20,4);
									write('Insira a Vaga que deseja: ');
									readln(vaga);
									if (vaga>=1) and (vaga<=20) then
									begin
										repeat;
											gotoxy(20,5);
											write('Insira a Hora de Entrada: ');
											readln(hora);
											if (hora>=7) and (hora<=19) then
											begin
												for j:=7 to 19 do	//verifica se a vaga esta livre
													if VagaHora[vaga,j] = 0 then
														begin
														vagahora[vaga,j]:= carro;
														HoraCarro[carro]:=hora;	//adiciona o valor da hora na matriz
														end
													else
														temvaga:= false;
													if TemVaga = false then	//se não tiver vaga 
													begin
														textcolor(lightred);
														gotoxy(20,6);
														write('Esta vaga ja esta ocupada');
													end
													else
													Begin
														textcolor(lightgreen);
														gotoxy(20,6);
														write('Cliente cadastrado na Vaga!');		
													end;
											end
											else	//caso a hora não esteja certa
											begin
												gotoxy(24,6);
												textcolor(lightred);
												write('Este Horario não existe!');
												gotoxy(20,7);
												write('Tente inserir o Horario novamente');
												textcolor(7);
												readkey;
												clrscr;	//para reaparece o menu 
												gotoxy(25,1);
												textcolor(lightgreen);
												write('Entrada de Carro');
												textcolor(7);
												gotoxy(20,3);
												write('Insira o codigo do Cliente: ',carro);
												textcolor(7);
												gotoxy(20,4);
												write('Insira a Vaga que deseja: ',vaga);	
											end;//end do else da hora
										until (hora>=7) and (hora<=19);
									end	//end vaga nos limites
									else	//else caso ha vaga esteja fora dos limites
									begin
										gotoxy(24,6);
										textcolor(lightred);
										write('Esta vaga não existe!');
										gotoxy(20,7);
										write('Tente inserir a Vaga novamente');
										textcolor(7);
										readkey;
										clrscr;	//para reaparece o menu 
										gotoxy(25,1);
										textcolor(lightgreen);
										write('Entrada de Carro');
										textcolor(7);
										gotoxy(20,3);
										write('Insira o codigo do Cliente: ',carro);
									end;	//end vaga fora dos limites
								until (vaga>=1) and (vaga<=30);
							end;//else caso tenha cadastro
						end//end if carro
						else	//do if do carro
						begin
							clreol;
							textcolor(lightred);
							gotoxy(21,4);
							write('Codigo do cliente invalido!');
							gotoxy(22,5);
							write('Insira o Codigo novamente!');
							textcolor(7);	//volta a cor padrão do pascal
						end;	//end else do carro 
						readkey;
					until (carro>=1) and (carro<=30);
				END;//end da 2
			3:	Begin
					for i:=1 to 30 do
						if cadastroCliente[i] <> ' ' then
							carroVaga:=true;
					if carrovaga=false then
						begin
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Saida de Carro');
						gotoxy(20,5);
						textcolor(lightred);
						Write('Não ha nenhum carro');
						readkey;
						end
					else
					repeat
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Saida de Carro');
						textcolor(7);	
						gotoxy(20,3);
						write('Insira o codigo do cliente: ');
						readln(carro);
						if (carro>=1) and (carro<=30) then
						Begin
							if CadastroCliente[carro]=' ' then
							begin
								textcolor(lightred);
								gotoxy(15,4);
								write('Não ha nenhum cliente cadastrado com este codigo');
								readkey;
							end
							else
							repeat
								gotoxy(20,4);
								write('Insira a Hora de Saida: ');
								readln(horasaida);
								if (horaSaida>=7) and (HoraSaida<=19) then	//confere se foi inserido o horario certo
								begin
									if horacarro[carro]>=7 then
									Begin
										Tempoestadia:=horasaida-horacarro[carro];
										valorFinal:=TempoEstadia*3;
										if TempoEstadia >5 then
											ValorFinal:=valorfinal-((valorfinal*2.5)/100);
										gotoxy(15,6);
										textcolor(lightgreen);
										writeln('O valor final a ser pago é de $',valorFinal:0:2);
										for i:=1 to 20 do
											for j:=7 to 20 do
												if carro = VagaHora[i,j] then
													VagaHora[i,j]:=0;
										textcolor(7);
										readkey;
									End
									else//hora carro
									Begin
										gotoxy(15,6);
										textcolor(lightred);
										write('Cliente não teve a hora de entrada cadastrada!');
										readkey;
									end;	
								end//end da hora correta
								else
								begin
								textcolor(lightred);
								gotoxy(20,6);
								write('Horario inserido esta incorreto!');
								readkey;
								clrscr;
								gotoxy(25,1);
								textcolor(lightgreen);
								write('Saida de Carro');	
								textcolor(7);
								gotoxy(20,3);
								write('Insira o codigo do cliente: ',carro);
								gotoxy(20,4);
								write('Insira a Hora de Saida: ',horasaida);
								end;
							until (HoraSaida>=7) and (HoraSaida<=19);
						end//if do carro
						else
						begin
							textcolor(lightred);
							gotoxy(20,4);
							write('Codigo do cliente esta errado!');
							readkey;
						end;
						until (carro>=1) and (carro<=30);
				End;//end da 3	
			4: Begin
					for i:=1 to 30 do
						if cadastroCliente[i] <> ' ' then
							carroVaga:=true;
					if carrovaga=false then
						begin
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Relatorio de Todos os Carros');
						gotoxy(20,5);
						textcolor(lightred);
						Write('Não ha nenhum carro');
						readkey;
						end
					else
					begin
						j:=3;
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Relatorio de Todos os Carros');
						textcolor(7);
						for cont:=1 to 30 do
							if (CadastroCliente[cont] <> ' ') then
								Begin
									i:=20;
									j:=j+1;
									gotoxy(i,j);
									Write('Cliente: ',CadastroCliente[cont]);
								End;
					readkey;
					end;
				End; //End da 4
			5:	Begin
					for i:=1 to 30 do
						if cadastroCliente[i] <> ' ' then
							carroVaga:=true;
					if carrovaga=false then
						begin
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Relatorio de Vagas Ocupadas');
						gotoxy(20,5);
						textcolor(lightred);
						Write('Não ha nenhum carro');
						readkey;
						end
					else
					begin
						j:=3;
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Relatorio de Vagas Ocupadas');
						textcolor(7);
						for vaga:=1 to 20 do
							Begin
								if (VagaHora[vaga,7]<>0) then
								begin
									i:=20;
									j:=j+1;
									gotoxy(i,j);
									write('Vaga: ',vaga,' Codigo do Carro: ',Vagahora[vaga,7]);
								end;
							end;
						readkey;
					end;
				End;//end da 5	
			6:	Begin
					for i:=1 to 30 do
						if cadastroCliente[i] <> ' ' then
							carroVaga:=true;
					if carrovaga=false then
						begin
						clrscr;
						gotoxy(25,1);
						textcolor(lightgreen);
						write('Relatorio de Valor a Receber');
						gotoxy(20,5);
						textcolor(lightred);
						Write('Não ha nenhum carro');
						readkey;
						end
					else
					begin
					clrscr;
					gotoxy(25,1);
					textcolor(lightgreen);
					write('Relatorio de Valor a Receber');
					textcolor(7);
					gotoxy(20,3);
					write('Informe a hora: ');
					readln(horaSaida);
					if (horaSaida>=7) and (HoraSaida<=19) then	//confere se foi inserido o horario certo
						begin
							j:=3;
							for vaga:=1 to 20 do							
								if horacarro[vaga]>=7 then
									if vagaHora[vaga,7] <> 0 then
									Begin
										Tempoestadia:=horasaida-horacarro[vaga];
										valorFinal:=TempoEstadia*3;
										if TempoEstadia >5 then
											ValorFinal:=valorfinal-((valorfinal*2.5)/100);
										gotoxy(15,j);
										textcolor(lightgreen);
										writeln('O valor final da vaga: ',Vaga,' a ser pago é de $',valorFinal:0:2);
										j:=j+1;
									end;
							readkey;
						end
					else
					Begin
						gotoxy(20,4);
						textcolor(lightred);
						write('Horario informado esta incorreto!');
					end;
					end;
				End;//end da 6
			7:	Begin
					clrscr;
					gotoxy(25,1);
					textcolor(lightgreen);
					write('Zerar o Dia');
					textcolor(7);
					for i:=1 to 20 do
						Horacarro[i]:=0;
					for i:=1 to 20 do
						for j:=7 to 19 do
							VagaHora[i,j]:= 0;
					for carro:=1 to 30 do
						CadastroCliente[carro]:= ' ';
					gotoxy(20,3);
					write('Dia Zerado');
					readkey;
				End;
			8:	Begin
				End;
			else
			begin
				gotoxy(27,13);
				textcolor(lightred);
				write('Opção Invalida!');
				textcolor(7);
				readkey;
			end;
		end;//end do case
	end;//end do while
End.
