(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtWizard;

FROM QtSize IMPORT QSize;
FROM QtAbstractButton IMPORT QAbstractButton;
FROM QtPixmap IMPORT QPixmap;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT WindowTypes, TextFormat;


FROM QtDialog IMPORT QDialog;

TYPE
  T = QWizard;
  WizardOptions = INTEGER;


CONST                            (* Enum WizardButton *)
  BackButton       = 0;
  NextButton       = 1;
  CommitButton     = 2;
  FinishButton     = 3;
  CancelButton     = 4;
  HelpButton       = 5;
  CustomButton1    = 6;
  CustomButton2    = 7;
  CustomButton3    = 8;
  Stretch          = 9;
  NoButton         = -1;
  NStandardButtons = 6;
  NButtons         = 9;

TYPE                             (* Enum WizardButton *)
  WizardButton = [-1 .. 9];

TYPE                             (* Enum WizardPixmap *)
  WizardPixmap = {WatermarkPixmap, LogoPixmap, BannerPixmap,
                  BackgroundPixmap, NPixmaps};

TYPE                             (* Enum WizardStyle *)
  WizardStyle = {ClassicStyle, ModernStyle, MacStyle, AeroStyle, NStyles};

CONST                            (* Enum WizardOption *)
  IndependentPages             = 1;
  IgnoreSubTitles              = 2;
  ExtendedWatermarkPixmap      = 4;
  NoDefaultButton              = 8;
  NoBackButtonOnStartPage      = 16;
  NoBackButtonOnLastPage       = 32;
  DisabledBackButtonOnLastPage = 64;
  HaveNextButtonOnLastPage     = 128;
  HaveFinishButtonOnEarlyPages = 256;
  NoCancelButton               = 512;
  CancelButtonOnLeft           = 1024;
  HaveHelpButton               = 2048;
  HelpButtonOnRight            = 4096;
  HaveCustomButton1            = 8192;
  HaveCustomButton2            = 16384;
  HaveCustomButton3            = 32768;

TYPE                             (* Enum WizardOption *)
  WizardOption = [1 .. 32768];

TYPE
  QWizard <: QWizardPublic;
  QWizardPublic =
    QDialog BRANDED OBJECT
    METHODS
      init_0              (parent: QWidget; flags: WindowTypes; ): QWizard;
      init_1              (parent: QWidget; ): QWizard;
      init_2              (): QWizard;
      addPage             (page: QWizardPage; ): INTEGER;
      setPage             (id: INTEGER; page: QWizardPage; );
      removePage          (id: INTEGER; );
      page                (id: INTEGER; ): QWizardPage;
      hasVisitedPage      (id: INTEGER; ): BOOLEAN;
      setStartId          (id: INTEGER; );
      startId             (): INTEGER;
      currentPage         (): QWizardPage;
      currentId           (): INTEGER;
      validateCurrentPage (): BOOLEAN; (* virtual *)
      nextId              (): INTEGER; (* virtual *)
      setWizardStyle      (style: WizardStyle; );
      wizardStyle         (): WizardStyle;
      setOption           (option: WizardOption; on: BOOLEAN; );
      setOption1          (option: WizardOption; );
      testOption          (option: WizardOption; ): BOOLEAN;
      setOptions          (options: WizardOptions; );
      options             (): WizardOptions;
      setButtonText       (which: WizardButton; text: TEXT; );
      buttonText          (which: WizardButton; ): TEXT;
      setButton           (which: WizardButton; button: QAbstractButton; );
      button              (which: WizardButton; ): QAbstractButton;
      setTitleFormat      (format: TextFormat; );
      titleFormat         (): TextFormat;
      setSubTitleFormat   (format: TextFormat; );
      subTitleFormat      (): TextFormat;
      setPixmap           (which: WizardPixmap; pixmap: QPixmap; );
      pixmap              (which: WizardPixmap; ): QPixmap;
      setSideWidget       (widget: QWidget; );
      sideWidget          (): QWidget;
      setDefaultProperty  (className, property, changedSignal: TEXT; );
      setVisible          (visible: BOOLEAN; ); (* virtual *)
      sizeHint            (): QSize; (* virtual *)
      back                ();
      next                ();
      restart             ();
      destroyCxx          ();
    END;

  QWizardPage <: QWizardPagePublic;
  QWizardPagePublic = QWidget BRANDED OBJECT
                      METHODS
                        init_0      (parent: QWidget; ): QWizardPage;
                        init_1      (): QWizardPage;
                        setTitle    (title: TEXT; );
                        title       (): TEXT;
                        setSubTitle (subTitle: TEXT; );
                        subTitle    (): TEXT;
                        setPixmap (which: WizardPixmap; pixmap: QPixmap; );
                        pixmap    (which: WizardPixmap; ): QPixmap;
                        setFinalPage   (finalPage: BOOLEAN; );
                        isFinalPage    (): BOOLEAN;
                        setCommitPage  (commitPage: BOOLEAN; );
                        isCommitPage   (): BOOLEAN;
                        setButtonText  (which: WizardButton; text: TEXT; );
                        buttonText     (which: WizardButton; ): TEXT;
                        initializePage (); (* virtual *)
                        cleanupPage    (); (* virtual *)
                        validatePage   (): BOOLEAN; (* virtual *)
                        isComplete     (): BOOLEAN; (* virtual *)
                        nextId         (): INTEGER; (* virtual *)
                        destroyCxx     ();
                      END;


END QtWizard.
