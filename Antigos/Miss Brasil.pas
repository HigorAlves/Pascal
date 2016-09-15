{os organizadores do concurso de beleza  Miss Brasil, o contrataram para criar um programa para controlar o cadastro das candidatas. O programa deve permitir
informar o codigo,nome completo, idade, estado,altura e peso das candidatas. Ao termino do cadastro mostre o nome e estado da candidata mais nova, mais velha,
mais alta, mais baixa, mais magra e mais "fofinha"}
Program MissBrasil;
uses Crt;
Type TModelo= Record
	Codigo,Idade:integer;
	Nome,Estado:String;
	Altura,Peso: real;
End;
Var	Modelo:array[1..27] of TModelo;
		i,IdadeMaisNova,IdadeMaisVelha,ContMaisNova,ContMaisVelha,ContMaisAlta,ContMaisBaixa,ContMenorPeso,ContMaiorPeso:integer;
		MaisAlta,MaisBaixa,MenorPeso,MaiorPeso:real;
Procedure Selecao;
Begin
	for i:=1 to 27 do
	Begin
		if Modelo[i].idade < IdadeMaisNova then
		Begin
			IdadeMaisNova:= Modelo[i].idade;
			ContMaisNova:=i;
		End;
		if Modelo[i].idade > IdadeMaisVelha then
		Begin
			idadeMaisVelha:= Modelo[i].idade;
			ContMaisVelha:=i;
		End;
		if Modelo[i].altura > MaisAlta then
		Begin
			MaisAlta:= Modelo[i].altura;
			ContMaisAlta:=i;
		End;
		if Modelo[i].altura > MaisBaixa then
		Begin
			MaisBaixa:= Modelo[i].altura;
			ContMaisBaixa:=i;
		End;
		if Modelo[i].Peso < MenorPeso then
		Begin
			MenorPeso:= Modelo[i].Peso;
			ContMenorPeso:=i;
		End;
		if Modelo[i].altura > MaiorPeso then
		Begin
			MaiorPeso:= Modelo[i].Peso;
			ContMaiorPeso:=i;
		End;
	End;
End;
Procedure Imprimir;
Begin
	Write('Mais Nova');
	write('Codigo: ',Modelo[ContMaisNova].Codigo);
	write('Nome: ',Modelo[ContMaisNova].Nome);
	write('Idade: ',Modelo[ContMaisNova].Idade);
	write('Estado: ',Modelo[ContMaisNova].Estado);
	write('Altura: ',Modelo[ContMaisNova].Altura);
	write('Peso: ',Modelo[ContMaisNova].Peso);
	Write('Mais Velha');
	write('Codigo: ',Modelo[ContMaisVelha].Codigo);
	write('Nome: ',Modelo[ContMaisVelha].Nome);
	write('Idade: ',Modelo[ContMaisVelha].Idade);
	write('Estado: ',Modelo[ContMaisVelha].Estado);
	write('Altura: ',Modelo[ContMaisVelha].Altura);
	write('Peso: ',Modelo[ContMaisVelha].Peso);
	Write('Mais Alta');
	write('Codigo: ',Modelo[ContMaisAlta].Codigo);
	write('Nome: ',Modelo[ContMaisAlta].Nome);
	write('Idade: ',Modelo[ContMaisAlta].Idade);
	write('Estado: ',Modelo[ContMaisAlta].Estado);
	write('Altura: ',Modelo[ContMaisAlta].Altura);
	write('Peso: ',Modelo[ContMaisAlta].Peso);
	Write('Mais Baixa');
	write('Codigo: ',Modelo[ContMaisBaixa].Codigo);
	write('Nome: ',Modelo[ContMaisBaixa].Nome);
	write('Idade: ',Modelo[ContMaisBaixa].Idade);
	write('Estado: ',Modelo[ContMaisBaixa].Estado);
	write('Altura: ',Modelo[ContMaisBaixa].Altura);
	write('Peso: ',Modelo[ContMaisBaixa].Peso);
	Write('Menor Peso');
	write('Codigo: ',Modelo[ContMenorPeso].Codigo);
	write('Nome: ',Modelo[ContMenorPeso].Nome);
	write('Idade: ',Modelo[ContMenorPeso].Idade);
	write('Estado: ',Modelo[ContMenorPeso].Estado);
	write('Altura: ',Modelo[ContMenorPeso].Altura);
	write('Peso: ',Modelo[ContMenorPeso].Peso);
	Write('Maior Peso');
	write('Codigo: ',Modelo[ContMaiorPeso].Codigo);
	write('Nome: ',Modelo[ContMaiorPeso].Nome);
	write('Idade: ',Modelo[ContMaiorPeso].Idade);
	write('Estado: ',Modelo[ContMaiorPeso].Estado);
	write('Altura: ',Modelo[ContMaiorPeso].Altura);
	write('Peso: ',Modelo[ContMaiorPeso].Peso);
End;
Procedure CadastroModelo;
Begin
	for i:=1 to 27 do
	Begin
		with Modelo[i] do
		Begin
			clrscr;
			write('Informe o Codigo da Modelo: ');
			readln(Codigo);
			Write('Informe o Nome: ');
			readln(Nome);
			Write('Informe a idade: ');
			readln(idade);
			Write('Informe o Estado: [EE] ');
			readln(estado);
			Write('Informe a Altura: ');
			readln(Altura);
			Write('Informe o Peso: ');
			readln(Peso);
		End;
	End;
	Selecao;
End;
Begin
	MaisAlta:=0;
	Maisbaixa:=999;
	MenorPeso:=999;
	MaiorPeso:=0;
	IdadeMaisNova:=999;
	IdadeMaisVelha:=0;
	ContMaisNova:=0;
	ContMaisVelha:=0;
	ContMaisAlta:=0;
	ContMaisBaixa:=0;
	ContMenorPeso:=0;
	ContMaiorPeso:=0;
	CadastroModelo;
End.
