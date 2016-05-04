Program ProgramaSequecina233a456 ;
var qtdenumeros : integer;
Begin
qtdenumeros:=233;
	repeat
   	write(qtdenumeros,', ');
   	if (qtdenumeros>=300) and (qtdenumeros<=400) then
   		qtdenumeros:=qtdenumeros+3
   		else
   			qtdenumeros:=qtdenumeros+5;
	until (qtdenumeros>456);
End.