(* Copyright (C) 1990, Digital Equipment Corporation           *)
(* All rights reserved.                                        *)
(* See the file COPYRIGHT for a full description.              *)

(* Last modified on Fri Apr 30 16:25:40 PDT 1993 by muller         *)

INTERFACE Csetjmp;		(* for LINUX *)

FROM Ctypes IMPORT long, int, void_star;
IMPORT Usignal;

(* In recent releases the jmp_buf seems to have grown rather large
   on PPC_LINUX systems. We now just use the largest value known,
   as it won't hurt on systems with smaller jmp_buf size. *)

CONST JMPBUF_SIZE = (64 + (12 * 4) * 4);

TYPE 
  ptr_t = void_star;

  jmp_buf = RECORD
    regs: ARRAY [0..JMPBUF_SIZE] OF long;
    mask_was_saved: long;
    saved_mask: Usignal.sigset_t; 
  END;

<*EXTERNAL*> PROCEDURE setjmp (VAR env: jmp_buf): int;
<*EXTERNAL*> PROCEDURE longjmp (VAR env: jmp_buf; val: int);

<*EXTERNAL "_setjmp" *>  PROCEDURE usetjmp (VAR env: jmp_buf): int;
<*EXTERNAL "_longjmp" *> PROCEDURE ulongjmp (VAR env: jmp_buf; val: int);

END Csetjmp.
