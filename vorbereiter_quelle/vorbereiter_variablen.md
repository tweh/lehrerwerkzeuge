# AppleScript „Vorbereiter“

In diesem Ordner findet sich die AppleScript-Datei, aus der das Programm `vorbereiter` im Hauptordner erzeugt wurde.

Hinweise zur Programmierung finden sich in Form von kurzen Kommentaren im Quelltext, während die Anleitung zur Nutzung in der Numbers-Datei `vorbereiter_tabelle` zu finden ist.

## im Script verwendete Variablen

### „globale“ Variablen

Diese Variablen werden ganz am Beginn definiert.  
(in alphabetischer Reihenfolge)

- `CLASSES_LIST` *(array)*: Liste mit den Klassen/Kursen und allen Eigenschaften (s.u.)
- `DEFAULT_DELAY`: Zeit, die nach dem Öffnen einer Numbers-Datei abgewartet wird ehe mit der Bearbeitung der Datei begonnen wird
- `EXAM_NAMES` *(record mit `sek1`, `sek2`)*: Liste der Bezeichner für KA abhängig vom Level
- `EXAM_SINGULAR_TEXT` *(record mit `sek1`, `sek2`)*: Liste mit den Singularformen für „KA pro Schuljahr“ im KA-Formular
- `PREPERATOR_TABLE_FILE`: Verweis auf die Tabelle `vorbereiter_tabelle` (Dateiname kann abweichen)
- `TARGET_FOLDER`: Verweis auf den Speicherort der anzulegenden Ordner
- `TEMPLATE_FOLDER`: Verweis auf den Ordner mit den Vorlagen (`lehrerwerkzeuge`)


### weitere Variablen

Diese Variablen werden im Verlauf des Scripts definiert.  
(in alphabetischer Reihenfolge)

- `CALENDER_FILE`: Verweis auf den Kalender
- `CLASS_ID`: (eindeutiger) Bezeichner für die Klasse, der aus dem Fach und dem Klassennamen gebildet wird
- `CLASS_FOLDER`: Name für den/die Klassenordner
- `CLASS_MESSAGE`: Text für Abschlussmeldung, wie viele Klassen angelegt wurden
- `CLASS_TAG`: String mit dem Tag für eine Klasse für die Notizen
- `CLASSES_TOTAL`: Anzahl der zu bearbeitenden Klassen
- `CURRENT_CLASS_AND_SEMESTER_NAME`: Kombination aus Klassen- und Halbjahresbezeichner für Überschriften, Dateinamen etc.
- `CURRENT_CLASS` *(record)*: Objekt mit den Infos der aktuellen Klasse (Parameter s.u.)
- `CURRENT_EXAM_NUMBER`: Nummer der gerade in Bearbeitung befindlichen Arbeit
- `CURRENT_FILE`: temporärer Versweis auf die gerade zu bearbeitende Datei
- `DO_CLASSES` *(boolean)*: Entscheidet, ob der Ordner mit den Klassenordnern angelegt und befüllt wird.
- `DO_LISTS` *(boolean)*: Entscheidet, ob der Ordner mit den Notenlisten angelegt und befüllt wird.
- `DO_NOTES` *(boolean)*: Entscheidet, ob der Ordner mit den Notizen angelegt und befüllt wird.
- `EXAM_NAME`: von der Stufe abhängige Bezeichnung für Arbeiten
- `EXAM_START_NUMBER`: Startwert für die Zählung der Arbeiten
- `EXAMPLAN_FILE`: Verweis auf den Klausurplan
- `EXAMS_IN_SEMESTER`: Anzahl der Arbeiten im aktuellen Halbjahr
- `EXAMS_TOTAL`: Summe der Arbeiten im Schuljahr 
- `FOLDER_CLASS_FOLDER`: Verweis auf den Klassenordner der aktuellen Klasse
- `FOLDER_CLASS_LISTS`: Verweis of Listenordner der aktuellen Klasse
- `FOLDER_CLASS_NOTES`: Verweis auf den Notizenordner der aktuellen Klasse
- `FOLDER_CLASSES`: Verweis auf den Ordner für die Klassenordner
- `FOLDER_LISTS`: Verweis auf den Ordner für die Notenlisten
- `FOLDER_NOTES_POSIX`: Verweis auf den Ordner für die Notizen(unterordner) im Shell-kompatiblem Format (= mit `/` getrennte Pfadangabe)
- `FOLDER_NOTES`: Verweis auf den Ordner für die Notizen(ordner)
- `GENERATOR_FILE`: Verweis auf den Stundenlistengenerator
- `POINTTABLE_FILE`: Verweis auf die Punktetabelle
- `PROGRESS_COUNT`: Zähler für die Fortschrittsanzeige
- `SHEET_NAME`: temporäre Variable für die Blattbezeichnung in der Endnotendatei
- `SINGLE_SEMESTER`: optionaler Präfix für epochale Fächer
- `TABLE_NAME`: temporäre Variable für die Tabellenbezeichnung bei der Gewichtung in der Endnotendatei
- `EXAM_PLAN_ROW`: Laufvariable zum Füllen des Klausurplans


