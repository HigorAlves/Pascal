Program AlturaSexo;
var altura, maiorAltura, totalAlturaMulheres, mediaAltura: real;
	sexo : char;
	i, numeroHomens, numeroMulheres: integer;
Begin
	totalAlturaMulheres:= 0;
	numeroHomens:= 0;
	numeroMulheres:= 0;
	
	for i:= 1 to 10 do
	begin
		write('Informe a altura: ');
		readln(altura);
		write('Informe o sexo [M/F]: ');
		readln(sexo);
		if (altura > maiorAltura) then
			maiorAltura:= altura;
		if (upcase(sexo) = 'F') then
			begin
				totalAlturaMulheres:= totalAlturaMulheres + altura;
				numeroMulheres:= numeroMulheres + 1;
			end
		else
			numerohomens:= numeroHomens + 1;	
	end;
	if numeroMulheres <> 0 then
		mediaAltura:= totalAlturaMulheres / numeroMulheres
		else
			mediaAltura:= 0;
	writeln('A maior altura é: ', maiorAltura:0:2);
	writeln('A média de altura das mulheres é: ', mediaaltura:0:2);  
	writeln('O número de homens é: ', numeroHomens); 
End.	
