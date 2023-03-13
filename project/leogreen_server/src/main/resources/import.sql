insert into quiz(id, topic)
values (1, 'Quiz about some hot topics');



insert into question(id, title, quiz_id)
    values (3, 'Wie viele Quadratkilometer wurden 2022 im Amazonasgebiet abgeholzt?', 1);
insert into answer(id, answer, question_id)
       values (7, '11500', 3),
           (8, '5200', 3),
           (9, '43000', 3),
           (10, '760', 3);

update question
    set correct_answer = 7
    where id = 3;

insert into question(id, title, quiz_id)
values (4, 'Wie viele Stunden könnte man eine Glühbirne leuchten lassen mit der Energie einer recycelten Glasflasche?', 1);
    insert into answer(id, answer, question_id)
values (11, '7', 4),
    (12, '0', 4),
    (13, '4', 4),
    (14, '10', 4);

update question
set correct_answer = 13
where id = 4;

insert into question(id, title, quiz_id)
values (5, 'Wie oft kann ein Blatt - Papier recycelt werden?', 1);
    insert into answer(id, answer, question_id)
values (15, '2 Mal', 5),
    (16, '30 Mal', 5),
    (17, '0 Mal', 5),
    (18, '6 Mal', 5);

update question
set correct_answer = 18
where id = 5;



insert into question(id, title, quiz_id)
values (6, 'Wie viele Tonnen CO2 werden jährlich durch den Verkehr ausgestoßen?', 1);
insert into answer(id, answer, question_id)
values (19, '10 Millionen Tonnen', 6),
       (20, '50 Millionen Tonnen', 6),
       (21, '100 Millionen Tonnen', 6),
       (22, '500 Millionen Tonnen', 6);

update question
set correct_answer = 22
where id = 6;

insert into question(id, title, quiz_id)
values (7, 'Welches Land ist der größte Verursacher von Treibhausgasemissionen?', 1);
insert into answer(id, answer, question_id)
values (23, 'USA', 7),
       (24, 'China', 7),
       (25, 'Kanada', 7),
       (26, 'Deutschland', 7);

update question
set correct_answer = 24
where id = 7;

insert into question(id, title, quiz_id)
values (8, 'Wie viele Bäume müssen pro Jahr gepflanzt werden, um den CO2-Ausstoß auszugleichen?', 1);
insert into answer(id, answer, question_id)
values (27, '100', 8),
       (28, '1.000', 8),
       (29, '10.000', 8),
       (30, '100.000', 8);

update question
set correct_answer = 29
where id = 8;

insert into question(id, title, quiz_id)
values (9, 'Welche Art von Energie ist die umweltfreundlichste?', 1);
insert into answer(id, answer, question_id)
values (31, 'Kohle', 9),
       (32, 'Erdgas', 9),
       (33, 'Solar', 9),
       (34, 'Kernenergie', 9);

update question
set correct_answer = 33
where id = 9;






