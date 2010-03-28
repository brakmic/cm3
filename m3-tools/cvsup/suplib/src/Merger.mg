(* Copyright 1996-2003 John D. Polstra.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgment:
 *      This product includes software developed by John D. Polstra.
 * 4. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *)

GENERIC MODULE Merger(Elem);

REVEAL
  T = Public BRANDED OBJECT
    curA, curB: Elem.T;
    wantA, wantB := TRUE;
  OVERRIDES
    compare := Compare;
    next := Next;
  END;

PROCEDURE Compare(<*UNUSED*> self: T; READONLY a, b: Elem.T): [-1..1] =
  BEGIN
    RETURN Elem.Compare(a, b);
  END Compare;

PROCEDURE Next(self: T; VAR a, b: Elem.T): BOOLEAN RAISES ANY =
  VAR
    cmp: [-1..1];
  BEGIN
    IF self.wantA THEN
      self.curA := self.getA();
      self.wantA := FALSE;
    END;
    IF self.wantB THEN
      self.curB := self.getB();
      self.wantB := FALSE;
    END;

    IF self.curA # NIL OR self.curB # NIL THEN
      IF self.curA = NIL THEN  (* End of sequence A *)
	cmp := 1;
      ELSIF self.curB = NIL THEN  (* End of sequence B *)
	cmp := -1;
      ELSE
	cmp := self.compare(self.curA, self.curB);
      END;

      IF cmp <= 0 THEN
	a := self.curA;
	self.wantA := TRUE;
      ELSE
	a := NIL;
      END;
      IF cmp >= 0 THEN
	b := self.curB;
	self.wantB := TRUE;
      ELSE
	b := NIL;
      END;

      RETURN TRUE;
    END;

    RETURN FALSE;
  END Next;

BEGIN
END Merger.
