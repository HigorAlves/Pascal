Program MesDoAno ; //Informa o m�s do ano para usuario sendo que ele apenas precisa inserir o numero correspondente ao m�s.
var n1 : integer ;
Begin
    write('Inform um N�mero do m�s (de 1 a 12): ');
    readln(n1);
    writeln('');
    	if n1 = 1 then
    	write('O m�s informado � Janeiro')
    		else
    			if n1 = 2 then
    			write('O m�s informado � Fevereiro')
    				else
    					if n1 = 3 then
    					write('O m�s informado � Mar�o')
    						else
    							if n1 = 4 then
    							write('O m�s informado � Abril')
    								else
    									if n1 = 5 then
    									write('O m�s informado � Maio')
    										else
    											if n1 = 6 then
    											write('O m�s informado � Junho')
    												else
    													if n1 = 7 then
    													write('O m�s informado � Julho')
    														else
    															if n1 = 8 then
    															write('O m�s informado � Agosto')
    																else
    																	if n1 = 9 then
    																	write('O m�s informado � Setembro')
    																		else
    																			if n1 = 10 then
    																			write('O m�s informado � Outubro')
    																				else
    																					if n1 = 11 then
    																					write('O m�s informado � Novembro')
    																						else
    																							if n1 = 12 then
    																							write('O m�s informado � Dezembro')
    																								else
    																									write('M�s invalido');
    readkey  //Para n�o fechar o programa apos exibir o resultado
End.