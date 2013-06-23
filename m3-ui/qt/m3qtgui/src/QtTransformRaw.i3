(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtTransformRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QTransform0 *>
PROCEDURE New_QTransform0 (arg1: C.int; ): QTransform;

<* EXTERNAL New_QTransform1 *>
PROCEDURE New_QTransform1 (): QTransform;

<* EXTERNAL New_QTransform2 *>
PROCEDURE New_QTransform2
  (h11, h12, h13, h21, h22, h23, h31, h32, h33: C.double; ): QTransform;

<* EXTERNAL New_QTransform3 *>
PROCEDURE New_QTransform3
  (h11, h12, h13, h21, h22, h23, h31, h32: C.double; ): QTransform;

<* EXTERNAL New_QTransform4 *>
PROCEDURE New_QTransform4 (h11, h12, h21, h22, dx, dy: C.double; ):
  QTransform;

<* EXTERNAL New_QTransform5 *>
PROCEDURE New_QTransform5 (mtx: ADDRESS; ): QTransform;

<* EXTERNAL QTransform_isAffine *>
PROCEDURE QTransform_isAffine (self: QTransform; ): BOOLEAN;

<* EXTERNAL QTransform_isIdentity *>
PROCEDURE QTransform_isIdentity (self: QTransform; ): BOOLEAN;

<* EXTERNAL QTransform_isInvertible *>
PROCEDURE QTransform_isInvertible (self: QTransform; ): BOOLEAN;

<* EXTERNAL QTransform_isScaling *>
PROCEDURE QTransform_isScaling (self: QTransform; ): BOOLEAN;

<* EXTERNAL QTransform_isRotating *>
PROCEDURE QTransform_isRotating (self: QTransform; ): BOOLEAN;

<* EXTERNAL QTransform_isTranslating *>
PROCEDURE QTransform_isTranslating (self: QTransform; ): BOOLEAN;

<* EXTERNAL QTransform_type *>
PROCEDURE QTransform_type (self: QTransform; ): C.int;

<* EXTERNAL QTransform_determinant *>
PROCEDURE QTransform_determinant (self: QTransform; ): C.double;

<* EXTERNAL QTransform_det *>
PROCEDURE QTransform_det (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m11 *>
PROCEDURE QTransform_m11 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m12 *>
PROCEDURE QTransform_m12 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m13 *>
PROCEDURE QTransform_m13 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m21 *>
PROCEDURE QTransform_m21 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m22 *>
PROCEDURE QTransform_m22 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m23 *>
PROCEDURE QTransform_m23 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m31 *>
PROCEDURE QTransform_m31 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m32 *>
PROCEDURE QTransform_m32 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_m33 *>
PROCEDURE QTransform_m33 (self: QTransform; ): C.double;

<* EXTERNAL QTransform_dx *>
PROCEDURE QTransform_dx (self: QTransform; ): C.double;

<* EXTERNAL QTransform_dy *>
PROCEDURE QTransform_dy (self: QTransform; ): C.double;

<* EXTERNAL QTransform_setMatrix *>
PROCEDURE QTransform_setMatrix
  (self: QTransform; m11, m12, m13, m21, m22, m23, m31, m32, m33: C.double; );

<* EXTERNAL QTransform_inverted *>
PROCEDURE QTransform_inverted
  (self: QTransform; VAR invertible: BOOLEAN; ): ADDRESS;

<* EXTERNAL QTransform_inverted1 *>
PROCEDURE QTransform_inverted1 (self: QTransform; ): ADDRESS;

<* EXTERNAL QTransform_adjoint *>
PROCEDURE QTransform_adjoint (self: QTransform; ): ADDRESS;

<* EXTERNAL QTransform_transposed *>
PROCEDURE QTransform_transposed (self: QTransform; ): ADDRESS;

<* EXTERNAL QTransform_translate *>
PROCEDURE QTransform_translate (self: QTransform; dx, dy: C.double; ):
  ADDRESS;

<* EXTERNAL QTransform_scale *>
PROCEDURE QTransform_scale (self: QTransform; sx, sy: C.double; ): ADDRESS;

<* EXTERNAL QTransform_shear *>
PROCEDURE QTransform_shear (self: QTransform; sh, sv: C.double; ): ADDRESS;

<* EXTERNAL QTransform_rotate *>
PROCEDURE QTransform_rotate (self: QTransform; a: C.double; axis: C.int; ):
  ADDRESS;

<* EXTERNAL QTransform_rotate1 *>
PROCEDURE QTransform_rotate1 (self: QTransform; a: C.double; ): ADDRESS;

<* EXTERNAL QTransform_rotateRadians *>
PROCEDURE QTransform_rotateRadians
  (self: QTransform; a: C.double; axis: C.int; ): ADDRESS;

<* EXTERNAL QTransform_rotateRadians1 *>
PROCEDURE QTransform_rotateRadians1 (self: QTransform; a: C.double; ):
  ADDRESS;

<* EXTERNAL SquareToQuad *>
PROCEDURE SquareToQuad (square, transformResult: ADDRESS; ): BOOLEAN;

<* EXTERNAL QuadToSquare *>
PROCEDURE QuadToSquare (quad, transformResult: ADDRESS; ): BOOLEAN;

<* EXTERNAL QuadToQuad *>
PROCEDURE QuadToQuad (one, two, transformResult: ADDRESS; ): BOOLEAN;

<* EXTERNAL QTransform_Op_Equals *>
PROCEDURE QTransform_Op_Equals (self: QTransform; arg2: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QTransform_Op_NotEquals *>
PROCEDURE QTransform_Op_NotEquals (self: QTransform; arg2: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QTransform_Op_TimesEquals *>
PROCEDURE QTransform_Op_TimesEquals (self: QTransform; arg2: ADDRESS; ):
  ADDRESS;

<* EXTERNAL QTransform_Op_Assign *>
PROCEDURE QTransform_Op_Assign (self: QTransform; arg2: ADDRESS; ):
  ADDRESS;

<* EXTERNAL QTransform_reset *>
PROCEDURE QTransform_reset (self: QTransform; );

<* EXTERNAL QTransform_map *>
PROCEDURE QTransform_map (self: QTransform; p: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map1 *>
PROCEDURE QTransform_map1 (self: QTransform; p: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map2 *>
PROCEDURE QTransform_map2 (self: QTransform; l: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map3 *>
PROCEDURE QTransform_map3 (self: QTransform; l: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map4 *>
PROCEDURE QTransform_map4 (self: QTransform; a: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map5 *>
PROCEDURE QTransform_map5 (self: QTransform; a: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map6 *>
PROCEDURE QTransform_map6 (self: QTransform; r: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map7 *>
PROCEDURE QTransform_map7 (self: QTransform; p: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_mapToPolygon *>
PROCEDURE QTransform_mapToPolygon (self: QTransform; r: ADDRESS; ):
  ADDRESS;

<* EXTERNAL QTransform_mapRect *>
PROCEDURE QTransform_mapRect (self: QTransform; arg2: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_mapRect1 *>
PROCEDURE QTransform_mapRect1 (self: QTransform; arg2: ADDRESS; ): ADDRESS;

<* EXTERNAL QTransform_map8 *>
PROCEDURE QTransform_map8 (self: QTransform; x, y: C.int; tx, ty: C.int; );

<* EXTERNAL QTransform_map9 *>
PROCEDURE QTransform_map9
  (self: QTransform; x, y: C.double; tx, ty: C.double; );

<* EXTERNAL QTransform_toAffine *>
PROCEDURE QTransform_toAffine (self: QTransform; ): ADDRESS;

<* EXTERNAL QTransform_Op_TimesEquals1 *>
PROCEDURE QTransform_Op_TimesEquals1 (self: QTransform; div: C.double; ):
  ADDRESS;

<* EXTERNAL QTransform_Op_DivEquals *>
PROCEDURE QTransform_Op_DivEquals (self: QTransform; div: C.double; ):
  ADDRESS;

<* EXTERNAL QTransform_Op_PlusEquals *>
PROCEDURE QTransform_Op_PlusEquals (self: QTransform; div: C.double; ):
  ADDRESS;

<* EXTERNAL QTransform_Op_MinusEquals *>
PROCEDURE QTransform_Op_MinusEquals (self: QTransform; div: C.double; ):
  ADDRESS;

<* EXTERNAL FromTranslate *>
PROCEDURE FromTranslate (dx, dy: C.double; ): ADDRESS;

<* EXTERNAL FromScale *>
PROCEDURE FromScale (dx, dy: C.double; ): ADDRESS;

<* EXTERNAL Delete_QTransform *>
PROCEDURE Delete_QTransform (self: QTransform; );

TYPE QTransform <: ADDRESS;

END QtTransformRaw.
