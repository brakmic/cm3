(* Copyright (C) 1990, Digital Equipment Corporation.         *)
(* All rights reserved.                                       *)
(* See the file COPYRIGHT for a full description.             *)

(* Last modified on Wed Mar 25 15:59:50 PST 1992 by muller           *)
(*      modified on Tue Jul 10 00:28:10 1990 by muller@cs.ruu.nl *)
(*      modified on Wed Jun 27 16:18:30 1990 by piet@cs.ruu.nl *)


INTERFACE Uresource;

FROM Ctypes IMPORT int, long;
IMPORT Utime;

(*** <sys/resource.h> ***)

CONST
  PRIO_MIN = -20;
  PRIO_MAX = 20;

  PRIO_PROCESS = 0;
  PRIO_PGRP    = 1;
  PRIO_USER    = 2;

(* Resource utilization information. *)

CONST
  RUSAGE_SELF     = 0;
  RUSAGE_CHILDREN = -1;

TYPE
  struct_rusage = RECORD
             ru_utime: Utime.struct_timeval;  (* user time used *)
             ru_stime: Utime.struct_timeval;  (* system time used *)
             ru_maxrss: long;
             ru_ixrss: long;            (* integral shared text size *)
             ru_idrss: long;            (* integral unshared data " *)
             ru_isrss: long;            (* integral unshared stack " *)
             ru_minflt: long;           (* page reclaims *)
             ru_majflt: long;           (* page faults *)
             ru_nswap: long;            (* swaps *)
             ru_inblock: long;          (* block input operations *)
             ru_oublock: long;          (* block output operations *)
             ru_ioch: long;             (* nbr of characters read/written *)
             ru_msgsnd: long;           (* messages sent *)
             ru_msgrcv: long;           (* messages received *)
             ru_nsignals: long;         (* signals received *)
             ru_nvcsw: long;            (* voluntary context switches *)
             ru_nivcsw: long;           (* involuntary " *) END;
  struct_rusage_star = UNTRACED REF struct_rusage;


(* Resource limits *)

CONST
  RLIMIT_CPU   = 0;		(* cpu time in milliseconds *)
  RLIMIT_FSIZE = 1;		(* maximum file size *)
  RLIMIT_DATA  = 2;		(* data size *)
  RLIMIT_STACK = 3;		(* stack size *)
  RLIMIT_CORE  = 4;		(* core file size *)
  RLIMIT_RSS   = 5;		(* resident set size *)
  RLIMIT_NOFILE = 6;		(* maximum number of open files *)
  RLIMIT_OPEN_MAX = RLIMIT_NOFILE;  (* maximum number of open files *)

  RLIM_NLIMITS = 7;		(* number of resource limits *)

  RLIM_INFINITY	= 16_7fffffff;

TYPE
  struct_rlimit = RECORD
	            rlim_cur: int;     (* current (soft) limit *)
 	            rlim_max: int;     (* maximum value for rlim_cur *)
                    END;

(*** getrlimit(2), setrlimit(2) - control maximum system resource
                                  consumption ***)

<*EXTERNAL*> PROCEDURE getrlimit (resource: int; VAR rlp: struct_rlimit): int;
<*EXTERNAL*> PROCEDURE setrlimit (resource: int; VAR rlp: struct_rlimit): int;


(*** getrusage(2) - get information about resource utilization ***)

<*EXTERNAL*> PROCEDURE getrusage (who: int; VAR rus: struct_rusage): int;


(*** getpriority(2), setpriority(2) - get/set program scheduling priority ***)

<*EXTERNAL*> PROCEDURE getpriority (which, who: int): int;
<*EXTERNAL*> PROCEDURE setpriority (which, who, prio: int): int;

(*** nice(3) - set program priority ***)

<*EXTERNAL*> PROCEDURE nice (incr: int): int;

END Uresource.
