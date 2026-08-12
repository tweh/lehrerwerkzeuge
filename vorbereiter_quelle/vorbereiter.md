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
- `HAS_CLASS_FILES_SOURCE` *(bool)*: wahr, wenn mindestens eine Klassenzeile einen Eintrag in Spalte X hat
- `HAS_EXTRA_FILES_SOURCE` *(bool)*: wahr, wenn mindestens eine Klassenzeile einen Eintrag in Spalte Z hat
- `START_TIME`: Startzeit des Scriptes (`END_TIME` wird zum Ende des Scriptes erst definiert)


### weitere Variablen

Diese Variablen werden im Verlauf des Scripts definiert.  
(in alphabetischer Reihenfolge)

- `CALENDER_FILE`: Verweis auf Kalenderdatei 
- `CLASS_FOLDER`: Name für den/die Klassenordner
- `CLASS_ID_SHORT`: `CLASS_ID` mit Fachkürzel
- `CLASS_ID`: (eindeutiger) Bezeichner für die Klasse, der aus dem Fach und dem Klassennamen gebildet wird
- `CLASS_MESSAGE`: Text für Abschlussmeldung, wie viele Klassen angelegt wurden
- `CLASSES_TOTAL`: Gesamtzahl der Klassen in `CLASSES_LIST` 
- `CURRENT_CLASS_AND_SEMESTER_NAME_SHORT`: `CURRENT_CLASS_AND_SEMESTER_NAME` mit Fachkürzel
- `CURRENT_CLASS_AND_SEMESTER_NAME`: Kombination aus Klassen- und Halbjahresbezeichner für Überschriften, Dateinamen etc.
- `CURRENT_CLASS_AND_YEAR_SHORT`: `CURRENT_CLASS_AND_YEAR` mit Fachkürzel
- `CURRENT_CLASS_AND_YEAR`: Kombination aus Klassenbezeichner und Schuljahr für Überschriften, Dateinamen etc.
- `CURRENT_CLASS` *(record)*: Objekt mit den Infos der aktuellen Klasse (Parameter s.u.)
- `CURRENT_EXAM_NUMBER`: Nummer der gerade in Bearbeitung befindlichen Arbeit
- `CURRENT_FILE`: temporärer Verweis auf die gerade zu bearbeitende Datei
- `DO_CLASSES` *(bool)*: wahr, wenn Klassenordner angelegt werden sollen (bezieht sich auf `PARAM_CLASSES_LISTS`)
- `DO_FILES` *(bool)*: wahr, wenn zusätzliche Dateien angelegt werden sollen (bezieht sich auf `PARAM_FOLDER_FILES`)
- `DO_LISTS` *(bool)*: wahr, wenn Listenordner angelegt werden sollen (bezieht sich auf `PARAM_FOLDER_LISTS`)
- `DO_NOTES` *(bool)*: wahr, wenn Notizenordner angelegt werden sollen (bezieht sich auf `PARAM_NOTES_LISTS`)
- `END_TIME`: Endzeit des Scriptes
- `EXAM_NAME`: von der Stufe abhängige Bezeichnung für Arbeiten
- `EXAM_PLAN_ROW`: Laufvariable für Zeilen im Klausurplan (zum Eintragen der Klassen)
- `EXAM_START_NUMBER`: Startwert für die Zählung der Arbeiten
- `EXAMPLAN_FILE_NAME`: Dateiname für Klausurplandatei
- `EXAMPLAN_FILE`: Verweis auf die Klausurplandatei
- `EXAMS_IN_SEMESTER`: Anzahl der Arbeiten im aktuellen Halbjahr
- `EXAMS_TOTAL`: Summe der Arbeiten im Schuljahr 
- `FOLDER_CLASS_FILES`: Verweis auf den Zielordner (innerhalb `FOLDER_FILES`) für die zusätzlichen Dateien (Spalte Z/AA) der aktuellen Klasse
- `FOLDER_CLASS_FOLDER`: Verweis auf den Klassenordner der aktuellen Klasse (Ziel für Dateien aus Spalte X/Y)
- `FOLDER_CLASS_LISTS`: Verweis of Listenordner der aktuellen Klasse
- `FOLDER_CLASS_NOTES`: Verweis auf den Notizenordner der aktuellen Klasse
- `FOLDER_CLASSES`: Verweis auf den Ordner für die Klassenordner
- `FOLDER_EXAM_INLAYS_NAME`: Name für den Ergebniseinlegerordner
- `FOLDER_EXAM_INLAYS`: Verweis auf den Ergebniseinlegerordner
- `FOLDER_FILES`: Verweis auf den (eigenständigen) Ordner für die zusätzlichen Dateien aus Spalte Z/AA
- `FOLDER_LISTS`: Verweis auf den Ordner für die Notenlisten
- `FOLDER_NOTES_POSIX`: Verweis auf den Ordner für die Notizen(unterordner) im Shell-kompatiblem Format (= mit `/` getrennte Pfadangabe)
- `FOLDER_NOTES`: Verweis auf den Ordner für die Notizen(ordner)
- `GENERATOR_FILE`: Verweis auf die Stundenlistengeneratordatei 
- `INLAY_FILE_NAME`: Name für die Ergebniseinlegerdatei
- `NOTE_TEMPLATE_CONTENTS`: Text des Notiztemplates „Themenplanung“ (aus Tabellenblatt „Notizenvorlagen“)
- `NOTE_TEMPLATE_FIRST_SESSION`: Text des Notiztemplates „erste Sitzung“ (aus Tabellenblatt „Notizenvorlagen“)
- `NOTE_TEMPLATE_OVERVIEW`: Text des Notiztemplates „Übersicht“ (aus Tabellenblatt „Notizenvorlagen“)
- `POINTTABLE_FILE`: Verweis auf die Punktetabellendatei
- `PREPERATOR_TABLE_FILE`: Verweis auf die Tabelle `vorbereiter_tabelle` (Dateiname kann abweichen)
- `PROGRESS_COUNT`: Laufvariable für die Fortschrittsanzeige 
- `SCRIPT_PATH`: Speicherort des Scriptes
- `SHEET_NAME`: temporäre Variable für die Blattbezeichnung in der Endnotendatei
- `SOURCE_FILE_NAME`: Laufvariable mit dem Namen der gerade zu kopierenden Vorlagendatei (aus `p_class_files_source` bzw. `p_extra_files_source`)
- `TABLE_NAME`: temporäre Variable für die Tabellenbezeichnung bei der Gewichtung in der Endnotendatei
- `TARGET_FILE_NAME`: Laufvariable mit dem (nach Ersetzung der Platzhalter) gewünschten Zieldateinamen (aus `p_class_files_target` bzw. `p_extra_files_target`)
- `TARGET_FOLDER`: Verweis auf den Speicherort der anzulegenden Ordner
- `TEMPLATE_FILES_FOLDER`: Verweis auf den Ordner mit den Dateivorlagen für die zusätzlichen Dateien
- `TEMPLATE_FOLDER`: Verweis auf den Ordner mit den Vorlagen (`lehrerwerkzeuge`)

