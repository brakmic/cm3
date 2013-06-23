(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtLineEdit;

FROM QtSize IMPORT QSize;
FROM QtEvent IMPORT QEvent;
FROM QGuiStubs IMPORT QValidator, QCompleter;
FROM QtMargins IMPORT QMargins;
FROM QtWidget IMPORT QWidget;
FROM QtMenu IMPORT QMenu;
FROM QtPoint IMPORT QPoint;
FROM QtNamespace IMPORT AlignmentFlag;


TYPE T = QLineEdit;


TYPE                             (* Enum EchoMode *)
  EchoMode = {Normal, NoEcho, Password, PasswordEchoOnEdit};

TYPE
  QLineEdit <: QLineEditPublic;
  QLineEditPublic =
    QWidget BRANDED OBJECT
    METHODS
      init_0                    (parent: QWidget; ): QLineEdit;
      init_1                    (): QLineEdit;
      init_2                    (arg1: TEXT; parent: QWidget; ): QLineEdit;
      init_3                    (arg1: TEXT; ): QLineEdit;
      text                      (): TEXT;
      displayText               (): TEXT;
      maxLength                 (): INTEGER;
      setMaxLength              (arg1: INTEGER; );
      setFrame                  (arg1: BOOLEAN; );
      hasFrame                  (): BOOLEAN;
      echoMode                  (): EchoMode;
      setEchoMode               (arg1: EchoMode; );
      isReadOnly                (): BOOLEAN;
      setReadOnly               (arg1: BOOLEAN; );
      setValidator              (arg1: QValidator; );
      validator                 (): QValidator;
      setCompleter              (completer: QCompleter; );
      completer                 (): QCompleter;
      sizeHint                  (): QSize; (* virtual *)
      minimumSizeHint           (): QSize; (* virtual *)
      cursorPosition            (): INTEGER;
      setCursorPosition         (arg1: INTEGER; );
      cursorPositionAt          (pos: QPoint; ): INTEGER;
      setAlignment              (flag: AlignmentFlag; );
      alignment                 (): AlignmentFlag;
      cursorForward             (mark: BOOLEAN; steps: INTEGER; );
      cursorForward1            (mark: BOOLEAN; );
      cursorBackward            (mark: BOOLEAN; steps: INTEGER; );
      cursorBackward1           (mark: BOOLEAN; );
      cursorWordForward         (mark: BOOLEAN; );
      cursorWordBackward        (mark: BOOLEAN; );
      backspace                 ();
      del                       ();
      home                      (mark: BOOLEAN; );
      end                       (mark: BOOLEAN; );
      isModified                (): BOOLEAN;
      setModified               (arg1: BOOLEAN; );
      setSelection              (arg1, arg2: INTEGER; );
      hasSelectedText           (): BOOLEAN;
      selectedText              (): TEXT;
      selectionStart            (): INTEGER;
      isUndoAvailable           (): BOOLEAN;
      isRedoAvailable           (): BOOLEAN;
      setDragEnabled            (b: BOOLEAN; );
      dragEnabled               (): BOOLEAN;
      inputMask                 (): TEXT;
      setInputMask              (inputMask: TEXT; );
      hasAcceptableInput        (): BOOLEAN;
      setTextMargins            (left, top, right, bottom: INTEGER; );
      setTextMargins1           (margins: QMargins; );
      getTextMargins            (VAR left, top, right, bottom: INTEGER; );
      textMargins               (): QMargins;
      setText                   (arg1: TEXT; );
      clear                     ();
      selectAll                 ();
      undo                      ();
      redo                      ();
      cut                       ();
      copy                      ();
      paste                     ();
      deselect                  ();
      insert                    (arg1: TEXT; );
      createStandardContextMenu (): QMenu;
      event                     (arg1: QEvent; ): BOOLEAN; (* virtual *)
      destroyCxx                ();
    END;


END QtLineEdit.
