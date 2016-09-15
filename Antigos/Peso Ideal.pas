Program PesoIdeal ;
	var altura,sexo,pesoideal : real;
Begin
	 writeln('Vamos calcular qual seria o peso ideal para sua altura');
	 write('Informe a sua altura: ');
   read(altura);
   writeln('');  //Apenas para estetica no programa (salta uma linha)
   write('Informe o Sexo (1 para sexo masculo 2 para feminino): ');
   read(sexo);
   writeln(''); //Apenas para estetica no programa (salta uma linha)
	 //Começa os testes do sexos, para fazer os calculos
	  if sexo = 1 then
	  begin
	  pesoideal := (72.7 * altura) -58;
	  write('O peso ideal para o Sexo masculino com essa altura é: ', pesoideal:2:0);
	  end
	  	else
	  		if sexo = 2 then
	  		begin
	  		pesoideal := (62.1*altura) -44.7; 
	  		write('O peso ideal para o Sexo feminino com essa altura é: ',pesoideal:2:0)
	  		end
	  			else
	  				write('ERROR, Número do sexo inserido inserido é invalido');
	  writeln('');				
	  write('Aperte qualquer tecla para sair');
	  
	readkey // Para o programa fechar somente depois de apertar uma tecla no teclado
End.