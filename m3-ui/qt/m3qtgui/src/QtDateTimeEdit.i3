(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtDateTimeEdit;

FROM QtDateTime IMPORT QTime, QDateTime, QDate;
FROM QtSize IMPORT QSize;
FROM QtEvent IMPORT QEvent;
FROM QtWidget IMPORT QWidget;
FROM QtCalendarWidget IMPORT QCalendarWidget;
FROM QtNamespace IMPORT TimeSpec;



FROM QtAbstractSpinBox IMPORT QAbstractSpinBox;

TYPE
  T = QDateTimeEdit;

  Sections = INTEGER;



CONST                            (* Enum Section *)
  NoSection         = 0;
  AmPmSection       = 1;
  MSecSection       = 2;
  SecondSection     = 4;
  MinuteSection     = 8;
  HourSection       = 16;
  DaySection        = 256;
  MonthSection      = 512;
  YearSection       = 1024;
  TimeSections_Mask = 0;
  DateSections_Mask = 0;

TYPE                             (* Enum Section *)
  Section = [0 .. 1024];

TYPE
  QDateTimeEdit <: QDateTimeEditPublic;
  QDateTimeEditPublic =
    QAbstractSpinBox BRANDED OBJECT
    METHODS
      init_0          (parent: QWidget; ): QDateTimeEdit;
      init_1          (): QDateTimeEdit;
      init_2          (dt: QDateTime; parent: QWidget; ): QDateTimeEdit;
      init_3          (dt: QDateTime; ): QDateTimeEdit;
      init_4          (d: QDate; parent: QWidget; ): QDateTimeEdit;
      init_5          (d: QDate; ): QDateTimeEdit;
      init_6          (t: QTime; parent: QWidget; ): QDateTimeEdit;
      init_7          (t: QTime; ): QDateTimeEdit;
      dateTime        (): QDateTime;
      date            (): QDate;
      time            (): QTime;
      minimumDateTime (): QDateTime;
      clearMinimumDateTime   ();
      setMinimumDateTime     (dt: QDateTime; );
      maximumDateTime        (): QDateTime;
      clearMaximumDateTime   ();
      setMaximumDateTime     (dt: QDateTime; );
      setDateTimeRange       (min, max: QDateTime; );
      minimumDate            (): QDate;
      setMinimumDate         (min: QDate; );
      clearMinimumDate       ();
      maximumDate            (): QDate;
      setMaximumDate         (max: QDate; );
      clearMaximumDate       ();
      setDateRange           (min, max: QDate; );
      minimumTime            (): QTime;
      setMinimumTime         (min: QTime; );
      clearMinimumTime       ();
      maximumTime            (): QTime;
      setMaximumTime         (max: QTime; );
      clearMaximumTime       ();
      setTimeRange           (min, max: QTime; );
      displayedSections      (): Sections;
      currentSection         (): Section;
      sectionAt              (index: INTEGER; ): Section;
      setCurrentSection      (section: Section; );
      currentSectionIndex    (): INTEGER;
      setCurrentSectionIndex (index: INTEGER; );
      calendarWidget         (): QCalendarWidget;
      setCalendarWidget      (calendarWidget: QCalendarWidget; );
      sectionCount           (): INTEGER;
      setSelectedSection     (section: Section; );
      sectionText            (section: Section; ): TEXT;
      displayFormat          (): TEXT;
      setDisplayFormat       (format: TEXT; );
      calendarPopup          (): BOOLEAN;
      setCalendarPopup       (enable: BOOLEAN; );
      timeSpec               (): TimeSpec;
      setTimeSpec            (spec: TimeSpec; );
      sizeHint               (): QSize; (* virtual *)
      clear                  (); (* virtual *)
      stepBy                 (steps: INTEGER; ); (* virtual *)
      event                  (event: QEvent; ): BOOLEAN; (* virtual *)
      setDateTime            (dateTime: QDateTime; );
      setDate                (date: QDate; );
      setTime                (time: QTime; );
      destroyCxx             ();
    END;

  QTimeEdit <: QTimeEditPublic;
  QTimeEditPublic = QDateTimeEdit BRANDED OBJECT
                    METHODS
                      init_0 (parent: QWidget; ): QTimeEdit;
                      init_1 (): QTimeEdit;
                      init_2 (time: QTime; parent: QWidget; ): QTimeEdit;
                      init_3 (time: QTime; ): QTimeEdit;
                      destroyCxx ();
                    END;

  QDateEdit <: QDateEditPublic;
  QDateEditPublic = QDateTimeEdit BRANDED OBJECT
                    METHODS
                      init_0 (parent: QWidget; ): QDateEdit;
                      init_1 (): QDateEdit;
                      init_2 (date: QDate; parent: QWidget; ): QDateEdit;
                      init_3 (date: QDate; ): QDateEdit;
                      destroyCxx ();
                    END;


END QtDateTimeEdit.
