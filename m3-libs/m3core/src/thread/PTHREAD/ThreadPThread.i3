(* Copyright (C) 2005, Purdue Research Foundation                  *)
(* All rights reserved.                                            *)
(* See the file COPYRIGHT-PURDUE for a full description.           *)

(*---------------------------------------------------------------------------*)

UNSAFE INTERFACE ThreadPThread;

FROM Ctypes IMPORT int;
FROM Cstddef IMPORT size_t;
FROM Upthread IMPORT pthread_t, start_routine_t;

(*---------------------------------------------------------------------------*)

PROCEDURE SignalHandler(sig: int; sip, uap: ADDRESS);

(*---------------------------------------------------------------------------*)

(*CONST*)
<*EXTERNAL "ThreadPThread__SIG_SUSPEND"*>VAR SIG_SUSPEND: int;

(*---------------------------------------------------------------------------*)

<*EXTERNAL "ThreadPThread__SetupHandlers"*> PROCEDURE SetupHandlers();

(*---------------------------------------------------------------------------*)

(* the semaphore is implied *)

<*EXTERNAL "ThreadPThread__sem_wait"*> PROCEDURE sem_wait (): int;
<*EXTERNAL "ThreadPThread__sem_post"*> PROCEDURE sem_post (): int;
<*EXTERNAL "ThreadPThread__sem_getvalue"*> PROCEDURE sem_getvalue (VAR value: int): int;

(*---------------------------------------------------------------------------*)

(* the signal set is implied *)

<*EXTERNAL "ThreadPThread__sigsuspend"*> PROCEDURE sigsuspend (): int;

(*---------------------------------------------------------------------------*)

(* pthread_create but replace attr with stackSize so that attr need not be known to Modula-3 *)

<*EXTERNAL "ThreadPThread__thread_create"*>
PROCEDURE thread_create(VAR pthread: pthread_t; stackSize: size_t; start_routine: start_routine_t; arg: ADDRESS): int;

(*---------------------------------------------------------------------------*)

(* implement the statically allocated mutexes and condition variables
These are werappers to:
 pthread_mutex_lock
 pthread_mutex_unlock
 pthread_cond_broadcast
 pthread_cond_wait
 
where the parameters are all implied, and are indicated
by the last part of the function name.
This reduces platform specific code as it removes
the need for the Modula-3 code to define the static mutexes and condition variable(s).
*)

<*EXTERNAL ThreadPThread__pthread_mutex_lock_active*> PROCEDURE pthread_mutex_lock_active():int;
<*EXTERNAL ThreadPThread__pthread_mutex_unlock_active*> PROCEDURE pthread_mutex_unlock_active():int;

<*EXTERNAL ThreadPThread__pthread_mutex_lock_slot*> PROCEDURE pthread_mutex_lock_slot():int;
<*EXTERNAL ThreadPThread__pthread_mutex_unlock_slot*> PROCEDURE pthread_mutex_unlock_slot():int;

<*EXTERNAL ThreadPThread__pthread_mutex_lock_init*> PROCEDURE pthread_mutex_lock_init():int;
<*EXTERNAL ThreadPThread__pthread_mutex_unlock_init*> PROCEDURE pthread_mutex_unlock_init():int;

<*EXTERNAL ThreadPThread__pthread_mutex_lock_perf*> PROCEDURE pthread_mutex_lock_perf():int;
<*EXTERNAL ThreadPThread__pthread_mutex_unlock_perf*> PROCEDURE pthread_mutex_unlock_perf():int;

<*EXTERNAL ThreadPThread__pthread_mutex_lock_heap*> PROCEDURE pthread_mutex_lock_heap():int;
<*EXTERNAL ThreadPThread__pthread_mutex_unlock_heap*> PROCEDURE pthread_mutex_unlock_heap():int;

<*EXTERNAL ThreadPThread__pthread_cond_broadcast_heap*> PROCEDURE pthread_cond_broadcast_heap():int;
<*EXTERNAL ThreadPThread__pthread_cond_wait_heap*> PROCEDURE pthread_cond_wait_heap():int;

(*---------------------------------------------------------------------------*)

(* support for dynamically allocated mutexes and condition variables *)

TYPE
    pthread_mutex_t = UNTRACED REF ARRAY OF CHAR;
    pthread_cond_t = UNTRACED REF ARRAY OF CHAR;

<*EXTERNAL ThreadPThread__sizeof_pthread_mutex_t*>
(*CONST*) VAR sizeof_pthread_mutex_t:int;

<*EXTERNAL ThreadPThread__sizeof_pthread_cond_t*>
(*CONST*) VAR sizeof_pthread_cond_t:int;

<*EXTERNAL*>
PROCEDURE pthread_mutex_init(mutex: pthread_mutex_t; attr:ADDRESS:=NIL):int;

(* This wrapper has some OS-specific bug workarounds. *)
<*EXTERNAL ThreadPThread__pthread_mutex_destroy*>
PROCEDURE pthread_mutex_destroy(mutex: pthread_mutex_t):int;

<*EXTERNAL*>
PROCEDURE pthread_mutex_lock(mutex: pthread_mutex_t):int;

<*EXTERNAL*>
PROCEDURE pthread_mutex_unlock(mutex: pthread_mutex_t):int;

<*EXTERNAL*>
PROCEDURE pthread_cond_init(cond: pthread_cond_t; attr:ADDRESS:=NIL):int;

<*EXTERNAL*>
PROCEDURE pthread_cond_destroy(cond: pthread_cond_t):int;

<*EXTERNAL*>
PROCEDURE pthread_cond_wait(cond: pthread_cond_t; mutex: pthread_mutex_t):int;

<*EXTERNAL*>
PROCEDURE pthread_cond_signal(cond: pthread_cond_t):int;

(*---------------------------------------------------------------------------*)

END ThreadPThread.
