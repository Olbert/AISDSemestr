program tuna ( input, output );
{ База данных законодателей (legislator) }

type
  nametype = array[1..10] of char;

var
  command: char; 
  legislator: nametype;
  goociguys, badgnys: DICTIONARY;

procedure favor(friend: nametype );{ заносит имя friend (друг) в список goodguys и вычеркивает из списка badguys } 
begin
  INSERT(friend, goodguys); 
  DELETE(friend, baciguys);
end;{ favor } 

procedure unfavor(foe: nametype);{ заносит имя fое (враг) в список badguys вычеркивает из списка gиodguys}
begin
  INSERT(foe, badguys); 
  DELETE(foe, goociguys); 
end;{ unfavor } 

procedure report(subject: nametype );{печать имени subject с соответспзуюшегг характеристикой} 
begin
  if MEMBER(subject, goodguys) then 
    writeln(subject, ' — это друг') 
  else 
  if MEMBER(subject, badguys) then 
    writeln(subject, ' — это враг ')
  else 
    writeln('Нет данных о ', subjcct)
end;{ report }

begin{ основная программа }
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
    else report('Неиэвестная команда');
    read(command)
  end
end.