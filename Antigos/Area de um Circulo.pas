Program CalculoAreaCirculo ;
const PI = 3.1416;
var area, raio: real;
Begin
   write('Informe o Raio: ');
   readln(raio);
   writeln('');
   area:= PI*(raio*raio);
   write('A área é: ',area:0:4);
End.