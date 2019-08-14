#!/bin/bash


# ----------------------------------------------------------------------------------------
# Allgemeine Variablen
# ----------------------------------------------------------------------------------------

# Linien
thickrule="\033[0;34m======================================================================\033[0m"
thinrule="\033[0;34m----------------------------------------------------------------------\033[0m"
# Fehlermeldungen u.ä.
forbiddensymbols=':/\\'
forbiddensymbolcase="*[$forbiddensymbols]*"
error_invalidinput="\033[0;31mUngültige Eingabe; bitte erneut versuchen.\033[0m"
error_forbiddensymbol="\033[0;31mFehler: Verbotenes Symbol „${forbiddensymbols}“ benutzt.\033[0m"
# Laufvariable
n=0
# Sekundarstufe
level=1
# Fachvariante und Blattauswahl
longshort=kf
selectsheet="Zeugnisnoten (Kurzfach)"
deletesheetI="Zeugnisnoten (Langfach A)"
deletesheetII="Zeugnisnoten (Langfach B)"
# Bezeichner (als Arrays für Sek 1 und Sek 2)
testnames=("KA" "Klausur")
participationnames=("sMA" "sMA")
finalgradesnames=("Endnoten" "Endnoten")


# ----------------------------------------------------------------------------------------
# Funktion zum Abfragen der Sekundarstufe
# ----------------------------------------------------------------------------------------

function getlevel {
	while true; do
   read -p "Sekundarstufe eingeben: [1, 2] " levelinput
   case $levelinput in
      1|I|i )
         level=1
         echo "Sekundarstufe I gewählt."
         break
         ;;
      2|II|ii )
         level=2
         echo "Sekundarstufe II gewählt."
         break
         ;;
      * )
         echo $error_invalidinput
    esac
done
}


# ----------------------------------------------------------------------------------------
# Funktion zum Abfragen der Sekundarstufe
# ----------------------------------------------------------------------------------------

function getlongshort {
	while true; do
   read -p "Lang oder Kurzfach?: [KF, LFA, LFB] " levelinput
   case $levelinput in
      KF|kf )
         longshort=kf
         echo "Kurzfach ausgewählt."
         break
         ;;
      LFA|lfa|LF|lf )
         longshort=lfa
         echo "Langfach (Variante A) gewählt."
         break
         ;;
      LFB|lfb )
         longshort=lfb
         echo "Langfach (Variante B) gewählt."
         break
         ;;
      * )
         echo $error_invalidinput
    esac
done
}


# ----------------------------------------------------------------------------------------
# Funktion zum Abfragen des Dateinamens
# siehe https://stackoverflow.com/q/3915040/1018250
# ----------------------------------------------------------------------------------------

function getfullname {
  # $1 : relativer Dateiname
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}


# ----------------------------------------------------------------------------------------
# Programmkopf ausgeben
# ----------------------------------------------------------------------------------------

echo ""
echo "\033[1;34m######################################################################"
echo "# GENERATOR FÜR KLASSENDATENSÄTZE                                    #"
echo "# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  #"
echo "# Version 1.0                                                        #"
echo "# © Tobi W_  (https://tobiw.de)                                      #"
echo "######################################################################\033[0m"
echo ""
echo "Mit diesem Skript werden die Markdown-Notizen zur Planung sowie die"
echo "Klassenordner inkl. Notenlisten angelegt. Die Notenlisten werden dabei"
echo "direkt mit dem passenden Titel versehen. Anschließend können die Daten"
echo "an die gewünschte Stelle kopiert werden. Sobald in den Notenlisten"
echo "persönliche Daten eingetragen werden, müssen diese noch mit einem"
echo "Passwortschutz versehen werden!"
echo ""
echo "\033[1;31mACHTUNG:\033[0m Die Symbole $forbiddensymbols dürfen nicht verwendet werden!"
echo ""
echo "\033[0;31mNUTZUNG AUF EIGENE GEFAHR!\033[0m"
echo ""
echo "\033[1;34mHINWEIS: \033[0;34mUm das Programm vorzeitig abzubrechen [ctrl]+[C] drücken.\033[0m"
echo ""
echo $thickrule


# ----------------------------------------------------------------------------------------
# Testen, ob Ordner vorhanden und ggf. löschen, neu anlegen
# ----------------------------------------------------------------------------------------

if test -d classes
then
	while true; do
		read -p "Ordner classes/ existiert bereits. Löschen? [J, N] " delete
		case $delete in
		   [JjYy]* )
		   	rm -rf classes/
		   	echo "Ordner wurde gelöscht"
		   	echo $thinrule
		   	break
		   	;;
		   [Nn]* )
		   	echo "Ordner wurde nicht gelöscht. Programm wird beendet."
		   	echo $thickrule
		   	exit
		   	;;
		   * )
		   	echo $error_invalidinput
		   	;;
		esac
	done
