(* Copyright (C) 2017 Peter McKinna. All rights reserved. *)
(* See file COPYRIGHT-BSD for details. *)

UNSAFE MODULE Sudoku EXPORTS Main;

IMPORT IntSeq,IntRefTbl,Random,RandomPerm,Text,Word;
IMPORT IO,Fmt;

CONST
  N = 3;
  Rank = N * N;
  Square = Rank * Rank;
  All = SetType{1,2,3,4,5,6,7,8,9};
  
EXCEPTION Contradict;
EXCEPTION NotFound;

TYPE
  Range = [0..Rank-1];
  Size = [0..Square-1];
  RankType = [1..Rank];
  SetType = SET OF RankType;
  ValuesType = ARRAY Size OF SetType;
  UnitType = REF ARRAY[0..N-1] OF REFANY;
  RefVal = REF ValuesType;
  
VAR
  units := NEW(IntRefTbl.Default).init(100);
  peers := NEW(IntRefTbl.Default).init(100);  
  
PROCEDURE Id(row, col : Range) : Size =
  BEGIN
    RETURN row * Rank + col;
  END Id;
  
PROCEDURE Coords(id : Size; VAR row, col : Range) =
  BEGIN
    row := id DIV Rank;
    col := id MOD Rank;
  END Coords;

PROCEDURE F(id : Size) : TEXT =
  VAR row,col : Range;
  BEGIN
    Coords(id,row,col);
    RETURN Text.FromChar(VAL(row+65,CHAR)) & Text.FromChar(VAL(col + 48 +1, CHAR));
  END F;
  
PROCEDURE Format(cell : SetType) : TEXT =
  VAR s : TEXT := "";
  BEGIN
    IF cell = SetType{} THEN
      s := ".";
    ELSE
      FOR i := 1 TO Rank DO
        IF i IN cell THEN
          s := s & Text.FromChar(VAL(i + 48, CHAR));
        END;
      END;
    END;
    RETURN s;
  END Format;

(* Simple cardinality of a set *)

PROCEDURE Card(s : SetType) : INTEGER =
  VAR card : INTEGER := 0;
  BEGIN
    FOR i := 1 TO Rank DO
      IF i IN s THEN
        INC(card);
      END;
    END;
    RETURN card;
  END Card;

(* this version optimises to popcount on suitable hardware *)
(*
PROCEDURE Card(s : SetType) : INTEGER =
  TYPE
    SetRange = [0..16_FFFF-1];
(*
    SetRange = BITS BITSIZE(SetType) FOR [0..16_FFFF - 1];
   massive increase in code if use this
    SetRange = BITS 16 FOR [0..10];
*)
  VAR card : INTEGER := 0;
      p : Word.T;
  BEGIN
    p := LOOPHOLE(s,SetRange);
    IF p # 0 THEN
      REPEAT
        INC(card);
        p := Word.And(p,p - 1);
      UNTIL p = 0;
    END;
    RETURN card;
  END Card;
*)  
(* Return the single element of a set *)
PROCEDURE Singleton(s : SetType) : INTEGER =
  BEGIN
    <*ASSERT Card(s) = 1 *>
    FOR i := 1 TO Rank DO
      IF i IN s THEN
        RETURN i;
      END;
    END;
    <*ASSERT FALSE*> (* never happen *)
  END Singleton;

PROCEDURE Min(READONLY values : ValuesType) : Size =
  VAR
    x,min : INTEGER;
    s : Size;
  BEGIN
    min := Rank;
    FOR i := FIRST(Size) TO LAST(Size) DO
      x := Card(values[i]);
      IF x > 1 AND x < min THEN
        min := x; s := i;
      END;
    END;
    RETURN s;
  END Min;
  
(* The puzzle is solved if there is only one value in each position *)
PROCEDURE IsSolved(READONLY values : ValuesType) : BOOLEAN =
  BEGIN
    FOR i := FIRST(Size) TO LAST(Size) DO
      IF Card(values[i]) > 1 THEN
        RETURN FALSE;
      END;
    END;
    RETURN TRUE;
  END IsSolved;
  
