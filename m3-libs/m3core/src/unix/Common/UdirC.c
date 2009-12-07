/* Copyright (C) 1990, Digital Equipment Corporation.         */
/* All rights reserved.                                       */
/* See the file COPYRIGHT for a full description.             */

#include "m3unix.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef _WIN32

#define M3MODULE Udir
M3WRAP1(DIR*, opendir, const char*)
M3WRAP1(void*, readdir, DIR*)
M3WRAP1(int, closedir, DIR*)

#endif

#ifdef __cplusplus
}
#endif
