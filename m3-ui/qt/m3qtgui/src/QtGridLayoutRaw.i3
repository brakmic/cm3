(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtGridLayoutRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QGridLayout0 *>
PROCEDURE New_QGridLayout0 (parent: ADDRESS; ): QGridLayout;

<* EXTERNAL New_QGridLayout1 *>
PROCEDURE New_QGridLayout1 (): QGridLayout;

<* EXTERNAL Delete_QGridLayout *>
PROCEDURE Delete_QGridLayout (self: QGridLayout; );

<* EXTERNAL QGridLayout_sizeHint *>
PROCEDURE QGridLayout_sizeHint (self: QGridLayout; ): ADDRESS;

<* EXTERNAL QGridLayout_minimumSize *>
PROCEDURE QGridLayout_minimumSize (self: QGridLayout; ): ADDRESS;

<* EXTERNAL QGridLayout_maximumSize *>
PROCEDURE QGridLayout_maximumSize (self: QGridLayout; ): ADDRESS;

<* EXTERNAL QGridLayout_setHorizontalSpacing *>
PROCEDURE QGridLayout_setHorizontalSpacing
  (self: QGridLayout; spacing: C.int; );

<* EXTERNAL QGridLayout_horizontalSpacing *>
PROCEDURE QGridLayout_horizontalSpacing (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_setVerticalSpacing *>
PROCEDURE QGridLayout_setVerticalSpacing
  (self: QGridLayout; spacing: C.int; );

<* EXTERNAL QGridLayout_verticalSpacing *>
PROCEDURE QGridLayout_verticalSpacing (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_setSpacing *>
PROCEDURE QGridLayout_setSpacing (self: QGridLayout; spacing: C.int; );

<* EXTERNAL QGridLayout_spacing *>
PROCEDURE QGridLayout_spacing (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_setRowStretch *>
PROCEDURE QGridLayout_setRowStretch
  (self: QGridLayout; row, stretch: C.int; );

<* EXTERNAL QGridLayout_setColumnStretch *>
PROCEDURE QGridLayout_setColumnStretch
  (self: QGridLayout; column, stretch: C.int; );

<* EXTERNAL QGridLayout_rowStretch *>
PROCEDURE QGridLayout_rowStretch (self: QGridLayout; row: C.int; ): C.int;

<* EXTERNAL QGridLayout_columnStretch *>
PROCEDURE QGridLayout_columnStretch (self: QGridLayout; column: C.int; ):
  C.int;

<* EXTERNAL QGridLayout_setRowMinimumHeight *>
PROCEDURE QGridLayout_setRowMinimumHeight
  (self: QGridLayout; row, minSize: C.int; );

<* EXTERNAL QGridLayout_setColumnMinimumWidth *>
PROCEDURE QGridLayout_setColumnMinimumWidth
  (self: QGridLayout; column, minSize: C.int; );

<* EXTERNAL QGridLayout_rowMinimumHeight *>
PROCEDURE QGridLayout_rowMinimumHeight (self: QGridLayout; row: C.int; ):
  C.int;

<* EXTERNAL QGridLayout_columnMinimumWidth *>
PROCEDURE QGridLayout_columnMinimumWidth
  (self: QGridLayout; column: C.int; ): C.int;

<* EXTERNAL QGridLayout_columnCount *>
PROCEDURE QGridLayout_columnCount (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_rowCount *>
PROCEDURE QGridLayout_rowCount (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_cellRect *>
PROCEDURE QGridLayout_cellRect (self: QGridLayout; row, column: C.int; ):
  ADDRESS;

<* EXTERNAL QGridLayout_hasHeightForWidth *>
PROCEDURE QGridLayout_hasHeightForWidth (self: QGridLayout; ): BOOLEAN;

<* EXTERNAL QGridLayout_heightForWidth *>
PROCEDURE QGridLayout_heightForWidth (self: QGridLayout; arg2: C.int; ):
  C.int;

<* EXTERNAL QGridLayout_minimumHeightForWidth *>
PROCEDURE QGridLayout_minimumHeightForWidth
  (self: QGridLayout; arg2: C.int; ): C.int;

<* EXTERNAL QGridLayout_expandingDirections *>
PROCEDURE QGridLayout_expandingDirections (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_invalidate *>
PROCEDURE QGridLayout_invalidate (self: QGridLayout; );

<* EXTERNAL QGridLayout_addWidget *>
PROCEDURE QGridLayout_addWidget (self: QGridLayout; w: ADDRESS; );

<* EXTERNAL QGridLayout_addWidget1 *>
PROCEDURE QGridLayout_addWidget1
  (self: QGridLayout; arg2: ADDRESS; row, column, arg5: C.int; );

<* EXTERNAL QGridLayout_addWidget2 *>
PROCEDURE QGridLayout_addWidget2
  (self: QGridLayout; arg2: ADDRESS; row, column: C.int; );

<* EXTERNAL QGridLayout_addWidget3 *>
PROCEDURE QGridLayout_addWidget3
  (self                                  : QGridLayout;
   arg2                                  : ADDRESS;
   row, column, rowSpan, columnSpan, arg7: C.int;       );

<* EXTERNAL QGridLayout_addWidget4 *>
PROCEDURE QGridLayout_addWidget4
  (self                            : QGridLayout;
   arg2                            : ADDRESS;
   row, column, rowSpan, columnSpan: C.int;       );

<* EXTERNAL QGridLayout_addLayout *>
PROCEDURE QGridLayout_addLayout
  (self: QGridLayout; arg2: ADDRESS; row, column, arg5: C.int; );

<* EXTERNAL QGridLayout_addLayout1 *>
PROCEDURE QGridLayout_addLayout1
  (self: QGridLayout; arg2: ADDRESS; row, column: C.int; );

<* EXTERNAL QGridLayout_addLayout2 *>
PROCEDURE QGridLayout_addLayout2
  (self                                  : QGridLayout;
   arg2                                  : ADDRESS;
   row, column, rowSpan, columnSpan, arg7: C.int;       );

<* EXTERNAL QGridLayout_addLayout3 *>
PROCEDURE QGridLayout_addLayout3
  (self                            : QGridLayout;
   arg2                            : ADDRESS;
   row, column, rowSpan, columnSpan: C.int;       );

<* EXTERNAL QGridLayout_setOriginCorner *>
PROCEDURE QGridLayout_setOriginCorner (self: QGridLayout; arg2: C.int; );

<* EXTERNAL QGridLayout_originCorner *>
PROCEDURE QGridLayout_originCorner (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_itemAt *>
PROCEDURE QGridLayout_itemAt (self: QGridLayout; index: C.int; ): ADDRESS;

<* EXTERNAL QGridLayout_itemAtPosition *>
PROCEDURE QGridLayout_itemAtPosition
  (self: QGridLayout; row, column: C.int; ): ADDRESS;

<* EXTERNAL QGridLayout_takeAt *>
PROCEDURE QGridLayout_takeAt (self: QGridLayout; index: C.int; ): ADDRESS;

<* EXTERNAL QGridLayout_count *>
PROCEDURE QGridLayout_count (self: QGridLayout; ): C.int;

<* EXTERNAL QGridLayout_setGeometry *>
PROCEDURE QGridLayout_setGeometry (self: QGridLayout; arg2: ADDRESS; );

<* EXTERNAL QGridLayout_addItem *>
PROCEDURE QGridLayout_addItem
  (self                                  : QGridLayout;
   item                                  : ADDRESS;
   row, column, rowSpan, columnSpan, arg7: C.int;       );

<* EXTERNAL QGridLayout_addItem1 *>
PROCEDURE QGridLayout_addItem1 (self: QGridLayout;
                                item: ADDRESS;
                                row, column, rowSpan, columnSpan: C.int; );

<* EXTERNAL QGridLayout_addItem2 *>
PROCEDURE QGridLayout_addItem2
  (self: QGridLayout; item: ADDRESS; row, column, rowSpan: C.int; );

<* EXTERNAL QGridLayout_addItem3 *>
PROCEDURE QGridLayout_addItem3
  (self: QGridLayout; item: ADDRESS; row, column: C.int; );

<* EXTERNAL QGridLayout_setDefaultPositioning *>
PROCEDURE QGridLayout_setDefaultPositioning
  (self: QGridLayout; n, orient: C.int; );

<* EXTERNAL QGridLayout_getItemPosition *>
PROCEDURE QGridLayout_getItemPosition
  (self: QGridLayout; idx: C.int; row, column, rowSpan, columnSpan: C.int; );

TYPE QGridLayout = ADDRESS;

END QtGridLayoutRaw.
