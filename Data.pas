unit Data;//All Datas
const LenOfName = 10;

type

  nametype = array[1..LenOfName] of char;
  tData = char;
  tRooad = array[1..LenOfName] of boolean;// а зачем?
  pTree = ^tTree;
  
  tTree = record
    Data: tData;
    array['a'..'z'] of pTree;
  end;

end.