### Parameter für das Halbjahr

Diese Variablen werden aus der Numbers-Datei ausgelesen.  
(in alphabetischer Reihenfolge)

- `PARAM_ADD_CLASS_TO_EXAM_PLAN` *(bool)*: Klassen in Klausurplan eintragen
- `PARAM_EPOCHAL`: Wert des Platzhalters `{{epochal}}` (aus Zelle „Wert Epochalkennzeichner“), wird nur bei epochalen Fächern eingesetzt (s. `p_is_single_semester`)
- `PARAM_FILES_IN_SUBFOLDERS` *(bool)*: Dateien in Klassenunterordner ablegen
- `PARAM_FOLDER_CLASSES`: Name für den Ordner mit den Klassenordnern
- `PARAM_FOLDER_FILES`: Name für den Ordner mit den zusätzlichen Dateien
- `PARAM_FOLDER_LISTS`: Name für den Ordner mit den Notenlisten etc.
- `PARAM_FOLDER_NOTES`: Name für den Ordner mit den Notizen
- `PARAM_INCLUDE_CALENDAR` *(bool)*: Kalenderdatei hinzufügen
- `PARAM_INCLUDE_EXAMPLAN` *(bool)*: Klausurplan hinzufügen
- `PARAM_INCLUDE_LIST_GENERATOR` *(bool)*: Stundenlistengenerator hinzufügen
- `PARAM_INCLUDE_PLAN_GENERATOR` *(bool)*: Stundenplangeneratortabelle hinzufügen
- `PARAM_INCLUDE_POINTTABLE` *(bool)*: Punktetabelle hinzufügen
- `PARAM_NAME`: Name der Lehrkraft
- `PARAM_NOTES_IN_SUBFOLDER` *(bool)*: Notizen in Klassenunterordner ablegen
- `PARAM_SEMESTER_NAME`: Bezeichner für das Halbjahr
- `PARAM_SEMESTER` *(integer)*: Halbjahresnummer (1 oder 2)
- `PARAM_SHORT_FOLDER_NAME` *(bool)*: Fachkürzel für Ordnernamen
- `PARAM_YEAR`: Schuljahr


