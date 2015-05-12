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
p:pCell;
c:char;
begin
  new(p);
  guys.Head:=p;
  guys.Current:=p;
end;

procedure INSERT(subject: nametype; guys: DICTIONARY);
begin
  for i:= 1 to  do
  new(p);
  p.Data:=subject
  for c:='a' to 'z' do p.next[c]:=nil;
  guys.Current:=p;
end;

procedure DELETE(subject: nametype; guys: DICTIONARY);
begin
  
end;

function MEMBER(subject: nametype; guys: DICTIONARY): boolean;
begin
  
end;


end.