(* Copyright (C) 1990, Digital Equipment Corporation.         *)
(* All rights reserved.                                       *)
(* See the file COPYRIGHT for a full description.             *)

(* Last modified on Mon Oct 12 15:51:28 PDT 1992 by muller        *)

UNSAFE MODULE Usignal;

BEGIN
  BADSIG   := LOOPHOLE (-1, SignalHandler);
  SIG_ERR  := LOOPHOLE (-1, SignalHandler);
  SIG_DFL  := LOOPHOLE ( 0, SignalHandler);
  SIG_IGN  := LOOPHOLE ( 1, SignalHandler);
  SIG_HOLD := LOOPHOLE ( 3, SignalHandler);
END Usignal.
