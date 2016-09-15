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
var	Cliente1,cliente2: Rcliente;
Begin
	write('Nome: ');
	readln(cliente1.nome);
	write('Rua: ');
	readln(cliente1.endereco.rua);
	write('Numero: ');
	readln(cliente1.endereco.numero);
	write('Bairro: ');
	readln(cliente1.endereco.bairro);
	write('Cidade: ');
	readln(cliente1.endereco.cidade);
	write('CEP: ');
	readln(cliente1.endereco.cep);
	repeat
	write('Data nascimento: ');
	cliente1.sexo:= readkey;
	until (Upcase(cliente1.sexo) = 'M') or (upcase(cliente1.sexo) = 'F');
	write('Telefone: ');
	readln(cliente1.telefone);
End.
