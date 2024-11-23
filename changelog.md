# v.0.3.0.5
### in Arbeit (umfassende Funktionsprüfung)


# v.0.3.0.4
### Formeloptimierungen auf einfacher Ebene
### Teilweise Formeloptimierung auf XML-Ebene
### Berechnungsoptimierung auf XML-Ebene
### Austausch etlicher Hilfs-Formeln mit Fix-Werten
### Setzen des Formelschutzes
### Begin der vollständigen Prüfung aller Formeln auf Funktionalität und Leistung


# v.0.3.0.3
### Fehlende Wochendatenblätter angelegt
### Kleinere Formeloptimierungen
### Löschen nicht benötigter Formatierungen, Textausrichtungen und Zellen


# v.0.3.0.2
### Dokumentation (abgeschlossen)
Fertige Dokumentationen: 
* FAQ						
  * Wochenarbeitszeit ändern
  * Zusätzliche Zeile für weitere Arbeitszeit einblenden (Geteilte Arbeitszeit)
  * Eine berechnete Pause manuell wieder entfernen (ohne Pause bei anderer Dienstzeitunterbrechung)
  * Manuelle Mehrzeit-Korrektur
  * Anzahl der Arbeitstage in der Woche manuell ändern


# v.0.3.0.1
### Optimirung der Pausenberechnung
### Fehlerkorrektur im Einstellungsmenü - "Anzeige und Druck"


# v.0.3.0.0 - Automatische Pausenberechnung bei Arbeitsunterbrechung
### Große Änderung in der Pausenberechnung
* Pausen werden nun an eine Arbeitszeitunterbrechung gekoppelt und muss im Fall einer Arbeitszeitunterbrechung nicht mehr manuell geändert werden
Das heißt:
* Beispiele bei Volljährigen Mitarbeitern
  * Arbeitszeit: 6:00 - 12:00 und 12:30 - 16:00
    * Alt: 30 Minuten Pause
    * Neu: 0 Minuten Pause

  * Arbeitszeit: 6:00 - 10:00 und 10:30 - 16:00
    * Alt: 30 Minuten Pause
    * Neu: 0 Minuten Pause

  * Arbeitszeit: 7:30 - 10:00 und 10:15 - 16:00
    * Alt: 30 Minuten Pause
    * Neu: 15 Minuten Pause
...



* Beispiele bei Minderjährigen Mitarbeitern
  * Arbeitszeit: 6:00 - 12:00 und 12:30 - 16:00
    * Alt: 60 Minuten Pause
    * Neu: 30 Minuten Pause

  * Arbeitszeit: 6:00 - 10:00 und 10:30 - 14:30
    * Alt: 60 Minuten Pause
    * Neu: 30 Minuten Pause
   
  * Arbeitszeit: 7:30 - 10:00 und 10:30 - 16:00
    * Alt: 60 Minuten Pause
    * Neu: 30 Minuten Pause
   
  * Arbeitszeit: 7:30 - 10:00 und 10:15 - 16:00
    * Alt: 60 Minuten Pause
    * Neu: 45 Minuten Pause
...



# v.0.2.2.1
### Dokumentation (teilweise abgeschlossen)
Fertige Dokumentationen: 
* Vorwort / Hinweis
* Wie wechseln Sie die Tabellenblätter effektiv
* Zoomen, Ansicht vergrößern
* Spezielle Einstellungen in Excel für langsame PCs (nicht beim VPN relevant):
* Dropdown
* Angaben zur Einrichtung
* Berechnung der Pausenzeiten Individualisieren
* Individualisieren der angezeigten Daten
* Individualisieren der Druckansicht
* Kontaktdaten
* Hinweis zu zukünftige Updates
* Los geht’s
  * Stammdaten
  * Mitarbeiter im Dienstplan anlegen, löschen, oder Zeile ändern
  * Mitarbeiter in der Zeiterfassung auswählen
  * Geplante Arbeitszeit eines einzelnen Mitarbeiters ausgeben und als PDF/Bild speichern/versenden"						
						
* FAQ						
  * Schüler anlegen
  * Minderjährigen Mitarbeiter anlegen


# v.0.2.2.0
### Fehlerbehebung im Datenblatt "Zeiterfassung"
### Neue Funktion im Datenblatt "Zeiterfassung" -> Manuelles Eintragen von Bemerkungen
### Dokumentation


# v.0.2.1.8
### 28.08.2024
### Firmenlogo
* Genemigung von Berliner Regionalleiter eingeholt, das Firmenlogo in der Arbeitsmappe zu verwenden
  * Bedingung: Nur Firmenintern
* Orginallogo in Arbeitsmappe eingebaut
* Druckeinstellungen zugunsten der Druckquallität angepasst (Klara Druck des Logos, auch wenn dieses nur sehr klein zu sehen ist)