insert into lesson(id, content, description, summary, title)
values (1,
        '<h1>So holen wir das CO2 wieder aus der Luft</h1><h2>Die Grenze ist schon überschritten</h2><p>Vor der Industrialisierung fanden sich in unserer Atmosphäre rund 280 CO2-Moleküle in einer Million Luftteilchen, für das Klima ein stabiles Mischungsverhältnis. Das war Mitte des 19. Jahrhunderts. Dann fingen die Menschen an, massiv CO2 auszustoßen und die Konzentration stieg. 412 Moleküle ist der aktuellste Wert der US-Wetterbehörde NOAA, inzwischen liegt die Zahl wohl noch etwas höher. Nimmt man auch die anderen Treibhausgase wie Methan dazu, haben wir inzwischen längst die Grenze von 500 Molekülen überschritten – und das ist zu viel. Wenn die Konzentration nicht wieder sinkt, können wir laut der Klimaforschung selbst das 2-Grad-Ziel nicht einhalten.</p><h2>CO2 filtern: Verschiedene Möglichkeiten</h2><p>Es müssen also Treibhausgase wieder raus aus der Atmosphäre, nicht zuletzt CO2, das ja den Löwenanteil ausmacht. Die gute Nachricht: Im Prinzip wissen wir, wie das geht. Und wir haben die Auswahl bei verschiedenen Methoden, technischen wie natürlichen. Eine Methode alleine wird die erforderlichen Mengen nicht herausfiltern können. Das Intergovernmental Panel on Climate Change (IPCC, ein Zusammenschluss von Forschenden weltweit) hat berechnet, dass wir bis Ende des Jahrhunderts zwischen 100 und 1000 Milliarden Tonnen CO2 aus der Luft holen müssen. Das ist eine ganze Menge. Dazu kommt: Es gibt eine Reihe von CO2-Quellen, die wir bisher nicht vermeiden können. Die Zementproduktion ist eine davon – wenn es uns nicht gelingt, hier klimafreundliche Alternativen zu erfinden, müssen wir auch langfristig einen gewissen CO2-Ausstoß kompensieren.</p><h2>Die Photosynthese</h2><p>Wie stellt man es also an? Einen fantastischen Prozess, der CO2 aus der Luft holt, hat uns die Natur praktischerweise vorgezeigt. Pflanzen, die Photosynthese betreiben, ziehen ihre Energie aus dem Kohlenstoffdioxid in ihrer Umgebungsluft. Der Kohlenstoff bleibt in den Pflanzen gespeichert und trägt somit nicht mehr zur Klimaerwärmung bei. Das können wir Menschen uns zunutze machen. Pflanzen wir mehr Bäume, speichern wir CO2 – jedenfalls, solange die Bäume stehen bleiben. Es ist also ein vielversprechender Ansatz, langfristig robuste Wälder anzulegen, die Widrigkeiten trotzen und so für viele Jahrzehnte Kohlenstoff aus der Luft halten.</p><h2>Die Ackerbewirtschaftung</h2><p>Der Nachteil der Aufforstung: Es benötigt viel Platz, immer neue Wälder zu pflanzen. Da kommt eine zweite Methode gelegen: Der humusfreundliche Ackerbau. Mit bestimmten Anbautechniken können Landwirtinnen und Landwirte den Humusgehalt in ihren Ackerböden erhöhen. Dadurch steigt auch der Kohlenstoffgehalt im Boden und führt so ebenfalls dazu, dass die CO2-Konzentration in der Luft sinkt. Auch hier steckt großes Potential, das nicht einmal neue Flächen in Anspruch nimmt.</p><h2>Weitere Methoden</h2><p>Es ist schwer, genau zu berechnen, wie viel CO2 diese Maßnahmen wirklich aus der Luft holen können. Forschende schätzen grob, dass es mit Aufforstung und Ackerbewirtschaftung um die 6 Milliarden Tonnen jährlich sein könnten. Das ist nicht nichts, aber es ist keineswegs sicher, dass wir so die 100 – 1000 Milliarden Tonnen erreichen, die es bis 2100 sein müssen. Es gibt noch weitere Techniken, an denen geforscht wird – etwa die gezielte Verwitterung von Gestein oder die Möglichkeit, mit großen Maschinen das CO2 tatsächlich technisch aus der Luft zu filtern.</p><h2>Das Problem der CO2-Sauger</h2><p>So eine CO2-Filter-Anlage könnte sich theoretisch auf jedem Firmendach installieren lassen. Es gibt Prototypen, die aussehen, wie riesige Klimaanlagen: Viele Ventilatoren, die die Luft einsaugen und durch ein Material leiten, das das CO2 herausfiltert. Aber: Solche Anlagen sind bisher extrem teuer, zum Teil kostet eine gefilterte Tonne CO2 mehrere 100 Euro. Skalierungseffekte könnten die Kosten deutlich senken, aber dafür müssten sie erst einmal massenhaft produziert werden.</p><h2>Ein Mix der Technologien?</h2><p>Eins ist klar: CO2 muss aus der Atmosphäre geholt werden, es führt kein Weg daran vorbei. Wie so oft wird wahrscheinlich am Ende ein Mix der Technologien entscheidend sein. Die gute Nachricht ist, dass es Lösungen gibt. Wie sie umgesetzt werden, ist jetzt die entscheidende Frage. Es gibt offene Fragen – etwa, wie man Landwirt:innen zum Umstellen des Ackerbaus bewegt oder wie man den maschinell gefilterten Kohlenstoff lagert oder verwendet – diese müssen gelöst werden, wenn das 2-Grad-Ziel erreicht werden soll.</p>',
        'Unsere Möglichkeiten, CO2 aus der Luft zu holen.',
        '',
        'CO2 aus der Luft');
