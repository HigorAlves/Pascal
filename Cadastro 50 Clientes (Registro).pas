program CadastroCliente;
uses crt;
type Rcliente = record
	Nome:string;
	Endereco:record
		Rua:string;
		Numero:String;
		Bairro:string;
		Cidade:string;
		CEP:string;
	end;
	DataNascimento:string;
	Sexo:char;
	Telefone:string;
end;
var	cliente:array [1..50] of Rcliente;
		flag:char;
		i,cont:integer;
BEGIN
	i:=1;
	cont:=0;
	repeat
		write('Nome: ');
		readln(cliente[i].nome);
		write('Rua: ');
		readln(cliente[i].endereco.rua);
		write('Numero: ');
		readln(cliente[i].endereco.numero);
		write('Bairro: ');
		readln(cliente[i].endereco.bairro);
		write('Cidade: ');
		readln(cliente[i].endereco.cidade);
		write('CEP: ');
		readln(cliente[i].endereco.cep);
		repeat
		write('Sexo: ');
		cliente[i].sexo:= readkey;
		until (Upcase(cliente[i].sexo) = 'M') or (upcase(cliente[i].sexo) = 'F');
		write('Data Nascimento: ');
		readln(cliente[i].DataNascimento);
		write('Telefone: ');
		readln(cliente[i].telefone);
		write('Deseja Continuar cadastrando clientes? [S/N]');
		readln(flag);
		i:=i+1;
		cont:=cont+1;
		clrscr;
	until upcase(flag) = 'N';
	for i:=1 to cont do
	begin
		writeln('Nome: ',cliente[i].nome);
		writeln('Rua: ',cliente[i].endereco.rua);
		writeln('Número: ',cliente[i].endereco.numero);
		writeln('Bairro: ',cliente[i].endereco.bairro);
		writeln('Cidade: ',cliente[i].endereco.cidade);
		writeln('CEP: ',cliente[i].endereco.cep);
		writeln('Data nascimento: ',cliente[i].DataNascimento);
		writeln('Telefone: ',cliente[i].telefone);
		write('******************************************************************');
	end;	
END.
