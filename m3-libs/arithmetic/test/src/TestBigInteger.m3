MODULE tBigInteger EXPORTS test;
(*Copyright (c) 1996, m3na project
Abstract:  Tests for BigInteger module.

3/6/96    Harry George   Initial version

*)

IMPORT
  BigIntegerBasic  AS B,
  BigIntegerRep    AS Br,
  BigIntegerFmtLex AS FL,
  xInteger   AS I,
  xWordEx AS Wx,
  Word AS W,
  Fmt AS F,
  Text;
(*=======================*)
CONST
  Module = "tBigInteger.";
(*----------------------*)
PROCEDURE test_basic():BOOLEAN=
CONST
  ftn = Module & "test_basic";
VAR
  result:=TRUE;
  carry:=TRUE;
  hi,lo:W.T;
BEGIN
  debug(1,ftn,"begin\n");
  msg("W.Size " & F.Int(W.Size) & "\n");
  msg("W.GT(2,3) " & F.Bool(W.GT(2,3)) & "\n");
  msg("PlusWithCarry " & F.Int(Wx.PlusWithCarry(2,3,carry)) & "\n");
  msg("MinusWithBorrow " & F.Int(Wx.MinusWithBorrow(2,3,carry)) & "\n");
  msg("MinusWithBorrow " & F.Int(Wx.MinusWithBorrow(5,3,carry)) & "\n");
  msg("MinusWithBorrow " & F.Int(Wx.MinusWithBorrow(5,3,carry)) & "\n");
  Wx.DoubleLengthMultiply(7,16_249,lo,hi);
  msg("DoubleLengthMultiply " & F.Int(hi,16) & " " & F.Int(lo,16) & "\n");
  msg("Plus " & F.Int(W.Plus(3,2)) & "\n");
  RETURN result;
END test_basic;
(*----------------------*)
PROCEDURE test_power():BOOLEAN=
CONST
  ftn = Module & "test_power";
  cycles  = 52;
VAR
  x, y, z : B.T;
  fff     : TEXT;
  result  := TRUE;
BEGIN
  debug(1,ftn,"begin\n");
  x := B.FromInteger(8);
  y := B.One;
  z := B.Zero;

  FOR j:=0 TO cycles-1 DO
    (*msg(F.FN("%2s: 16_%s, 2_%s\n", ARRAY OF TEXT{F.Int(j), FL.Fmt(z,16), FL.Fmt(z,2)}));*)
    z := Br.AddU(z,y);
    y := Br.MulU(y,x);
  END;
  (*msg(F.FN("%2s: 16_%s, 2_%s\n", ARRAY OF TEXT{F.Int(cycles), FL.Fmt(z,16), FL.Fmt(z,2)}));*)
  z := Br.MulU(z,B.FromInteger(7));
  fff := FL.Fmt(z,16);
  msg("multiply with 7: 16_" & fff & ": 2_" & FL.Fmt(z,2) & "\n");
  <*ASSERT Text.Length(fff) = (cycles DIV 4)*3 *>
  FOR j:=0 TO Text.Length(fff)-1 DO
    <*ASSERT Text.GetChar(fff,j)='f'*>
  END;

  RETURN result;
END test_power;
(*----------------------*)
PROCEDURE test_addshift():BOOLEAN=
CONST
  ftn = Module & "test_addshift";
  cycles  = 4*13;
VAR
  x, y    : B.T;
  q, r    : B.T;
  divisor : W.T;
  result  := TRUE;
  sh      := Br.BitPos{0,0};
BEGIN
  debug(1,ftn,"begin\n");
  x.data := NEW(Br.Value,cycles*3 DIV W.Size +2);
  x.size := NUMBER(x.data^);
  Br.Clear(x.data);

  FOR j:=0 TO cycles DO