insert into lesson(id, content, description, summary, title)
values (2,
        '<h1>Die grüne Null – So hart ist es, CO2 neutral zu leben</h1><p>Dirk Gratzel lebt in Stolberg bei Aachen und hat schon reichlich zum Klimawandel beigetragen: Er hat gerne und viel Fleisch gegessen, ist selbst Kurzstrecke geflogen und ist jedes Jahr bis zu 70.000 Kilometer gefahren – meist mit großen und schnellen Autos. Nachhaltiges Leben ist anders. Der 51-Jährige ist damit in Deutschland in guter Gesellschaft. Jeder Deutsche bläst durch seine Lebensweise durchschnittlich rund 11 Tonnen CO2 (CO2-Äquivalente) in den Himmel, sechsmal mehr als ein Bürger in Indien. In NRW liegt der Durchschnitt sogar noch höher, bei ca. 13,5 Tonnen pro Kopf.</p><h2>Hohe Ziele statt Umweltsauerei</h2><p>Doch Dirk Gratzel trifft eine Entscheidung. Er will nicht mehr Teil der Klimakrise sein. Sein neues Lebensziel: den eigenen CO2-Abdruck so weit wie möglich reduzieren. Dabei will er nicht nur seine Klimabilanz verbessern, sondern am Ende seines Lebens ganz ohne CO2-Ausstoß dastehen, komplett ausgeglichen. Er will für sich die grüne Null.</p><h2>Der Klima-Detektiv</h2><p>Dirk Gratzel muss herausfinden, wie viel ökologische Schulden er eigentlich hat und wie hoch sein aktueller CO2-Fußabdruck ist? Das ist monatelange Detektivarbeit. Kleidung zählen, Reisen dokumentieren, Essgewohnheiten notieren. Wie viel CO2 steckt hinter allem? Schon der Kauf und Gebrauch eines T-Shirts (Baumwolle / made in China) hat am Ende zu 6 Kilogramm CO2 geführt – dabei wiegt das T-Shirt selbst gerade mal 150 Gramm. Und all das ist erst der Anfang. Wenn Dirk Gratzel wirklich klimaneutral leben will, was wird dann von seinem alten, oft so komfortablen, Leben bleiben?</p>',
        'Wie hart es für uns ist, CO2 neutral zu leben.',
        '',
        'Die grüne Null');

