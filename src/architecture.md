# C4 Modell PID Service

Die folgenden Diagramme erläutern das Konzept und die Architektur eines 
Dienstes für die Erstellung und Verwaltung von einheiltichen und persistenten Identifikatoren.

Für die Darstellung wird das C4 Modell verwendet:
1. Context‑Ebene – Zeigt, wer (Menschen, Systeme) mit dem System interagiert und welchen Zweck das System hat.
2. Container‑Ebene – Zerlegt das System in größere Bausteine (z. B. Web‑App, Datenbank, Mobile‑App) und erklärt, wie diese miteinander kommunizieren.
3. Component‑Ebene – Blickt in jeden Container und stellt die wichtigsten Bauteile (Komponenten) dar, die dort intern zusammenarbeiten.
4. Code‑Ebene – Zeigt die detaillierten Implementierungsdetails einer einzelnen Komponente, etwa Klassen, Schnittstellen oder Methoden.

Die Diagramme sind interaktiv und ermöglichen die Darstellung weiterer Ebenen.

## PID Service Übersicht

Es werden zwei Verwendungsmöglichkeiten unterschieden:
1. "User": Eine Person die interaktive mit einer WebUI arbeitet
2. "Client": Eine Maschine (Software) die automatisiert Aufgaben abarbeitet

## Funktion des PID Service

1. Authentifizierung (Rollen)
2. Erstellen und Verwalten von Namensräumen
3. Erstellen und Verwalten von Persistenten Identifikatoren
4. Darsellung Monitoring/KPI/QoS
5. Support
6. Konvertierung von Kennzahlen

![System Context AP2](embed:pid_service_system_context)
