(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtListWidget;


FROM QtIcon IMPORT QIcon;
FROM QtSize IMPORT QSize;
IMPORT QtListWidgetRaw;
FROM QtFont IMPORT QFont;
FROM QtColor IMPORT QColor;
FROM QtString IMPORT QString;
FROM QtWidget IMPORT QWidget;
FROM QtBrush IMPORT QBrush;
FROM QtPoint IMPORT QPoint;
FROM QtNamespace IMPORT ItemFlags, CheckState, SortOrder;
FROM QtRect IMPORT QRect;
FROM QtAbstractItemView IMPORT ScrollHint;


IMPORT WeakRef;
FROM QtByteArray IMPORT QByteArray;

PROCEDURE New_QListWidgetItem0
  (self: QListWidgetItem; view: QListWidget; type: INTEGER; ):
  QListWidgetItem =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(view.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem0(arg1tmp, type);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem0;

PROCEDURE New_QListWidgetItem1
  (self: QListWidgetItem; view: QListWidget; ): QListWidgetItem =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(view.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem1(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem1;

PROCEDURE New_QListWidgetItem2 (self: QListWidgetItem; ): QListWidgetItem =
  VAR result: ADDRESS;
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem2();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem2;

PROCEDURE New_QListWidgetItem3
  (self: QListWidgetItem; text: TEXT; view: QListWidget; type: INTEGER; ):
  QListWidgetItem =
  VAR
    result   : ADDRESS;
    qstr_text          := NEW(QString).initQString(text);
    arg1tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
    arg2tmp            := LOOPHOLE(view.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem3(arg1tmp, arg2tmp, type);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem3;

PROCEDURE New_QListWidgetItem4
  (self: QListWidgetItem; text: TEXT; view: QListWidget; ):
  QListWidgetItem =
  VAR
    result   : ADDRESS;
    qstr_text          := NEW(QString).initQString(text);
    arg1tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
    arg2tmp            := LOOPHOLE(view.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem4(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem4;

PROCEDURE New_QListWidgetItem5 (self: QListWidgetItem; text: TEXT; ):
  QListWidgetItem =
  VAR
    result   : ADDRESS;
    qstr_text          := NEW(QString).initQString(text);
    arg1tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem5(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem5;

PROCEDURE New_QListWidgetItem6 (self: QListWidgetItem;
                                icon: QIcon;
                                text: TEXT;
                                view: QListWidget;
                                type: INTEGER;         ): QListWidgetItem =
  VAR
    result   : ADDRESS;
    arg1tmp            := LOOPHOLE(icon.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg2tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
    arg3tmp            := LOOPHOLE(view.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem6(
                arg1tmp, arg2tmp, arg3tmp, type);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem6;

PROCEDURE New_QListWidgetItem7
  (self: QListWidgetItem; icon: QIcon; text: TEXT; view: QListWidget; ):
  QListWidgetItem =
  VAR
    result   : ADDRESS;
    arg1tmp            := LOOPHOLE(icon.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg2tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
    arg3tmp            := LOOPHOLE(view.cxxObj, ADDRESS);
  BEGIN
    result :=
      QtListWidgetRaw.New_QListWidgetItem7(arg1tmp, arg2tmp, arg3tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem7;

PROCEDURE New_QListWidgetItem8
  (self: QListWidgetItem; icon: QIcon; text: TEXT; ): QListWidgetItem =
  VAR
    result   : ADDRESS;
    arg1tmp            := LOOPHOLE(icon.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg2tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem8(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem8;

PROCEDURE New_QListWidgetItem9
  (self: QListWidgetItem; other: QListWidgetItem; ): QListWidgetItem =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(other.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidgetItem9(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END New_QListWidgetItem9;

PROCEDURE Delete_QListWidgetItem (self: QListWidgetItem; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.Delete_QListWidgetItem(arg1tmp);
  END Delete_QListWidgetItem;

PROCEDURE QListWidgetItem_clone (self: QListWidgetItem; ):
  QListWidgetItem =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.QListWidgetItem_clone(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);

    RETURN self;
  END QListWidgetItem_clone;

PROCEDURE QListWidgetItem_listWidget (self: QListWidgetItem; ):
  QListWidget =
  VAR
    ret    : ADDRESS;
    result : QListWidget;
    arg1tmp              := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_listWidget(arg1tmp);

    result := NEW(QListWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_listWidget;

PROCEDURE QListWidgetItem_setSelected
  (self: QListWidgetItem; select: BOOLEAN; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setSelected(arg1tmp, select);
  END QListWidgetItem_setSelected;

PROCEDURE QListWidgetItem_isSelected (self: QListWidgetItem; ): BOOLEAN =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidgetItem_isSelected(arg1tmp);
  END QListWidgetItem_isSelected;

PROCEDURE QListWidgetItem_setHidden
  (self: QListWidgetItem; hide: BOOLEAN; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setHidden(arg1tmp, hide);
  END QListWidgetItem_setHidden;

PROCEDURE QListWidgetItem_isHidden (self: QListWidgetItem; ): BOOLEAN =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidgetItem_isHidden(arg1tmp);
  END QListWidgetItem_isHidden;

PROCEDURE QListWidgetItem_flags (self: QListWidgetItem; ): ItemFlags =
  VAR
    ret    : INTEGER;
    result : ItemFlags;
    arg1tmp            := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_flags(arg1tmp);
    result := VAL(ret, ItemFlags);
    RETURN result;
  END QListWidgetItem_flags;

PROCEDURE QListWidgetItem_setFlags
  (self: QListWidgetItem; flags: ItemFlags; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setFlags(arg1tmp, ORD(flags));
  END QListWidgetItem_setFlags;

PROCEDURE QListWidgetItem_text (self: QListWidgetItem; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp             := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_text(arg1tmp);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QListWidgetItem_text;

PROCEDURE QListWidgetItem_setText (self: QListWidgetItem; text: TEXT; ) =
  VAR
    arg1tmp   := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text := NEW(QString).initQString(text);
    arg2tmp   := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setText(arg1tmp, arg2tmp);
  END QListWidgetItem_setText;

PROCEDURE QListWidgetItem_icon (self: QListWidgetItem; ): QIcon =
  VAR
    ret    : ADDRESS;
    result : QIcon;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_icon(arg1tmp);

    result := NEW(QIcon);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_icon;

PROCEDURE QListWidgetItem_setIcon (self: QListWidgetItem; icon: QIcon; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(icon.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setIcon(arg1tmp, arg2tmp);
  END QListWidgetItem_setIcon;

PROCEDURE QListWidgetItem_statusTip (self: QListWidgetItem; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp             := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_statusTip(arg1tmp);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QListWidgetItem_statusTip;

PROCEDURE QListWidgetItem_setStatusTip
  (self: QListWidgetItem; statusTip: TEXT; ) =
  VAR
    arg1tmp        := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_statusTip := NEW(QString).initQString(statusTip);
    arg2tmp        := LOOPHOLE(qstr_statusTip.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setStatusTip(arg1tmp, arg2tmp);
  END QListWidgetItem_setStatusTip;

PROCEDURE QListWidgetItem_toolTip (self: QListWidgetItem; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp             := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_toolTip(arg1tmp);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QListWidgetItem_toolTip;

PROCEDURE QListWidgetItem_setToolTip
  (self: QListWidgetItem; toolTip: TEXT; ) =
  VAR
    arg1tmp      := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_toolTip := NEW(QString).initQString(toolTip);
    arg2tmp      := LOOPHOLE(qstr_toolTip.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setToolTip(arg1tmp, arg2tmp);
  END QListWidgetItem_setToolTip;

PROCEDURE QListWidgetItem_whatsThis (self: QListWidgetItem; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp             := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_whatsThis(arg1tmp);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QListWidgetItem_whatsThis;

PROCEDURE QListWidgetItem_setWhatsThis
  (self: QListWidgetItem; whatsThis: TEXT; ) =
  VAR
    arg1tmp        := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_whatsThis := NEW(QString).initQString(whatsThis);
    arg2tmp        := LOOPHOLE(qstr_whatsThis.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setWhatsThis(arg1tmp, arg2tmp);
  END QListWidgetItem_setWhatsThis;

PROCEDURE QListWidgetItem_font (self: QListWidgetItem; ): QFont =
  VAR
    ret    : ADDRESS;
    result : QFont;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_font(arg1tmp);

    result := NEW(QFont);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_font;

PROCEDURE QListWidgetItem_setFont (self: QListWidgetItem; font: QFont; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(font.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setFont(arg1tmp, arg2tmp);
  END QListWidgetItem_setFont;

PROCEDURE QListWidgetItem_textAlignment (self: QListWidgetItem; ):
  INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidgetItem_textAlignment(arg1tmp);
  END QListWidgetItem_textAlignment;

PROCEDURE QListWidgetItem_setTextAlignment
  (self: QListWidgetItem; alignment: INTEGER; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setTextAlignment(arg1tmp, alignment);
  END QListWidgetItem_setTextAlignment;

PROCEDURE QListWidgetItem_backgroundColor (self: QListWidgetItem; ):
  QColor =
  VAR
    ret    : ADDRESS;
    result : QColor;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_backgroundColor(arg1tmp);

    result := NEW(QColor);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_backgroundColor;

PROCEDURE QListWidgetItem_setBackgroundColor
  (self: QListWidgetItem; color: QColor; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(color.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setBackgroundColor(arg1tmp, arg2tmp);
  END QListWidgetItem_setBackgroundColor;

PROCEDURE QListWidgetItem_background (self: QListWidgetItem; ): QBrush =
  VAR
    ret    : ADDRESS;
    result : QBrush;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_background(arg1tmp);

    result := NEW(QBrush);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_background;

PROCEDURE QListWidgetItem_setBackground
  (self: QListWidgetItem; brush: QBrush; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(brush.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setBackground(arg1tmp, arg2tmp);
  END QListWidgetItem_setBackground;

PROCEDURE QListWidgetItem_textColor (self: QListWidgetItem; ): QColor =
  VAR
    ret    : ADDRESS;
    result : QColor;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_textColor(arg1tmp);

    result := NEW(QColor);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_textColor;

PROCEDURE QListWidgetItem_setTextColor
  (self: QListWidgetItem; color: QColor; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(color.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setTextColor(arg1tmp, arg2tmp);
  END QListWidgetItem_setTextColor;

PROCEDURE QListWidgetItem_foreground (self: QListWidgetItem; ): QBrush =
  VAR
    ret    : ADDRESS;
    result : QBrush;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_foreground(arg1tmp);

    result := NEW(QBrush);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_foreground;

PROCEDURE QListWidgetItem_setForeground
  (self: QListWidgetItem; brush: QBrush; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(brush.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setForeground(arg1tmp, arg2tmp);
  END QListWidgetItem_setForeground;

PROCEDURE QListWidgetItem_checkState (self: QListWidgetItem; ):
  CheckState =
  VAR
    ret    : INTEGER;
    result : CheckState;
    arg1tmp             := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_checkState(arg1tmp);
    result := VAL(ret, CheckState);
    RETURN result;
  END QListWidgetItem_checkState;

PROCEDURE QListWidgetItem_setCheckState
  (self: QListWidgetItem; state: CheckState; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setCheckState(arg1tmp, ORD(state));
  END QListWidgetItem_setCheckState;

PROCEDURE QListWidgetItem_sizeHint (self: QListWidgetItem; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidgetItem_sizeHint(arg1tmp);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidgetItem_sizeHint;

PROCEDURE QListWidgetItem_setSizeHint
  (self: QListWidgetItem; size: QSize; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidgetItem_setSizeHint(arg1tmp, arg2tmp);
  END QListWidgetItem_setSizeHint;

PROCEDURE QListWidgetItem_type (self: QListWidgetItem; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidgetItem_type(arg1tmp);
  END QListWidgetItem_type;

PROCEDURE Cleanup_QListWidgetItem
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QListWidgetItem := ref;
  BEGIN
    Delete_QListWidgetItem(obj);
  END Cleanup_QListWidgetItem;

PROCEDURE Destroy_QListWidgetItem (self: QListWidgetItem) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QListWidgetItem);
  END Destroy_QListWidgetItem;

REVEAL
  QListWidgetItem =
    QListWidgetItemPublic BRANDED OBJECT
    OVERRIDES
      init_0             := New_QListWidgetItem0;
      init_1             := New_QListWidgetItem1;
      init_2             := New_QListWidgetItem2;
      init_3             := New_QListWidgetItem3;
      init_4             := New_QListWidgetItem4;
      init_5             := New_QListWidgetItem5;
      init_6             := New_QListWidgetItem6;
      init_7             := New_QListWidgetItem7;
      init_8             := New_QListWidgetItem8;
      init_9             := New_QListWidgetItem9;
      clone              := QListWidgetItem_clone;
      listWidget         := QListWidgetItem_listWidget;
      setSelected        := QListWidgetItem_setSelected;
      isSelected         := QListWidgetItem_isSelected;
      setHidden          := QListWidgetItem_setHidden;
      isHidden           := QListWidgetItem_isHidden;
      flags              := QListWidgetItem_flags;
      setFlags           := QListWidgetItem_setFlags;
      text               := QListWidgetItem_text;
      setText            := QListWidgetItem_setText;
      icon               := QListWidgetItem_icon;
      setIcon            := QListWidgetItem_setIcon;
      statusTip          := QListWidgetItem_statusTip;
      setStatusTip       := QListWidgetItem_setStatusTip;
      toolTip            := QListWidgetItem_toolTip;
      setToolTip         := QListWidgetItem_setToolTip;
      whatsThis          := QListWidgetItem_whatsThis;
      setWhatsThis       := QListWidgetItem_setWhatsThis;
      font               := QListWidgetItem_font;
      setFont            := QListWidgetItem_setFont;
      textAlignment      := QListWidgetItem_textAlignment;
      setTextAlignment   := QListWidgetItem_setTextAlignment;
      backgroundColor    := QListWidgetItem_backgroundColor;
      setBackgroundColor := QListWidgetItem_setBackgroundColor;
      background         := QListWidgetItem_background;
      setBackground      := QListWidgetItem_setBackground;
      textColor          := QListWidgetItem_textColor;
      setTextColor       := QListWidgetItem_setTextColor;
      foreground         := QListWidgetItem_foreground;
      setForeground      := QListWidgetItem_setForeground;
      checkState         := QListWidgetItem_checkState;
      setCheckState      := QListWidgetItem_setCheckState;
      sizeHint           := QListWidgetItem_sizeHint;
      setSizeHint        := QListWidgetItem_setSizeHint;
      type               := QListWidgetItem_type;
      destroyCxx         := Destroy_QListWidgetItem;
    END;

PROCEDURE New_QListWidget0 (self: QListWidget; parent: QWidget; ):
  QListWidget =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtListWidgetRaw.New_QListWidget0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidget);

    RETURN self;
  END New_QListWidget0;

PROCEDURE New_QListWidget1 (self: QListWidget; ): QListWidget =
  VAR result: ADDRESS;
  BEGIN
    result := QtListWidgetRaw.New_QListWidget1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QListWidget);

    RETURN self;
  END New_QListWidget1;

PROCEDURE Delete_QListWidget (self: QListWidget; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.Delete_QListWidget(arg1tmp);
  END Delete_QListWidget;

PROCEDURE QListWidget_item (self: QListWidget; row: INTEGER; ):
  QListWidgetItem =
  VAR
    ret    : ADDRESS;
    result : QListWidgetItem;
    arg1tmp                  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidget_item(arg1tmp, row);

    result := NEW(QListWidgetItem);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidget_item;

PROCEDURE QListWidget_row (self: QListWidget; item: QListWidgetItem; ):
  INTEGER =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidget_row(arg1tmp, arg2tmp);
  END QListWidget_row;

PROCEDURE QListWidget_insertItem
  (self: QListWidget; row: INTEGER; item: QListWidgetItem; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg3tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_insertItem(arg1tmp, row, arg3tmp);
  END QListWidget_insertItem;

PROCEDURE QListWidget_insertItem1
  (self: QListWidget; row: INTEGER; label: TEXT; ) =
  VAR
    arg1tmp    := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_label := NEW(QString).initQString(label);
    arg3tmp    := LOOPHOLE(qstr_label.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_insertItem1(arg1tmp, row, arg3tmp);
  END QListWidget_insertItem1;

PROCEDURE QListWidget_addItem (self: QListWidget; label: TEXT; ) =
  VAR
    arg1tmp    := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_label := NEW(QString).initQString(label);
    arg2tmp    := LOOPHOLE(qstr_label.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_addItem(arg1tmp, arg2tmp);
  END QListWidget_addItem;

PROCEDURE QListWidget_addItem1
  (self: QListWidget; item: QListWidgetItem; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_addItem1(arg1tmp, arg2tmp);
  END QListWidget_addItem1;

PROCEDURE QListWidget_takeItem (self: QListWidget; row: INTEGER; ):
  QListWidgetItem =
  VAR
    ret    : ADDRESS;
    result : QListWidgetItem;
    arg1tmp                  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidget_takeItem(arg1tmp, row);

    result := NEW(QListWidgetItem);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidget_takeItem;

PROCEDURE QListWidget_count (self: QListWidget; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidget_count(arg1tmp);
  END QListWidget_count;

PROCEDURE QListWidget_currentItem (self: QListWidget; ): QListWidgetItem =
  VAR
    ret    : ADDRESS;
    result : QListWidgetItem;
    arg1tmp                  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidget_currentItem(arg1tmp);

    result := NEW(QListWidgetItem);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidget_currentItem;

PROCEDURE QListWidget_currentRow (self: QListWidget; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidget_currentRow(arg1tmp);
  END QListWidget_currentRow;

PROCEDURE QListWidget_setCurrentRow (self: QListWidget; row: INTEGER; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_setCurrentRow(arg1tmp, row);
  END QListWidget_setCurrentRow;

PROCEDURE QListWidget_itemAt (self: QListWidget; p: QPoint; ):
  QListWidgetItem =
  VAR
    ret    : ADDRESS;
    result : QListWidgetItem;
    arg1tmp                  := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp                  := LOOPHOLE(p.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidget_itemAt(arg1tmp, arg2tmp);

    result := NEW(QListWidgetItem);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidget_itemAt;

PROCEDURE QListWidget_itemAt1 (self: QListWidget; x, y: INTEGER; ):
  QListWidgetItem =
  VAR
    ret    : ADDRESS;
    result : QListWidgetItem;
    arg1tmp                  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidget_itemAt1(arg1tmp, x, y);

    result := NEW(QListWidgetItem);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidget_itemAt1;

PROCEDURE QListWidget_visualItemRect
  (self: QListWidget; item: QListWidgetItem; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidget_visualItemRect(arg1tmp, arg2tmp);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidget_visualItemRect;

PROCEDURE QListWidget_sortItems (self: QListWidget; order: SortOrder; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_sortItems(arg1tmp, ORD(order));
  END QListWidget_sortItems;

PROCEDURE QListWidget_sortItems1 (self: QListWidget; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_sortItems1(arg1tmp);
  END QListWidget_sortItems1;

PROCEDURE QListWidget_setSortingEnabled
  (self: QListWidget; enable: BOOLEAN; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_setSortingEnabled(arg1tmp, enable);
  END QListWidget_setSortingEnabled;

PROCEDURE QListWidget_isSortingEnabled (self: QListWidget; ): BOOLEAN =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidget_isSortingEnabled(arg1tmp);
  END QListWidget_isSortingEnabled;

PROCEDURE QListWidget_editItem
  (self: QListWidget; item: QListWidgetItem; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_editItem(arg1tmp, arg2tmp);
  END QListWidget_editItem;

PROCEDURE QListWidget_openPersistentEditor
  (self: QListWidget; item: QListWidgetItem; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_openPersistentEditor(arg1tmp, arg2tmp);
  END QListWidget_openPersistentEditor;

PROCEDURE QListWidget_closePersistentEditor
  (self: QListWidget; item: QListWidgetItem; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_closePersistentEditor(arg1tmp, arg2tmp);
  END QListWidget_closePersistentEditor;

PROCEDURE QListWidget_itemWidget
  (self: QListWidget; item: QListWidgetItem; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    arg1tmp          := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    ret := QtListWidgetRaw.QListWidget_itemWidget(arg1tmp, arg2tmp);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QListWidget_itemWidget;

PROCEDURE QListWidget_setItemWidget
  (self: QListWidget; item: QListWidgetItem; widget: QWidget; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
    arg3tmp := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_setItemWidget(arg1tmp, arg2tmp, arg3tmp);
  END QListWidget_setItemWidget;

PROCEDURE QListWidget_removeItemWidget
  (self: QListWidget; item: QListWidgetItem; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_removeItemWidget(arg1tmp, arg2tmp);
  END QListWidget_removeItemWidget;

PROCEDURE QListWidget_isItemSelected
  (self: QListWidget; item: QListWidgetItem; ): BOOLEAN =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidget_isItemSelected(arg1tmp, arg2tmp);
  END QListWidget_isItemSelected;

PROCEDURE QListWidget_setItemSelected
  (self: QListWidget; item: QListWidgetItem; select: BOOLEAN; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_setItemSelected(arg1tmp, arg2tmp, select);
  END QListWidget_setItemSelected;

PROCEDURE QListWidget_isItemHidden
  (self: QListWidget; item: QListWidgetItem; ): BOOLEAN =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListWidgetRaw.QListWidget_isItemHidden(arg1tmp, arg2tmp);
  END QListWidget_isItemHidden;

PROCEDURE QListWidget_setItemHidden
  (self: QListWidget; item: QListWidgetItem; hide: BOOLEAN; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_setItemHidden(arg1tmp, arg2tmp, hide);
  END QListWidget_setItemHidden;

PROCEDURE QListWidget_scrollToItem
  (self: QListWidget; item: QListWidgetItem; hint: ScrollHint; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_scrollToItem(arg1tmp, arg2tmp, ORD(hint));
  END QListWidget_scrollToItem;

PROCEDURE QListWidget_scrollToItem1
  (self: QListWidget; item: QListWidgetItem; ) =
  VAR
    arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(item.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_scrollToItem1(arg1tmp, arg2tmp);
  END QListWidget_scrollToItem1;

PROCEDURE QListWidget_clear (self: QListWidget; ) =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListWidgetRaw.QListWidget_clear(arg1tmp);
  END QListWidget_clear;

PROCEDURE Cleanup_QListWidget
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QListWidget := ref;
  BEGIN
    Delete_QListWidget(obj);
  END Cleanup_QListWidget;

PROCEDURE Destroy_QListWidget (self: QListWidget) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QListWidget);
  END Destroy_QListWidget;

REVEAL
  QListWidget =
    QListWidgetPublic BRANDED OBJECT
    OVERRIDES
      init_0                := New_QListWidget0;
      init_1                := New_QListWidget1;
      item                  := QListWidget_item;
      row                   := QListWidget_row;
      insertItem            := QListWidget_insertItem;
      insertItem1           := QListWidget_insertItem1;
      addItem               := QListWidget_addItem;
      addItem1              := QListWidget_addItem1;
      takeItem              := QListWidget_takeItem;
      count                 := QListWidget_count;
      currentItem           := QListWidget_currentItem;
      currentRow            := QListWidget_currentRow;
      setCurrentRow         := QListWidget_setCurrentRow;
      itemAt                := QListWidget_itemAt;
      itemAt1               := QListWidget_itemAt1;
      visualItemRect        := QListWidget_visualItemRect;
      sortItems             := QListWidget_sortItems;
      sortItems1            := QListWidget_sortItems1;
      setSortingEnabled     := QListWidget_setSortingEnabled;
      isSortingEnabled      := QListWidget_isSortingEnabled;
      editItem              := QListWidget_editItem;
      openPersistentEditor  := QListWidget_openPersistentEditor;
      closePersistentEditor := QListWidget_closePersistentEditor;
      itemWidget            := QListWidget_itemWidget;
      setItemWidget         := QListWidget_setItemWidget;
      removeItemWidget      := QListWidget_removeItemWidget;
      isItemSelected        := QListWidget_isItemSelected;
      setItemSelected       := QListWidget_setItemSelected;
      isItemHidden          := QListWidget_isItemHidden;
      setItemHidden         := QListWidget_setItemHidden;
      scrollToItem          := QListWidget_scrollToItem;
      scrollToItem1         := QListWidget_scrollToItem1;
      clear                 := QListWidget_clear;
      destroyCxx            := Destroy_QListWidget;
    END;


BEGIN
END QtListWidget.
