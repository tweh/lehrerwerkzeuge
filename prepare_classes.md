# prepare_classes

Dieses Shell-Script dient dazu Ordner- und Notizenvorlagen für einzelne Klassen anzulegen. Es kann über das Programm Terminal gestartet werden, in dem man mithilfe von `cd` zunächst in den Orner wechselt und dann mit `sh prepare_classes.sh` das Skript ausführt. Damit das Script funktionieren kann, muss auf dem Computer das Programm *Numbers* installiert sein und die Notentabellen aus diesem Werkzeugset im gleichen Ordner wie das Script liegen.

Nun wird auf der gleichen Dateiebene, auf der das Script liegt, der Ordner `classes/` angelegt, der die folgenden Unterordner enthält:

- `notes/` wird später mit zwei Markdowndateien für die grobe Themenplanung und die Übersicht der Stunden gefüllt.
- `folders/` erhält später für jede Klasse einen leeren Unterordner.
- `lists/` erhält die Noten- und Bewertungslisten aus den Lehrerwerkzeugen.

Es folgt dann zunächst eine Abfrage folgender allegemeiner Angaben, die jeweils mit [Enter] bestätigt werden müssen:

- Dürfen geöffnete Numbers-Dokumente geschlossen werden? Wird hier mit `N`ein geantwortet, wird das Script beendet.
- Schuljahr (kann nur bei Beenden und erneutem Aufrufen des Scripts geändert werden)
- Halbjahr (kann nur bei Beenden und erneutem Aufrufen des Scripts geändert werden)
- Halbjahresbezeichnung (kann nur bei Beenden und erneutem Aufrufen des Scripts geändert werden)
- Skundarstufe (kann später geändert werden)

Beim Scriptstart wurden bereits einige Ordner angelegt (s.o.), die in der folgenden Abfrage von Klassen/Kursen mit den entsprechenden Vorlagen gefüllt werden. Dabei muss nun jeweils ein Klassen-/Kursname eingeben und mit [Enter] bestätigt werden. Dabei werden die Numbers-Dateien kurz geöffnet, um den eine Überschift der Form *Klassen-/Kursnamen · Halbjahresbezeichnung* einzutragen, und wieder geschlossen. Gibt man anstelle eines Namens `-L` ein, kann die Wahl der Sekundarstufe geändert werden. Mit der Eingabe von `-Q` wird das Script beendet.

Nach dem Beenden des Scripts können die gernereiert Dateien und Ordner an eine passende Stelle in Ihrem Dateisystem bewegt werden. Die Notizlisten (aus dem Ordner `notes/`) importiere ich in das Markdown-Notizprogramm [Bear](https://bear.app), wo sie nach den vom Script bereits vergebenen Tags sortiert werden.