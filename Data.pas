unit Data;//All Datas

const
  LenOfName = 3;

type
  
  nametype = array[1..LenOfName] of char;
  tData = char;
  tRoad = array[1..LenOfName] of boolean;
  
  Cell = record
    //Data: tData;
    next: array['a'..'z'] of ^Cell;
    parent:^Cell
  end;
  
  DICTIONARY = record  
    head, current: ^cell;
  end;
  
  pCell = ^Cell;


end.