# v.0.2.1.7
### 25.08.2024
### Arbeit an der Dokumentation


# v.0.2.1.6
### 25.08.2024
### Weitere Einstellungen Individualisiert und ergänzt


# v.0.2.1.5
### 24.08.2024
### Alles mit einmal einblenden, Einstellungen pro Tab
* Ausbau des Einstellungemenüs
* Verbesserung der Druckeinstellungen
* Verbesserung der Sichtbarkeitseinstellungen
  * Erweitertes Menü
  * Rekrusive Formel aufgebaut (Vereinfachung für den Endbenutzer)


# v.0.2.1.4
### 23.08.2024
### Bedingte Formatierungen mit eigener Auswahl
* Nutzer können nun die bedingten Formatierungen für Notizen selbst über ein Einstellungsmenü in Tabellenform festlegen
* Erklärungstext hinzugefügt
* Weitere Arbeiten und Bugfixes


# v.0.2.1.3
### 23.08.2024
### ÜS, K, U ausblenden, Einstellungsmenü, Designanpassungen
* Nach Feedback eines weiteren Leiters neue Optionen eingebaut
  * Einige Daten sollten nur durch die Leitung einsehbar und änderbar sein
  * Beginn eines strukturierten Einstellungsmenüs
  * Rudimentäre Optionen für die gewünschten Einstellungsmöglichkeiten eingebaut
  * Anpassung des Designs, damit dieses auch zum Drestener Standart passt.
    * Design nun Bundeslandunabhängig
    * Einrichtungsname nun selbst wählbar


# v.0.2.1.2
### 18.08.2024
### Entfernen der Arbeitsmarkierungen


# v.0.2.1.1
### 18.08.2024
### Arbeit an Dokumentation + Rechtschreibprüfung (nach Feedback durch testenden Leiter)
* Danke an den Leiter, welcher die Vollständigkeit der erfassten Daten für die Zeiterfassung geprüft hat


# v.0.2.1.0
### 18.08.2024
### Testphase - Wochen 2-53 einfügen
* CPU-Last zu hoch!
* Suche nach Optimierbarkeit


# v.0.2.0.7
### 18.08.2024
### Änderung dr Stammdatenstruktur und Dienstplanstruktur
* Name hat nun 2 Zeilen,
* Persnr. ab jetzt in Zeile 3, nicht mehr Zeile 2
* Notizen/Hinweise hinzugefügt
* Fixirung der Wochen (im Formelbaum der Datenmatrix)


# v.0.2.0.6
### 18.08.2024
### Optimierung der CPU-Last in der Zeiterfassung Matrix (Begin)
* Massive Änderungen an der Formelstruktur
* Großflächige Anpassung der Formatierung
* Tausch von Formeln mit dem immer gleichen Ergebnis durch feste Werte


# v.0.2.0.5
### 17.08.2024
### Verbesserte bedingte Formatierung Zeiterfassung


# v.0.2.0.4
### 17.08.2024
### Fehersuche und Bugfix
* Negativ-Zeitberechnung aktiviert
  * Option 1904-Datumswert verwenden -> fest mit der Arbeitsmappe verbinden.
  * Auf anderem System wird diese Option nun automatisch aktiviert, solange die Arbeitsmappe geöffnet ist


# v.0.2.0.3
### 14.08.2024
### Arbeiten an verbesserten Design


# v.0.2.0.2
### 14.08.2024
### Abschluss Fehersuche und Bugfix + Beginn Arbeiten an verbesserten Design


# v.0.2.0.1
### 04.08.2024
### Beginn von mehrfacher Fehlersuche


# v.0.2.0.0
### 28.07.2024
### Abschluss, noch auf Fehler Prüfen + Dokumentation


# v.0.1.1.2
### 28.07.2024
### Druckauswahlbereich Korrektur W1


# v.0.1.1.1
### 28.07.2024
### Einbau selbstgemaltes Firmen-Logo (später ersetzen durch Original)


# v.0.1.1.0
### 28.07.2024
### Kontrollphase


# v.0.1.0.15
### 28.07.2024
### Zeiterfassung erste bedingte Formatierungen


# v.0.1.0.14
### 28.07.2024
### Zeiterfassung Feb-Dez


# v.0.1.0.13
### 28.07.2024
### Zeiterfassung Januar fertigstellen


# v.0.1.0.12
### 28.07.2024
### Zeiterfassung ersetzt nun Abkürzungen durch ausgeschriebenes Gegenstück


# v.0.1.0.11
### 28.07.2024
### Fehler in Zeitdarstellung behoben


# v.0.1.0.10
### 28.07.2024
### Zeiterfassung - Neues Monatssystem


# v.0.1.0.9
### 28.07.2024
### Zeiterfassung - Monatsauswahl


# v.0.1.0.8
### 28.07.2024
### Matrix Optimierung + Anpassung auf neues Dateisystem


