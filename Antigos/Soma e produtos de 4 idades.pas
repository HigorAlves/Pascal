Program SomadeIdades ;
var idh1,idh2,idm1,idm2,idhmaior,idhmenor,idmaior,idmenor : integer;
Begin
    write('Informe a idade do primeiro homem: ');
    readln (idh1);
    writeln('');	//Apenas para estetica do programa
    write('Informe a idade do segundo homem: ');
    readln(idh2);
    writeln('');	//Apenas para estetica do programa
    write('Informe a idade da primeira mulher: ');
    readln(idm1);
    writeln('');	//Apenas para estetica do programa
    write('Informe a idade da segunda mulher: ');
    readln(idm2);
    	if (idh1 > idh2) then
    		begin 
    		idhmaior := idh1;
    		idhmenor := idh2;
    		end
    			else
    				begin
    				idhmaior := idh2;
    				idhmenor := idh1;
    				end;
    		if (idm1 > idm2) then
					begin
					idmaior := idm1;
					idmenor := idm2;
					end	
						else
							begin
							idmaior := idm2;
							idmenor := idm1;
							end;
			writeln('');	//Apenas para estetica do programa
			write('A idade do homem mais velho com a mulher mais nova é ',idhmaior+idmenor,' ano(s)');	
			writeln('');	//Apenas para estetica do programa
			write('O produto das idades do homem mais novo com a mulher mais velha é de ',idhmenor*idmaior,' ano(s)');
	readkey
End.