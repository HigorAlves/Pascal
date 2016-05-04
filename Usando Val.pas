Program UsandoVal;
uses crt;
var agencia:string;
    x,numero,status,soma,total,peso:integer;
begin
   peso:=1;
   status:=0;
   write('Informe sua agencia: ');
   readln(agencia);
   for x:=1 to length(agencia) do
      begin
         val(agencia[x],numero,status);
         soma:=soma+numero;
      end;
   write('Soma: ',soma);
   for x:=length(agencia) to 1 do
      begin
         total:=total+(numero*peso);
         peso:=peso+1;
      end;
   write(total,'total');
readkey;
end.
