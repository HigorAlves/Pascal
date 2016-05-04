Program MesDoAno ; //Informa o mês do ano para usuario sendo que ele apenas precisa inserir o numero correspondente ao mês.
var n1 : integer ;
Begin
    write('Inform um Número do mês (de 1 a 12): ');
    readln(n1);
    writeln('');
    	if n1 = 1 then
    	write('O mês informado é Janeiro')
    		else
    			if n1 = 2 then
    			write('O mês informado é Fevereiro')
    				else
    					if n1 = 3 then
    					write('O mês informado é Março')
    						else
    							if n1 = 4 then
    							write('O mês informado é Abril')
    								else
    									if n1 = 5 then
    									write('O mês informado é Maio')
    										else
    											if n1 = 6 then
    											write('O mês informado é Junho')
    												else
    													if n1 = 7 then
    													write('O mês informado é Julho')
    														else
    															if n1 = 8 then
    															write('O mês informado é Agosto')
    																else
    																	if n1 = 9 then
    																	write('O mês informado é Setembro')
    																		else
    																			if n1 = 10 then
    																			write('O mês informado é Outubro')
    																				else
    																					if n1 = 11 then
    																					write('O mês informado é Novembro')
    																						else
    																							if n1 = 12 then
    																							write('O mês informado é Dezembro')
    																								else
    																									write('Mês invalido');
    readkey  //Para não fechar o programa apos exibir o resultado
End.