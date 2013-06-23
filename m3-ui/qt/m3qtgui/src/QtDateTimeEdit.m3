(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtDateTimeEdit;


FROM QtDateTime IMPORT QTime, QDateTime, QDate;
FROM QtSize IMPORT QSize;
FROM QtByteArray IMPORT QByteArray;
FROM QtEvent IMPORT QEvent;
IMPORT QtDateTimeEditRaw;
FROM QtWidget IMPORT QWidget;
FROM QtCalendarWidget IMPORT QCalendarWidget;
FROM QtString IMPORT QString;
FROM QtNamespace IMPORT TimeSpec;


IMPORT WeakRef;

PROCEDURE New_QDateTimeEdit0 (self: QDateTimeEdit; parent: QWidget; ):
  QDateTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit0;

PROCEDURE New_QDateTimeEdit1 (self: QDateTimeEdit; ): QDateTimeEdit =
  VAR result: ADDRESS;
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit1;

PROCEDURE New_QDateTimeEdit2
  (self: QDateTimeEdit; dt: QDateTime; parent: QWidget; ): QDateTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(dt.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit2(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit2;

PROCEDURE New_QDateTimeEdit3 (self: QDateTimeEdit; dt: QDateTime; ):
  QDateTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(dt.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit3(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit3;

PROCEDURE New_QDateTimeEdit4
  (self: QDateTimeEdit; d: QDate; parent: QWidget; ): QDateTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(d.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit4(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit4;

PROCEDURE New_QDateTimeEdit5 (self: QDateTimeEdit; d: QDate; ):
  QDateTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(d.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit5(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit5;

PROCEDURE New_QDateTimeEdit6
  (self: QDateTimeEdit; t: QTime; parent: QWidget; ): QDateTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(t.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit6(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit6;

PROCEDURE New_QDateTimeEdit7 (self: QDateTimeEdit; t: QTime; ):
  QDateTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(t.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateTimeEdit7(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);

    RETURN self;
  END New_QDateTimeEdit7;

PROCEDURE QDateTimeEdit_dateTime (self: QDateTimeEdit; ): QDateTime =
  VAR
    ret    : ADDRESS;
    result : QDateTime;
    selfAdr: ADDRESS   := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_dateTime(selfAdr);

    IF ISTYPE(result, QDateTime) AND ret = selfAdr THEN
      result := LOOPHOLE(self, QDateTime);
    ELSE
      result := NEW(QDateTime);
      result.cxxObj := ret;
      result.destroyCxx();
    END;

    RETURN result;
  END QDateTimeEdit_dateTime;

PROCEDURE QDateTimeEdit_date (self: QDateTimeEdit; ): QDate =
  VAR
    ret    : ADDRESS;
    result : QDate;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_date(selfAdr);

    result := NEW(QDate);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_date;

PROCEDURE QDateTimeEdit_time (self: QDateTimeEdit; ): QTime =
  VAR
    ret    : ADDRESS;
    result : QTime;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_time(selfAdr);

    result := NEW(QTime);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_time;

PROCEDURE QDateTimeEdit_minimumDateTime (self: QDateTimeEdit; ):
  QDateTime =
  VAR
    ret    : ADDRESS;
    result : QDateTime;
    selfAdr: ADDRESS   := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_minimumDateTime(selfAdr);

    IF ISTYPE(result, QDateTime) AND ret = selfAdr THEN
      result := LOOPHOLE(self, QDateTime);
    ELSE
      result := NEW(QDateTime);
      result.cxxObj := ret;
      result.destroyCxx();
    END;

    RETURN result;
  END QDateTimeEdit_minimumDateTime;

PROCEDURE QDateTimeEdit_clearMinimumDateTime (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_clearMinimumDateTime(selfAdr);
  END QDateTimeEdit_clearMinimumDateTime;

PROCEDURE QDateTimeEdit_setMinimumDateTime
  (self: QDateTimeEdit; dt: QDateTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(dt.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setMinimumDateTime(selfAdr, arg2tmp);
  END QDateTimeEdit_setMinimumDateTime;

PROCEDURE QDateTimeEdit_maximumDateTime (self: QDateTimeEdit; ):
  QDateTime =
  VAR
    ret    : ADDRESS;
    result : QDateTime;
    selfAdr: ADDRESS   := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_maximumDateTime(selfAdr);

    IF ISTYPE(result, QDateTime) AND ret = selfAdr THEN
      result := LOOPHOLE(self, QDateTime);
    ELSE
      result := NEW(QDateTime);
      result.cxxObj := ret;
      result.destroyCxx();
    END;

    RETURN result;
  END QDateTimeEdit_maximumDateTime;

PROCEDURE QDateTimeEdit_clearMaximumDateTime (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_clearMaximumDateTime(selfAdr);
  END QDateTimeEdit_clearMaximumDateTime;

PROCEDURE QDateTimeEdit_setMaximumDateTime
  (self: QDateTimeEdit; dt: QDateTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(dt.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setMaximumDateTime(selfAdr, arg2tmp);
  END QDateTimeEdit_setMaximumDateTime;

PROCEDURE QDateTimeEdit_setDateTimeRange
  (self: QDateTimeEdit; min, max: QDateTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(min.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(max.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setDateTimeRange(
      selfAdr, arg2tmp, arg3tmp);
  END QDateTimeEdit_setDateTimeRange;

PROCEDURE QDateTimeEdit_minimumDate (self: QDateTimeEdit; ): QDate =
  VAR
    ret    : ADDRESS;
    result : QDate;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_minimumDate(selfAdr);

    result := NEW(QDate);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_minimumDate;

PROCEDURE QDateTimeEdit_setMinimumDate
  (self: QDateTimeEdit; min: QDate; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(min.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setMinimumDate(selfAdr, arg2tmp);
  END QDateTimeEdit_setMinimumDate;

PROCEDURE QDateTimeEdit_clearMinimumDate (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_clearMinimumDate(selfAdr);
  END QDateTimeEdit_clearMinimumDate;

PROCEDURE QDateTimeEdit_maximumDate (self: QDateTimeEdit; ): QDate =
  VAR
    ret    : ADDRESS;
    result : QDate;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_maximumDate(selfAdr);

    result := NEW(QDate);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_maximumDate;

PROCEDURE QDateTimeEdit_setMaximumDate
  (self: QDateTimeEdit; max: QDate; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(max.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setMaximumDate(selfAdr, arg2tmp);
  END QDateTimeEdit_setMaximumDate;

PROCEDURE QDateTimeEdit_clearMaximumDate (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_clearMaximumDate(selfAdr);
  END QDateTimeEdit_clearMaximumDate;

PROCEDURE QDateTimeEdit_setDateRange
  (self: QDateTimeEdit; min, max: QDate; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(min.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(max.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setDateRange(selfAdr, arg2tmp, arg3tmp);
  END QDateTimeEdit_setDateRange;

PROCEDURE QDateTimeEdit_minimumTime (self: QDateTimeEdit; ): QTime =
  VAR
    ret    : ADDRESS;
    result : QTime;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_minimumTime(selfAdr);

    result := NEW(QTime);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_minimumTime;

PROCEDURE QDateTimeEdit_setMinimumTime
  (self: QDateTimeEdit; min: QTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(min.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setMinimumTime(selfAdr, arg2tmp);
  END QDateTimeEdit_setMinimumTime;

PROCEDURE QDateTimeEdit_clearMinimumTime (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_clearMinimumTime(selfAdr);
  END QDateTimeEdit_clearMinimumTime;

PROCEDURE QDateTimeEdit_maximumTime (self: QDateTimeEdit; ): QTime =
  VAR
    ret    : ADDRESS;
    result : QTime;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_maximumTime(selfAdr);

    result := NEW(QTime);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_maximumTime;

PROCEDURE QDateTimeEdit_setMaximumTime
  (self: QDateTimeEdit; max: QTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(max.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setMaximumTime(selfAdr, arg2tmp);
  END QDateTimeEdit_setMaximumTime;

PROCEDURE QDateTimeEdit_clearMaximumTime (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_clearMaximumTime(selfAdr);
  END QDateTimeEdit_clearMaximumTime;

PROCEDURE QDateTimeEdit_setTimeRange
  (self: QDateTimeEdit; min, max: QTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(min.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(max.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setTimeRange(selfAdr, arg2tmp, arg3tmp);
  END QDateTimeEdit_setTimeRange;

PROCEDURE QDateTimeEdit_displayedSections (self: QDateTimeEdit; ):
  Sections =
  VAR
    ret    : INTEGER;
    result : Sections;
    selfAdr: ADDRESS  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_displayedSections(selfAdr);
    result := VAL(ret, Sections);
    RETURN result;
  END QDateTimeEdit_displayedSections;

PROCEDURE QDateTimeEdit_currentSection (self: QDateTimeEdit; ): Section =
  VAR
    ret    : INTEGER;
    result : Section;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_currentSection(selfAdr);
    result := VAL(ret, Section);
    RETURN result;
  END QDateTimeEdit_currentSection;

PROCEDURE QDateTimeEdit_sectionAt (self: QDateTimeEdit; index: INTEGER; ):
  Section =
  VAR
    ret    : INTEGER;
    result : Section;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_sectionAt(selfAdr, index);
    result := VAL(ret, Section);
    RETURN result;
  END QDateTimeEdit_sectionAt;

PROCEDURE QDateTimeEdit_setCurrentSection
  (self: QDateTimeEdit; section: Section; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setCurrentSection(
      selfAdr, ORD(section));
  END QDateTimeEdit_setCurrentSection;

PROCEDURE QDateTimeEdit_currentSectionIndex (self: QDateTimeEdit; ):
  INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDateTimeEditRaw.QDateTimeEdit_currentSectionIndex(selfAdr);
  END QDateTimeEdit_currentSectionIndex;

PROCEDURE QDateTimeEdit_setCurrentSectionIndex
  (self: QDateTimeEdit; index: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setCurrentSectionIndex(selfAdr, index);
  END QDateTimeEdit_setCurrentSectionIndex;

PROCEDURE QDateTimeEdit_calendarWidget (self: QDateTimeEdit; ):
  QCalendarWidget =
  VAR
    ret    : ADDRESS;
    result : QCalendarWidget;
    selfAdr: ADDRESS         := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_calendarWidget(selfAdr);

    result := NEW(QCalendarWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_calendarWidget;

PROCEDURE QDateTimeEdit_setCalendarWidget
  (self: QDateTimeEdit; calendarWidget: QCalendarWidget; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(calendarWidget.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setCalendarWidget(selfAdr, arg2tmp);
  END QDateTimeEdit_setCalendarWidget;

PROCEDURE QDateTimeEdit_sectionCount (self: QDateTimeEdit; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDateTimeEditRaw.QDateTimeEdit_sectionCount(selfAdr);
  END QDateTimeEdit_sectionCount;

PROCEDURE QDateTimeEdit_setSelectedSection
  (self: QDateTimeEdit; section: Section; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setSelectedSection(
      selfAdr, ORD(section));
  END QDateTimeEdit_setSelectedSection;

PROCEDURE QDateTimeEdit_sectionText
  (self: QDateTimeEdit; section: Section; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtDateTimeEditRaw.QDateTimeEdit_sectionText(selfAdr, ORD(section));

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QDateTimeEdit_sectionText;

PROCEDURE QDateTimeEdit_displayFormat (self: QDateTimeEdit; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_displayFormat(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QDateTimeEdit_displayFormat;

PROCEDURE QDateTimeEdit_setDisplayFormat
  (self: QDateTimeEdit; format: TEXT; ) =
  VAR
    selfAdr    : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_format          := NEW(QString).initQString(format);
    arg2tmp              := LOOPHOLE(qstr_format.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setDisplayFormat(selfAdr, arg2tmp);
  END QDateTimeEdit_setDisplayFormat;

PROCEDURE QDateTimeEdit_calendarPopup (self: QDateTimeEdit; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDateTimeEditRaw.QDateTimeEdit_calendarPopup(selfAdr);
  END QDateTimeEdit_calendarPopup;

PROCEDURE QDateTimeEdit_setCalendarPopup
  (self: QDateTimeEdit; enable: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setCalendarPopup(selfAdr, enable);
  END QDateTimeEdit_setCalendarPopup;

PROCEDURE QDateTimeEdit_timeSpec (self: QDateTimeEdit; ): TimeSpec =
  VAR
    ret    : INTEGER;
    result : TimeSpec;
    selfAdr: ADDRESS  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_timeSpec(selfAdr);
    result := VAL(ret, TimeSpec);
    RETURN result;
  END QDateTimeEdit_timeSpec;

PROCEDURE QDateTimeEdit_setTimeSpec
  (self: QDateTimeEdit; spec: TimeSpec; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setTimeSpec(selfAdr, ORD(spec));
  END QDateTimeEdit_setTimeSpec;

PROCEDURE QDateTimeEdit_sizeHint (self: QDateTimeEdit; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDateTimeEditRaw.QDateTimeEdit_sizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDateTimeEdit_sizeHint;

PROCEDURE QDateTimeEdit_clear (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_clear(selfAdr);
  END QDateTimeEdit_clear;

PROCEDURE QDateTimeEdit_stepBy (self: QDateTimeEdit; steps: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_stepBy(selfAdr, steps);
  END QDateTimeEdit_stepBy;

PROCEDURE QDateTimeEdit_event (self: QDateTimeEdit; event: QEvent; ):
  BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(event.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDateTimeEditRaw.QDateTimeEdit_event(selfAdr, arg2tmp);
  END QDateTimeEdit_event;

PROCEDURE QDateTimeEdit_setDateTime
  (self: QDateTimeEdit; dateTime: QDateTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(dateTime.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setDateTime(selfAdr, arg2tmp);
  END QDateTimeEdit_setDateTime;

PROCEDURE QDateTimeEdit_setDate (self: QDateTimeEdit; date: QDate; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(date.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setDate(selfAdr, arg2tmp);
  END QDateTimeEdit_setDate;

PROCEDURE QDateTimeEdit_setTime (self: QDateTimeEdit; time: QTime; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(time.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.QDateTimeEdit_setTime(selfAdr, arg2tmp);
  END QDateTimeEdit_setTime;

PROCEDURE Delete_QDateTimeEdit (self: QDateTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.Delete_QDateTimeEdit(selfAdr);
  END Delete_QDateTimeEdit;

PROCEDURE Cleanup_QDateTimeEdit
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QDateTimeEdit := ref;
  BEGIN
    Delete_QDateTimeEdit(obj);
  END Cleanup_QDateTimeEdit;

PROCEDURE Destroy_QDateTimeEdit (self: QDateTimeEdit) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QDateTimeEdit);
  END Destroy_QDateTimeEdit;

REVEAL
  QDateTimeEdit =
    QDateTimeEditPublic BRANDED OBJECT
    OVERRIDES
      init_0                 := New_QDateTimeEdit0;
      init_1                 := New_QDateTimeEdit1;
      init_2                 := New_QDateTimeEdit2;
      init_3                 := New_QDateTimeEdit3;
      init_4                 := New_QDateTimeEdit4;
      init_5                 := New_QDateTimeEdit5;
      init_6                 := New_QDateTimeEdit6;
      init_7                 := New_QDateTimeEdit7;
      dateTime               := QDateTimeEdit_dateTime;
      date                   := QDateTimeEdit_date;
      time                   := QDateTimeEdit_time;
      minimumDateTime        := QDateTimeEdit_minimumDateTime;
      clearMinimumDateTime   := QDateTimeEdit_clearMinimumDateTime;
      setMinimumDateTime     := QDateTimeEdit_setMinimumDateTime;
      maximumDateTime        := QDateTimeEdit_maximumDateTime;
      clearMaximumDateTime   := QDateTimeEdit_clearMaximumDateTime;
      setMaximumDateTime     := QDateTimeEdit_setMaximumDateTime;
      setDateTimeRange       := QDateTimeEdit_setDateTimeRange;
      minimumDate            := QDateTimeEdit_minimumDate;
      setMinimumDate         := QDateTimeEdit_setMinimumDate;
      clearMinimumDate       := QDateTimeEdit_clearMinimumDate;
      maximumDate            := QDateTimeEdit_maximumDate;
      setMaximumDate         := QDateTimeEdit_setMaximumDate;
      clearMaximumDate       := QDateTimeEdit_clearMaximumDate;
      setDateRange           := QDateTimeEdit_setDateRange;
      minimumTime            := QDateTimeEdit_minimumTime;
      setMinimumTime         := QDateTimeEdit_setMinimumTime;
      clearMinimumTime       := QDateTimeEdit_clearMinimumTime;
      maximumTime            := QDateTimeEdit_maximumTime;
      setMaximumTime         := QDateTimeEdit_setMaximumTime;
      clearMaximumTime       := QDateTimeEdit_clearMaximumTime;
      setTimeRange           := QDateTimeEdit_setTimeRange;
      displayedSections      := QDateTimeEdit_displayedSections;
      currentSection         := QDateTimeEdit_currentSection;
      sectionAt              := QDateTimeEdit_sectionAt;
      setCurrentSection      := QDateTimeEdit_setCurrentSection;
      currentSectionIndex    := QDateTimeEdit_currentSectionIndex;
      setCurrentSectionIndex := QDateTimeEdit_setCurrentSectionIndex;
      calendarWidget         := QDateTimeEdit_calendarWidget;
      setCalendarWidget      := QDateTimeEdit_setCalendarWidget;
      sectionCount           := QDateTimeEdit_sectionCount;
      setSelectedSection     := QDateTimeEdit_setSelectedSection;
      sectionText            := QDateTimeEdit_sectionText;
      displayFormat          := QDateTimeEdit_displayFormat;
      setDisplayFormat       := QDateTimeEdit_setDisplayFormat;
      calendarPopup          := QDateTimeEdit_calendarPopup;
      setCalendarPopup       := QDateTimeEdit_setCalendarPopup;
      timeSpec               := QDateTimeEdit_timeSpec;
      setTimeSpec            := QDateTimeEdit_setTimeSpec;
      sizeHint               := QDateTimeEdit_sizeHint;
      clear                  := QDateTimeEdit_clear;
      stepBy                 := QDateTimeEdit_stepBy;
      event                  := QDateTimeEdit_event;
      setDateTime            := QDateTimeEdit_setDateTime;
      setDate                := QDateTimeEdit_setDate;
      setTime                := QDateTimeEdit_setTime;
      destroyCxx             := Destroy_QDateTimeEdit;
    END;

PROCEDURE New_QTimeEdit0 (self: QTimeEdit; parent: QWidget; ): QTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QTimeEdit0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QTimeEdit);

    RETURN self;
  END New_QTimeEdit0;

PROCEDURE New_QTimeEdit1 (self: QTimeEdit; ): QTimeEdit =
  VAR result: ADDRESS;
  BEGIN
    result := QtDateTimeEditRaw.New_QTimeEdit1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QTimeEdit);

    RETURN self;
  END New_QTimeEdit1;

PROCEDURE New_QTimeEdit2 (self: QTimeEdit; time: QTime; parent: QWidget; ):
  QTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(time.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QTimeEdit2(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QTimeEdit);

    RETURN self;
  END New_QTimeEdit2;

PROCEDURE New_QTimeEdit3 (self: QTimeEdit; time: QTime; ): QTimeEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(time.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QTimeEdit3(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QTimeEdit);

    RETURN self;
  END New_QTimeEdit3;

PROCEDURE Delete_QTimeEdit (self: QTimeEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.Delete_QTimeEdit(selfAdr);
  END Delete_QTimeEdit;

PROCEDURE Cleanup_QTimeEdit
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QTimeEdit := ref;
  BEGIN
    Delete_QTimeEdit(obj);
  END Cleanup_QTimeEdit;

PROCEDURE Destroy_QTimeEdit (self: QTimeEdit) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QTimeEdit);
  END Destroy_QTimeEdit;

REVEAL
  QTimeEdit = QTimeEditPublic BRANDED OBJECT
              OVERRIDES
                init_0     := New_QTimeEdit0;
                init_1     := New_QTimeEdit1;
                init_2     := New_QTimeEdit2;
                init_3     := New_QTimeEdit3;
                destroyCxx := Destroy_QTimeEdit;
              END;

PROCEDURE New_QDateEdit0 (self: QDateEdit; parent: QWidget; ): QDateEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateEdit0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateEdit);

    RETURN self;
  END New_QDateEdit0;

PROCEDURE New_QDateEdit1 (self: QDateEdit; ): QDateEdit =
  VAR result: ADDRESS;
  BEGIN
    result := QtDateTimeEditRaw.New_QDateEdit1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateEdit);

    RETURN self;
  END New_QDateEdit1;

PROCEDURE New_QDateEdit2 (self: QDateEdit; date: QDate; parent: QWidget; ):
  QDateEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(date.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateEdit2(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateEdit);

    RETURN self;
  END New_QDateEdit2;

PROCEDURE New_QDateEdit3 (self: QDateEdit; date: QDate; ): QDateEdit =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(date.cxxObj, ADDRESS);
  BEGIN
    result := QtDateTimeEditRaw.New_QDateEdit3(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDateEdit);

    RETURN self;
  END New_QDateEdit3;

PROCEDURE Delete_QDateEdit (self: QDateEdit; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDateTimeEditRaw.Delete_QDateEdit(selfAdr);
  END Delete_QDateEdit;

PROCEDURE Cleanup_QDateEdit
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QDateEdit := ref;
  BEGIN
    Delete_QDateEdit(obj);
  END Cleanup_QDateEdit;

PROCEDURE Destroy_QDateEdit (self: QDateEdit) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QDateEdit);
  END Destroy_QDateEdit;

REVEAL
  QDateEdit = QDateEditPublic BRANDED OBJECT
              OVERRIDES
                init_0     := New_QDateEdit0;
                init_1     := New_QDateEdit1;
                init_2     := New_QDateEdit2;
                init_3     := New_QDateEdit3;
                destroyCxx := Destroy_QDateEdit;
              END;


BEGIN
END QtDateTimeEdit.
