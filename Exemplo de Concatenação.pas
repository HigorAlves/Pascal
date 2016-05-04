Program ConcatenacaoExemplo ;
var primeiroNome,nomeMeio,ultimoNome,nomeCompleto : string;
Begin
	Write('Insira o primeiro nome: ');
	readln(primeiroNome);
	Write('Insira o segundo nome: ');
	readln(nomeMeio);
	write('Insira o ultimo nome: ');
	readln(ultimoNome);
	textcolor(lightred);
	nomeCompleto:=primeiroNome+' '+nomeMeio+' '+ultimoNome; //Forma de concatenação
	writeln('Primeira forma de montar o nome: ',nomeCompleto);
	nomeCompleto:=nomemeio+' '+' '+ultimonome+primeiroNome;
	writeln('Segunda forma forma de montar o nome: ',nomeCompleto); 
	nomeCompleto:=ultimoNome+' '+nomeMeio+' '+primeiroNome;
	writeln('Terceira forma de montar o nome: ',nomeCompleto);
	nomeCompleto:=nomeMeio+' '+primeiroNome+' '+ultimoNome;
	writeln('Quarta forma de montar o nome: ',nomeCompleto);
	nomeCompleto:=ultimoNome+' '+primeiroNome+' '+nomemeio;
	writeln('Quinta forma de montar o nome: ',nomeCompleto);
	nomeCompleto:=primeiroNome+' '+ultimoNome+' '+nomeMeio;
	writeln('Sexta forma de montar o nome: ',nomeCompleto); 
End.