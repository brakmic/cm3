(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtBitmap;


FROM QtImage IMPORT QImage, Format;
IMPORT QtBitmapRaw;
FROM QtSize IMPORT QSize;
FROM QtPixmap IMPORT QPixmap;
IMPORT M3toC;
FROM QtMatrix IMPORT QMatrix;
FROM QtString IMPORT QString;
IMPORT Ctypes AS C;
FROM QtTransform IMPORT QTransform;
FROM QtNamespace IMPORT ImageConversionFlags;


IMPORT WeakRef;

PROCEDURE New_QBitmap0 (self: QBitmap; ): QBitmap =
  VAR result: ADDRESS;
  BEGIN
    result := QtBitmapRaw.New_QBitmap0();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QBitmap);

    RETURN self;
  END New_QBitmap0;

PROCEDURE New_QBitmap1 (self: QBitmap; arg1: QPixmap; ): QBitmap =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    result := QtBitmapRaw.New_QBitmap1(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QBitmap);

    RETURN self;
  END New_QBitmap1;

PROCEDURE New_QBitmap2 (self: QBitmap; w, h: INTEGER; ): QBitmap =
  VAR result: ADDRESS;
  BEGIN
    result := QtBitmapRaw.New_QBitmap2(w, h);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QBitmap);

    RETURN self;
  END New_QBitmap2;

PROCEDURE New_QBitmap3 (self: QBitmap; arg1: QSize; ): QBitmap =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    result := QtBitmapRaw.New_QBitmap3(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QBitmap);

    RETURN self;
  END New_QBitmap3;

PROCEDURE New_QBitmap4 (self: QBitmap; fileName, format: TEXT; ): QBitmap =
  VAR
    result       : ADDRESS;
    qstr_fileName              := NEW(QString).initQString(fileName);
    arg1tmp                    := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
    arg2tmp      : C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(format);
    result := QtBitmapRaw.New_QBitmap4(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QBitmap);



    RETURN self;
  END New_QBitmap4;

PROCEDURE New_QBitmap5 (self: QBitmap; fileName: TEXT; ): QBitmap =
  VAR
    result       : ADDRESS;
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg1tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
  BEGIN
    result := QtBitmapRaw.New_QBitmap5(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QBitmap);

    RETURN self;
  END New_QBitmap5;

PROCEDURE Delete_QBitmap (self: QBitmap; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtBitmapRaw.Delete_QBitmap(selfAdr);
  END Delete_QBitmap;

PROCEDURE QBitmap_clear (self: QBitmap; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtBitmapRaw.QBitmap_clear(selfAdr);
  END QBitmap_clear;

PROCEDURE FromBitmapImage (image: QImage; flags: ImageConversionFlags; ):
  QBitmap =
  VAR
    ret    : ADDRESS;
    result : QBitmap;
    arg1tmp          := LOOPHOLE(image.cxxObj, ADDRESS);
  BEGIN
    ret := QtBitmapRaw.FromBitmapImage(arg1tmp, ORD(flags));

    result := NEW(QBitmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END FromBitmapImage;

PROCEDURE FromBitmapImage1 (image: QImage; ): QBitmap =
  VAR
    ret    : ADDRESS;
    result : QBitmap;
    arg1tmp          := LOOPHOLE(image.cxxObj, ADDRESS);
  BEGIN
    ret := QtBitmapRaw.FromBitmapImage1(arg1tmp);

    result := NEW(QBitmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END FromBitmapImage1;

PROCEDURE FromData
  (size: QSize; bits: UNTRACED REF CHAR; monoFormat: Format; ): QBitmap =
  VAR
    ret    : ADDRESS;
    result : QBitmap;
    arg1tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(bits, ADDRESS);
  BEGIN
    ret := QtBitmapRaw.FromData(arg1tmp, arg2tmp, ORD(monoFormat));

    result := NEW(QBitmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END FromData;

PROCEDURE FromData1 (size: QSize; bits: UNTRACED REF CHAR; ): QBitmap =
  VAR
    ret    : ADDRESS;
    result : QBitmap;
    arg1tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(bits, ADDRESS);
  BEGIN
    ret := QtBitmapRaw.FromData1(arg1tmp, arg2tmp);

    result := NEW(QBitmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END FromData1;

PROCEDURE QBitmap_transformed (self: QBitmap; arg2: QMatrix; ): QBitmap =
  VAR
    ret    : ADDRESS;
    result : QBitmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    ret := QtBitmapRaw.QBitmap_transformed(selfAdr, arg2tmp);

    IF ISTYPE(result, QBitmap) AND ret = selfAdr THEN
      result := LOOPHOLE(self, QBitmap);
    ELSE
      result := NEW(QBitmap);
      result.cxxObj := ret;
      result.destroyCxx();
    END;

    RETURN result;
  END QBitmap_transformed;

PROCEDURE QBitmap_transformed1 (self: QBitmap; matrix: QTransform; ):
  QBitmap =
  VAR
    ret    : ADDRESS;
    result : QBitmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(matrix.cxxObj, ADDRESS);
  BEGIN
    ret := QtBitmapRaw.QBitmap_transformed1(selfAdr, arg2tmp);

    IF ISTYPE(result, QBitmap) AND ret = selfAdr THEN
      result := LOOPHOLE(self, QBitmap);
    ELSE
      result := NEW(QBitmap);
      result.cxxObj := ret;
      result.destroyCxx();
    END;

    RETURN result;
  END QBitmap_transformed1;

PROCEDURE Cleanup_QBitmap
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QBitmap := ref;
  BEGIN
    Delete_QBitmap(obj);
  END Cleanup_QBitmap;

PROCEDURE Destroy_QBitmap (self: QBitmap) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QBitmap);
  END Destroy_QBitmap;

REVEAL
  QBitmap = QBitmapPublic BRANDED OBJECT
            OVERRIDES
              init_0       := New_QBitmap0;
              init_1       := New_QBitmap1;
              init_2       := New_QBitmap2;
              init_3       := New_QBitmap3;
              init_4       := New_QBitmap4;
              init_5       := New_QBitmap5;
              clear        := QBitmap_clear;
              transformed  := QBitmap_transformed;
              transformed1 := QBitmap_transformed1;
              destroyCxx   := Destroy_QBitmap;
            END;


BEGIN
END QtBitmap.
