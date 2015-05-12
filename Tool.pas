unit Tool;//instruments

interface

uses
  Data;

procedure MAKENULL(guys: DICTIONARY);
procedure INSERT(subject: nametype; guys: DICTIONARY);
procedure DELETE(subject: nametype; guys: DICTIONARY);
function MEMBER(subject: nametype; guys: DICTIONARY): boolean;

implementation

procedure MAKENULL(guys: DICTIONARY);
var
  p: pCell;
  c: char;
begin
  new(p);
  guys.Head := p;
  guys.Current := p;
end;

procedure INSERT(subject: nametype; guys: DICTIONARY);
begin
  guys.Current := guys.Head;
  for i := 1 to LenOfName do
  begin
    if (guys.Current^.next[subject[i]] = nil) then
    begin
      new(p);
      // p.Data := subject[i];
      p.parent := guys.Current;
      guys.Current^.next := p;
      guys.Current := p;
    end
    else 
      guys.Current := guys.Current^.next[subject[i]]
  end;
  
  
end;

procedure DELETE(subject: nametype; guys: DICTIONARY);
begin
  guys.Current := guys.Head;
  for i := 1 to LenOfName - 1 do
    guys.Current := guys.Current^.next[subject[i]];
  dispose(guys.Current^.next[subject[LenOfName]])
end;

function MEMBER(subject: nametype; guys: DICTIONARY): boolean;
begin
  Result := true;
  guys.Current := guys.Head;
  for i := 1 to LenOfName do
  begin
    if guys.Current = nil then Result := false;
    guys.Current := guys.Current^.next[subject[i]];
  end;
end;


end.