insert into lesson(id, content, description, summary, title)
values (3,
        '<h1>CO2</h1><p>Um zu verstehen, warum CO2 und andere Treibhausgase für unseren Planeten eine wichtige Rolle spielen, kann man sich beispielsweise die Erde ganz ohne Atmosphäre vorstellen.

Unser Mond zum Beispiel hat keine Atmosphäre. Die Sonnenstrahlung heizt die Oberfläche tagsüber auf mehr als 100 Grad Celsius auf, nachts fällt sie auf etwa minus 160 Grad. Ohne die Atmosphäre würde auch auf der Erde ein viel größerer Temperaturunterschied herrschen. Forschende haben berechnet, dass die Durchschnittstemperatur auf der Erde bei minus 18 Grad liegen würde. Tatsächlich liegt sie aber bei 15 Grad Celsius – also rund 33 Grad mehr.

Dass die Temperaturen weder tags- noch nachtsüber so extrem sind, hängt mit unserer Atmosphäre zusammen, die auch als Schutzschild fungiert. Zuerst einmal verhindert unsere Atmosphäre, dass die gesamte Sonnenstrahlung auf die Erde trifft. Insgesamt gelangt weniger als die Hälfte der Sonnenstrahlung auf die Erdoberfläche. Wolken etwa reflektieren ein Viertel der Sonnenstrahlung direkt wieder ins All, die Schneemassen einen weiteren Teil.

Die übrige Energie gelangt auf die Erdoberfläche, wird dort umgewandelt und in Form von Wärmestrahlung wieder Richtung Weltall geschickt. Wichtig hierbei ist: Was von der Erdoberfläche zurückstrahlt, ist eine andere Strahlung als jene, die aus Richtung der Sonne kommt. Die von der Erde ausgehende Wärmestrahlung kann jedoch zwischen Atmosphäre und Boden reflektiert und in einem gewissen Sinne von Treibhausgasen gefangen werden.

Diese Gase (Wasserdampf, CO2, Methan und andere) verhindern also, dass die Wärmestrahlung sofort ins Weltall entweicht. Stattdessen wird sie teils erneut zurück zur Erde geschickt – und hierin liegt die Klimawirkung von CO2 und anderen: entscheidend ist die chemische Struktur der Gase in der Atmosphäre. Treibhausgase setzen sich aus drei oder mehr Atomen zusammen. Kohlenstoffdioxid beispielsweise aus einem Kohlenstoff und zwei Sauerstoffatomen.

Diese Gasmoleküle sind – anders als Sauerstoff oder Stickstoff (zwei Atome) – empfänglich für bestimmte Strahlung. Entscheidend dafür ist deren Wellenlänge. Die Strahlungsenergie wird aufgenommen und versetzt die Moleküle in Bewegungen, konkret in Schwingungen. Bei der Bewegung wiederum wird Energie frei, die etwa als Wärmestrahlung in verschiedene Richtung – circa zur Hälfte auch in Richtung Erdoberfläche – abgegeben wird.</p><h2>Nur drei- oder mehratomige Moleküle wirken aufs Klima</h2><p>Stickstoff und Sauerstoff, die Hauptbestandteile der Atmosphäre, interagieren in höheren Atmosphärenschichten zwar ebenfalls mit Strahlung und führen beispielsweise zu den bekannten Polarlichtern. Mit Wärmestrahlung aus Richtung der Erdoberfläche reagieren sie aber nicht. Nur drei- oder mehratomige Moleküle, wie Kohlenstoffdioxid oder Methan, haben das Potenzial, den Planeten zu erwärmen. Für den Treibhauseffekt spielt der Großteil der Atmosphärengase daher keine Rolle.

Den größten Effekt auf unsere stabile Temperatur hat der Wasserdampf (Wolken), der zwischen null und vier Volumenprozent ausmacht – an den Polen etwa weniger, in den Tropen mehr. Er trägt daher vor allem zum natürlichen Treibhauseffekt bei. Das Problem: Der Anteil von Wasserdampf in der Atmosphäre hängt von der Temperatur ab. Mehr CO2 führt zu steigenden Temperaturen, das führt zu mehr Wasserdampf und verstärkt den Treibhauseffekt – eine positive Rückkopplung, die große Auswirkungen haben kann.

Aus diesem Grund führen höhere Konzentrationen der Treibhausgase, auch wenn sie nur wenige Volumenprozente der Atmosphäre ausmachen, zu sich selbst verstärkenden Effekten – sogenannten Feedback Loops. Daraus berechnen die Forscher eine um bis zu 4,5 Grad höhere Durchschnittstemperatur, wenn sich das CO2 in der Atmosphäre verdoppelt – auch wenn das „nur“ weitere 0,028 Volumenprozent wären. Die Konzentration der Gase allein sagt nichts aus, denn einige wenige Moleküle an CO2 können eine große Wirkung haben, viele Stickstoffmoleküle dagegen für die globale Temperatur bedeutungslos bleiben.</p><h2>Auch Methan schädigt das Klima – stärker und kurzfristiger</h2><p>Die Klimawirkung anderer Treibhausgase als CO2 wird oft als ein Vielfaches der Klimawirksamkeit von CO2 angegeben. Man nennt das ihr Treibhausgaspotenzial. Ein Methan-Molekül beispielsweise ist laut Intergovernmental Panel on Climate Change, auch „Weltklimarat“ (IPCC), ungefähr 28-mal wirksamer als CO2. Es verbleibt etwa 12 Jahre in der Atmosphäre. So hat jedes Treibhausgas seine Eigenheiten und Nachteile.

Mehr zu den Auswirkungen von Methan auf das Klima, erklären wir hier.

CO2 hingegen kann dort bis zu 500 Jahre oder länger bleiben, bis klimawirksames CO2 über natürliche Prozesse in der Tiefsee landet (ein einzelnes Molekül verweilt tatsächlich nur einige Jahre in der Atmosphäre, anschließend findet ein Austausch mit CO2-Molekülen aus Ozeanen statt. Die jahrhundertelange Verweildauer bezeichnet die Zeitspanne, bis natürliche Prozesse das CO2-Molekül endgültig wieder aus der Atmosphäre holen). Die Einschätzung, wie viele Jahre oder gar Jahrhunderte CO2 die Klimawirkung entfaltet, gehen allerdings auseinander – sie liegen jedoch in der Regel bei über 100 Jahren.</p><h1>Und jetzt?</h1><h2>Die CO2-Emissionen müssen langfristig sinken</h2><p>Vor der industriellen Revolution war die Konzentration von CO2 deutlich geringer als heute und lag bei etwa 0,028 Volumenprozent. In den offiziellen Klimaprognosen berechnen Forscher, was bei bestimmten Szenarien, etwa einer Verdopplung der CO2-Konzentration, in der Atmosphäre passiert. Eine Verdoppelung bis zum Ende dieses Jahrhunderts könnte die Durchschnittstemperatur zwischen 1,5 und 4,5 Grad erhöhen. Auch andere klimarelevante Gase müssen in die Berechnungen und damit auch die Klimadebatten mit einbezogen werden. Große Quellen für Methan können das Klima auch maßgeblich verändern. So kann etwa durch das Entweichen aus Permafrostböden, die Tierhaltung, aber auch durch die Tropen und andere Feuchtgebiete Methan freisetzen. Diese Prozesse müssen in Zukunft noch genauer untersucht werden.</p><h2>Temperaturanstieg weniger als zwei Grad Celsius</h2><p>Die politischen Forderungen, um eine globale Erwärmung möglichst gering zu halten, sind schon seit Jahren klar: Die Emissionen müssen in den nächsten Jahren und Jahrzehnten bedeutend niedriger sein. Laut der UN-Klimakonferenz in Paris haben sich die Länder darauf verständigt, die Emissionen so zu steuern, dass die Temperaturerhöhung weniger als zwei Grad beträgt. Konkret bedeutet das, dass sich die einzelnen Länder ehrgeizige Ziele setzen müssen.

In Deutschland sinken die Emissionen kontinuierlich, müssen aber für die kommenden Jahrzehnte weitaus drastischer reduziert werden.

Ansatzpunkte dafür sind klimaneutrale Energieerzeugung, weniger Verkehrs- und Industrieabgase, ökologischere Formen der Landwirtschaft und auch ein anderes Konsumverhalten. Immer wieder im Gespräch ist auch eine CO2-Steuer.</p>',
        'Eine Übersicht über das Problem, das CO2 für uns darstellt',
        '',
        'CO2');
insert into lesson(id, content, description, summary, title)
values (4,
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel',
        'In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.',
        'Klima');
insert into lesson(id, content, description, summary, title)
values (5,
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel',
        'In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.',
        'Klima');
insert into lesson(id, content, description, summary, title)
values (6,
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel',
        'In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.',
        'Klima');
insert into lesson(id, content, description, summary, title)
values (7,
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel',
        'In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.',
        'Klima');


insert into picture (name, altText) values ('http://localhost:8080/picture/get/img_1.png', 'Placeholder');

alter sequence quiz_id_seq restart with 100;
alter sequence question_id_seq restart with 100;
alter sequence answer_id_seq restart with 100;
