unit Tool;//instruments

interface

type
  DICTIONARY = record
  
  end;
  nametype = array[1..10] of char;

//procedures and functions
procedure MAKENULL(guys: DICTIONARY);
procedure INSERT(subject: nametype; guys: DICTIONARY);
procedure DELETE(subject: nametype; guys: DICTIONARY);
function MEMBER(subject: nametype; guys: DICTIONARY): boolean;

implementation

procedure MAKENULL(guys: DICTIONARY);
begin
  
end;

procedure INSERT(subject: nametype; guys: DICTIONARY);
begin
  
end;

procedure DELETE(subject: nametype; guys: DICTIONARY);
begin
  
end;

function MEMBER(subject: nametype; guys: DICTIONARY): boolean;
begin
  Result:=true;
end;


end.