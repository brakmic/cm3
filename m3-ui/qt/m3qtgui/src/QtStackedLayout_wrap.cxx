/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 * 
 * This file is not intended to be easily readable and contains a number of 
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG 
 * interface file instead. 
 * ----------------------------------------------------------------------------- */

#define SWIGMODULA3


#ifdef __cplusplus
/* SwigValueWrapper is described in swig.swg */
template<typename T> class SwigValueWrapper {
  struct SwigMovePointer {
    T *ptr;
    SwigMovePointer(T *p) : ptr(p) { }
    ~SwigMovePointer() { delete ptr; }
    SwigMovePointer& operator=(SwigMovePointer& rhs) { T* oldptr = ptr; ptr = 0; delete oldptr; ptr = rhs.ptr; rhs.ptr = 0; return *this; }
  } pointer;
  SwigValueWrapper& operator=(const SwigValueWrapper<T>& rhs);
  SwigValueWrapper(const SwigValueWrapper<T>& rhs);
public:
  SwigValueWrapper() : pointer(0) { }
  SwigValueWrapper& operator=(const T& t) { SwigMovePointer tmp(new T(t)); pointer = tmp; return *this; }
  operator T&() const { return *pointer.ptr; }
  T *operator&() { return pointer.ptr; }
};

template <typename T> T SwigValueInit() {
  return T();
}
#endif

/* -----------------------------------------------------------------------------
 *  This section contains generic SWIG labels for method/variable
 *  declarations/attributes, and other compiler dependent labels.
 * ----------------------------------------------------------------------------- */

/* template workaround for compilers that cannot correctly implement the C++ standard */
#ifndef SWIGTEMPLATEDISAMBIGUATOR
# if defined(__SUNPRO_CC) && (__SUNPRO_CC <= 0x560)
#  define SWIGTEMPLATEDISAMBIGUATOR template
# elif defined(__HP_aCC)
/* Needed even with `aCC -AA' when `aCC -V' reports HP ANSI C++ B3910B A.03.55 */
/* If we find a maximum version that requires this, the test would be __HP_aCC <= 35500 for A.03.55 */
#  define SWIGTEMPLATEDISAMBIGUATOR template
# else
#  define SWIGTEMPLATEDISAMBIGUATOR
# endif
#endif

/* inline attribute */
#ifndef SWIGINLINE
# if defined(__cplusplus) || (defined(__GNUC__) && !defined(__STRICT_ANSI__))
#   define SWIGINLINE inline
# else
#   define SWIGINLINE
# endif
#endif

/* attribute recognised by some compilers to avoid 'unused' warnings */
#ifndef SWIGUNUSED
# if defined(__GNUC__)
#   if !(defined(__cplusplus)) || (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4))
#     define SWIGUNUSED __attribute__ ((__unused__)) 
#   else
#     define SWIGUNUSED
#   endif
# elif defined(__ICC)
#   define SWIGUNUSED __attribute__ ((__unused__)) 
# else
#   define SWIGUNUSED 
# endif
#endif

#ifndef SWIG_MSC_UNSUPPRESS_4505
# if defined(_MSC_VER)
#   pragma warning(disable : 4505) /* unreferenced local function has been removed */
# endif 
#endif

#ifndef SWIGUNUSEDPARM
# ifdef __cplusplus
#   define SWIGUNUSEDPARM(p)
# else
#   define SWIGUNUSEDPARM(p) p SWIGUNUSED 
# endif
#endif

/* internal SWIG method */
#ifndef SWIGINTERN
# define SWIGINTERN static SWIGUNUSED
#endif

/* internal inline SWIG method */
#ifndef SWIGINTERNINLINE
# define SWIGINTERNINLINE SWIGINTERN SWIGINLINE
#endif

/* exporting methods */
#if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4)
#  ifndef GCC_HASCLASSVISIBILITY
#    define GCC_HASCLASSVISIBILITY
#  endif
#endif

#ifndef SWIGEXPORT
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   if defined(STATIC_LINKED)
#     define SWIGEXPORT
#   else
#     define SWIGEXPORT __declspec(dllexport)
#   endif
# else
#   if defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
#     define SWIGEXPORT __attribute__ ((visibility("default")))
#   else
#     define SWIGEXPORT
#   endif
# endif
#endif

/* calling conventions for Windows */
#ifndef SWIGSTDCALL
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   define SWIGSTDCALL __stdcall
# else
#   define SWIGSTDCALL
# endif 
#endif

/* Deal with Microsoft's attempt at deprecating C standard runtime functions */
#if !defined(SWIG_NO_CRT_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_CRT_SECURE_NO_DEPRECATE)
# define _CRT_SECURE_NO_DEPRECATE
#endif

/* Deal with Microsoft's attempt at deprecating methods in the standard C++ library */
#if !defined(SWIG_NO_SCL_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_SCL_SECURE_NO_DEPRECATE)
# define _SCL_SECURE_NO_DEPRECATE
#endif




#include <stdlib.h>
#include <string.h>
#include <stdio.h>


