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


#include <QtGui/qaction.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QAction * New_QAction0(QObject * parent) {
  QObject *arg1 = (QObject *) 0 ;
  QAction *result = 0 ;
  QAction * cresult ;
  
  arg1 = *(QObject **)&parent; 
  result = (QAction *)new QAction(arg1);
  *(QAction **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QAction * New_QAction1(QString * text, QObject * parent) {
  QString *arg1 = 0 ;
  QObject *arg2 = (QObject *) 0 ;
  QAction *result = 0 ;
  QAction * cresult ;
  
  arg1 = *(QString **)&text;
  arg2 = *(QObject **)&parent; 
  result = (QAction *)new QAction((QString const &)*arg1,arg2);
  *(QAction **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QAction * New_QAction2(QIcon * icon, QString * text, QObject * parent) {
  QIcon *arg1 = 0 ;
  QString *arg2 = 0 ;
  QObject *arg3 = (QObject *) 0 ;
  QAction *result = 0 ;
  QAction * cresult ;
  
  arg1 = *(QIcon **)&icon;
  arg2 = *(QString **)&text;
  arg3 = *(QObject **)&parent; 
  result = (QAction *)new QAction((QIcon const &)*arg1,(QString const &)*arg2,arg3);
  *(QAction **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void Delete_QAction(QAction * self) {
  QAction *arg1 = (QAction *) 0 ;
  
  arg1 = *(QAction **)&self; 
  delete arg1;
}


SWIGEXPORT void QAction_setActionGroup(QAction * self, QActionGroup * group) {
  QAction *arg1 = (QAction *) 0 ;
  QActionGroup *arg2 = (QActionGroup *) 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QActionGroup **)&group; 
  (arg1)->setActionGroup(arg2);
}


SWIGEXPORT QActionGroup * QAction_actionGroup(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QActionGroup *result = 0 ;
  QActionGroup * cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (QActionGroup *)((QAction const *)arg1)->actionGroup();
  *(QActionGroup **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setIcon(QAction * self, QIcon * icon) {
  QAction *arg1 = (QAction *) 0 ;
  QIcon *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QIcon **)&icon;
  (arg1)->setIcon((QIcon const &)*arg2);
}


SWIGEXPORT QIcon * QAction_icon(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QIcon * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QIcon **)&cresult = new QIcon((const QIcon &)((QAction const *)arg1)->icon());
  return cresult;
}


SWIGEXPORT void QAction_setText(QAction * self, QString * text) {
  QAction *arg1 = (QAction *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QString **)&text;
  (arg1)->setText((QString const &)*arg2);
}


SWIGEXPORT QString * QAction_text(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QString * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QAction const *)arg1)->text());
  return cresult;
}


SWIGEXPORT void QAction_setIconText(QAction * self, QString * text) {
  QAction *arg1 = (QAction *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QString **)&text;
  (arg1)->setIconText((QString const &)*arg2);
}


SWIGEXPORT QString * QAction_iconText(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QString * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QAction const *)arg1)->iconText());
  return cresult;
}


SWIGEXPORT void QAction_setToolTip(QAction * self, QString * tip) {
  QAction *arg1 = (QAction *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QString **)&tip;
  (arg1)->setToolTip((QString const &)*arg2);
}


SWIGEXPORT QString * QAction_toolTip(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QString * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QAction const *)arg1)->toolTip());
  return cresult;
}


SWIGEXPORT void QAction_setStatusTip(QAction * self, QString * statusTip) {
  QAction *arg1 = (QAction *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QString **)&statusTip;
  (arg1)->setStatusTip((QString const &)*arg2);
}


SWIGEXPORT QString * QAction_statusTip(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QString * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QAction const *)arg1)->statusTip());
  return cresult;
}


SWIGEXPORT void QAction_setWhatsThis(QAction * self, QString * what) {
  QAction *arg1 = (QAction *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QString **)&what;
  (arg1)->setWhatsThis((QString const &)*arg2);
}


SWIGEXPORT QString * QAction_whatsThis(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QString * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QAction const *)arg1)->whatsThis());
  return cresult;
}


SWIGEXPORT void QAction_setPriority(QAction * self, QAction::Priority priority) {
  QAction *arg1 = (QAction *) 0 ;
  QAction::Priority arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = (QAction::Priority)priority; 
  (arg1)->setPriority(arg2);
}


SWIGEXPORT QAction::Priority QAction_priority(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QAction::Priority result;
  QAction::Priority cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (QAction::Priority)((QAction const *)arg1)->priority();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QMenu * QAction_menu(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QMenu *result = 0 ;
  QMenu * cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (QMenu *)((QAction const *)arg1)->menu();
  *(QMenu **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setMenu(QAction * self, QMenu * menu) {
  QAction *arg1 = (QAction *) 0 ;
  QMenu *arg2 = (QMenu *) 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QMenu **)&menu; 
  (arg1)->setMenu(arg2);
}


SWIGEXPORT void QAction_setSeparator(QAction * self, bool b) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = b ? true : false; 
  (arg1)->setSeparator(arg2);
}


SWIGEXPORT bool QAction_isSeparator(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)((QAction const *)arg1)->isSeparator();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setShortcut(QAction * self, QKeySequence * shortcut) {
  QAction *arg1 = (QAction *) 0 ;
  QKeySequence *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QKeySequence **)&shortcut;
  (arg1)->setShortcut((QKeySequence const &)*arg2);
}


