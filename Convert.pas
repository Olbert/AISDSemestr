unit Convert;//input and output

interface

uses
  Data;

procedure readline(var legislator: nametype);

implementation

procedure readline(var legislator: nametype);
var
  i: integer;
begin
  for i := 1 to LenOfName-1 do
    read(legislator[i]);
  readln(legislator[LenOfName]);
  
end;

end.