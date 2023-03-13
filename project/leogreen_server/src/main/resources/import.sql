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
values (15, '2', 5),
    (16, '30', 5),
    (17, '0', 5),
    (18, '6', 5);

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
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel',
        'In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.',
        'Klima');
insert into lesson(id, content, description, summary, title)
values (3,
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel',
        'In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.',
        'Klima');
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