PROCEDURE Init() =
  VAR 
    m,n : Range;
    id,tid : Size;
    tList,pList : IntSeq.T;
    unitArr : UnitType;
  BEGIN
        
    FOR i := 0 TO Rank - 1 DO
      FOR j := 0 TO Rank - 1 DO
        id := Id(i,j);
      
        unitArr := NEW(UnitType);
        tList := NEW(IntSeq.T).init();
        pList := NEW(IntSeq.T).init();
      
        (* col unit k is A to I *)
        FOR k := 0 TO Rank - 1 DO
          tid := Id(k,j);
          tList.addhi(tid);
          IF k # i THEN
            pList.addhi(tid);
          END;
        END;
        unitArr[0] := tList;

        tList := NEW(IntSeq.T).init();
      
        (* row unit *)
        FOR k := 0 TO Rank - 1 DO
          tid := Id(i,k);
          tList.addhi(tid);
          IF k # j THEN
            pList.addhi(tid);
          END;
        END;      
        unitArr[1] := tList;

        tList := NEW(IntSeq.T).init();
      
        m := i DIV N * N; n := j DIV N * N;

        FOR k := m TO m + N - 1 DO
          FOR l := n TO n + N - 1 DO
            tid := Id(k,l);
            tList.addhi(tid);
          
            IF k # i AND l # j THEN
              pList.addhi(tid);            
            END;
          END;
        END;
        unitArr[2] := tList;

        EVAL peers.put(id,pList);
        EVAL units.put(id,unitArr);
      END;
    END;
  END Init;

PROCEDURE DisplayGrid(READONLY grid : ValuesType) =
  VAR
    s,line : TEXT := "";
  BEGIN
    FOR i := 0 TO 80 DO
      line := Text.Cat(line,"-");
    END;
    IO.Put("\n");
    FOR i := FIRST(Size) TO LAST(Size) DO
      s := Format(grid[i]);
      IO.Put(Fmt.Pad(s,8));
      IF (i + 1) MOD N = 0 THEN
        IO.Put("|");
      END;
      IF (i+1) MOD Rank = 0 THEN
        IO.Put("\n");      
      END;
      IF (i+1) MOD (Rank * N) = 0 THEN
        IO.Put("\n" & line & "\n");
      END;
    END;
  END DisplayGrid;
 
PROCEDURE DisplayUnits() =
  VAR
    pit : IntRefTbl.Iterator;
    v1  : IntSeq.T;
    unitArr : UnitType;
    key,id : INTEGER;
    x : REFANY;
  BEGIN
    IO.Put("\nUNITS\n");

    pit := units.iterate();
    WHILE pit.next(key, x) DO
      IO.Put("\nKEY -> "); IO.Put(F(key)); IO.Put(" \n");
      unitArr := NARROW(x,UnitType);
      FOR j := FIRST(unitArr^) TO LAST(unitArr^) DO
        v1 := NARROW(unitArr[j],IntSeq.T); 
        <*ASSERT v1.size() = Rank *>
        FOR i := 0 TO v1.size() - 1 DO
          id := v1.get(i);
          IO.Put(F(id));
        END;
        IO.Put("\n");
      END;
    END;
  END DisplayUnits;
  
PROCEDURE DisplayPeers() =
  VAR
    pit : IntRefTbl.Iterator;
    peer : IntSeq.T;
    pkey : INTEGER;
    x : REFANY;
  BEGIN
    IO.Put("\nPEERS\n");

    pit := peers.iterate();
    WHILE pit.next(pkey, x) DO
      IO.Put("\nKEY -> "); IO.Put(F(pkey)); IO.Put(" \n");
      peer := NARROW(x,IntSeq.T);      
      <*ASSERT peer.size() = 2 * (Rank - 1) + Rank - 2 * N + 1 *> (* 20 for N = 3 *)      
      FOR k := 0 TO peer.size() - 1 DO
        IO.Put(F(peer.get(k)));
      END;
      IO.Put("\n");
    END;
  END DisplayPeers;

(* Assign a value to a cell by eliminating all the other values.
   If the exception is raised then caller should discard values *)
PROCEDURE Assign(VAR values : ValuesType; s : Size; d : RankType) RAISES {Contradict} =
  VAR 
    otherVals : SetType;
  BEGIN
    otherVals := values[s] - SetType{d};
    FOR d2 := 1 TO Rank DO
      IF d2 IN otherVals THEN
        Eliminate(values, s, d2);
      END
    END;
  END Assign;

