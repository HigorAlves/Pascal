Program CodigoDeRegião ;
var a : integer;
Begin
   write('Escreva o codigo de area do produto: ');
   readln(a);  // a variavel que contem o codigo
   writeln('');
   case a of
   	1: write('Produto proveniente do Sul');
   	2: write('Produto proveniente do Norte');
   	3: write('Produto proveniente do Leste');
   	4: write('Produto proveniente do Oeste');
   	5,6: write('Produto proveniente do Nordeste');
   	7,8,9: write('Produto proveniente do sudeste');
   	10: write('Produto proveniente do Centro-Oeste');
   	11: write('Produto proveniente do Noroeste');
   	else
   		write('Produto Importado');
   end;
  readkey 	
End.