### Parameter für Klassen/Kurse

Das *record*-Objekt `CURRENT_CLASS` (s.o.) enthält für jede Klasse / jeden Kurs einen Eintrag, mit den folgenden Eigenschaften. Diese Daten werden ebenfalls aus der Numbers-Tabelle entnommen. Zu jeder genannten Variable `p_xxx` gibt es zusätzlich eine entsprechende Variable `VALUE_XXX`, die kurzzeitig den Wert aus der Tabelle aufnimmt eher die Klasse in `CLASSES_LIST` geschrieben wird.  
(in alphabetischer Reihenfolge)

- `p_best_score_from`: Wert, wann es die beste Note gibt (für sMA-Tabelle)
- `p_class`: Klassenbezeichnung
- `p_class_files_source` *(Liste)*: aus Spalte X extrahierte Dateinamen der Vorlagendateien, die in den Klassenordner kopiert werden
- `p_class_files_target` *(Liste)*: aus Spalte Y extrahierte Dateinamentemplates (mit Platzhaltern) für die nach `FOLDER_CLASS_FOLDER` kopierten Dateien; Reihenfolge entspricht `p_class_files_source`
- `p_exam_duration` *(string)*: Dauer einer Arbeit
- `p_exam_weight`: Gewicht der Arbeiten (relevant für 2 und 3/4 Var. A)
- `p_exams_in_first_semester`: Anzahl der Arbeiten
- `p_exams_in_second_semester`: Anzahl der Arbeiten in diesem Halbjahr 
- `p_exams_variant` *(Wert: `A` oder `B`)*: Variante der Endnotenberechnung
- `p_extra_files_source` *(Liste)*: aus Spalte Z extrahierte Dateinamen der Vorlagendateien, die in den Dateienordner kopiert werden
- `p_extra_files_target` *(Liste)*: aus Spalte AA extrahierte Dateinamentemplates (mit Platzhaltern) für die nach `FOLDER_FILES`/`FOLDER_CLASS_FILES` kopierten Dateien; Reihenfolge entspricht `p_extra_files_source`
- `p_first_exam_weight`: Gewicht der 1. Arbeit (relevant für 3/4 Var. A und B)
- `p_include_exam_grades` *(bool)*: KA-Dateien hinzufügen
- `p_include_exam_inlays` *(bool)*: Ergebniseinleger hinzufügen
- `p_include_final_grades` *(bool)*: Endnotendateien hinzufügen
- `p_include_inclass_grades` *(bool)*: sMA-Dateien hinzufügen
- `p_include_list` *(bool)*: Klassenliste hinzufügen
- `p_include_note_contents` *(bool)*: Notiz „Themenplanung“ hinzufügen
- `p_include_note_first_session` *(bool)*: Notiz für erste Sitzung hinzufügen
- `p_include_note_overview` *(bool)*: Notiz „Übersicht“ hinzufügen
- `p_include_planner` *(bool)*: Grobplaner hinzufügen
- `p_is_single_semester` *(bool)*: epochales Fach
- `p_level` *(Wert: `?`, `sek1` oder `sek2`)*: Stufe
- `p_subject_short`: Fachkürzel
- `p_subject`: Fach
- `p_worse_score_from`: Wert, wann es die ausreichende Note gibt (für sMA-Tabelle)
- `VALUE_IGNORE` *(bool)*: Variable zum Ignorieren einer Klasse beim Einlesen, diese Klasse wird gar nicht erst in `CLASSES_LIST` aufgenommen.