(*
    msg(F.FN("%2s: bit %02s,%02s; 16_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,16)}));
*)
(*
    msg(F.FN("%2s: bit %s,%s; 16_%s, 2_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,16), FL.Fmt(x,2)}));
*)
    Br.AddShifted(x,j,sh);
    sh := Br.AddBitPos(sh,Br.BitPos{0,3});
  END;

  sh := Br.BitPos{0,0};
  FOR j:=0 TO cycles DO
(*
    msg(F.FN("%2s: bit %02s,%02s; 16_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,16)}));
*)
    Br.AddShifted(x,cycles-j,sh);
    sh := Br.AddBitPos(sh,Br.BitPos{0,3});
  END;

(*
  sh := Br.BitPos{0,0};
  quotient := cycles * 2_1001001001;
  FOR j:=0 TO cycles DO
    msg(F.FN("%2s: bit %02s,%02s; 16_%s\n",
             ARRAY OF TEXT{F.Int(j), F.Int(sh.word), F.Int(sh.bit), FL.Fmt(x,16)}));
    Br.SubShiftedProd(x,cycles-j,sh);
    sh := Br.AddBitPos(sh,Br.BitPos{0,3});
  END;
*)
  x := B.One;
  FOR j:=0 TO 13 DO
    x := Br.AddU(B.One,Br.MulU(x,B.FromInteger(16_1000)));
  END;
  y := Br.MulU(B.FromInteger(16_1000001),B.FromInteger(16_1001));
(*
  x := B.FromInteger(16_1001001);
  FOR j:=0 TO 1 DO
    x := Br.MulU(x,x);
  END;
  x := Br.AddU(x,B.One);
  y := B.FromInteger(16_1001001);
  y := Br.MulU(y,y);
*)
  msg(F.FN("x = 16_%s   y = 16_%s\n",
           ARRAY OF TEXT{FL.Fmt(x,16), FL.Fmt(y,16)}));
  q := Br.DivModU(x,y,r);
  msg(F.FN("q = 16_%s   r = 16_%s\n",
           ARRAY OF TEXT{FL.Fmt(q,16), FL.Fmt(r,16)}));
  q.sign := FALSE;
  r.sign := FALSE;
  <*ASSERT B.Equal(x,Br.AddU(r,Br.MulU(q,y)))*>

  RETURN result;
END test_addshift;
(*----------------------*)
PROCEDURE test_fibonacci():BOOLEAN=
CONST
  ftn = Module & "test_fibonacci";
VAR
  x, y, z : B.T;
  result:=TRUE;
BEGIN
  debug(1,ftn,"begin\n");
  x := B.Zero;
  y := B.One;
  (*x := B.FromInteger(16_7FFFFFFF);*)

  FOR j:=0 TO 100 DO
    (*msg("size: " & F.Int(x.size) & "\n");*)
    msg(F.Pad(F.Int(j),2) & ": 16_" & FL.Fmt(x,16) & ": 2_" & FL.Fmt(x,2) & "\n");
    z := Br.AddU(x,y);
    x := y;
    y := z;
  END;

  (*!!! compare with explicit formula !!!*)
  RETURN result;
END test_fibonacci;
(*-------------------------*)
PROCEDURE test_pseudoprime():BOOLEAN=
CONST
  ftn = Module & "test_pseudoprime";
VAR
  x : ARRAY [0..3] OF B.T;
  result:=TRUE;
  prime0, prime1 : BOOLEAN;
BEGIN
  debug(1,ftn,"begin\n");
  x[0] := B.FromInteger(3);
  x[1] := B.Zero;
  x[2] := B.FromInteger(2);

  FOR j:=3 TO 100 DO
    x[3] := B.Add (x[0], x[1]);
    prime0 := B.Equal(B.Zero, B.Mod(x[3],B.FromInteger(j)));
    prime1 := I.isprime(j);
    msg(F.Pad(F.Int(j),2) & ": " & FL.Fmt(x[3],10) & ", prime " & F.Bool(prime0) & "vs. " & F.Bool(prime1) & "\n");
    <*ASSERT prime0=prime1*>
    x[0] := x[1];
    x[1] := x[2];
    x[2] := x[3];
  END;
  RETURN result;
END test_pseudoprime;
(*-------------------------*)
PROCEDURE test_BigInteger():BOOLEAN=
CONST ftn = Module & "test_BigInteger";
VAR result:=TRUE;
BEGIN
  newline(); EVAL test_basic();
  newline(); EVAL test_power();
  newline(); EVAL test_addshift();
  (*newline(); EVAL test_fibonacci();*)
  newline(); EVAL test_pseudoprime();

  RETURN result;
END test_BigInteger;
(*=======================*)
BEGIN
END tBigInteger.