fi

mkdir classes/
echo "Ordner classes/ angelegt."
mkdir classes/notes/
echo "Ordner classes/notes/ angelegt."
mkdir classes/folders/
echo "Ordner classes/folders/ angelegt."
mkdir classes/lists/
echo "Ordner classes/lists/ angelegt."
echo $thinrule


# ----------------------------------------------------------------------------------------
# Offene Numbers-Dateien schließen
# ----------------------------------------------------------------------------------------

while true; do
	read -p "Offene Numbers-Dokumente müssen geschlossen werden. Ok? [J, N] " close
	case $close in
		[JjYy]* )
			osascript <<EOF
				tell application "Numbers"
					close every document
				end tell
EOF
			echo "Dokumente wurden geschlossen."
			echo $thinrule
			break
			;;
		[Nn]* )
			echo "Dokumente wurden nicht geschlossen. Programm wird beendet."
			echo $thickrule
			exit
			;;
		* )
			echo $error_invalidinput
			;;
	esac
done


# ----------------------------------------------------------------------------------------
# Semesterdaten erfragen
# ----------------------------------------------------------------------------------------

while true; do
	read -p "Schuljahr eingeben (z.B. 2018|19): " year
	case $year in
		$forbiddensymbolcase )
      	echo $error_forbiddensymbol
      	;;
      * )
      	break
      	;;
	esac
done
while true; do
	read -p "Halbjahr eingeben (z.B. 1): " semester
	case $semester in
		$forbiddensymbolcase )
      	echo $error_forbiddensymbol
      	;;
      * )
      	break
      	;;
	esac
done
while true; do
	echo "Halbjahrbezeichnung eingeben oder Voreinstellung „${year}-${semester}“"
	read -p "mit [Enter] bestätigen: " semestername
	case $semestername in
		$forbiddensymbolcase )
      	echo $error_forbiddensymbol
      	;;
      * )
      	semestername=${semestername:-"$year-$semester"}
      	break
      	;;
	esac
done
echo $thinrule


# ----------------------------------------------------------------------------------------
# Level abfragen
# ----------------------------------------------------------------------------------------

echo "\033[1;34mHINWEIS: \033[0;34mDie folgende Einstellung kann später noch geändert werden.\033[0m"
getlevel
echo $thickrule


# ----------------------------------------------------------------------------------------
# Fachvariante abfragen
# ----------------------------------------------------------------------------------------

echo "\033[1;34mHINWEIS: \033[0;34mDie folgende Einstellung kann später noch geändert werden.\033[0m"
getlongshort
echo $thickrule


# ----------------------------------------------------------------------------------------
# Klassen abfragen
# ----------------------------------------------------------------------------------------

echo "Es folgt die Abfrage der Klassen."
echo "   „-F“ eingeben, um zwischen Lang- und Kurzfach zu wechseln."
echo "   „-L“ eingeben, um die Sekundarstufe zu ändern."
echo "   „-Q“ eingeben, um das Script zu beenden."
while true; do
	echo $thinrule
   read -p "Klasse/Kurs eingeben (oder „-F“ „-L“ „-Q“): " class
   case $class in
      -[Qq]* )
         break
         ;;
      -[Ll]* )
      	getlevel
      	;;
      -[Ff]* )
      	getlongshort
      	;;
      $forbiddensymbolcase )
      	echo $error_forbiddensymbol
      	;;
      * )
         n=`expr $n + 1`
         
        	echo "   - Generiere Notizen für „${class}“."
        	echo "# $class: Übersicht\n\n#$semestername/$class#" > "classes/notes/$class - Übersicht.md"
        	echo "# $class: Themenplanung\n\n#$semestername/$class#\n\n\n- [ ]" > "classes/notes/$class - Themenplanung.md"
        	
        	echo "   - Erstelle Klassenordner für „${class}“."
        	mkdir "classes/folders/$class"
        	
        	echo "   - Erstelle Notenlistenordner für „${class}“."
        	mkdir "classes/lists/$class"
        	 
       	echo "   - Lege Klassen-/Kursliste mit Überschrift „${class}“ an."
        	cp "liste.numbers" "classes/lists/$class/Liste $class.numbers"
        	# Pfad speichern
        	currentfile="$(getfullname "classes/lists/$class/Liste $class.numbers")"
			# Tabellentitel per Apple Script setzen
			osascript <<EOF
				tell application "Numbers"
					open POSIX file "$currentfile"
					tell table 1 of sheet "Liste" of document 1
						set the name to "$class"
					end tell
					save document 1
					close document 1
				end tell
