# LeoGreen

![Lizens](https://img.shields.io/github/license/Zwerg93/LeoGreen)
![Issues](https://img.shields.io/github/issues/Zwerg93/LeoGreen)
![LastCommit](https://img.shields.io/github/last-commit/Zwerg93/LeoGreen)

## About

Leogreen ist eine Website, um spielerisch Fakten über die Umwelt lernen zu können. Dafür stellen wir auf einer Übersicht verschiedene Lessons bereit, welche sich jeweils mit einem Themenbereich beschäftigt. Uns ist dabei wichtig, dass wir viele Bereiche abdecken, und in einer Lesson Material, Daten und Fakten für ca 20 Minuten Unterricht bereitstellen. Um für unsere Zielgruppe – Kinder und Jugendliche – die ganzen Themen spannender zu machen, stellen wir nach jeder Lesson ein Quiz mit verschiedenen Fragen bereit. Diese Fragen beziehen sich dabei immer auf den zuvor gelernten Inhalten, und sollen dazu beitragen, die vorgetragenen Informationen zu wiederholen und damit zu festigen. 

Das ganze Projekt baut auf ein Angular Frontend auf, welches wir im Zuge der Projektarbeit umgesetzt haben. Unserer Kriterien waren dabei ein ansprechendes Design, und gute Nutzerfreundlichkeit. Jeder soll sich direkt zurechtfinden, und ohne viel nachzudenken unsere Funktionen nutzen können. Um besagte Funktionen bereitstellen zu können, setzten wir auf das Java-Framework Quarkus. Dieses biete uns viele Möglichkeiten, für uns sind die wichtigsten die einfachen Anbindungen an Docker, und das Erstellen von Endpoints. Diese Endpoints nutzen wir, um von einer Postgresql Datenbank die Informationen und die Fragen an unser Frontend zu senden. Auch die Logik des Quizzes findet in Quarkus statt, und ist somit unentbehrlich.  

Um das ganze regelmäßig ausliefern zu können, also ein konstantes ci/cd anbieten zu können, nutzen wir Kubernetes und die sogenannte Leocloud. Das ermöglicht es uns, für die einzelnen Services sogenannte Pods zu erstellen, und Postgres, Frontend und Backend separat starten und stoppen zu können. Sollte einer der Pods ausfallen, oder überlastet sein, startet Kubernetes automatisch einen neuen, oder versucht, den gecrashten Pod zu reaktiveren. 


## How to use

 

Bis jetzt ist die Anwendung einfach über diesen Link in der Leocloud erreichbar:  


### Demo: 
https://student.cloud.htl-leonding.ac.at/m.pouget/home 

Man findet auf dieser Version der Seite bereits einige Lessons, auch wenn diese nur mit Placeholder-Texten gefüllt sind. Nachdem man sich durch eine Lesson gearbeitet hat, findet man darunter einen Knopf, mit welchem man das Quiz zu genau dieser Lesson starten kann. Die Anzeige mit der Quizid und den Spielern kann nun den Teilnehmern gezeigt werden. Dies kann über einen Beamer, einen Smartboard oder einen einfachen Videostream erfolgen. Die Spieler können über das Untermenü “Join Quiz” beitreten, oder direkt über den QR Code, welcher sie direkt auf die Join-Page führt. Danach kann der Quizmaster das Spiel starten, und die User haben die Möglichkeit, eine der Antwortmöglichkeiten auszuwählen, und so die Fragen zu beantworten. 


## Werbevideo
[![LeoGreen Werbevideo](https://i3.ytimg.com/vi/zc5xqdta6o4/maxresdefault.jpg)](https://youtu.be/zc5xqdta6o4)

