# PID Service

Die folgenden Diagramme erläutern das Konzept und die Architektur eines 
Dienstes für die Erstellung von einheiltichen und persistenten Identifikatoren.

Für die Darstellung wird das C4 Modell verwendet:
1. Context‑Ebene – Zeigt, wer (Menschen, Systeme) mit dem System interagiert und welchen Zweck das System hat.
2. Container‑Ebene – Zerlegt das System in größere Bausteine (z. B. Web‑App, Datenbank, Mobile‑App) und erklärt, wie diese miteinander kommunizieren.
3. Component‑Ebene – Blickt in jeden Container und stellt die wichtigsten Bauteile (Komponenten) dar, die dort intern zusammenarbeiten.
4. Code‑Ebene – Zeigt die detaillierten Implementierungsdetails einer einzelnen Komponente, etwa Klassen, Schnittstellen oder Methoden.

Die Diagramme sind interaktiv und ermöglichen die Darstellung weiterer Ebenen.

## Service Übersicht

Es werden zwei Verwendungsmöglichkeiten unterschieden:
1. "User": Eine Person die interaktive mit einer WebUI arbeitet
2. "Client": Eine Maschine (Software) die automatisiert Aufgaben abarbeitet

![System Context AP2](embed:pid_service_system_context)