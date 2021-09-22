# AppleScript „Stundenplangenerator“

In diesem Ordner findet sich die AppleScript-Datei, aus der das Programm `stundenplangenerator` im Hauptordner erzeugt wurde.

Hinweise zur Programmierung finden sich in Form von kurzen Kommentaren im Quelltext, während die Anleitung zur Nutzung in der Numbers-Datei `stundenplangenerator_tabelle` zu finden ist.

## im SKript verwendete Variablen

### „globale“ Variablen

Diese Variablen werden ganz am Beginn definiert.  
(in alphabetischer Reihenfolge)

- `ENTRIES_LIST`: Liste mit allen Einträgen für den Stundenplan


### weitere Variablen

Diese Variablen werden im Verlauf des Scripts definiert.  
(in alphabetischer Reihenfolge)

- `ALL_CALENDARS`: Liste aller Kalender
- `ALL_REMINDER_LISTS`: Liste aller Erinnerungslisten
- `CHOSEN_CALENDAR`: Ausgewählter Kalender
- `CHOSEN_REMINDER_LIST`: Ausgewählte Erinnerungsliste
- `CURRENT_ENTRY`: Gerade zu bearbeitender Eintrag aus `ENTRIES_LIST`
- `ENTRIES_TOTAL`: Anzahl der Einträge in der Liste
- `EVENT_LOCATION`: Ort/Raum für den Kalendereintrag
- `EVENT_NAME`: Titel für den Kalendereintrag ggf. mit Raumnummer in eckigen Klammern
- `GENERATOR_TABLE_FILE`: Verweis auf Generatortabelle 
- `PROGRESS_COUNT`: Zähler für Fortschrittsbalken

### Parameter aus Tabelle

Diese Variablen werden aus der Numbers-Datei ausgelesen.  
(in alphabetischer Reihenfolge)

- `PARAM_LAST_SCHOOL_DAY`: String für letzten Schultag (für Ende der Kalendereinträge)
- `PARAM_MAKE_CALENDAR` *(bool)*: Entscheidet, ob Kalendereinträge erzeugt werden sollen.
- `PARAM_MAKE_REMINDER` *(bool)*: Entscheidet, ob Erinnerungen erzeugt werden sollen.
- `PARAM_ROOM_IN_NAME` *(bool)*: Entscheidet, ob der Raum Teil des Ereignistitels wird oder im Feld „Ort“ gespeichert wird.


### Parameter für Klassen/Kurse

Das *record*-Objekt `CURRENT_ENTRY` (s.o.) enthält für jede Klasse / jeden Kurs einen Eintrag, mit den folgenden Eigenschaften. Diese Daten werden ebenfalls aus der Numbers-Tabelle entnommen. Zu jeder genannten Variable `p_xxx` gibt es zusätzlich eine entsprechende Variable `VALUE_XXX`, die kurzzeitig den Wert aus der Tabelle aufnimmt eher die Klasse in `CLASSES_LIST` geschrieben wird.  
(in alphabetischer Reihenfolge)

- `p_class`: Klasse oder Kurs
- `p_date_end`: Enddatum und Uhrzeit
- `p_date_start`: Startdatum und Uhrzeit
- `p_room`: Raumnummer
