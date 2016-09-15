Program DescontoNaCompra ;
	var desconto,produto : real; 
	    desc : integer;
Begin
		writeln('TODO PRODUTO COM VALOR MAIOR QUE 3 TERA 10% DE DESCONTO');
		writeln('Iremos calcular o valor de desconto em um produto, por favor:');
    write('Insira o valor do produto: ');
    readln(produto);
    writeln('');	//apenas para estetica do programa, faz uma linha em branca 
    	if produto > 3 then  //if usado para avaliar se o valor do produto é maior que 3
    	    begin
						desconto:=produto-((produto*10)/100);
						write('O valor do produto com desconto de 10 porcento será de: ',desconto:2:0);
					end
						else  //caso seja menor que trez então caira no case
						if produto <= 3 then
          begin
    writeln('Insira uma das opções de desconto:');
    writeln('1 para 3%');
    writeln('2 para 4,5%');
    writeln('3 para 8%');
    write('agora por favor; Insira uma das opções: ');    
    read(desc);
    	       
    	case desc of
				 
    		1 : begin
						  desconto:=produto-((3*produto)/100);
						  write('O valor do produto com desconto de 3 porcento será de: ',desconto:2:0);
						  end;
    		2 : begin
							desconto:=produto-((produto*4.5)/100);
							write('O valor do produto com desconto de 4,5 porcento será de: ',desconto:2:0);
						  end;
    		3 : begin
							desconto:=produto-((produto*8)/100); 		
							write('O valor do produto com desconto de 8 porcento será de: ',desconto:2:0);
						  end  
						  	  
    	end;
		end;
		writeln('');
		write('Aperte qualquer tecla para sair');
	readkey	
End.