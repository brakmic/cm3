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


#include <QtGui/qprogressbar.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QProgressBar * New_QProgressBar0(QWidget * parent) {
  QWidget *arg1 = (QWidget *) 0 ;
  QProgressBar *result = 0 ;
  QProgressBar * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  result = (QProgressBar *)new QProgressBar(arg1);
  *(QProgressBar **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QProgressBar * New_QProgressBar1() {
  QProgressBar *result = 0 ;
  QProgressBar * cresult ;
  
  result = (QProgressBar *)new QProgressBar();
  *(QProgressBar **)&cresult = result; 
  return cresult;
}


SWIGEXPORT int QProgressBar_minimum(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (int)((QProgressBar const *)arg1)->minimum();
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QProgressBar_maximum(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (int)((QProgressBar const *)arg1)->maximum();
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QProgressBar_value(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (int)((QProgressBar const *)arg1)->value();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QString * QProgressBar_text(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QString * cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QProgressBar const *)arg1)->text());
  return cresult;
}


SWIGEXPORT void QProgressBar_setTextVisible(QProgressBar * self, bool visible) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  bool arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = visible ? true : false; 
  (arg1)->setTextVisible(arg2);
}


SWIGEXPORT bool QProgressBar_isTextVisible(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (bool)((QProgressBar const *)arg1)->isTextVisible();
  cresult = result; 
  return cresult;
}


SWIGEXPORT Qt::Alignment QProgressBar_alignment(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  Qt::Alignment cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  *(Qt::Alignment **)&cresult = new Qt::Alignment((const Qt::Alignment &)((QProgressBar const *)arg1)->alignment());
  return cresult;
}


SWIGEXPORT void QProgressBar_setAlignment(QProgressBar * self, Qt::Alignment alignment) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  Qt::Alignment arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = (Qt::Alignment)alignment; 
  (arg1)->setAlignment(arg2);
}


SWIGEXPORT QSize * QProgressBar_sizeHint(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QProgressBar const *)arg1)->sizeHint());
  return cresult;
}


SWIGEXPORT QSize * QProgressBar_minimumSizeHint(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QProgressBar const *)arg1)->minimumSizeHint());
  return cresult;
}


SWIGEXPORT Qt::Orientation QProgressBar_orientation(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  Qt::Orientation result;
  Qt::Orientation cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (Qt::Orientation)((QProgressBar const *)arg1)->orientation();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QProgressBar_setInvertedAppearance(QProgressBar * self, bool invert) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  bool arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = invert ? true : false; 
  (arg1)->setInvertedAppearance(arg2);
}


SWIGEXPORT bool QProgressBar_invertedAppearance(QProgressBar * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (bool)(arg1)->invertedAppearance();
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QProgressBar_invertedAppearance1(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (bool)((QProgressBar const *)arg1)->invertedAppearance();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QProgressBar_setTextDirection(QProgressBar * self, QProgressBar::Direction textDirection) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QProgressBar::Direction arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = (QProgressBar::Direction)textDirection; 
  (arg1)->setTextDirection(arg2);
}


SWIGEXPORT QProgressBar::Direction QProgressBar_textDirection(QProgressBar * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QProgressBar::Direction result;
  QProgressBar::Direction cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (QProgressBar::Direction)(arg1)->textDirection();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QProgressBar::Direction QProgressBar_textDirection1(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QProgressBar::Direction result;
  QProgressBar::Direction cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  result = (QProgressBar::Direction)((QProgressBar const *)arg1)->textDirection();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QProgressBar_setFormat(QProgressBar * self, QString * format) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = *(QString **)&format;
  (arg1)->setFormat((QString const &)*arg2);
}


SWIGEXPORT QString * QProgressBar_format(QProgressBar const * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  QString * cresult ;
  
  arg1 = *(QProgressBar **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QProgressBar const *)arg1)->format());
  return cresult;
}


SWIGEXPORT void QProgressBar_reset(QProgressBar * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  
  arg1 = *(QProgressBar **)&self; 
  (arg1)->reset();
}


SWIGEXPORT void QProgressBar_setRange(QProgressBar * self, int minimum, int maximum) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  int arg2 ;
  int arg3 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = (int)minimum; 
  arg3 = (int)maximum; 
  (arg1)->setRange(arg2,arg3);
}


SWIGEXPORT void QProgressBar_setMinimum(QProgressBar * self, int minimum) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  int arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = (int)minimum; 
  (arg1)->setMinimum(arg2);
}


SWIGEXPORT void QProgressBar_setMaximum(QProgressBar * self, int maximum) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  int arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = (int)maximum; 
  (arg1)->setMaximum(arg2);
}


SWIGEXPORT void QProgressBar_setValue(QProgressBar * self, int value) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  int arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = (int)value; 
  (arg1)->setValue(arg2);
}


SWIGEXPORT void QProgressBar_setOrientation(QProgressBar * self, Qt::Orientation m3arg2) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  Qt::Orientation arg2 ;
  
  arg1 = *(QProgressBar **)&self; 
  arg2 = (Qt::Orientation)m3arg2; 
  (arg1)->setOrientation(arg2);
}


SWIGEXPORT void Delete_QProgressBar(QProgressBar * self) {
  QProgressBar *arg1 = (QProgressBar *) 0 ;
  
  arg1 = *(QProgressBar **)&self; 
  delete arg1;
}


SWIGEXPORT long Modula3_QProgressBarToQWidget(long objectRef) {
    long baseptr = 0;
    *(QWidget **)&baseptr = *(QProgressBar **)&objectRef;
    return baseptr;
}

#ifdef __cplusplus
}
#endif

