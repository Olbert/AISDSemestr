program tuna ( input, output );// Task
{ ���� ������ ������������� (legislator) }
uses Tool;

var
  command: char; 
  legislator: nametype;
  goodguys, badguys: DICTIONARY;

procedure favor(friend: nametype );{ ������� ��� friend (����) � ������ goodguys � ����������� �� ������ badguys } 
begin
  INSERT(friend, goodguys); 
  DELETE(friend, badguys);
end;{ favor } 

procedure unfavor(foe: nametype);{ ������� ��� f�� (����) � ������ badguys ����������� �� ������ g�odguys}
begin
  INSERT(foe, badguys); 
  DELETE(foe, goodguys); 
end;{ unfavor } 

procedure report(subject: nametype );{������ ����� subject � ���������������� ���������������} 
begin
  if MEMBER(subject, goodguys) then 
    writeln(subject, ' � ��� ����') 
  else 
  if MEMBER(subject, badguys) then 
    writeln(subject, ' � ��� ���� ')
  else 
    writeln('��� ������ � ', subject)
end;{ report }

begin { main program }
  MAKENULL(goodguys);
  MAKENULL(badguys);
  read(command);
  while command <> 'E' do 
  begin
    readln(legislator); 
    if command = 'F' then favor(legislator) 
    else 
    if command = 'U' then unfavor(legislator) 
    else 
    if command = ' ?' then report(legislator) 
    else report('����������� �������');
    read(command)
  end
end.