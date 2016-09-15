program TrocarNumero;

var num1,num2,trocados:real;

begin
  
  write('Informe o primeiro numero: ');
  readln(num1);
  writeln('');
  write('Informe o segundo numero: ');
  readln(num2);
  writeln('');
  trocados:=num1;    //num1 se transforma em num2 e num2 em num1
  num1:=num2;
  num2:=trocados;
  writeln('Invertendo a ordem fica: ',num1:0:2,' ',num2:0:2);

readkey  // para o programa fechar somente depois do resultado sendo preciso apertar qualquer tecla para fecha-lo
end.