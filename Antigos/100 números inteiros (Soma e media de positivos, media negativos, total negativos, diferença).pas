Program Soma100numeros ;
var i,n1,n2,positivos,negativos,totalpositivos,totalnegativos,n3,mediapositivos,medianegativos : integer;
Begin
	for i:=1 to 100 do
	begin
		write('Insira um n�mero: ');
		readln(n1);
		if (n1 > 0) then
		 begin
		 	positivos:=n1+n2;
		 	n2:=positivos;
		 	totalpositivos:=totalpositivos+1
		 end
		 else
			if (n1 < 0) then
				begin
					totalnegativos:=totalnegativos + 1;
					negativos:=n1+n3;
					n3:=negativos;
				end;
	end;
	textcolor(lightred);
	writeln('A soma dos Positivos � ',positivos);
	writeln('A quantidade de negativos � ',totalnegativos);
	// caso n�o tenha nenhum valor positivo n�o ira fazer a media
	if (totalpositivos <> 0) then
	 begin
		mediapositivos:=positivos div totalpositivos;
		writeln('A media dos n�meros positivos � de ',mediapositivos);
	 end;
	// caso n�o tenha nenhum valor positivo n�o ira fazer a media
	if (totalnegativos <> 0) then
	 begin
		medianegativos:=negativos div totalnegativos; 
		writeln('A media dos n�meros negativos � de ',medianegativos);
	 end;
	writeln('A diferen�a entre positivos e negativos � de: ',totalpositivos-totalnegativos);	
End.