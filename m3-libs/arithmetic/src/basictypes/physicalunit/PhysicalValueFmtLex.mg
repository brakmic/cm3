GENERIC MODULE PhysicalValueFmtLex(R,RT,RF,UDB);

IMPORT Fmt AS F,
       NADefinitions;

PROCEDURE FmtUnitPart (READONLY name : TEXT; exp : INTEGER) : TEXT =
  VAR
    res : TEXT;
  BEGIN
    IF exp<0 THEN
      res := "/";
      exp := -exp;
    ELSE
      res := " ";
    END;
    res := res & name;

    CASE exp OF
      | 1 => EVAL FALSE;
      | 2 => res := res  & "�";
      | 3 => res := res  & "�";
    ELSE
      res := res & "^" & F.Int(exp);
    END;

    RETURN res;
  END FmtUnitPart;

PROCEDURE Fmt (READONLY x : T; READONLY style : FmtStyle) : TEXT =
  VAR
    cu := UDB.DecomposeUnit(style.unitDataBase, x.unit);
    realExp, abs : R.T;

  BEGIN
    IF (cu=NIL) OR (R.IsZero(x.val)) THEN
      RETURN RF.Fmt(x.val,style.elemStyle);
    ELSE
      realExp := FLOAT(cu.head.exp,R.T);
      abs := RT.Abs(x.val);
      VAR
        factor:=R.One;
        cup:=cu.tail;
        <*FATAL NADefinitions.Error*>
      BEGIN
        WHILE cup#NIL DO
          factor:=factor*cup.head.uu.head.scales[cup.head.uu.head.defScale].mag;
          cup:=cup.tail;
        END;
        abs := RT.Pow (abs/factor, R.Rec(realExp));
      END;

      (* binary search for best unit prefix *)
      VAR
        (* consider the scales array as it would have
             an entry -infinity prepended and
             an entry +infinity appended *)
        scales := cu.head.uu.head.scales;
        minSU  : INTEGER := FIRST(scales^)-1;
        maxSU  : INTEGER := LAST (scales^)+1;
        su     : INTEGER := (minSU+maxSU) DIV 2;
      BEGIN
        WHILE su>minSU AND su<maxSU DO
          IF abs < scales[su].mag THEN
            maxSU := su;
          ELSE
            minSU := su;
          END;
          su := (minSU+maxSU) DIV 2;
        END;

        IF realExp>R.Zero THEN
          IF minSU<FIRST(scales^) THEN minSU := maxSU END;
        ELSE
          IF maxSU<=LAST(scales^) THEN minSU := maxSU END;
        END;

        VAR
          z   := R.Scale(x.val, RT.Pow(scales[minSU].mag,-realExp));
          res := RF.Fmt(z,style.elemStyle) &
                 FmtUnitPart(scales[minSU].symbol,cu.head.exp);
        BEGIN
          cu := cu.tail;
          WHILE cu#NIL DO
            res := res &
                   FmtUnitPart(cu.head.uu.head.scales
                                 [cu.head.uu.head.defScale].symbol,
                               cu.head.exp);
            cu := cu.tail;
          END;
          RETURN res;
        END;
      END;
    END;
  END Fmt;

BEGIN
END PhysicalValueFmtLex.
