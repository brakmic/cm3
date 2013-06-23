(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtDateTimeEditRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QDateTimeEdit0 *>
PROCEDURE New_QDateTimeEdit0 (parent: ADDRESS; ): QDateTimeEdit;

<* EXTERNAL New_QDateTimeEdit1 *>
PROCEDURE New_QDateTimeEdit1 (): QDateTimeEdit;

<* EXTERNAL New_QDateTimeEdit2 *>
PROCEDURE New_QDateTimeEdit2 (dt, parent: ADDRESS; ): QDateTimeEdit;

<* EXTERNAL New_QDateTimeEdit3 *>
PROCEDURE New_QDateTimeEdit3 (dt: ADDRESS; ): QDateTimeEdit;

<* EXTERNAL New_QDateTimeEdit4 *>
PROCEDURE New_QDateTimeEdit4 (d, parent: ADDRESS; ): QDateTimeEdit;

<* EXTERNAL New_QDateTimeEdit5 *>
PROCEDURE New_QDateTimeEdit5 (d: ADDRESS; ): QDateTimeEdit;

<* EXTERNAL New_QDateTimeEdit6 *>
PROCEDURE New_QDateTimeEdit6 (t, parent: ADDRESS; ): QDateTimeEdit;

<* EXTERNAL New_QDateTimeEdit7 *>
PROCEDURE New_QDateTimeEdit7 (t: ADDRESS; ): QDateTimeEdit;

<* EXTERNAL QDateTimeEdit_dateTime *>
PROCEDURE QDateTimeEdit_dateTime (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_date *>
PROCEDURE QDateTimeEdit_date (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_time *>
PROCEDURE QDateTimeEdit_time (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_minimumDateTime *>
PROCEDURE QDateTimeEdit_minimumDateTime (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_clearMinimumDateTime *>
PROCEDURE QDateTimeEdit_clearMinimumDateTime (self: QDateTimeEdit; );

<* EXTERNAL QDateTimeEdit_setMinimumDateTime *>
PROCEDURE QDateTimeEdit_setMinimumDateTime
  (self: QDateTimeEdit; dt: ADDRESS; );

<* EXTERNAL QDateTimeEdit_maximumDateTime *>
PROCEDURE QDateTimeEdit_maximumDateTime (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_clearMaximumDateTime *>
PROCEDURE QDateTimeEdit_clearMaximumDateTime (self: QDateTimeEdit; );

<* EXTERNAL QDateTimeEdit_setMaximumDateTime *>
PROCEDURE QDateTimeEdit_setMaximumDateTime
  (self: QDateTimeEdit; dt: ADDRESS; );

<* EXTERNAL QDateTimeEdit_setDateTimeRange *>
PROCEDURE QDateTimeEdit_setDateTimeRange
  (self: QDateTimeEdit; min, max: ADDRESS; );

<* EXTERNAL QDateTimeEdit_minimumDate *>
PROCEDURE QDateTimeEdit_minimumDate (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_setMinimumDate *>
PROCEDURE QDateTimeEdit_setMinimumDate
  (self: QDateTimeEdit; min: ADDRESS; );

<* EXTERNAL QDateTimeEdit_clearMinimumDate *>
PROCEDURE QDateTimeEdit_clearMinimumDate (self: QDateTimeEdit; );

<* EXTERNAL QDateTimeEdit_maximumDate *>
PROCEDURE QDateTimeEdit_maximumDate (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_setMaximumDate *>
PROCEDURE QDateTimeEdit_setMaximumDate
  (self: QDateTimeEdit; max: ADDRESS; );

<* EXTERNAL QDateTimeEdit_clearMaximumDate *>
PROCEDURE QDateTimeEdit_clearMaximumDate (self: QDateTimeEdit; );

<* EXTERNAL QDateTimeEdit_setDateRange *>
PROCEDURE QDateTimeEdit_setDateRange
  (self: QDateTimeEdit; min, max: ADDRESS; );

<* EXTERNAL QDateTimeEdit_minimumTime *>
PROCEDURE QDateTimeEdit_minimumTime (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_setMinimumTime *>
PROCEDURE QDateTimeEdit_setMinimumTime
  (self: QDateTimeEdit; min: ADDRESS; );

<* EXTERNAL QDateTimeEdit_clearMinimumTime *>
PROCEDURE QDateTimeEdit_clearMinimumTime (self: QDateTimeEdit; );

<* EXTERNAL QDateTimeEdit_maximumTime *>
PROCEDURE QDateTimeEdit_maximumTime (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_setMaximumTime *>
PROCEDURE QDateTimeEdit_setMaximumTime
  (self: QDateTimeEdit; max: ADDRESS; );

<* EXTERNAL QDateTimeEdit_clearMaximumTime *>
PROCEDURE QDateTimeEdit_clearMaximumTime (self: QDateTimeEdit; );

<* EXTERNAL QDateTimeEdit_setTimeRange *>
PROCEDURE QDateTimeEdit_setTimeRange
  (self: QDateTimeEdit; min, max: ADDRESS; );

<* EXTERNAL QDateTimeEdit_displayedSections *>
PROCEDURE QDateTimeEdit_displayedSections (self: QDateTimeEdit; ): C.int;

<* EXTERNAL QDateTimeEdit_currentSection *>
PROCEDURE QDateTimeEdit_currentSection (self: QDateTimeEdit; ): C.int;

<* EXTERNAL QDateTimeEdit_sectionAt *>
PROCEDURE QDateTimeEdit_sectionAt (self: QDateTimeEdit; index: C.int; ):
  C.int;

<* EXTERNAL QDateTimeEdit_setCurrentSection *>
PROCEDURE QDateTimeEdit_setCurrentSection
  (self: QDateTimeEdit; section: C.int; );

<* EXTERNAL QDateTimeEdit_currentSectionIndex *>
PROCEDURE QDateTimeEdit_currentSectionIndex (self: QDateTimeEdit; ): C.int;

<* EXTERNAL QDateTimeEdit_setCurrentSectionIndex *>
PROCEDURE QDateTimeEdit_setCurrentSectionIndex
  (self: QDateTimeEdit; index: C.int; );

<* EXTERNAL QDateTimeEdit_calendarWidget *>
PROCEDURE QDateTimeEdit_calendarWidget (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_setCalendarWidget *>
PROCEDURE QDateTimeEdit_setCalendarWidget
  (self: QDateTimeEdit; calendarWidget: ADDRESS; );

<* EXTERNAL QDateTimeEdit_sectionCount *>
PROCEDURE QDateTimeEdit_sectionCount (self: QDateTimeEdit; ): C.int;

<* EXTERNAL QDateTimeEdit_setSelectedSection *>
PROCEDURE QDateTimeEdit_setSelectedSection
  (self: QDateTimeEdit; section: C.int; );

<* EXTERNAL QDateTimeEdit_sectionText *>
PROCEDURE QDateTimeEdit_sectionText
  (self: QDateTimeEdit; section: C.int; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_displayFormat *>
PROCEDURE QDateTimeEdit_displayFormat (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_setDisplayFormat *>
PROCEDURE QDateTimeEdit_setDisplayFormat
  (self: QDateTimeEdit; format: ADDRESS; );

<* EXTERNAL QDateTimeEdit_calendarPopup *>
PROCEDURE QDateTimeEdit_calendarPopup (self: QDateTimeEdit; ): BOOLEAN;

<* EXTERNAL QDateTimeEdit_setCalendarPopup *>
PROCEDURE QDateTimeEdit_setCalendarPopup
  (self: QDateTimeEdit; enable: BOOLEAN; );

<* EXTERNAL QDateTimeEdit_timeSpec *>
PROCEDURE QDateTimeEdit_timeSpec (self: QDateTimeEdit; ): C.int;

<* EXTERNAL QDateTimeEdit_setTimeSpec *>
PROCEDURE QDateTimeEdit_setTimeSpec (self: QDateTimeEdit; spec: C.int; );

<* EXTERNAL QDateTimeEdit_sizeHint *>
PROCEDURE QDateTimeEdit_sizeHint (self: QDateTimeEdit; ): ADDRESS;

<* EXTERNAL QDateTimeEdit_clear *>
PROCEDURE QDateTimeEdit_clear (self: QDateTimeEdit; );

<* EXTERNAL QDateTimeEdit_stepBy *>
PROCEDURE QDateTimeEdit_stepBy (self: QDateTimeEdit; steps: C.int; );

<* EXTERNAL QDateTimeEdit_event *>
PROCEDURE QDateTimeEdit_event (self: QDateTimeEdit; event: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QDateTimeEdit_setDateTime *>
PROCEDURE QDateTimeEdit_setDateTime
  (self: QDateTimeEdit; dateTime: ADDRESS; );

<* EXTERNAL QDateTimeEdit_setDate *>
PROCEDURE QDateTimeEdit_setDate (self: QDateTimeEdit; date: ADDRESS; );

<* EXTERNAL QDateTimeEdit_setTime *>
PROCEDURE QDateTimeEdit_setTime (self: QDateTimeEdit; time: ADDRESS; );

<* EXTERNAL Delete_QDateTimeEdit *>
PROCEDURE Delete_QDateTimeEdit (self: QDateTimeEdit; );

TYPE QDateTimeEdit = ADDRESS;

<* EXTERNAL New_QTimeEdit0 *>
PROCEDURE New_QTimeEdit0 (parent: ADDRESS; ): QTimeEdit;

<* EXTERNAL New_QTimeEdit1 *>
PROCEDURE New_QTimeEdit1 (): QTimeEdit;

<* EXTERNAL New_QTimeEdit2 *>
PROCEDURE New_QTimeEdit2 (time, parent: ADDRESS; ): QTimeEdit;

<* EXTERNAL New_QTimeEdit3 *>
PROCEDURE New_QTimeEdit3 (time: ADDRESS; ): QTimeEdit;

<* EXTERNAL Delete_QTimeEdit *>
PROCEDURE Delete_QTimeEdit (self: QTimeEdit; );

TYPE QTimeEdit = ADDRESS;

<* EXTERNAL New_QDateEdit0 *>
PROCEDURE New_QDateEdit0 (parent: ADDRESS; ): QDateEdit;

<* EXTERNAL New_QDateEdit1 *>
PROCEDURE New_QDateEdit1 (): QDateEdit;

<* EXTERNAL New_QDateEdit2 *>
PROCEDURE New_QDateEdit2 (date, parent: ADDRESS; ): QDateEdit;

<* EXTERNAL New_QDateEdit3 *>
PROCEDURE New_QDateEdit3 (date: ADDRESS; ): QDateEdit;

<* EXTERNAL Delete_QDateEdit *>
PROCEDURE Delete_QDateEdit (self: QDateEdit; );

TYPE QDateEdit = ADDRESS;

END QtDateTimeEditRaw.