### Spalten „X“/„Y“ und „Z“/„AA“ (zusätzliche Dateien)

Über zwei Spaltenpaare der Tabelle „Liste der Klassen und Kurse“ können pro Klasse/Kurs zusätzliche Dateien aus `TEMPLATE_FILES_FOLDER` kopiert und umbenannt werden. Klassenordner (`PARAM_FOLDER_CLASSES`/`FOLDER_CLASSES`) und Dateienordner (`PARAM_FOLDER_FILES`/`FOLDER_FILES`) sind dabei immer zwei getrennte Orte:

- `X` (Quelldateien) und `Y` (Zieldateinamentemplates): werden in den Klassenordner der jeweiligen Klasse (`FOLDER_CLASS_FOLDER`, innerhalb `FOLDER_CLASSES`) kopiert. Setzt `DO_CLASSES` voraus.
- `Z` (Quelldateien) und `AA` (Zieldateinamentemplates): werden in den Dateienordner (`FOLDER_FILES`) kopiert – abhängig von `PARAM_FILES_IN_SUBFOLDERS` direkt dort oder in einen Klassenunterordner (`FOLDER_CLASS_FILES`). Setzt `DO_FILES` voraus.

Der Ordner mit den Dateivorlagen (`TEMPLATE_FILES_FOLDER`) wird nur dann abgefragt, wenn er auch tatsächlich gebraucht wird: `HAS_CLASS_FILES_SOURCE` bzw. `HAS_EXTRA_FILES_SOURCE` werden beim Einlesen der Klassenzeilen gesetzt, sobald mindestens eine Zeile einen Eintrag in Spalte X bzw. Z hat. Die Abfrage erfolgt nur, wenn zusätzlich die passende Ordnerart aktiviert ist: `(DO_CLASSES and HAS_CLASS_FILES_SOURCE) or (DO_FILES and HAS_EXTRA_FILES_SOURCE)`.

Da eine Zelle sowohl mehrere Zeilen als auch mehrere durch Leerzeichen getrennte Werte enthalten kann, werden die einzelnen Dateinamen mit `<<` und `>>` maskiert, z. B.:

```
<<Physik Vorlage.goodnotes>> <<Sicherheit.pdf>>
```

Zwischen einem `>>` und dem nächsten `<<` dürfen beliebig viele Leerzeichen oder Zeilenumbrüche stehen (auch keiner). Die Funktion `extractMaskedTokens` extrahiert daraus die Liste der einzelnen Werte (`p_class_files_source`/`p_class_files_target` bzw. `p_extra_files_source`/`p_extra_files_target`). Die Reihenfolge der Werte muss innerhalb eines Spaltenpaars übereinstimmen (Datei *n* aus `X`/`Z` wird zu Dateiname *n* aus `Y`/`AA` umbenannt); haben die beiden Spalten eines Paars für eine Zeile eine unterschiedliche Anzahl an Werten, bricht das Script mit einer Fehlermeldung ab. Einzelne Werte dürfen leer sein (`<<>>`), in dem Fall wird für diese Position keine Datei kopiert.

In den Dateinamentemplates aus Spalte `Y`/`AA` können folgende Platzhalter verwendet werden, die durch `replacePlaceholders` ersetzt werden (dieselben Platzhalter stehen auch in den Notiztemplates zur Verfügung, s. u.):

- `{{Fach}}` → `p_subject` (Spalte B)
- `{{Kuerzel}}` → `p_subject_short` (Spalte C; falls leer, wird ersatzweise `p_subject` verwendet)
- `{{Klasse}}` → `p_class` (Spalte D)
- `{{SJ}}` → `PARAM_YEAR`
- `{{HJ}}` → `PARAM_SEMESTER`
- `{{HJBez}}` → `PARAM_SEMESTER_NAME`
- `{{Name}}` → `PARAM_NAME`
- `{{epochal}}` → `PARAM_EPOCHAL`, aber nur wenn die Klasse epochal ist (`p_is_single_semester` = wahr, Spalte F); sonst leerer String