#include <QtGui/qstackedlayout.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QStackedLayout * New_QStackedLayout0() {
  QStackedLayout *result = 0 ;
  QStackedLayout * cresult ;
  
  result = (QStackedLayout *)new QStackedLayout();
  *(QStackedLayout **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QStackedLayout * New_QStackedLayout1(QWidget * parent) {
  QWidget *arg1 = (QWidget *) 0 ;
  QStackedLayout *result = 0 ;
  QStackedLayout * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  result = (QStackedLayout *)new QStackedLayout(arg1);
  *(QStackedLayout **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QStackedLayout * New_QStackedLayout2(QLayout * parentLayout) {
  QLayout *arg1 = (QLayout *) 0 ;
  QStackedLayout *result = 0 ;
  QStackedLayout * cresult ;
  
  arg1 = *(QLayout **)&parentLayout; 
  result = (QStackedLayout *)new QStackedLayout(arg1);
  *(QStackedLayout **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void Delete_QStackedLayout(QStackedLayout * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  
  arg1 = *(QStackedLayout **)&self; 
  delete arg1;
}


SWIGEXPORT int QStackedLayout_addWidget(QStackedLayout * self, QWidget * w) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QWidget *arg2 = (QWidget *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = *(QWidget **)&w; 
  result = (int)(arg1)->addWidget(arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QStackedLayout_insertWidget(QStackedLayout * self, int index, QWidget * w) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  int arg2 ;
  QWidget *arg3 = (QWidget *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = (int)index; 
  arg3 = *(QWidget **)&w; 
  result = (int)(arg1)->insertWidget(arg2,arg3);
  cresult = result; 
  return cresult;
}


SWIGEXPORT QWidget * QStackedLayout_currentWidget(QStackedLayout const * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QWidget *result = 0 ;
  QWidget * cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  result = (QWidget *)((QStackedLayout const *)arg1)->currentWidget();
  *(QWidget **)&cresult = result; 
  return cresult;
}


SWIGEXPORT int QStackedLayout_currentIndex(QStackedLayout const * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  result = (int)((QStackedLayout const *)arg1)->currentIndex();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QWidget * QStackedLayout_widget0_0(QStackedLayout * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QWidget *result = 0 ;
  QWidget * cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  result = (QWidget *)(arg1)->widget();
  *(QWidget **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QWidget * QStackedLayout_widget1(QStackedLayout const * self, int m3arg2) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  int arg2 ;
  QWidget *result = 0 ;
  QWidget * cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = (int)m3arg2; 
  result = (QWidget *)((QStackedLayout const *)arg1)->widget(arg2);
  *(QWidget **)&cresult = result; 
  return cresult;
}


SWIGEXPORT int QStackedLayout_count(QStackedLayout const * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  result = (int)((QStackedLayout const *)arg1)->count();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QStackedLayout::StackingMode QStackedLayout_stackingMode(QStackedLayout const * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QStackedLayout::StackingMode result;
  QStackedLayout::StackingMode cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  result = (QStackedLayout::StackingMode)((QStackedLayout const *)arg1)->stackingMode();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QStackedLayout_setStackingMode(QStackedLayout * self, QStackedLayout::StackingMode stackingMode) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QStackedLayout::StackingMode arg2 ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = (QStackedLayout::StackingMode)stackingMode; 
  (arg1)->setStackingMode(arg2);
}


SWIGEXPORT void QStackedLayout_addItem(QStackedLayout * self, QLayoutItem * item) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QLayoutItem *arg2 = (QLayoutItem *) 0 ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = *(QLayoutItem **)&item; 
  (arg1)->addItem(arg2);
}


SWIGEXPORT QSize * QStackedLayout_sizeHint(QStackedLayout const * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QStackedLayout const *)arg1)->sizeHint());
  return cresult;
}


SWIGEXPORT QSize * QStackedLayout_minimumSize(QStackedLayout const * self) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QStackedLayout const *)arg1)->minimumSize());
  return cresult;
}


SWIGEXPORT QLayoutItem * QStackedLayout_itemAt(QStackedLayout const * self, int m3arg2) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  int arg2 ;
  QLayoutItem *result = 0 ;
  QLayoutItem * cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = (int)m3arg2; 
  result = (QLayoutItem *)((QStackedLayout const *)arg1)->itemAt(arg2);
  *(QLayoutItem **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QLayoutItem * QStackedLayout_takeAt(QStackedLayout * self, int m3arg2) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  int arg2 ;
  QLayoutItem *result = 0 ;
  QLayoutItem * cresult ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = (int)m3arg2; 
  result = (QLayoutItem *)(arg1)->takeAt(arg2);
  *(QLayoutItem **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QStackedLayout_setGeometry(QStackedLayout * self, QRect * rect) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QRect *arg2 = 0 ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = *(QRect **)&rect;
  (arg1)->setGeometry((QRect const &)*arg2);
}


SWIGEXPORT void QStackedLayout_setCurrentIndex(QStackedLayout * self, int index) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  int arg2 ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = (int)index; 
  (arg1)->setCurrentIndex(arg2);
}


SWIGEXPORT void QStackedLayout_setCurrentWidget(QStackedLayout * self, QWidget * w) {
  QStackedLayout *arg1 = (QStackedLayout *) 0 ;
  QWidget *arg2 = (QWidget *) 0 ;
  
  arg1 = *(QStackedLayout **)&self; 
  arg2 = *(QWidget **)&w; 
  (arg1)->setCurrentWidget(arg2);
}


SWIGEXPORT long Modula3_QStackedLayoutToQLayout(long objectRef) {
    long baseptr = 0;
    *(QLayout **)&baseptr = *(QStackedLayout **)&objectRef;
    return baseptr;
}

#ifdef __cplusplus
}
#endif

