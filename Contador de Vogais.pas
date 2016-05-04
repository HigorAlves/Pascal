Program ContadorDevogais ;
var texto : string;
		cta,cte,cti,cto,ctu,contador : integer;
Begin
	cta:=0;
	cte:=0;
	cti:=0;
	cto:=0;
	ctu:=0;
	contador:=0;
	writeln('Insira seu texto:');
	read(texto);
	for contador := 1 to 255 do
		begin
		if (texto[contador] = 'a') or (texto[contador] = 'A') then
		 cta:= cta+1;
		if (texto[contador] = 'e') or (texto[contador] = 'E') then
		 cte:= cte+1;
		if (texto[contador] = 'i') or (texto[contador] = 'I') then
		 cti:= cti+1;
		if (texto[contador] = 'o') or (texto[contador] = 'O') then
		 cto:= cto+1;
		if (texto[contador] = 'u') or (texto[contador] = 'U') then
		 ctu:= ctu+1; 
		end;
		//---------Fim dos if's----------		
		write('Seu texto tem, ',cta,' vogais');
		textcolor(lightred);
		writeln(' a'); 
		textcolor(lightgreen);
		write('Seu texto tem, ',cte,' vogais');
		textcolor(lightred);
		writeln(' e'); 
		textcolor(lightgreen);
		write('Seu texto tem, ',cti,' vogais');
		textcolor(lightred);
		writeln(' i'); 
		textcolor(lightgreen);
		write('Seu texto tem, ',cto,' vogais');
		textcolor(lightred);
		writeln(' o'); 
		textcolor(lightgreen);
		write('Seu texto tem, ',ctu,' vogais');
		textcolor(lightred);
		writeln(' u'); 
		textcolor(lightgreen);
		
		
readkey	  
End.