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


#include <QtGui/qlistview.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QListView * New_QListView0(QWidget * parent) {
  QWidget *arg1 = (QWidget *) 0 ;
  QListView *result = 0 ;
  QListView * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  result = (QListView *)new QListView(arg1);
  *(QListView **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QListView * New_QListView1() {
  QListView *result = 0 ;
  QListView * cresult ;
  
  result = (QListView *)new QListView();
  *(QListView **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void Delete_QListView(QListView * self) {
  QListView *arg1 = (QListView *) 0 ;
  
  arg1 = *(QListView **)&self; 
  delete arg1;
}


SWIGEXPORT void QListView_setMovement(QListView * self, QListView::Movement movement) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::Movement arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (QListView::Movement)movement; 
  (arg1)->setMovement(arg2);
}


SWIGEXPORT QListView::Movement QListView_movement(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::Movement result;
  QListView::Movement cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (QListView::Movement)((QListView const *)arg1)->movement();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setFlow(QListView * self, QListView::Flow flow) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::Flow arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (QListView::Flow)flow; 
  (arg1)->setFlow(arg2);
}


SWIGEXPORT QListView::Flow QListView_flow(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::Flow result;
  QListView::Flow cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (QListView::Flow)((QListView const *)arg1)->flow();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setWrapping(QListView * self, bool enable) {
  QListView *arg1 = (QListView *) 0 ;
  bool arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = enable ? true : false; 
  (arg1)->setWrapping(arg2);
}


SWIGEXPORT bool QListView_isWrapping(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (bool)((QListView const *)arg1)->isWrapping();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setResizeMode(QListView * self, QListView::ResizeMode mode) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::ResizeMode arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (QListView::ResizeMode)mode; 
  (arg1)->setResizeMode(arg2);
}


SWIGEXPORT QListView::ResizeMode QListView_resizeMode(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::ResizeMode result;
  QListView::ResizeMode cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (QListView::ResizeMode)((QListView const *)arg1)->resizeMode();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setLayoutMode(QListView * self, QListView::LayoutMode mode) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::LayoutMode arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (QListView::LayoutMode)mode; 
  (arg1)->setLayoutMode(arg2);
}


SWIGEXPORT QListView::LayoutMode QListView_layoutMode(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::LayoutMode result;
  QListView::LayoutMode cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (QListView::LayoutMode)((QListView const *)arg1)->layoutMode();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setSpacing(QListView * self, int space) {
  QListView *arg1 = (QListView *) 0 ;
  int arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (int)space; 
  (arg1)->setSpacing(arg2);
}


SWIGEXPORT int QListView_spacing(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (int)((QListView const *)arg1)->spacing();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setBatchSize(QListView * self, int batchSize) {
  QListView *arg1 = (QListView *) 0 ;
  int arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (int)batchSize; 
  (arg1)->setBatchSize(arg2);
}


SWIGEXPORT int QListView_batchSize(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (int)((QListView const *)arg1)->batchSize();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setGridSize(QListView * self, QSize * size) {
  QListView *arg1 = (QListView *) 0 ;
  QSize *arg2 = 0 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = *(QSize **)&size;
  (arg1)->setGridSize((QSize const &)*arg2);
}


SWIGEXPORT QSize * QListView_gridSize(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QListView **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QListView const *)arg1)->gridSize());
  return cresult;
}


SWIGEXPORT void QListView_setViewMode(QListView * self, QListView::ViewMode mode) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::ViewMode arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (QListView::ViewMode)mode; 
  (arg1)->setViewMode(arg2);
}


SWIGEXPORT QListView::ViewMode QListView_viewMode(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  QListView::ViewMode result;
  QListView::ViewMode cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (QListView::ViewMode)((QListView const *)arg1)->viewMode();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_clearPropertyFlags(QListView * self) {
  QListView *arg1 = (QListView *) 0 ;
  
  arg1 = *(QListView **)&self; 
  (arg1)->clearPropertyFlags();
}


SWIGEXPORT bool QListView_isRowHidden(QListView const * self, int row) {
  QListView *arg1 = (QListView *) 0 ;
  int arg2 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (int)row; 
  result = (bool)((QListView const *)arg1)->isRowHidden(arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setRowHidden(QListView * self, int row, bool hide) {
  QListView *arg1 = (QListView *) 0 ;
  int arg2 ;
  bool arg3 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (int)row; 
  arg3 = hide ? true : false; 
  (arg1)->setRowHidden(arg2,arg3);
}


SWIGEXPORT void QListView_setModelColumn(QListView * self, int column) {
  QListView *arg1 = (QListView *) 0 ;
  int arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = (int)column; 
  (arg1)->setModelColumn(arg2);
}


SWIGEXPORT int QListView_modelColumn(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (int)((QListView const *)arg1)->modelColumn();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setUniformItemSizes(QListView * self, bool enable) {
  QListView *arg1 = (QListView *) 0 ;
  bool arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = enable ? true : false; 
  (arg1)->setUniformItemSizes(arg2);
}


SWIGEXPORT bool QListView_uniformItemSizes(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (bool)((QListView const *)arg1)->uniformItemSizes();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setWordWrap(QListView * self, bool on) {
  QListView *arg1 = (QListView *) 0 ;
  bool arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = on ? true : false; 
  (arg1)->setWordWrap(arg2);
}


SWIGEXPORT bool QListView_wordWrap(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (bool)((QListView const *)arg1)->wordWrap();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QListView_setSelectionRectVisible(QListView * self, bool show) {
  QListView *arg1 = (QListView *) 0 ;
  bool arg2 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = show ? true : false; 
  (arg1)->setSelectionRectVisible(arg2);
}


SWIGEXPORT bool QListView_isSelectionRectVisible(QListView const * self) {
  QListView *arg1 = (QListView *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QListView **)&self; 
  result = (bool)((QListView const *)arg1)->isSelectionRectVisible();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QRect * QListView_visualRect(QListView const * self, QModelIndex * index) {
  QListView *arg1 = (QListView *) 0 ;
  QModelIndex *arg2 = 0 ;
  QRect * cresult ;
  
  arg1 = *(QListView **)&self; 
  arg2 = *(QModelIndex **)&index;
  *(QRect **)&cresult = new QRect((const QRect &)((QListView const *)arg1)->visualRect((QModelIndex const &)*arg2));
  return cresult;
}


SWIGEXPORT void QListView_scrollTo(QListView * self, QModelIndex * index, QAbstractItemView::ScrollHint hint) {
  QListView *arg1 = (QListView *) 0 ;
  QModelIndex *arg2 = 0 ;
  QAbstractItemView::ScrollHint arg3 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = *(QModelIndex **)&index;
  arg3 = (QAbstractItemView::ScrollHint)hint; 
  (arg1)->scrollTo((QModelIndex const &)*arg2,arg3);
}


SWIGEXPORT void QListView_scrollTo1(QListView * self, QModelIndex * index) {
  QListView *arg1 = (QListView *) 0 ;
  QModelIndex *arg2 = 0 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = *(QModelIndex **)&index;
  (arg1)->scrollTo((QModelIndex const &)*arg2);
}


SWIGEXPORT void QListView_doItemsLayout(QListView * self) {
  QListView *arg1 = (QListView *) 0 ;
  
  arg1 = *(QListView **)&self; 
  (arg1)->doItemsLayout();
}


SWIGEXPORT void QListView_reset(QListView * self) {
  QListView *arg1 = (QListView *) 0 ;
  
  arg1 = *(QListView **)&self; 
  (arg1)->reset();
}


SWIGEXPORT void QListView_setRootIndex(QListView * self, QModelIndex * index) {
  QListView *arg1 = (QListView *) 0 ;
  QModelIndex *arg2 = 0 ;
  
  arg1 = *(QListView **)&self; 
  arg2 = *(QModelIndex **)&index;
  (arg1)->setRootIndex((QModelIndex const &)*arg2);
}


SWIGEXPORT long Modula3_QListViewToQAbstractItemView(long objectRef) {
    long baseptr = 0;
    *(QAbstractItemView **)&baseptr = *(QListView **)&objectRef;
    return baseptr;
}

#ifdef __cplusplus
}
#endif