(* Propagate the constraints. *)
PROCEDURE Eliminate(VAR values : ValuesType; s : Size; d : RankType)  RAISES {Contradict} =
  VAR 
    peer : IntSeq.T;
    unit : IntSeq.T;
    dArr : ARRAY Range OF Size;
    u,s2 : Size;
    d2 : RankType;
    len : INTEGER;
    x : REFANY;
    unitArr : UnitType;
  BEGIN
    IF NOT (d IN values[s]) THEN
      RETURN; (* already eliminated *)
    END;
    values[s] := values[s] - SetType{d};

    (* 1 If a square s is reduced to one value d2, then eliminate d2 from the peers. *)
    
    len := Card(values[s]);
    IF len = 0 THEN
      RAISE Contradict; (* ## Contradiction: removed last value*)
    ELSIF len = 1 THEN
      d2 := Singleton(values[s]);

      EVAL peers.get(s,x);    
      peer := NARROW(x,IntSeq.T);      
      FOR k := 0 TO peer.size() - 1 DO
        s2 := peer.get(k);
        Eliminate(values, s2, d2);
      END;
    END;

    (* 2 If a unit u is reduced to only one place for a value d, then put it there. *)

    EVAL units.get(s,x);
    unitArr := NARROW(x,UnitType);
      
    FOR j := FIRST(unitArr^) TO LAST(unitArr^) DO
      unit := NARROW(unitArr[j],IntSeq.T);

      len := 0;
      FOR i := 0 TO unit.size() - 1 DO
        u := unit.get(i);
        IF d IN values[u] THEN
          dArr[len] := u; INC(len);
        END;
      END;

      IF len = 0 THEN
        RAISE Contradict; (* ## Contradiction: no place for this value *)
      ELSIF len = 1 THEN
        s2 := dArr[0];
        Assign(values,s2, d);
      END;
    END;
  END Eliminate;

(* Initial assign of values from the puzzle *)
PROCEDURE ParseGrid(READONLY puzzle : ARRAY OF CHAR) : ValuesType RAISES {Contradict} =
  VAR 
    grid := ValuesType{All,..};
    ch : CHAR;
  BEGIN
    <*ASSERT LAST(puzzle) = Square-1 *>
    FOR i := FIRST(puzzle) TO LAST(puzzle) DO
      ch := puzzle[i];
      IF ch >= '1' AND ch <= '9' THEN
        Assign(grid, i, ORD(ch) - 48);
      END;
    END;
    RETURN grid;
  END ParseGrid;
    
(* Depth first search for a solution *)
PROCEDURE Search(values : ValuesType) : RefVal RAISES {NotFound} = <*NOWARN*>
  VAR
    min : Size;
    sol : RefVal;
    grid : ValuesType;
  BEGIN
    IF IsSolved(values) THEN
      sol := NEW(RefVal);
      sol^ := values;
      RETURN sol;
    END;

    (* start with the cell with the mininum number of possibilities *)
    min := Min(values);
    grid := values;

    FOR d := 1 TO Rank DO
      IF d IN values[min] THEN
        TRY
          Assign(grid,min,d);
          RETURN Search(grid);
        EXCEPT
        | Contradict,NotFound => grid := values;
        END;
      END;
    END;
    RAISE NotFound;
  END Search;
  
PROCEDURE Solve(puz : TEXT) =
  VAR
    values : ARRAY Size OF CHAR;
    solution : RefVal;
  BEGIN
    IO.Put(puz & "\n");

    Text.SetChars(values,puz);
    TRY
      solution := Search(ParseGrid(values));
      Check(solution^);
      IO.Put("Solved\n");
      DisplayGrid(solution^);
    EXCEPT
    | Contradict => IO.Put("Error in puzzle\n");
    | NotFound => IO.Put("No Solution\n");
    END;
  END Solve;

(* Validate a solution *)
PROCEDURE Check(READONLY values : ValuesType) =
  VAR
    unit : IntSeq.T;
    unitArr : UnitType;
    s,s2 : SetType;
    u : Size;
    len : INTEGER;
    x : REFANY;    
  BEGIN
    FOR i := FIRST(values) TO LAST(values) DO
      EVAL units.get(i,x);
      unitArr := NARROW(x,UnitType);
      FOR j := FIRST(unitArr^) TO LAST(unitArr^) DO
        unit := NARROW(unitArr[j],IntSeq.T);
        len := 0;
        s2 := SetType{};
        FOR i := 0 TO unit.size() - 1 DO
          u := unit.get(i);
          s := values[u];
          <*ASSERT Card(s) = 1*>
          s2 := s2 + s;
        END;
        <*ASSERT s2 = All *>
      END
    END
  END Check;

(* Return a random member of a set *)
PROCEDURE Rand(d : SetType; r : Random.T) : RankType =
  VAR
    t,x : INTEGER := 0;
  BEGIN
    x := r.integer(1,Card(d));
    FOR i := 1 TO Rank DO
      IF i IN d THEN
        INC(t);
        IF t = x THEN RETURN i; END; <*NOWARN*>
      END;
    END;
  END Rand;

(* Generate a random puzzle *)
PROCEDURE RandomPuzzle(N : INTEGER := 17) : TEXT =
  VAR  
    r := NEW(Random.Default).init();
    a : ARRAY Size OF CARDINAL;
    b := ARRAY Size OF CHAR{'.',..};
    count : INTEGER := 0;
    s := SetType{};
    d : RankType;
    values := ValuesType{All,..};
  BEGIN
    RandomPerm.Fill(a,r);
    FOR i := FIRST(a) TO LAST(a) DO
      d := Rand(values[a[i]],r);
      TRY
        Assign(values,a[i],d);
        INC(count);
        s := s + SetType{d};
        IF count >= N AND Card(s) >= 8 THEN 
          FOR j := 0 TO count-1 DO
            b[a[j]] := VAL(Singleton(values[a[j]]) + 48, CHAR);
          END;
          RETURN Text.FromChars(b);
        END;
      EXCEPT
      | Contradict => RETURN RandomPuzzle(); (* try again *) <*NOWARN*>
      END;
    END;
  END RandomPuzzle;

PROCEDURE EasyPuzzles() =
  VAR
    puz := ARRAY [1..50] OF TEXT {
"..3.2.6..9..3.5..1..18.64....81.29..7.......8..67.82....26.95..8..2.3..9..5.1.3..",
"2...8.3...6..7..84.3.5..2.9...1.54.8.........4.27.6...3.1..7.4.72..4..6...4.1...3",
"......9.7...42.18....7.5.261..9.4....5.....4....5.7..992.1.8....34.59...5.7......",
".3..5..4...8.1.5..46.....12.7.5.2.8....6.3....4.1.9.3.25.....98..1.2.6...8..6..2.",
".2.81.74.7....31...9...28.5..9.4..874..2.8..316..3.2..3.27...6...56....8.76.51.9.",
"1..92....524.1...........7..5...81.2.........4.27...9..6...........3.945....71..6",
".43.8.25.6.............1.949....4.7....6.8....1.2....382.5.............5.34.9.71.",
"48...69.2..2..8..19..37..6.84..1.2....37.41....1.6..49.2..85..77..9..6..6.92...18",
"...9....2.5.1234...3....16.9.8.......7.....9.......2.5.91....5...7439.2.4....7...",
"..19....39..7..16..3...5..7.5......9..43.26..2......7.6..1...3..42..7..65....68..",
"...1254....84.....42.8......3.....95.6.9.2.1.51.....6......3.49.....72....1298...",
".6234.75.1....56..57.....4.....948..4.......6..583.....3.....91..64....7.59.8326.",
"3..........5..9...2..5.4....2....7..16.....587.431.6.....89.1......67.8......5437",
"63..........5....8..5674.......2......34.1.2.......345.....7..4.8.3..9.29471...8.",
"....2..4...8.35.......7.6.2.31.4697.2...........5.12.3.49...73........1.8....4...",
"361.259...8.96..1.4......57..8...471...6.3...259...8..74......5.2..18.6...547.329",
".5.8.7.2.6...1..9.7.254...6.7..2.3.15.4...9.81.3.8..7.9...762.5.6..9...3.8.1.3.4.",
".8...5........3457....7.8.9.6.4..9.3..7.1.5..4.8..7.2.9.1.2....8423........1...8.",
"..35.29......4....1.6...3.59..251..8.7.4.8.3.8..763..13.8...1.4....2......51.48..",
"...........98.51...519.742.29.4.1.65.........14.5.8.93.267.958...51.36...........",
".2..3..9....9.7...9..2.8..5..48.65..6.7...2.8..31.29..8..6.5..7...3.9....3..2..5.",
"..5.....6.7...9.2....5..1.78.415.......8.3.......928.59.7..6....3.4...1.2.....6..",
".4.....5...19436....9...3..6...5...21.3...5.68...2...7..5...2....24367...3.....4.",
"..4..........3...239.7...8.4....9..12.98.13.76..2....8.1...8.539...4..........8..",
"36..2..89...361............8.3...6.24..6.3..76.7...1.8............418...97..3..14",
"5..4...6...9...8..64..2.........1..82.8...5.17..5.........9..84..3...6...6...3..2",
"..72564..4.......5.1..3..6....5.8.....8.6.2.....1.7....3..7..9.2.......4..63127..",
"..........79.5.18.8.......7..73.68..45.7.8.96..35.27..7.......5.16.3.42..........",
".3.....8...9...5....75.92..7..1.5..8.2..9..3.9..4.2..1..42.71....2...8...7.....9.",
"2..17.6.3.5....1.......6.79....4.7.....8.1.....9.5....31.4.......5....6.9.6.37..2",
".......8.8..7.1.4..4..2..3.374...9......3......5...321.1..6..5..5.8.2..6.8.......",
".......85...21...996..8.1..5..8...16.........89...6..7..9.7..523...54...48.......",
"6.8.7.5.2.5.6.8.7...2...3..5...9...6.4.3.2.5.8...5...3..5...2...1.7.4.9.4.9.6.7.1",
".5..1..4.1.7...6.2...9.5...2.8.3.5.1.4..7..2.9.1.8.4.6...4.1...3.4...7.9.2..6..1.",
".53...79...97534..1.......2.9..8..1....9.7....8..3..7.5.......3..76412...61...94.",
"..6.8.3...49.7.25....4.5...6..317..4..7...8..1..826..9...7.2....75.4.19...3.9.6..",
"..5.8.7..7..2.4..532.....84.6.1.5.4...8...5...7.8.3.1.45.....916..5.8..7..3.1.6..",
"...9..8..128..64...7.8...6.8..43...75.......96...79..8.9...4.1...36..284..1..7...",
"....8....27.....54.95...81...98.64...2.4.3.6...69.51...17...62.46.....38....9....",
"...6.2...4...5...1.85.1.62..382.671...........194.735..26.4.53.9...2...7...8.9...",
"...9....2.5.1234...3....16.9.8.......7.....9.......2.5.91....5...7439.2.4....7...",
"38..........4..785..9.2.3...6..9....8..3.2..9....4..7...1.7.5..495..6..........92",
"...158.....2.6.8...3.....4..27.3.51...........46.8.79..5.....8...4.7.1.....325...",
".1.5..2..9....1.....2..8.3.5...3...7..8...5..6...8...4.4.1..7.....7....6..3..4.5.",
".8.....4....469...4.......7..59.46...7.6.8.3...85.21..9.......5...781....6.....1.",
"9.42....7.1..........7.65.....8...9..2.9.4.6..4...2.....16.7..........3.3....57.2",
"...7..8....6....31.4...2....24.7.....1..3..8.....6.29....8...7.86....5....2..6...",
"..1..7.9.59..8...1.3.....8......58...5..6..2...41......8.....3.1...2..79.2.7..4..",
".....3.17.15..9..8.6.......1....7.....9...2.....5....4.......2.5..6..34.34.2.....",
"3..2........1.7...7.6.3.5...7...9.8.9...2...4.1.8...5...9.4.3.1...7.2........8..6"};

  BEGIN
    FOR i := FIRST(puz) TO LAST(puz) DO
      Solve(puz[i]);
    END;
  END EasyPuzzles;

PROCEDURE HardPuzzles() =
  VAR
    puz := ARRAY [1..95] OF TEXT {  
"4.....8.5.3..........7......2.....6.....8.4......1.......6.3.7.5..2.....1.4......",
"52...6.........7.13...........4..8..6......5...........418.........3..2...87.....",
"6.....8.3.4.7.................5.4.7.3..2.....1.6.......2.....5.....8.6......1....",
"48.3............71.2.......7.5....6....2..8.............1.76...3.....4......5....",
"....14....3....2...7..........9...3.6.1.............8.2.....1.4....5.6.....7.8...",
"......52..8.4......3...9...5.1...6..2..7........3.....6...1..........7.4.......3.",
"6.2.5.........3.4..........43...8....1....2........7..5..27...........81...6.....",
".524.........7.1..............8.2...3.....6...9.5.....1.6.3...........897........",
"6.2.5.........4.3..........43...8....1....2........7..5..27...........81...6.....",
".923.........8.1...........1.7.4...........658.........6.5.2...4.....7.....9.....",
"6..3.2....5.....1..........7.26............543.........8.15........4.2........7..",
".6.5.1.9.1...9..539....7....4.8...7.......5.8.817.5.3.....5.2............76..8...",
"..5...987.4..5...1..7......2...48....9.1.....6..2.....3..6..2.......9.7.......5..",
"3.6.7...........518.........1.4.5...7.....6.....2......2.....4.....8.3.....5.....",
"1.....3.8.7.4..............2.3.1...........958.........5.6...7.....8.2...4.......",
"6..3.2....4.....1..........7.26............543.........8.15........4.2........7..",
"....3..9....2....1.5.9..............1.2.8.4.6.8.5...2..75......4.1..6..3.....4.6.",
"45.....3....8.1....9...........5..9.2..7.....8.........1..4..........7.2...6..8..",
".237....68...6.59.9.....7......4.97.3.7.96..2.........5..47.........2....8.......",
"..84...3....3.....9....157479...8........7..514.....2...9.6...2.5....4......9..56",
".98.1....2......6.............3.2.5..84.........6.........4.8.93..5...........1..",
"..247..58..............1.4.....2...9528.9.4....9...1.........3.3....75..685..2...",
"4.....8.5.3..........7......2.....6.....5.4......1.......6.3.7.5..2.....1.9......",
".2.3......63.....58.......15....9.3....7........1....8.879..26......6.7...6..7..4",
"1.....7.9.4...72..8.........7..1..6.3.......5.6..4..2.........8..53...7.7.2....46",
"4.....3.....8.2......7........1...8734.......6........5...6........1.4...82......",
".......71.2.8........4.3...7...6..5....2..3..9........6...7.....8....4......5....",
"6..3.2....4.....8..........7.26............543.........8.15........8.2........7..",
".47.8...1............6..7..6....357......5....1..6....28..4.....9.1...4.....2.69.",
"......8.17..2........5.6......7...5..1....3...8.......5......2..4..8....6...3....",
"38.6.......9.......2..3.51......5....3..1..6....4......17.5..8.......9.......7.32",
"...5...........5.697.....2...48.2...25.1...3..8..3.........4.7..13.5..9..2...31..",
".2.......3.5.62..9.68...3...5..........64.8.2..47..9....3.....1.....6...17.43....",
".8..4....3......1........2...5...4.69..1..8..2...........3.9....6....5.....2.....",
"..8.9.1...6.5...2......6....3.1.7.5.........9..4...3...5....2...7...3.8.2..7....4",
"4.....5.8.3..........7......2.....6.....5.8......1.......6.3.7.5..2.....1.8......",
"1.....3.8.6.4..............2.3.1...........958.........5.6...7.....8.2...4.......",
"1....6.8..64..........4...7....9.6...7.4..5..5...7.1...5....32.3....8...4........",
"249.6...3.3....2..8.......5.....6......2......1..4.82..9.5..7....4.....1.7...3...",
"...8....9.873...4.6..7.......85..97...........43..75.......3....3...145.4....2..1",
"...5.1....9....8...6.......4.1..........7..9........3.8.....1.5...2..4.....36....",
"......8.16..2........7.5......6...2..1....3...8.......2......7..3..8....5...4....",
".476...5.8.3.....2.....9......8.5..6...1.....6.24......78...51...6....4..9...4..7",
".....7.95.....1...86..2.....2..73..85......6...3..49..3.5...41724................",
".4.5.....8...9..3..76.2.....146..........9..7.....36....1..4.5..6......3..71..2..",
".834.........7..5...........4.1.8..........27...3.....2.6.5....5.....8........1..",
"..9.....3.....9...7.....5.6..65..4.....3......28......3..75.6..6...........12.3.8",
".26.39......6....19.....7.......4..9.5....2....85.....3..2..9..4....762.........4",
"2.3.8....8..7...........1...6.5.7...4......3....1............82.5....6...1.......",
"6..3.2....1.....5..........7.26............843.........8.15........8.2........7..",
"1.....9...64..1.7..7..4.......3.....3.89..5....7....2.....6.7.9.....4.1....129.3.",
".........9......84.623...5....6...453...1...6...9...7....1.....4.5..2....3.8....9",
".2....5938..5..46.94..6...8..2.3.....6..8.73.7..2.........4.38..7....6..........5",
"9.4..5...25.6..1..31......8.7...9...4..26......147....7.......2...3..8.6.4.....9.",
"...52.....9...3..4......7...1.....4..8..453..6...1...87.2........8....32.4..8..1.",
"53..2.9...24.3..5...9..........1.827...7.........981.............64....91.2.5.43.",
"1....786...7..8.1.8..2....9........24...1......9..5...6.8..........5.9.......93.4",
"....5...11......7..6.....8......4.....9.1.3.....596.2..8..62..7..7......3.5.7.2..",
".47.2....8....1....3....9.2.....5...6..81..5.....4.....7....3.4...9...1.4..27.8..",
"......94.....9...53....5.7..8.4..1..463...........7.8.8..7.....7......28.5.26....",
".2......6....41.....78....1......7....37.....6..412....1..74..5..8.5..7......39..",
"1.....3.8.6.4..............2.3.1...........758.........7.5...6.....8.2...4.......",
"2....1.9..1..3.7..9..8...2.......85..6.4.........7...3.2.3...6....5.....1.9...2.5",
"..7..8.....6.2.3...3......9.1..5..6.....1.....7.9....2........4.83..4...26....51.",
"...36....85.......9.4..8........68.........17..9..45...1.5...6.4....9..2.....3...",
"34.6.......7.......2..8.57......5....7..1..2....4......36.2..1.......9.......7.82",
"......4.18..2........6.7......8...6..4....3...1.......6......2..5..1....7...3....",
".4..5..67...1...4....2.....1..8..3........2...6...........4..5.3.....8..2........",
".......4...2..4..1.7..5..9...3..7....4..6....6..1..8...2....1..85.9...6.....8...3",
"8..7....4.5....6............3.97...8....43..5....2.9....6......2...6...7.71..83.2",
".8...4.5....7..3............1..85...6.....2......4....3.26............417........",
"....7..8...6...5...2...3.61.1...7..2..8..534.2..9.......2......58...6.3.4...1....",
"......8.16..2........7.5......6...2..1....3...8.......2......7..4..8....5...3....",
".2..........6....3.74.8.........3..2.8..4..1.6..5.........1.78.5....9..........4.",
".52..68.......7.2.......6....48..9..2..41......1.....8..61..38.....9...63..6..1.9",
"....1.78.5....9..........4..2..........6....3.74.8.........3..2.8..4..1.6..5.....",
"1.......3.6.3..7...7...5..121.7...9...7........8.1..2....8.64....9.2..6....4.....",
"4...7.1....19.46.5.....1......7....2..2.3....847..6....14...8.6.2....3..6...9....",
"......8.17..2........5.6......7...5..1....3...8.......5......2..3..8....6...4....",
"963......1....8......2.5....4.8......1....7......3..257......3...9.2.4.7......9..",
"15.3......7..4.2....4.72.....8.........9..1.8.1..8.79......38...........6....7423",
"..........5724...98....947...9..3...5..9..12...3.1.9...6....25....56.....7......6",
"....75....1..2.....4...3...5.....3.2...8...1.......6.....1..48.2........7........",
"6.....7.3.4.8.................5.4.8.7..2.....1.3.......2.....5.....7.9......1....",
"....6...4..6.3....1..4..5.77.....8.5...8.....6.8....9...2.9....4....32....97..1..",
".32.....58..3.....9.428...1...4...39...6...5.....1.....2...67.8.....4....95....6.",
"...5.3.......6.7..5.8....1636..2.......4.1.......3...567....2.8..4.7.......2..5..",
".5.3.7.4.1.........3.......5.8.3.61....8..5.9.6..1........4...6...6927....2...9..",
"..5..8..18......9.......78....4.....64....9......53..2.6.........138..5....9.714.",
"..........72.6.1....51...82.8...13..4.........37.9..1.....238..5.4..9.........79.",
"...658.....4......12............96.7...3..5....2.8...3..19..8..3.6.....4....473..",
".2.3.......6..8.9.83.5........2...8.7.9..5........6..4.......1...1...4.22..7..8.9",
".5..9....1.....6.....3.8.....8.4...9514.......3....2..........4.8...6..77..15..6.",
".....2.......7...17..3...9.8..7......2.89.6...13..6....9..5.824.....891..........",
"3...8.......7....51..............36...2..4....7...........6.13..452...........8.."};
  BEGIN
    FOR i := FIRST(puz) TO LAST(puz) DO
      Solve(puz[i]);
    END;
  END HardPuzzles;

PROCEDURE HardestPuzzles() =
  VAR
    puz := ARRAY [1..11] OF TEXT { 
"85...24..72......9..4.........1.7..23.5...9...4...........8..7..17..........36.4.",
"..53.....8......2..7..1.5..4....53...1..7...6..32...8..6.5....9..4....3......97..",
"12..4......5.69.1...9...5.........7.7...52.9..3......2.9.6...5.4..9..8.1..3...9.4",
"...57..3.1......2.7...234......8...4..7..4...49....6.5.42...3.....7..9....18.....",
"7..1523........92....3.....1....47.8.......6............9...5.6.4.9.7...8....6.1.",
"1....7.9..3..2...8..96..5....53..9...1..8...26....4...3......1..4......7..7...3..",
"1...34.8....8..5....4.6..21.18......3..1.2..6......81.52..7.9....6..9....9.64...2",
"...92......68.3...19..7...623..4.1....1...7....8.3..297...8..91...5.72......64...",
".6.5.4.3.1...9...8.........9...5...6.4.6.2.7.7...4...5.........4...8...1.5.2.3.4.",
"7.....4...2..7..8...3..8.799..5..3...6..2..9...1.97..6...3..9...3..4..6...9..1.35",
"....7..2.8.......6.1.2.5...9.54....8.........3....85.1...3.2.8.4.......9.7..6...."};
  BEGIN
    FOR i := FIRST(puz) TO LAST(puz) DO
      Solve(puz[i]);
    END;
  END HardestPuzzles;
  
PROCEDURE Run() =
  VAR
    easy1,easy2,hard1,hard2,nosolution : TEXT;
  BEGIN  
    (* this one is solved at the end of ParseGrid and needs no search *)
    easy1  := "003020600900305001001806400008102900700000008006708200002609500800203009005010300";
    
    easy2  := "4.....8.5.3..........7......2.....6.....8.4......1.......6.3.7.5..2.....1.4......";
    
    (* takes about 6 - 8 seconds on a Core I3 *)
    hard1  := ".....6....59.....82....8....45........3........6..3.54...325..6..................";

   (* supposed to be be hardest puzzle ever but not really *) 
    hard2  := "8..........36......7..9.2...5...7.......457.....1...3...1....68..85...1..9....4..";

    (* this one takes a long time to run and produces no solution. About 0.2%
       of puzzles have no solution *)
    nosolution := ".....5.8....6.1.43..........1.5........1.6...3.......553.....61........4.........";

    
(* Debug *)
(*
    DisplayUnits();
    DisplayPeers();
*)   
    (* test puzzles *)
    Solve(easy2);

    EasyPuzzles();
    HardPuzzles();
    HardestPuzzles();
    
    FOR i := 1 TO 100 DO
      Solve(RandomPuzzle());
    END;
  END Run;
  
BEGIN
  Init();
  Run();
END Sudoku.
