(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE GLUT;




(*
/*
 * The freeglut and GLUT API versions
 */
#define  FREEGLUT             1
#define  GLUT_API_VERSION     4
#define  FREEGLUT_VERSION_2_0 1
#define  GLUT_XLIB_IMPLEMENTATION 13
*)

CONST

  (*
   * GLUT API macro definitions -- the special key codes:
   *)

  GLUT_KEY_F1        = 16_0001;
  GLUT_KEY_F2        = 16_0002;
  GLUT_KEY_F3        = 16_0003;
  GLUT_KEY_F4        = 16_0004;
  GLUT_KEY_F5        = 16_0005;
  GLUT_KEY_F6        = 16_0006;
  GLUT_KEY_F7        = 16_0007;
  GLUT_KEY_F8        = 16_0008;
  GLUT_KEY_F9        = 16_0009;
  GLUT_KEY_F10       = 16_000A;
  GLUT_KEY_F11       = 16_000B;
  GLUT_KEY_F12       = 16_000C;
  GLUT_KEY_LEFT      = 16_0064;
  GLUT_KEY_UP        = 16_0065;
  GLUT_KEY_RIGHT     = 16_0066;
  GLUT_KEY_DOWN      = 16_0067;
  GLUT_KEY_PAGE_UP   = 16_0068;
  GLUT_KEY_PAGE_DOWN = 16_0069;
  GLUT_KEY_HOME      = 16_006A;
  GLUT_KEY_END       = 16_006B;
  GLUT_KEY_INSERT    = 16_006C;

  (*
   * GLUT API macro definitions -- mouse state definitions
   *)

  GLUT_LEFT_BUTTON   = 16_0000;
  GLUT_MIDDLE_BUTTON = 16_0001;
  GLUT_RIGHT_BUTTON  = 16_0002;
  GLUT_DOWN          = 16_0000;
  GLUT_UP            = 16_0001;
  GLUT_LEFT          = 16_0000;
  GLUT_ENTERED       = 16_0001;

  (*
   * GLUT API macro definitions -- the display mode definitions
   *)

  GLUT_RGB         = 16_0000;
  GLUT_RGBA        = 16_0000;
  GLUT_INDEX       = 16_0001;
  GLUT_SINGLE      = 16_0000;
  GLUT_DOUBLE      = 16_0002;
  GLUT_ACCUM       = 16_0004;
  GLUT_ALPHA       = 16_0008;
  GLUT_DEPTH       = 16_0010;
  GLUT_STENCIL     = 16_0020;
  GLUT_MULTISAMPLE = 16_0080;
  GLUT_STEREO      = 16_0100;
  GLUT_LUMINANCE   = 16_0200;

  (*
   * GLUT API macro definitions -- windows and menu related definitions
   *)

  GLUT_MENU_NOT_IN_USE    = 16_0000;
  GLUT_MENU_IN_USE        = 16_0001;
  GLUT_NOT_VISIBLE        = 16_0000;
  GLUT_VISIBLE            = 16_0001;
  GLUT_HIDDEN             = 16_0000;
  GLUT_FULLY_RETAINED     = 16_0001;
  GLUT_PARTIALLY_RETAINED = 16_0002;
  GLUT_FULLY_COVERED      = 16_0003;

  (*
   * GLUT API macro definitions -- the glutGet parameters
   *)

  GLUT_WINDOW_X                = 16_0064;
  GLUT_WINDOW_Y                = 16_0065;
  GLUT_WINDOW_WIDTH            = 16_0066;
  GLUT_WINDOW_HEIGHT           = 16_0067;
  GLUT_WINDOW_BUFFER_SIZE      = 16_0068;
  GLUT_WINDOW_STENCIL_SIZE     = 16_0069;
  GLUT_WINDOW_DEPTH_SIZE       = 16_006A;
  GLUT_WINDOW_RED_SIZE         = 16_006B;
  GLUT_WINDOW_GREEN_SIZE       = 16_006C;
  GLUT_WINDOW_BLUE_SIZE        = 16_006D;
  GLUT_WINDOW_ALPHA_SIZE       = 16_006E;
  GLUT_WINDOW_ACCUM_RED_SIZE   = 16_006F;
  GLUT_WINDOW_ACCUM_GREEN_SIZE = 16_0070;
  GLUT_WINDOW_ACCUM_BLUE_SIZE  = 16_0071;
  GLUT_WINDOW_ACCUM_ALPHA_SIZE = 16_0072;
  GLUT_WINDOW_DOUBLEBUFFER     = 16_0073;
  GLUT_WINDOW_RGBA             = 16_0074;
  GLUT_WINDOW_PARENT           = 16_0075;
  GLUT_WINDOW_NUM_CHILDREN     = 16_0076;
  GLUT_WINDOW_COLORMAP_SIZE    = 16_0077;
  GLUT_WINDOW_NUM_SAMPLES      = 16_0078;
  GLUT_WINDOW_STEREO           = 16_0079;
  GLUT_WINDOW_CURSOR           = 16_007A;

  GLUT_SCREEN_WIDTH          = 16_00C8;
  GLUT_SCREEN_HEIGHT         = 16_00C9;
  GLUT_SCREEN_WIDTH_MM       = 16_00CA;
  GLUT_SCREEN_HEIGHT_MM      = 16_00CB;
  GLUT_MENU_NUM_ITEMS        = 16_012C;
  GLUT_DISPLAY_MODE_POSSIBLE = 16_0190;
  GLUT_INIT_WINDOW_X         = 16_01F4;
  GLUT_INIT_WINDOW_Y         = 16_01F5;
  GLUT_INIT_WINDOW_WIDTH     = 16_01F6;
  GLUT_INIT_WINDOW_HEIGHT    = 16_01F7;
  GLUT_INIT_DISPLAY_MODE     = 16_01F8;
  GLUT_ELAPSED_TIME          = 16_02BC;
  GLUT_WINDOW_FORMAT_ID      = 16_007B;
  GLUT_INIT_STATE            = 16_007C;

  (*
   * GLUT API macro definitions -- the glutDeviceGet parameters
   *)

  GLUT_HAS_KEYBOARD             = 16_0258;
  GLUT_HAS_MOUSE                = 16_0259;
  GLUT_HAS_SPACEBALL            = 16_025A;
  GLUT_HAS_DIAL_AND_BUTTON_BOX  = 16_025B;
  GLUT_HAS_TABLET               = 16_025C;
  GLUT_NUM_MOUSE_BUTTONS        = 16_025D;
  GLUT_NUM_SPACEBALL_BUTTONS    = 16_025E;
  GLUT_NUM_BUTTON_BOX_BUTTONS   = 16_025F;
  GLUT_NUM_DIALS                = 16_0260;
  GLUT_NUM_TABLET_BUTTONS       = 16_0261;
  GLUT_DEVICE_IGNORE_KEY_REPEAT = 16_0262;
  GLUT_DEVICE_KEY_REPEAT        = 16_0263;
  GLUT_HAS_JOYSTICK             = 16_0264;
  GLUT_OWNS_JOYSTICK            = 16_0265;
  GLUT_JOYSTICK_BUTTONS         = 16_0266;
  GLUT_JOYSTICK_AXES            = 16_0267;
  GLUT_JOYSTICK_POLL_RATE       = 16_0268;

  (*
   * GLUT API macro definitions -- the glutLayerGet parameters
   *)

  GLUT_OVERLAY_POSSIBLE  = 16_0320;
  GLUT_LAYER_IN_USE      = 16_0321;
  GLUT_HAS_OVERLAY       = 16_0322;
  GLUT_TRANSPARENT_INDEX = 16_0323;
  GLUT_NORMAL_DAMAGED    = 16_0324;
  GLUT_OVERLAY_DAMAGED   = 16_0325;

  (*
   * GLUT API macro definitions -- the glutVideoResizeGet parameters
   *)

  GLUT_VIDEO_RESIZE_POSSIBLE     = 16_0384;
  GLUT_VIDEO_RESIZE_IN_USE       = 16_0385;
  GLUT_VIDEO_RESIZE_X_DELTA      = 16_0386;
  GLUT_VIDEO_RESIZE_Y_DELTA      = 16_0387;
  GLUT_VIDEO_RESIZE_WIDTH_DELTA  = 16_0388;
  GLUT_VIDEO_RESIZE_HEIGHT_DELTA = 16_0389;
  GLUT_VIDEO_RESIZE_X            = 16_038A;
  GLUT_VIDEO_RESIZE_Y            = 16_038B;
  GLUT_VIDEO_RESIZE_WIDTH        = 16_038C;
  GLUT_VIDEO_RESIZE_HEIGHT       = 16_038D;

  (*
   * GLUT API macro definitions -- the glutUseLayer parameters
   *)

  GLUT_NORMAL  = 16_0000;
  GLUT_OVERLAY = 16_0001;

  (*
   * GLUT API macro definitions -- the glutGetModifiers parameters
   *)

  GLUT_ACTIVE_SHIFT = 16_0001;
  GLUT_ACTIVE_CTRL  = 16_0002;
  GLUT_ACTIVE_ALT   = 16_0004;

  (*
   * GLUT API macro definitions -- the glutSetCursor parameters
   *)

  GLUT_CURSOR_RIGHT_ARROW         = 16_0000;
  GLUT_CURSOR_LEFT_ARROW          = 16_0001;
  GLUT_CURSOR_INFO                = 16_0002;
  GLUT_CURSOR_DESTROY             = 16_0003;
  GLUT_CURSOR_HELP                = 16_0004;
  GLUT_CURSOR_CYCLE               = 16_0005;
  GLUT_CURSOR_SPRAY               = 16_0006;
  GLUT_CURSOR_WAIT                = 16_0007;
  GLUT_CURSOR_TEXT                = 16_0008;
  GLUT_CURSOR_CROSSHAIR           = 16_0009;
  GLUT_CURSOR_UP_DOWN             = 16_000A;
  GLUT_CURSOR_LEFT_RIGHT          = 16_000B;
  GLUT_CURSOR_TOP_SIDE            = 16_000C;
  GLUT_CURSOR_BOTTOM_SIDE         = 16_000D;
  GLUT_CURSOR_LEFT_SIDE           = 16_000E;
  GLUT_CURSOR_RIGHT_SIDE          = 16_000F;
  GLUT_CURSOR_TOP_LEFT_CORNER     = 16_0010;
  GLUT_CURSOR_TOP_RIGHT_CORNER    = 16_0011;
  GLUT_CURSOR_BOTTOM_RIGHT_CORNER = 16_0012;
  GLUT_CURSOR_BOTTOM_LEFT_CORNER  = 16_0013;
  GLUT_CURSOR_INHERIT             = 16_0064;
  GLUT_CURSOR_NONE                = 16_0065;
  GLUT_CURSOR_FULL_CROSSHAIR      = 16_0066;

  (*
   * GLUT API macro definitions -- RGB color component specification definitions
   *)

  GLUT_RED   = 16_0000;
  GLUT_GREEN = 16_0001;
  GLUT_BLUE  = 16_0002;

  (*
   * GLUT API macro definitions -- additional keyboard and joystick definitions
   *)

  GLUT_KEY_REPEAT_OFF     = 16_0000;
  GLUT_KEY_REPEAT_ON      = 16_0001;
  GLUT_KEY_REPEAT_DEFAULT = 16_0002;

  GLUT_JOYSTICK_BUTTON_A = 16_0001;
  GLUT_JOYSTICK_BUTTON_B = 16_0002;
  GLUT_JOYSTICK_BUTTON_C = 16_0004;
  GLUT_JOYSTICK_BUTTON_D = 16_0008;

  (*
   * GLUT API macro definitions -- game mode definitions
   *)

  GLUT_GAME_MODE_ACTIVE          = 16_0000;
  GLUT_GAME_MODE_POSSIBLE        = 16_0001;
  GLUT_GAME_MODE_WIDTH           = 16_0002;
  GLUT_GAME_MODE_HEIGHT          = 16_0003;
  GLUT_GAME_MODE_PIXEL_DEPTH     = 16_0004;
  GLUT_GAME_MODE_REFRESH_RATE    = 16_0005;
  GLUT_GAME_MODE_DISPLAY_CHANGED = 16_0006;


PROCEDURE Init (pargc: CARDINAL; READONLY argv: ARRAY OF TEXT; );

PROCEDURE InitWindowPosition (x, y: INTEGER; );

PROCEDURE InitWindowSize (width, height: INTEGER; );

PROCEDURE InitDisplayMode (displayMode: CARDINAL; );

PROCEDURE InitDisplayString (displayMode: TEXT; );

PROCEDURE MainLoop ();

PROCEDURE CreateWindow (title: TEXT; ): INTEGER;

PROCEDURE CreateSubWindow (window, x, y, width, height: INTEGER; ):
  INTEGER;

PROCEDURE DestroyWindow (window: INTEGER; );

PROCEDURE SetWindow (window: INTEGER; );

PROCEDURE GetWindow (): INTEGER;

PROCEDURE SetWindowTitle (title: TEXT; );

PROCEDURE SetIconTitle (title: TEXT; );

PROCEDURE ReshapeWindow (width, height: INTEGER; );

PROCEDURE PositionWindow (x, y: INTEGER; );

PROCEDURE ShowWindow ();

PROCEDURE HideWindow ();

PROCEDURE IconifyWindow ();

PROCEDURE PushWindow ();

PROCEDURE PopWindow ();

PROCEDURE FullScreen ();

PROCEDURE PostWindowRedisplay (window: INTEGER; );

PROCEDURE PostRedisplay ();

PROCEDURE SwapBuffers ();

PROCEDURE WarpPointer (x, y: INTEGER; );

PROCEDURE SetCursor (cursor: INTEGER; );

PROCEDURE EstablishOverlay ();

PROCEDURE RemoveOverlay ();

PROCEDURE UseLayer (layer: CARDINAL; );

PROCEDURE PostOverlayRedisplay ();

PROCEDURE PostWindowOverlayRedisplay (window: INTEGER; );

PROCEDURE ShowOverlay ();

PROCEDURE HideOverlay ();

PROCEDURE DestroyMenu (menu: INTEGER; );

PROCEDURE GetMenu (): INTEGER;

PROCEDURE SetMenu (menu: INTEGER; );

PROCEDURE AddMenuEntry (label: TEXT; value: INTEGER; );

PROCEDURE AddSubMenu (label: TEXT; subMenu: INTEGER; );

PROCEDURE ChangeToMenuEntry (item: INTEGER; label: TEXT; value: INTEGER; );

PROCEDURE ChangeToSubMenu (item: INTEGER; label: TEXT; value: INTEGER; );

PROCEDURE RemoveMenuItem (item: INTEGER; );

PROCEDURE AttachMenu (button: INTEGER; );

PROCEDURE DetachMenu (button: INTEGER; );


(*
 * Callback functions, see freeglut_callbacks.c
*)
TYPE
  BYTE = [0 .. 255];
  CallBack0T = PROCEDURE ();
  CallBack1T = PROCEDURE (p1: INTEGER);
  CallBack2T = PROCEDURE (p1, p2: INTEGER);
  CallBack3T = PROCEDURE (p1, p2, p3: INTEGER);
  CallBack4T = PROCEDURE (p1, p2, p3, p4: INTEGER);
  CallBack5T = PROCEDURE (p1: BYTE; p2, p3: INTEGER);
  CallBack6T = PROCEDURE (p1: CARDINAL; p2, p3, p4: INTEGER);


PROCEDURE CreateMenu (callback: CallBack1T; ): INTEGER;

PROCEDURE TimerFunc
  (time: CARDINAL; callback: CallBack1T; value: INTEGER; );

PROCEDURE IdleFunc (callback: CallBack0T; );

PROCEDURE KeyboardFunc (callback: CallBack5T; );

PROCEDURE SpecialFunc (callback: CallBack3T; );

PROCEDURE ReshapeFunc (callback: CallBack2T; );

PROCEDURE VisibilityFunc (callback: CallBack1T; );

PROCEDURE DisplayFunc (callback: CallBack0T; );

PROCEDURE MouseFunc (callback: CallBack4T; );

PROCEDURE MotionFunc (callback: CallBack2T; );

PROCEDURE PassiveMotionFunc (callback: CallBack2T; );

PROCEDURE EntryFunc (callback: CallBack1T; );

PROCEDURE KeyboardUpFunc (callback: CallBack5T; );

PROCEDURE SpecialUpFunc (callback: CallBack3T; );

PROCEDURE JoystickFunc (callback: CallBack6T; pollInterval: INTEGER; );

PROCEDURE MenuStateFunc (callback: CallBack1T; );

PROCEDURE MenuStatusFunc (callback: CallBack3T; );

PROCEDURE OverlayDisplayFunc (callback: CallBack0T; );

PROCEDURE WindowStatusFunc (callback: CallBack1T; );

PROCEDURE SpaceballMotionFunc (callback: CallBack3T; );

PROCEDURE SpaceballRotateFunc (callback: CallBack3T; );

PROCEDURE SpaceballButtonFunc (callback: CallBack2T; );

PROCEDURE ButtonBoxFunc (callback: CallBack2T; );

PROCEDURE DialsFunc (callback: CallBack2T; );

PROCEDURE TabletMotionFunc (callback: CallBack2T; );

PROCEDURE TabletButtonFunc (callback: CallBack4T; );

PROCEDURE Get (query: CARDINAL; ): INTEGER;

PROCEDURE DeviceGet (query: CARDINAL; ): INTEGER;

PROCEDURE GetModifiers (): INTEGER;

PROCEDURE LayerGet (query: CARDINAL; ): INTEGER;

PROCEDURE WireCube (size: LONGREAL; );

PROCEDURE SolidCube (size: LONGREAL; );

PROCEDURE WireSphere (radius: LONGREAL; slices, stacks: INTEGER; );

PROCEDURE SolidSphere (radius: LONGREAL; slices, stacks: INTEGER; );

PROCEDURE WireCone (base, height: LONGREAL; slices, stacks: INTEGER; );

PROCEDURE SolidCone (base, height: LONGREAL; slices, stacks: INTEGER; );

PROCEDURE WireTorus
  (innerRadius, outerRadius: LONGREAL; sides, rings: INTEGER; );

PROCEDURE SolidTorus
  (innerRadius, outerRadius: LONGREAL; sides, rings: INTEGER; );

PROCEDURE WireDodecahedron ();

PROCEDURE SolidDodecahedron ();

PROCEDURE WireOctahedron ();

PROCEDURE SolidOctahedron ();

PROCEDURE WireTetrahedron ();

PROCEDURE SolidTetrahedron ();

PROCEDURE WireIcosahedron ();

PROCEDURE SolidIcosahedron ();

PROCEDURE WireTeapot (size: LONGREAL; );

PROCEDURE SolidTeapot (size: LONGREAL; );

PROCEDURE GameModeString (string: TEXT; );

PROCEDURE EnterGameMode (): INTEGER;

PROCEDURE LeaveGameMode ();

PROCEDURE GameModeGet (query: CARDINAL; ): INTEGER;

PROCEDURE VideoResizeGet (query: CARDINAL; ): INTEGER;

PROCEDURE SetupVideoResizing ();

PROCEDURE StopVideoResizing ();

PROCEDURE VideoResize (x, y, width, height: INTEGER; );

PROCEDURE VideoPan (x, y, width, height: INTEGER; );

PROCEDURE SetColor (color: INTEGER; red, green, blue: REAL; );

PROCEDURE GetColor (color, component: INTEGER; ): REAL;

PROCEDURE CopyColormap (window: INTEGER; );

PROCEDURE IgnoreKeyRepeat (ignore: INTEGER; );

PROCEDURE SetKeyRepeat (repeatMode: INTEGER; );

PROCEDURE ForceJoystickFunc ();

PROCEDURE ExtensionSupported (extension: TEXT; ): INTEGER;

PROCEDURE ReportErrors ();



(*
  freeglut_ext.h

 GLUT API Extension macro definitions -- behaviour when the user clicks on an "x" to close a window

*)

CONST

  GLUT_ACTION_EXIT                 = 0;
  GLUT_ACTION_GLUTMAINLOOP_RETURNS = 1;
  GLUT_ACTION_CONTINUE_EXECUTION   = 2;

  (*
   * Create a new rendering context when the user opens a new window?
   *)

  GLUT_CREATE_NEW_CONTEXT  = 0;
  GLUT_USE_CURRENT_CONTEXT = 1;

  (*
   * Direct/Indirect rendering context options (has meaning only in Unix/X11)
   *)
  GLUT_FORCE_INDIRECT_CONTEXT = 0;
  GLUT_ALLOW_DIRECT_CONTEXT   = 1;
  GLUT_TRY_DIRECT_CONTEXT     = 2;
  GLUT_FORCE_DIRECT_CONTEXT   = 3;

  (*
   * GLUT API Extension macro definitions -- the glutGet parameters
   *)
  GLUT_ACTION_ON_WINDOW_CLOSE = 16_01F9;

  GLUT_WINDOW_BORDER_WIDTH  = 16_01FA;
  GLUT_WINDOW_HEADER_HEIGHT = 16_01FB;

  GLUT_VERSION = 16_01FC;

  GLUT_RENDERING_CONTEXT = 16_01FD;
  GLUT_DIRECT_RENDERING  = 16_01FE;

  (*
   * New tokens for glutInitDisplayMode.
   * Only one GLUT_AUXn bit may be used at a time.
   * Value = 0x0400 is defined in OpenGLUT.
   *)
  GLUT_AUX1 = 16_1000;
  GLUT_AUX2 = 16_2000;
  GLUT_AUX3 = 16_4000;
  GLUT_AUX4 = 16_8000;


PROCEDURE MainLoopEvent ();

PROCEDURE LeaveMainLoop ();

PROCEDURE MouseWheelFunc (callback: CallBack4T; );

PROCEDURE CloseFunc (callback: CallBack0T; );

PROCEDURE WMCloseFunc (callback: CallBack0T; );

PROCEDURE MenuDestroyFunc (callback: CallBack0T; );

PROCEDURE SetOption (option_flag: CARDINAL; value: INTEGER; );

PROCEDURE GetWindowData (): REFANY;

PROCEDURE SetWindowData (VAR data: REFANY; );

PROCEDURE GetMenuData (): REFANY;

PROCEDURE SetMenuData (VAR data: REFANY; );

PROCEDURE WireRhombicDodecahedron ();

PROCEDURE SolidRhombicDodecahedron ();

PROCEDURE WireSierpinskiSponge (num_levels: INTEGER;
                                VAR offset: ARRAY [0 .. 2] OF LONGREAL;
                                    scale : LONGREAL;                   );

PROCEDURE SolidSierpinskiSponge (num_levels: INTEGER;
                                 VAR offset: ARRAY [0 .. 2] OF LONGREAL;
                                     scale : LONGREAL;                   );

PROCEDURE WireCylinder
  (radius, height: LONGREAL; slices, stacks: INTEGER; );

PROCEDURE SolidCylinder
  (radius, height: LONGREAL; slices, stacks: INTEGER; );

PROCEDURE GetProcAddress (procName: TEXT; ): REF CallBack0T;


TYPE
  Fonts = {StrokeRoman, StrokeMonoRoman, Bitmap9By15, Bitmap8By13,
           BitmapTimesRoman10, BitmapTimesRoman24, BitmapHelvetica10,
           BitmapHelvetica12, BitmapHelvetica18};

  FontList = ARRAY Fonts OF ADDRESS;

PROCEDURE BitmapCharacter (VALUE font: Fonts; character: INTEGER; );

PROCEDURE BitmapWidth (VALUE font: Fonts; character: INTEGER; ): INTEGER;

PROCEDURE StrokeCharacter (VALUE font: Fonts; character: INTEGER; );

PROCEDURE StrokeWidth (VALUE font: Fonts; character: INTEGER; ): INTEGER;

PROCEDURE BitmapLength (VALUE font: Fonts; READONLY string: TEXT; ):
  INTEGER;

PROCEDURE StrokeLength (VALUE font: Fonts; READONLY string: TEXT; ):
  INTEGER;

PROCEDURE BitmapHeight (VALUE font: Fonts; ): INTEGER;

PROCEDURE StrokeHeight (VALUE font: Fonts; ): REAL;

PROCEDURE BitmapString (VALUE font: Fonts; READONLY string: TEXT; );

PROCEDURE StrokeString (VALUE font: Fonts; READONLY string: TEXT; );


END GLUT.
