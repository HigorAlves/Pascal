program prog20;

uses crt;
type seqnum = array [1..10] of integer;

{----------------------------------------------------------------------------------------------}
{                                 PROCEDURE ORDENA                                             }
{----------------------------------------------------------------------------------------------}

procedure ordena (var lista: seqnum); {Este procedimento utiliza o método BUBLESORT para orde -}
var percorre, maximo, aux: integer;   {nacao.}
begin
     for maximo := 1 to 9 do
         for percorre := 9 downto maximo do
             if lista [percorre] < lista [percorre + 1] then
                begin
                     aux:= lista [percorre];
                     lista [percorre] := lista [percorre + 1];
                     lista [percorre + 1] := aux;
                end;
end;

{----------------------------------------------------------------------------------------------}
{                                PROGRAMA PRINCIPAL                                            }
{----------------------------------------------------------------------------------------------}

var lista: seqnum;
    i: integer;
begin
     writeln ('           ROTINA DE ORDENACAO BUBLESORT');
     writeln (' ');
     writeln (' ');
     writeln (' ');
     for i:= 1 to 10 do
         begin
             write ('Digite um numero: ');
             readln (lista[i]);
         end;
     ordena (lista);
     writeln (' ');
     writeln (' ');
     for i:= 1 to 10 do writeln ('Posicao [', i, '] : ',lista[i]);
end.
