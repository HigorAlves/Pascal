Program ProgramaBanco;
uses crt;
var Agencia,Conta:string;
    Nagencia,Status,i,Totalagencia,Peso,Nconta,TotalConta,RestoConta,RestoAgencia,DVA,DVC:integer;
begin
   Status:=0;
   Peso:=2;
   Totalagencia:=0;
   Nagencia:=0;
   Nconta:=0;
   Totalconta:=0;
   gotoxy(34,1);
   textcolor(lightred);
   writeln('Programa Banco');
   textcolor(7);
   write('Informe sua Agencia: ');
   readln(Agencia);
   for i:=length(Agencia) downto 1 do //Calculo do numero da Agencia.
      begin
         val(Agencia[i],NAgencia,Status);
         Totalagencia:=Totalagencia+(Nagencia*Peso);
         Peso:=Peso+1;
      end;
   Peso:=2; //Retorna o valor do peso para dois
   write('Informe sua Conta: ');
   readln(conta);
   for i:=length(Conta) downto 1 do //Calculo do numero da Conta.
      begin
         val(Conta[i],Nconta,Status);
         TotalConta:=TotalConta+(Nconta*Peso);
         Peso:=Peso+1;
      end;
   RestoAgencia:=Totalagencia mod 11; //Calculando o resto da divisão
   RestoConta:=TotalConta mod 11;   //Calculando o resto da divisão
   if (11-RestoAgencia = 10) or (11-RestoAgencia = 11) then    //se o resultado da agencia menos 11 for igual a 10 ou 11 o digito sera 0 se não sera o proprio resto da divisão pelo mod.
         DVA:=0
   else
      DVA:=11-RestoAgencia;
   if (11-RestoConta = 10) or (11-RestoConta = 11) then  //se o resultado da Conta menos 11 for igual a 10 ou 11 o digito sera 0 se não sera o proprio resto da divisão pelo mod.
      DVC:=0
   else
      DVC:=11-RestoConta;
   writeln('');
   writeln('O numero da agencia e: ',agencia,' e o digito verificador da agencia: ',DVA);
   writeln('O numero da conta e: ',conta,' e o digito verificador da conta: ',DVC);
readkey;
end.