Alle eingesetzten Werte werden vor dem Einsetzen mit `trimText` von führenden/folgenden Leerzeichen befreit (schützt vor unbeabsichtigten Leerzeichen in den Tabellenzellen, z. B. in Spalte D „Klasse“, die sonst 1:1 in Dateinamen und Notizen landen würden).

### Tabellenblatt „Notizenvorlagen“ (Notiztemplates)

Die Inhalte der Notizdateien (s. `p_include_note_contents`, `p_include_note_overview`, `p_include_note_first_session`) werden nicht mehr fest im Script vorgegeben, sondern aus dem Tabellenblatt „Notizenvorlagen“ der Vorbereiter-Tabelle gelesen. Dort liegt für jede der drei Notizarten eine eigene Tabelle mit genau einer Zelle (`A1`):

- Tabelle „Themenplanung“ → `NOTE_TEMPLATE_CONTENTS`
- Tabelle „Übersicht“ → `NOTE_TEMPLATE_OVERVIEW`
- Tabelle „erste Sitzung“ → `NOTE_TEMPLATE_FIRST_SESSION`

Diese drei Templates werden einmalig beim Einlesen der Vorbereiter-Tabelle geladen, sofern überhaupt Notizen angelegt werden sollen (`PARAM_FOLDER_NOTES` gesetzt). Pro Klasse wird der jeweilige Templatetext unverändert (inkl. aller Leerzeichen und Zeilenumbrüche) mit `replacePlaceholders` durch die Werte der Klasse ersetzt und anschließend mit `writeTextToFile` 1:1 in die Notizdatei geschrieben (Ersatz für das frühere Erzeugen des Inhalts per `do shell script "echo …"`, das bei Sonderzeichen wie `'` oder `"` in der Vorlage fehlerträchtig gewesen wäre).

## im Script definierte Funktionen

(in alphabetischer Reihenfolge)

- `cleanFileName(Text)`: Wandelt einen String in einen „sauberen“ Dateinamen um
- `extractMaskedTokens(Text)`: Extrahiert aus einem mit `<<...>>` maskierten Zellentext die Liste der einzelnen Werte (s. Spalten „X“/„Y“ und „Z“/„AA“)
- `replacePlaceholders(Text, Klasse)`: Ersetzt in einem Dateinamentemplate (Spalte Y bzw. AA) oder einem Notiztemplate (Tabellenblatt „Notizenvorlagen“) die Platzhalter durch die Werte der übergebenen Klasse (record `CURRENT_CLASS`). Greift auf `PARAM_NAME`, `PARAM_YEAR`, `PARAM_SEMESTER`, `PARAM_SEMESTER_NAME` und `PARAM_EPOCHAL` zu; da Handler in AppleScript keinen automatischen Zugriff auf die Top-Level-Variablen des Scripts haben, sind diese fünf Variablen sowohl am Scriptanfang als auch im Handler selbst per `global`-Deklaration eingebunden (sonst Fehler „… not defined“ beim Aufruf).
- `replaceText(Text, Suchstring, Ersetzung)`: Ersetzt alle Vorkommen von `Suchstring` in `Text` durch `Ersetzung`
- `textOrEmpty(Wert)`: Wandelt `missing value` in einen leeren String um, sonst `Wert as string`
- `TimeToText(Zeit)`: Wandelt eine Zeitangabe in die Form `hh:mm:ss` um
- `trimText(Text)`: Entfernt führende und folgende Leerzeichen/Tabs aus `Text` (wird in `replacePlaceholders` auf alle eingesetzten Werte angewendet)
- `writeTextToFile(Text, PosixPfad)`: Schreibt `Text` unverändert (inkl. aller Leerzeichen/Umbrüche, als UTF-8) in die Datei unter `PosixPfad`; nutzt AppleScripts eigene Datei-I/O (`open for access`/`write`/`close access`) statt eines Shell-Aufrufs, damit Sonderzeichen in den Notiztemplates nicht zu Shell-Escaping-Problemen führen