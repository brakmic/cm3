(* Copyright 1996-2000, Critical Mass, Inc.  All rights reserved. *)
(* See file COPYRIGHT-CMASS for details. *)

UNSAFE MODULE String16;

IMPORT Word;

TYPE Ptr = UNTRACED REF WIDECHAR;

PROCEDURE Equal (a, b: ADDRESS;  len: CARDINAL): BOOLEAN =
(* Return "TRUE" if the strings of "len" characters starting
   at "a" and "b" have the same (case-sensitive) contents. *)
(* PRE: a MOD ADRSIZE(WIDECHAR) = 0 AND b MOD ADRSIZE(WIDECHAR) = 0 *) 
  VAR pa := LOOPHOLE (a, Ptr);  pb := LOOPHOLE (b, Ptr);
  BEGIN
    IF (len = 0) THEN RETURN TRUE; END;
    IF (a = NIL) OR (b = NIL) THEN RETURN FALSE; END;
    WHILE (len > 0) AND (pa^ = pb^) DO
      DEC (len);  INC (pa, ADRSIZE (pa^));  INC (pb, ADRSIZE (pb^));
    END;
    RETURN (len = 0);
  END Equal;

PROCEDURE Compare (a: ADDRESS;  len_a: CARDINAL;
                   b: ADDRESS;  len_b: CARDINAL): [-1..1] =
(* Return "-1" if string "a" occurs before string "b", "0" if the
   strings are equal, and "+1" if "a" occurs after "b" in
   lexicographic order. *)
(* PRE: a MOD ADRSIZE(WIDECHAR) = 0 AND b MOD ADRSIZE(WIDECHAR) = 0 *) 
  CONST Map = ARRAY BOOLEAN OF [-1..+1] { +1, -1 };
  VAR
    pa  := LOOPHOLE (a, Ptr);
    pb  := LOOPHOLE (b, Ptr);
    len := MIN (len_a, len_b);
  BEGIN
    WHILE (len > 0) AND (pa^ = pb^) DO
      DEC (len);  INC (pa, ADRSIZE (pa^));  INC (pb, ADRSIZE (pb^));
    END;
    IF    (len # 0)       THEN RETURN Map [pa^ < pb^];
    ELSIF (len_a # len_b) THEN RETURN Map [len_a < len_b];
    ELSE                       RETURN 0;
    END;
  END Compare;

PROCEDURE Hash (a: ADDRESS;  len: CARDINAL;  initial: INTEGER): INTEGER =
(* Return a hash function of the contents of string "a" starting
   with the value "initial". *)
(* PRE: a MOD ADRSIZE(WIDECHAR) = 0 *) 
  VAR p := LOOPHOLE (a, Ptr);  result := initial;
  BEGIN
    IF (p = NIL) THEN RETURN result; END;
    WHILE (len > 0) DO
      result := Word.Xor (Word.LeftRotate (result, 13), ORD (p^));
      INC (p, ADRSIZE (p^));  DEC (len);
    END;
    RETURN result;
  END Hash;

PROCEDURE FindChar (a: ADDRESS;  len: CARDINAL;  c: WIDECHAR): INTEGER =
(* If "c = a[i]" for some "i" in "[0~..~len-1]", return the
   smallest such "i"; otherwise, return "-1". *)
(* PRE: a MOD ADRSIZE(WIDECHAR) = 0 *) 
  VAR p := LOOPHOLE (a, Ptr);  cnt := len;
  BEGIN
    IF (p = NIL) THEN RETURN -1; END;
    WHILE (cnt > 0) DO
      IF (p^ = c) THEN RETURN len - cnt; END;
      INC (p, ADRSIZE (p^));  DEC (cnt);
    END;
    RETURN -1;
  END FindChar;

PROCEDURE FindCharR (a: ADDRESS;  len: CARDINAL;  c: WIDECHAR): INTEGER =
(* If "c = a[i]" for some "i" in "[0~..~len-1]", return the
   largest such "i"; otherwise, return "-1". *)
(* PRE: a MOD ADRSIZE(WIDECHAR) = 0 *) 
  VAR p: Ptr;
  BEGIN
    IF (a = NIL) THEN RETURN -1; END;
    p := LOOPHOLE (a + len * ADRSIZE (WIDECHAR), Ptr);
    WHILE (len > 0) DO
      DEC (p, ADRSIZE (p^));  DEC (len);
      IF (p^ = c) THEN RETURN len; END;
    END;
    RETURN -1;
  END FindCharR;

CONST WideCharsPerWord = BITSIZE (Word.T) DIV BITSIZE (WIDECHAR);
CONST WcMask = Word.Not (16_FF);  
CONST WordMask = 16_FF00FF00; 
(* ^FIXME: For different sizes of Word.T and WIDECHAR *) 

TYPE WordPtr = UNTRACED REF Word.T;  

PROCEDURE HasWideChars (a: ADDRESS; len: CARDINAL): BOOLEAN =
(* Return ORD(a[i] > LAST (CHAR), for some "i" in "[0~..~len-1]". *) 
(* PRE: a MOD ADRSIZE(WIDECHAR) = 0 *)
(* This algorithm assumes ADRSIZE(Word.T) MOD ADRSIZE(WIDECHAR) = 0. *)  
(* This algorithm assumes FIRST(CHAR) = 0 AND LAST(CHAR) = 16_FF. *)  
  BEGIN
    (* Do non-word-aligned WIDECHARs at the left. *) 
    WHILE Word.Mod (LOOPHOLE(a, Word.T), ADRSIZE (Word.T)) # 0 AND len > 0 DO
      IF Word.And (ORD (LOOPHOLE (a, Ptr)^), WcMask) # 0 THEN RETURN TRUE; END;
      INC (a, ADRSIZE (WIDECHAR));
      DEC (len);  
    END;  
    (* Do word-aligned WIDECHARs in the middle. *) 
    WHILE len >= WideCharsPerWord DO 
      IF Word.And 
           (ORD (LOOPHOLE (a, WordPtr)^), LOOPHOLE (WordMask, Word.T)) # 0 
      THEN 
        RETURN TRUE; 
      END;
      INC (a, ADRSIZE (Word.T));
      DEC (len, WideCharsPerWord);
    END; 
    (* Do remaining non-word-aligned WIDECHARs at the right. *) 
    WHILE len > 0 DO
      IF Word.And (ORD (LOOPHOLE (a, Ptr)^), WcMask) # 0 THEN RETURN TRUE; END;
      INC (a, ADRSIZE (WIDECHAR));
      DEC (len);  
    END;  
    RETURN FALSE; 
  END HasWideChars; 

PROCEDURE ArrayStart (READONLY a: ARRAY OF WIDECHAR): ADDRESS =
(* Returns the address of the first character of "a" if it is
   non-empty, otherwise returns "NIL".  WARNING: the returned
   address is only valid as long as "a" does not move.  To
   prevent heap allocated arrays from moving, keep the returned
   address on the stack. *)
  BEGIN
    IF NUMBER (a) < 1 THEN RETURN NIL; END;
    RETURN ADR (a[0]);
  END ArrayStart;

BEGIN
END String16.