# v.0.1.0.7
### 28.07.2024
### Zeiterfassung


# v.0.1.0.6
### 28.07.2024
### Zeiterfassung angefangen


# v.0.1.0.5
### 28.07.2024
### Verbesserung der CPU Last durch WENN in Matrix (3 Versuche)


# v.0.1.0.4
### 28.07.2024
### Abschluss der grundlegenden Datenmatrix für Zeiterfassung


# v.0.1.0.3
### 27.07.2024
### Start Datenmatrix für Zeiterfassung


# v.0.1.0.2
### 27.07.2024
### BUG_Fix für Office 2016 Pro - Doppelt Indirek funktioniert nicht (Test im VPN fehlgeschlagen)


# v.0.1.0.1
### 27.07.2024
### Zeiterfassingsmatrix Start Aufbau


# v.0.1.0.0
### 24.07.2024
### Abschluss der grundlegenden Fehlerbeseitigung - Start Testphase 1


# v.0.0.2.6
### 22.07.2024
### Drucken geht nicht - Bugfix Versuch 1


# v.0.0.2.5
### 21.07.2024
### BUG-Fixes


# v.0.0.2.4
### 21.07.2024
### BUG-Fixes


# v.0.0.2.3
### 21.07.2024
### BUG-Fixes


# v.0.0.2.2
### 21.07.2024
### BUG-Fixes - Vorbereitet für neue Formelsicherung


# v.0.0.2.1
### 21.07.2024
### BUG-Fixes


# v.0.0.2.0
### 20.07.2024
### Grundgerüst Dienstplan Verbessert, Zeiterfassung fehlt noch


# v.0.0.1.7
### 20.07.2024
### Grundgerüst Dienstplan Fertig, Zeiterfassung fehlt noch


# v.0.0.1.6
### 20.07.2024
### Druckbereich manuell festlegen - Option eingefügt - verbessert


# v.0.0.1.5
### 20.07.2024
### Druckbereich manuell festlegen - Option eingefügt - verbessert


# v.0.0.1.4
### 20.07.2024
### Druckbereich manuell festlegen - Option eingefügt


# v.0.0.1.3
### 19.07.2024
### Manuelle Option bei der doppelten Arbeitszeit-Pause (Vorerst)


# v.0.0.1.2
### 19.07.2024
### Fail Pausenberechnung - Neuer Veruch


# v.0.0.1.1
### 19.07.2024
### Fail Pausenberechnung - Neuer Veruch


# v.0.0.0.16
### 18.07.2024
### Auswahl der Pausenberechnungs-Art (Grundfunktion)


# v.0.0.0.15
### 18.07.2024
### Ohne Pause, Frei, Fehlerbehebung bei Name Mitarbeiter 2. Versuch


# v.0.0.0.14
### 18.07.2024
### Fehlerbehebung bei Name Mitarbeiter


# v.0.0.0.13
### 18.07.2024
### Datenvalidierung


# v.0.0.0.12
### 18.07.2024
### Feiertag-Kopfzeile, korrekturen


# v.0.0.0.11
### 17.07.2024
### Abkürzungen in Liste eingefügt


# v.0.0.0.10
### 17.07.2024
### BU


# v.0.0.0.9
### 17.07.2024
### K,KK,KA,KO Grundfunktionen


# v.0.0.0.8
### 17.07.2024
### U, RT Grundfunktionen


# v.0.0.0.7
### 06.07.2024
### Druckbereiche und Schutz vor versehentlicher Änderung, Beginn der Formeln für RT, K, BU


# v.0.0.0.6
### 29.06.2024
### Erweiterte Urlaubsfunktion (Urlaub und Arbeit zusammen)


# v.0.0.0.5
### 23.06.2024
### Urlaubsfunktion (U 0,5)


# v.0.0.0.4
### 21.06.2024
### Vereinfachung der grundlegenden Nutzung


# v.0.0.0.3
### 20.06.2024
### Abschluss Grundgerüst


# v.0.0.0.2
### 15.06.2024
### Aufbau Grundgerüst



# v.0.0.0.1
## 08.06.2024
## Beginn der Neuauflage "Dienstplanung und Zeiterfassung 2025+"
Size: 
* Erste Formeln
* Aufbau eines neuen Designs, welches den neuen Anforderungen entspricht
  * Kopierbarkeit der Dienstzeiten
  * Navigation mit [Tab] und [Enter]
  * Änderungen der Wochenarbeitszeit pro Tag ermöglichen
  * Eintragen einer zweiten Arbeitszeit am selben Tag
* Anpassung der Stammdatenabfrage
* Aufbau einer Dropdownliste für die häufigsten Notizen
* Versuch einer verbesserten Pausenberechnung


# v.2024.x.x.x
.....

# v.2023.x.x.x
.....

.....