SWIGEXPORT QKeySequence * QAction_shortcut(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QKeySequence * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QKeySequence **)&cresult = new QKeySequence((const QKeySequence &)((QAction const *)arg1)->shortcut());
  return cresult;
}


SWIGEXPORT void QAction_setShortcutContext(QAction * self, Qt::ShortcutContext context) {
  QAction *arg1 = (QAction *) 0 ;
  Qt::ShortcutContext arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = (Qt::ShortcutContext)context; 
  (arg1)->setShortcutContext(arg2);
}


SWIGEXPORT Qt::ShortcutContext QAction_shortcutContext(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  Qt::ShortcutContext result;
  Qt::ShortcutContext cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (Qt::ShortcutContext)((QAction const *)arg1)->shortcutContext();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setAutoRepeat(QAction * self, bool m3arg2) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setAutoRepeat(arg2);
}


SWIGEXPORT bool QAction_autoRepeat(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)((QAction const *)arg1)->autoRepeat();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setFont(QAction * self, QFont * font) {
  QAction *arg1 = (QAction *) 0 ;
  QFont *arg2 = 0 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QFont **)&font;
  (arg1)->setFont((QFont const &)*arg2);
}


SWIGEXPORT QFont * QAction_font(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QFont * cresult ;
  
  arg1 = *(QAction **)&self; 
  *(QFont **)&cresult = new QFont((const QFont &)((QAction const *)arg1)->font());
  return cresult;
}


SWIGEXPORT void QAction_setCheckable(QAction * self, bool m3arg2) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setCheckable(arg2);
}


SWIGEXPORT bool QAction_isCheckable(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)((QAction const *)arg1)->isCheckable();
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QAction_isChecked(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)((QAction const *)arg1)->isChecked();
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QAction_isEnabled(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)((QAction const *)arg1)->isEnabled();
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QAction_isVisible(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)((QAction const *)arg1)->isVisible();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_activate(QAction * self, QAction::ActionEvent event) {
  QAction *arg1 = (QAction *) 0 ;
  QAction::ActionEvent arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = (QAction::ActionEvent)event; 
  (arg1)->activate(arg2);
}


SWIGEXPORT bool QAction_showStatusText(QAction * self, QWidget * widget) {
  QAction *arg1 = (QAction *) 0 ;
  QWidget *arg2 = (QWidget *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  arg2 = *(QWidget **)&widget; 
  result = (bool)(arg1)->showStatusText(arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QAction_showStatusText1(QAction * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)(arg1)->showStatusText();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setMenuRole(QAction * self, QAction::MenuRole menuRole) {
  QAction *arg1 = (QAction *) 0 ;
  QAction::MenuRole arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = (QAction::MenuRole)menuRole; 
  (arg1)->setMenuRole(arg2);
}


SWIGEXPORT QAction::MenuRole QAction_menuRole(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QAction::MenuRole result;
  QAction::MenuRole cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (QAction::MenuRole)((QAction const *)arg1)->menuRole();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setSoftKeyRole(QAction * self, QAction::SoftKeyRole softKeyRole) {
  QAction *arg1 = (QAction *) 0 ;
  QAction::SoftKeyRole arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = (QAction::SoftKeyRole)softKeyRole; 
  (arg1)->setSoftKeyRole(arg2);
}


SWIGEXPORT QAction::SoftKeyRole QAction_softKeyRole(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QAction::SoftKeyRole result;
  QAction::SoftKeyRole cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (QAction::SoftKeyRole)((QAction const *)arg1)->softKeyRole();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_setIconVisibleInMenu(QAction * self, bool visible) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = visible ? true : false; 
  (arg1)->setIconVisibleInMenu(arg2);
}


SWIGEXPORT bool QAction_isIconVisibleInMenu(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (bool)((QAction const *)arg1)->isIconVisibleInMenu();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QWidget * QAction_parentWidget(QAction const * self) {
  QAction *arg1 = (QAction *) 0 ;
  QWidget *result = 0 ;
  QWidget * cresult ;
  
  arg1 = *(QAction **)&self; 
  result = (QWidget *)((QAction const *)arg1)->parentWidget();
  *(QWidget **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QAction_trigger(QAction * self) {
  QAction *arg1 = (QAction *) 0 ;
  
  arg1 = *(QAction **)&self; 
  (arg1)->trigger();
}


SWIGEXPORT void QAction_hover(QAction * self) {
  QAction *arg1 = (QAction *) 0 ;
  
  arg1 = *(QAction **)&self; 
  (arg1)->hover();
}


SWIGEXPORT void QAction_setChecked(QAction * self, bool m3arg2) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setChecked(arg2);
}


SWIGEXPORT void QAction_toggle(QAction * self) {
  QAction *arg1 = (QAction *) 0 ;
  
  arg1 = *(QAction **)&self; 
  (arg1)->toggle();
}


SWIGEXPORT void QAction_setEnabled(QAction * self, bool m3arg2) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setEnabled(arg2);
}


SWIGEXPORT void QAction_setDisabled(QAction * self, bool b) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = b ? true : false; 
  (arg1)->setDisabled(arg2);
}


SWIGEXPORT void QAction_setVisible(QAction * self, bool m3arg2) {
  QAction *arg1 = (QAction *) 0 ;
  bool arg2 ;
  
  arg1 = *(QAction **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setVisible(arg2);
}


SWIGEXPORT long Modula3_QActionToQObject(long objectRef) {
    long baseptr = 0;
    *(QObject **)&baseptr = *(QAction **)&objectRef;
    return baseptr;
}

#ifdef __cplusplus
}
#endif

