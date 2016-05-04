Program MediadeidadesIndeterminadas ;
var idade, contador, media, flag : integer;
Begin
	idade := 0;
	contador := 0;
	media := 0;
	flag := 0;
	textcolor(lightred); //para destacar o texto abaixo
	writeln('Para sair do Programa digite -1, para continuar digite 0');
	writeln; // saltar uma linha
	textcolor(lightgreen); //voltar a cor padrão do pascalzim
		while (flag <> -1) do
			begin
				write('Insira uma idade: ');
				read(idade);
				write('Deseja sair do programa? ');
				read(flag);
				if idade <> 0 then
					begin
						contador := contador +1; //toda vez que inserir algo sera somado mais um no valor ja existente
						media := media + idade;  // media + idade para depois ser dividida pelo valor do contador
					end;
				if flag = -1 then
					begin
						media:=media-idade;
						contador:=contador-1;
					end;
				writeln;		
		end;
		if contador > 0 then
			begin
				writeln('O número de idades lidas foi de: ',contador);
				writeln('A media de idades foi de: ', media / contador);
			end
			else
				write('Não foi inserida nenhuma idade....');
		
end.