### Parameter für das Halbjahr

Diese Variablen werden aus der Numbers-Datei ausgelesen.  
(in der Reihenfolge aus der Vorbereiter-Tabelle)

- `PARAM_NAME`: Name der Lehrkraft
- `PARAM_YEAR`: Schuljahr
- `PARAM_SEMESTER` *(integer)*: Halbjahresnummer (1 oder 2)
- `PARAM_SEMESTER_NAME`: Bezeichner für das Halbjahr
- `PARAM_FOLDER_LISTS`: Name für den Ordner mit den Notenlisten etc.
- `PARAM_FOLDER_CLASSES`: Name für den Ordner mit den Klassenordnern
- `PARAM_FOLDER_NOTES`: Name für den Ordner mit den Notizen
- `PARAM_NOTES_IN_SUBFOLDER` *(bool)*: Notizen in Klassenunterordner ablegen
- `PARAM_INCLUDE_CALENDAR` *(bool)*: Kalenderdatei hinzufügen
- `PARAM_INCLUDE_EXAMPLAN` *(bool)*: Klausurplan hinzufügen
- `PARAM_ADD_CLASS_TO_EXAM_PLAN` *(bool)*: Klassen in Klausurplan eintragen
- `PARAM_INCLUDE_POINTTABLE` *(bool)*: Punktetabelle hinzufügen
- `PARAM_INCLUDE_GENERATOR` *(bool)*: Stundenlistengenerator hinzufügen
- `PARAM_SHORT_FOLDER_NAME` *(bool)*: Fachkürzel für Ordnernamen


### Parameter für Klassen/Kurse

Das *record*-Objekt `CURRENT_CLASS` (s.o.) enthält für jede Klasse / jeden Kurs einen Eintrag, mit den folgenden Eigenschaften. Diese Daten werden ebenfalls aus der Numbers-Tabelle entnommen.  
(in der Reihenfolge aus der Vorbereiter-Tabelle)

- `p_subject`: Fach
- `p_subject_short`: Fachkürzel
- `p_class`: Klassenbezeichnung
- `p_level` *(Wert: `?`, `sek1` oder `sek2`)*: Stufe
- `p_is_single_semester` *(bool)*: epochales Fach
- `p_exams_in_first_semester`: Anzahl der Arbeiten
- `p_exams_in_second_semester`: Anzahl der Arbeiten in diesem Halbjahr 
- `p_exams_variant` *(Wert: `A` oder `B`)*: Variante der Endnotenberechnung
- `p_exam_weight`: Gewicht der Arbeiten (relevant für 2 und 3/4 Var. A)
- `p_first_exam_weight`: Gewicht der 1. Arbeit (relevant für 3/4 Var. A und B)
- `p_exam_duration` *(string)*: Dauer einer Arbeit
- `p_best_score_from`: Wert, wann es die beste Note gibt (für sMA-Tabelle)
- `p_worse_score_from`: Wert, wann es die ausreichende Note gibt (für sMA-Tabelle)
- `p_include_list` *(bool)*: Klassenliste hinzufügen
- `p_include_exam_grades` *(bool)*: KA-Dateien hinzufügen
- `p_include_inclass_grades` *(bool)*: sMA-Dateien hinzufügen
- `p_include_final_grades` *(bool)*: Endnotendateien hinzufügen
- `p_include_planner` *(bool)*: Grobplaner hinzufügen
- `p_include_note_contents` *(bool)*: Notiz „Themenplanung“ hinzufügen
- `p_include_note_overview` *(bool)*: Notiz „Übersicht“ hinzufügen
- `p_include_note_first_session` *(bool)*: Notiz für erste Sitzung hinzufügen