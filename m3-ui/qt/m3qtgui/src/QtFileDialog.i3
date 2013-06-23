(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtFileDialog;

FROM QtStringList IMPORT QStringList;
FROM QtByteArray IMPORT QByteArray;
FROM QtAbstractItemDelegate IMPORT QAbstractItemDelegate;
FROM QtObject IMPORT QObject;
FROM QGuiStubs IMPORT QDir, QFileIconProvider, QAbstractProxyModel;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT WindowTypes;


FROM QtDialog IMPORT QDialog;

TYPE
  T = QFileDialog;
  Options = INTEGER;


TYPE                             (* Enum ViewMode *)
  ViewMode = {Detail, List};

TYPE                             (* Enum FileMode *)
  FileMode =
    {AnyFile, ExistingFile, Directory, ExistingFiles, DirectoryOnly};

TYPE                             (* Enum AcceptMode *)
  AcceptMode = {AcceptOpen, AcceptSave};

TYPE                             (* Enum DialogLabel *)
  DialogLabel = {LookIn, FileName, FileType, Accept, Reject};

CONST                            (* Enum Option *)
  ShowDirsOnly          = 1;
  DontResolveSymlinks   = 2;
  DontConfirmOverwrite  = 4;
  DontUseSheet          = 8;
  DontUseNativeDialog   = 16;
  ReadOnly              = 32;
  HideNameFilterDetails = 64;

TYPE                             (* Enum Option *)
  Option = [1 .. 64];
PROCEDURE GetOpenFileName
  (parent                              : QWidget;
   caption, dir, filter, selectedFilter: TEXT;
   options                             : Options; ): TEXT;

PROCEDURE GetOpenFileName1
  (parent: QWidget; caption, dir, filter, selectedFilter: TEXT; ): TEXT;

PROCEDURE GetOpenFileName2 (parent: QWidget; caption, dir, filter: TEXT; ):
  TEXT;

PROCEDURE GetOpenFileName3 (parent: QWidget; caption, dir: TEXT; ): TEXT;

PROCEDURE GetOpenFileName4 (parent: QWidget; caption: TEXT; ): TEXT;

PROCEDURE GetOpenFileName5 (parent: QWidget; ): TEXT;

PROCEDURE GetOpenFileName6 (): TEXT;

PROCEDURE GetSaveFileName
  (parent                              : QWidget;
   caption, dir, filter, selectedFilter: TEXT;
   options                             : Options; ): TEXT;

PROCEDURE GetSaveFileName1
  (parent: QWidget; caption, dir, filter, selectedFilter: TEXT; ): TEXT;

PROCEDURE GetSaveFileName2 (parent: QWidget; caption, dir, filter: TEXT; ):
  TEXT;

PROCEDURE GetSaveFileName3 (parent: QWidget; caption, dir: TEXT; ): TEXT;

PROCEDURE GetSaveFileName4 (parent: QWidget; caption: TEXT; ): TEXT;

PROCEDURE GetSaveFileName5 (parent: QWidget; ): TEXT;

PROCEDURE GetSaveFileName6 (): TEXT;

PROCEDURE GetExistingDirectory
  (parent: QWidget; caption, dir: TEXT; options: Options; ): TEXT;

PROCEDURE GetExistingDirectory1 (parent: QWidget; caption, dir: TEXT; ):
  TEXT;

PROCEDURE GetExistingDirectory2 (parent: QWidget; caption: TEXT; ): TEXT;

PROCEDURE GetExistingDirectory3 (parent: QWidget; ): TEXT;

PROCEDURE GetExistingDirectory4 (): TEXT;

PROCEDURE GetOpenFileNames
  (parent                              : QWidget;
   caption, dir, filter, selectedFilter: TEXT;
   options                             : Options; ): QStringList;

PROCEDURE GetOpenFileNames1
  (parent: QWidget; caption, dir, filter, selectedFilter: TEXT; ):
  QStringList;

PROCEDURE GetOpenFileNames2
  (parent: QWidget; caption, dir, filter: TEXT; ): QStringList;

PROCEDURE GetOpenFileNames3 (parent: QWidget; caption, dir: TEXT; ):
  QStringList;

PROCEDURE GetOpenFileNames4 (parent: QWidget; caption: TEXT; ):
  QStringList;

PROCEDURE GetOpenFileNames5 (parent: QWidget; ): QStringList;

PROCEDURE GetOpenFileNames6 (): QStringList;


TYPE
  QFileDialog <: QFileDialogPublic;
  QFileDialogPublic =
    QDialog BRANDED OBJECT
    METHODS
      init_0 (parent: QWidget; f: WindowTypes; ): QFileDialog;
      init_1 (parent: QWidget; caption, directory, filter: TEXT; ):
              QFileDialog;
      init_2 (parent: QWidget; caption, directory: TEXT; ): QFileDialog;
      init_3 (parent: QWidget; caption: TEXT; ): QFileDialog;
      init_4 (parent: QWidget; ): QFileDialog;
      init_5 (): QFileDialog;
      setDirectory                (directory: TEXT; );
      setDirectory1               (directory: QDir; );
      directory                   (): QDir;
      selectFile                  (filename: TEXT; );
      selectedFiles               (): QStringList;
      setNameFilterDetailsVisible (enabled: BOOLEAN; );
      isNameFilterDetailsVisible  (): BOOLEAN;
      setNameFilter               (filter: TEXT; );
      setNameFilters              (filters: QStringList; );
      nameFilters                 (): QStringList;
      selectNameFilter            (filter: TEXT; );
      selectedNameFilter          (): TEXT;
      setViewMode                 (mode: ViewMode; );
      viewMode                    (): ViewMode;
      setFileMode                 (mode: FileMode; );
      fileMode                    (): FileMode;
      setAcceptMode               (mode: AcceptMode; );
      acceptMode                  (): AcceptMode;
      setReadOnly                 (enabled: BOOLEAN; );
      isReadOnly                  (): BOOLEAN;
      setResolveSymlinks          (enabled: BOOLEAN; );
      resolveSymlinks             (): BOOLEAN;
      saveState                   (): QByteArray;
      restoreState                (state: QByteArray; ): BOOLEAN;
      setConfirmOverwrite         (enabled: BOOLEAN; );
      confirmOverwrite            (): BOOLEAN;
      setDefaultSuffix            (suffix: TEXT; );
      defaultSuffix               (): TEXT;
      setHistory                  (paths: QStringList; );
      history                     (): QStringList;
      setItemDelegate             (delegate: QAbstractItemDelegate; );
      itemDelegate                (): QAbstractItemDelegate;
      setIconProvider             (provider: QFileIconProvider; );
      iconProvider                (): QFileIconProvider;
      setLabelText                (label: DialogLabel; text: TEXT; );
      labelText                   (label: DialogLabel; ): TEXT;
      setProxyModel               (model: QAbstractProxyModel; );
      proxyModel                  (): QAbstractProxyModel;
      setOption                   (option: Option; on: BOOLEAN; );
      setOption1                  (option: Option; );
      testOption                  (option: Option; ): BOOLEAN;
      setOptions                  (options: Options; );
      options                     (): Options;
      open0_0                     ();
      open1                       (receiver: QObject; member: TEXT; );
      setVisible                  (visible: BOOLEAN; ); (* virtual *)
      destroyCxx                  ();
    END;


END QtFileDialog.
