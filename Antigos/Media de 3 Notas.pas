Program MediadeTresNotas ;
var
	n1,n2,n3,media : real ;
Begin 
  write('Informe a sua primeira nota: ');
  readln(n1);
  writeln('');
  write('Informe a sua segunda nota: ');
  readln(n2);
  writeln('');
  write('Informe a sua terceira nota: ');
  readln(n3);
  writeln('');
  
	  media:= (n1+n2+n3)/3 ;        //Lei da media, número de elementos divididos pela sua soma
  
  writeln('Media=',media:0:2);
  
  if media >= 7 then                  // detalhe o igual sempre vem depois do sinal e menos ou mais
  writeln ('Você Conseguiu a Media para passar')
  	else
   	if (media >= 6) and (media <= 6.9) then
   	writeln('Você ficou de RECUPERAÇÃO')
  	else
  		writeln('VOCÊ ESTA REPROVADO');

readkey // para o programa fechar somente depois do resultado sendo preciso apertar qualquer tecla para fecha-lo

End.