EOF
        	
			if [ "$longshort" == "kf" ]; then
				echo "   - Lege ${testnames[$level-1]}-Datei mit Überschrift „${class} · ${semestername}“ an."
				cp "sek${level}_arbeit.numbers" "classes/lists/$class/${testnames[$level-1]} $class.numbers"
				# Pfad speichern
				currentfile="$(getfullname "classes/lists/$class/${testnames[$level-1]} $class.numbers")"
				# Tabellentitel per Apple Script setzen
				osascript <<EOF
					tell application "Numbers"
						open POSIX file "$currentfile"
						tell table "Überschrift" of sheet "Einstellungen und Lehrerstatistik" of document 1
							set the value of cell 1 of column 1 to "$class · $semestername"
						end tell
						save document 1
						close document 1
					end tell
EOF
			else
				echo "   - Lege ${testnames[$level-1]}-Datei mit Überschrift „${class} · ${semestername} · ${testnames[$level-1]} 1“ an."
				cp "sek${level}_arbeit.numbers" "classes/lists/$class/${testnames[$level-1]} 1 $class.numbers"
				# Pfad speichern
				currentfile="$(getfullname "classes/lists/$class/${testnames[$level-1]} 1 $class.numbers")"
				# Tabellentitel per Apple Script setzen
				osascript <<EOF
					tell application "Numbers"
						open POSIX file "$currentfile"
						tell table "Überschrift" of sheet "Einstellungen und Lehrerstatistik" of document 1
							set the value of cell 1 of column 1 to "$class · $semestername · ${testnames[$level-1]} 1"
						end tell
						save document 1
						close document 1
					end tell
EOF
				echo "   - Lege ${testnames[$level-1]}-Datei mit Überschrift „${class} · ${semestername} · ${testnames[$level-1]} 2“ an."
				cp "sek${level}_arbeit.numbers" "classes/lists/$class/${testnames[$level-1]} 2 $class.numbers"
				# Pfad speichern
				currentfile="$(getfullname "classes/lists/$class/${testnames[$level-1]} 2 $class.numbers")"
				# Tabellentitel per Apple Script setzen
				osascript <<EOF
					tell application "Numbers"
						open POSIX file "$currentfile"
						tell table "Überschrift" of sheet "Einstellungen und Lehrerstatistik" of document 1
							set the value of cell 1 of column 1 to "$class · $semestername · ${testnames[$level-1]} 2"
						end tell
						save document 1
						close document 1
					end tell
EOF
			fi

        	echo "   - Lege ${participationnames[$level-1]}-Datei mit Überschrift „${class} · ${semestername}“ an."
        	cp "sek${level}_sma.numbers" "classes/lists/$class/${participationnames[$level-1]} $class.numbers"
        	# Pfad speichern
        	currentfile="$(getfullname "classes/lists/$class/${participationnames[$level-1]} $class.numbers")"
			# Tabellentitel per Apple Script setzen
			osascript <<EOF
				tell application "Numbers"
					open POSIX file "$currentfile"
					tell table "Überschrift" of sheet "Übersicht" of document 1
						set the value of cell 1 of column 1 to "$class · $semestername"
					end tell
					save document 1
					close document 1
				end tell
EOF

        	echo "   - Lege ${finalgradesnames[$level-1]}-Datei mit Überschrift „${class} · ${year}“ an."
        	cp "sek${level}_endnoten.numbers" "classes/lists/$class/${finalgradesnames[$level-1]} $class.numbers"
        	# Pfad speichern
        	currentfile="$(getfullname "classes/lists/$class/${finalgradesnames[$level-1]} $class.numbers")"
        	# Fachvariante auswerten
        	case $longshort in
        		kf )
        			selectsheet="Zeugnisnoten (Kurzfach)"
        			deletesheetI="Zeugnisnoten (Langfach A)"
					deletesheetII="Zeugnisnoten (Langfach B)"
					;;
				lfa )
					selectsheet="Zeugnisnoten (Langfach A)"
        			deletesheetI="Zeugnisnoten (Kurzfach)"
					deletesheetII="Zeugnisnoten (Langfach B)"
					;;
				lfb )
					selectsheet="Zeugnisnoten (Langfach B)"
        			deletesheetI="Zeugnisnoten (Kurzfach)"
					deletesheetII="Zeugnisnoten (Langfach A)"
					;;
        	esac
			# Tabellentitel per Apple Script setzen und überflüssige Tabellenblätter löschen.
			osascript <<EOF
				tell application "Numbers"
					open POSIX file "$currentfile"
					tell table 1 of sheet "$selectsheet" of document 1
						set the name to "$class · $year"
					end tell
					tell document 1
						delete sheet "$deletesheetI"
						delete sheet "$deletesheetII"
					end tell
					save document 1
					close document 1
				end tell
EOF
        	
        	;;
    esac
done


# ----------------------------------------------------------------------------------------
# Programmende
# ----------------------------------------------------------------------------------------

echo $thickrule
echo "\033[0;34mDatensätze für $n Lerngruppe(n) angelegt.\033[0m"
echo $thickrule