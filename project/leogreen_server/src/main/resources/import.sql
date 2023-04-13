insert into quiz(id, topic)
values (1, 'CO2-Quiz'),
       (2, 'Klimawandel'),
       (3, 'Project Award');

insert into lesson(id,
                   content,
                   description,
                   summary,
                   title,
                   quiz_id)
values (1,
        '',
        'Eine Übersicht über das Problem, das CO2 für uns darstellt',
        'Eine Übersicht über das Problem, das CO2 für uns darstellt',
        'CO2',
        1),
       (2,
        '',
        'Ursachen, Auswirkungen und Handlungsoptionen',
        'Die Ursachen, Auswirkungen des Klimawandels und unsere Handlungsoptionen',
        'Klimawandel',
        2),
       (3,
        '',
        'Die HTL Leonding und ihre Fakten',
        'Die Daten, Fakten und Abteilungen der HTL Leonding. Eine Lesson für den Project Award',
        'Projectaward',
        3);

insert into section(header, content, type, lesson_id)
values ('', '', 'IMAGE', 1),
       ('', 'Um zu verstehen, warum CO2 und andere Treibhausgase für unseren Planeten eine wichtige Rolle spielen, kann man sich
    beispielsweise die Erde ganz ohne Atmosphäre vorstellen.

    Unser Mond zum Beispiel hat keine Atmosphäre. Die Sonnenstrahlung heizt die Oberfläche tagsüber auf mehr als 100
    Grad Celsius auf, nachts fällt sie auf etwa minus 160 Grad. Ohne die Atmosphäre würde auch auf der Erde ein viel
    größerer Temperaturunterschied herrschen. Forschende haben berechnet, dass die Durchschnittstemperatur auf der Erde
    bei minus 18 Grad liegen würde. Tatsächlich liegt sie aber bei 15 Grad Celsius – also rund 33 Grad mehr.

    Dass die Temperaturen weder tags- noch nachtsüber so extrem sind, hängt mit unserer Atmosphäre zusammen, die auch
    als Schutzschild fungiert. Zuerst einmal verhindert unsere Atmosphäre, dass die gesamte Sonnenstrahlung auf die Erde
    trifft. Insgesamt gelangt weniger als die Hälfte der Sonnenstrahlung auf die Erdoberfläche. Wolken etwa reflektieren
    ein Viertel der Sonnenstrahlung direkt wieder ins All, die Schneemassen einen weiteren Teil.

    Die übrige Energie gelangt auf die Erdoberfläche, wird dort umgewandelt und in Form von Wärmestrahlung wieder
    Richtung Weltall geschickt. Wichtig hierbei ist: Was von der Erdoberfläche zurückstrahlt, ist eine andere Strahlung
    als jene, die aus Richtung der Sonne kommt. Die von der Erde ausgehende Wärmestrahlung kann jedoch zwischen
    Atmosphäre und Boden reflektiert und in einem gewissen Sinne von Treibhausgasen gefangen werden.

    Diese Gase (Wasserdampf, CO2, Methan und andere) verhindern also, dass die Wärmestrahlung sofort ins Weltall
    entweicht. Stattdessen wird sie teils erneut zurück zur Erde geschickt – und hierin liegt die Klimawirkung von CO2
    und anderen: entscheidend ist die chemische Struktur der Gase in der Atmosphäre. Treibhausgase setzen sich aus drei
    oder mehr Atomen zusammen. Kohlenstoffdioxid beispielsweise aus einem Kohlenstoff und zwei Sauerstoffatomen.

    Diese Gasmoleküle sind – anders als Sauerstoff oder Stickstoff (zwei Atome) – empfänglich für bestimmte Strahlung.
    Entscheidend dafür ist deren Wellenlänge. Die Strahlungsenergie wird aufgenommen und versetzt die Moleküle in
    Bewegungen, konkret in Schwingungen. Bei der Bewegung wiederum wird Energie frei, die etwa als Wärmestrahlung in
    verschiedene Richtung – circa zur Hälfte auch in Richtung Erdoberfläche – abgegeben wird.',
        'TEXT',
        1),
       ('Nur drei- oder mehratomige Moleküle wirken aufs Klima',
        'Stickstoff und Sauerstoff, die Hauptbestandteile der Atmosphäre, interagieren in höheren Atmosphärenschichten zwar
        ebenfalls mit Strahlung und führen beispielsweise zu den bekannten Polarlichtern. Mit Wärmestrahlung aus Richtung
        der Erdoberfläche reagieren sie aber nicht. Nur drei- oder mehratomige Moleküle, wie Kohlenstoffdioxid oder Methan,
        haben das Potenzial, den Planeten zu erwärmen. Für den Treibhauseffekt spielt der Großteil der Atmosphärengase daher
        keine Rolle.

        Den größten Effekt auf unsere stabile Temperatur hat der Wasserdampf (Wolken), der zwischen null und vier
        Volumenprozent ausmacht – an den Polen etwa weniger, in den Tropen mehr. Er trägt daher vor allem zum natürlichen
        Treibhauseffekt bei. Das Problem: Der Anteil von Wasserdampf in der Atmosphäre hängt von der Temperatur ab. Mehr CO2
        führt zu steigenden Temperaturen, das führt zu mehr Wasserdampf und verstärkt den Treibhauseffekt – eine positive
        Rückkopplung, die große Auswirkungen haben kann.

        Aus diesem Grund führen höhere Konzentrationen der Treibhausgase, auch wenn sie nur wenige Volumenprozente der
        Atmosphäre ausmachen, zu sich selbst verstärkenden Effekten – sogenannten Feedback Loops. Daraus berechnen die
        Forscher eine um bis zu 4,5 Grad höhere Durchschnittstemperatur, wenn sich das CO2 in der Atmosphäre verdoppelt –
        auch wenn das „nur“ weitere 0,028 Volumenprozent wären. Die Konzentration der Gase allein sagt nichts aus, denn
        einige wenige Moleküle an CO2 können eine große Wirkung haben, viele Stickstoffmoleküle dagegen für die globale
        Temperatur bedeutungslos bleiben.', 'TEXT', 1),
       ('Auch Methan schädigt das Klima – stärker und kurzfristiger',
        'Die Klimawirkung anderer Treibhausgase als CO2 wird oft als ein Vielfaches der Klimawirksamkeit von CO2 angegeben.
        Man nennt das ihr Treibhausgaspotenzial. Ein Methan-Molekül beispielsweise ist laut Intergovernmental Panel on
        Climate Change, auch „Weltklimarat“ (IPCC), ungefähr 28-mal wirksamer als CO2. Es verbleibt etwa 12 Jahre in der
        Atmosphäre. So hat jedes Treibhausgas seine Eigenheiten und Nachteile.

        Mehr zu den Auswirkungen von Methan auf das Klima, erklären wir hier.

        CO2 hingegen kann dort bis zu 500 Jahre oder länger bleiben, bis klimawirksames CO2 über natürliche Prozesse in der
        Tiefsee landet (ein einzelnes Molekül verweilt tatsächlich nur einige Jahre in der Atmosphäre, anschließend findet
        ein Austausch mit CO2-Molekülen aus Ozeanen statt. Die jahrhundertelange Verweildauer bezeichnet die Zeitspanne, bis
        natürliche Prozesse das CO2-Molekül endgültig wieder aus der Atmosphäre holen). Die Einschätzung, wie viele Jahre
        oder gar Jahrhunderte CO2 die Klimawirkung entfaltet, gehen allerdings auseinander – sie liegen jedoch in der Regel
        bei über 100 Jahren.', 'EIGHTY', 1),
       ('Und jetzt? Die CO2-Emissionen müssen langfristig sinken',
        'Vor der industriellen Revolution war die Konzentration von CO2 deutlich geringer als heute und lag bei etwa 0,028
        Volumenprozent. In den offiziellen Klimaprognosen berechnen Forscher, was bei bestimmten Szenarien, etwa einer
        Verdopplung der CO2-Konzentration, in der Atmosphäre passiert. Eine Verdoppelung bis zum Ende dieses Jahrhunderts
        könnte die Durchschnittstemperatur zwischen 1,5 und 4,5 Grad erhöhen. Auch andere klimarelevante Gase müssen in die
        Berechnungen und damit auch die Klimadebatten mit einbezogen werden. Große Quellen für Methan können das Klima auch
        maßgeblich verändern. So kann etwa durch das Entweichen aus Permafrostböden, die Tierhaltung, aber auch durch die
        Tropen und andere Feuchtgebiete Methan freisetzen. Diese Prozesse müssen in Zukunft noch genauer untersucht werden.',
        'EIGHTY', 1),
       ('Temperaturanstieg weniger als zwei Grad Celsius',
        'Die politischen Forderungen, um eine globale Erwärmung möglichst gering zu halten, sind schon seit Jahren klar: Die
        Emissionen müssen in den nächsten Jahren und Jahrzehnten bedeutend niedriger sein. Laut der UN-Klimakonferenz in
        Paris haben sich die Länder darauf verständigt, die Emissionen so zu steuern, dass die Temperaturerhöhung weniger
        als zwei Grad beträgt. Konkret bedeutet das, dass sich die einzelnen Länder ehrgeizige Ziele setzen müssen.

        In Deutschland sinken die Emissionen kontinuierlich, müssen aber für die kommenden Jahrzehnte weitaus drastischer
        reduziert werden.

        Ansatzpunkte dafür sind klimaneutrale Energieerzeugung, weniger Verkehrs- und Industrieabgase, ökologischere Formen
        der Landwirtschaft und auch ein anderes Konsumverhalten. Immer wieder im Gespräch ist auch eine CO2-Steuer.',
        'TEXT', 1);

insert into section(header, content, type, lesson_id)
values ('', '', 'IMAGE', 2),
       ('',
        'Der Klimawandel ist eines der dringendsten und komplexesten Probleme unserer Zeit. Die Erderwärmung und ihre Folgen sind nicht nur in entlegenen Gebieten wie den Polargebieten spürbar, sondern betreffen uns alle direkt. Dürren, Überschwemmungen, Hitzewellen und Naturkatastrophen nehmen weltweit zu und stellen uns vor enorme Herausforderungen. In diesem Artikel möchten wir die Ursachen, Auswirkungen und Handlungsoptionen des Klimawandels beleuchten.',
        'TEXT',
        2),
       ('Ursachen des Klimawandels',
        'Die Erderwärmung wird durch den Ausstoß von Treibhausgasen verursacht, die hauptsächlich durch menschliche Aktivitäten wie die Verbrennung fossiler Brennstoffe, die Landwirtschaft und die Industrie entstehen. Die wichtigsten Treibhausgase sind Kohlendioxid (CO2), Methan (CH4) und Lachgas (N2O). Die steigenden CO2-Emissionen führen dazu, dass sich die Atmosphäre erwärmt und das Klima verändert. Auch die Abholzung von Wäldern und die Zerstörung von Feuchtgebieten trägt zum Klimawandel bei, da dadurch weniger CO2 aufgenommen wird.',
        'EIGHTY',
        2),
       ('Auswirkungen des Klimawandels',
        'Die Auswirkungen des Klimawandels sind bereits spürbar und betreffen uns alle. Dazu gehören zunehmende Hitzewellen, Dürren, Waldbrände und Überschwemmungen. Auch der Anstieg des Meeresspiegels und das Schmelzen von Gletschern und Polareis haben weitreichende Auswirkungen auf Ökosysteme und den Lebensraum von Menschen und Tieren. Insbesondere in ärmeren Ländern und Regionen sind die Auswirkungen des Klimawandels besonders gravierend, da sie oft nicht über ausreichende Ressourcen verfügen, um sich anzupassen.',
        'TEXT',
        2),
       ('Handlungsoptionen gegen den Klimawandel',
        'Um den Klimawandel zu stoppen oder zumindest zu verlangsamen, müssen wir die Ursachen bekämpfen und unsere Lebensweise nachhaltiger gestalten. Dazu gehören Maßnahmen wie der Ausbau erneuerbarer Energien, die Förderung von Elektromobilität, die Verbesserung der Energieeffizienz von Gebäuden und die Umstellung auf eine klimafreundlichere Landwirtschaft. Auch der Schutz von Wäldern und Feuchtgebieten und die Anpassung an den Klimawandel sind wichtige Maßnahmen. In der Bildung spielt die Sensibilisierung für den Klimawandel und die Vermittlung von Handlungsoptionen eine wichtige Rolle. Schulen und Bildungseinrichtungen haben eine Verantwortung, das Bewusstsein für den Klimawandel zu schärfen und Schülerinnen und Schüler zu ermutigen, aktiv zu werden. Die Fridays-for-Future-Bewegung hat gezeigt, dass viele junge Menschen bereit sind, für den Klimaschutz zu kämpfen und politischen Druck auszuüben.',
        'TEXT',
        2),
       ('Fazit',
        'Zusammenfassend kann gesagt werden, dass der Klimawandel eine der größten Herausforderungen unserer Zeit darstellt und dringende Handlungsbedarf erfordert. Die Ursachen des Klimawandels sind vor allem auf den Ausstoß von Treibhausgasen durch menschliche Aktivitäten zurückzuführen. Die Auswirkungen des Klimawandels sind bereits spürbar und betreffen uns alle, insbesondere jedoch Menschen in ärmeren Ländern und Regionen. Um den Klimawandel zu bekämpfen, sind Maßnahmen wie der Ausbau erneuerbarer Energien, die Förderung von Elektromobilität und die Umstellung auf eine nachhaltigere Landwirtschaft erforderlich. Eine wichtige Rolle spielt auch die Bildung und Sensibilisierung für den Klimawandel. Die Fridays-for-Future-Bewegung zeigt, dass viele junge Menschen bereit sind, für den Klimaschutz zu kämpfen und politischen Druck auszuüben. Es liegt nun an uns allen, gemeinsam und entschlossen zu handeln, um den Klimawandel zu bekämpfen und eine lebenswerte Zukunft für kommende Generationen zu sichern.',
        'TEXT',
        2);

insert into section(header, content, type, lesson_id)
values ('', '', 'TEXT', 3),
       ('Informatik',
        'Die höhere Abteilung für Informatik vereint eine EDV-technische mit einer betriebswirtschaftlichen Ausbildung. Sie qualifiziert die Absolventen für ein breites Einsatzspektrum in Industrie und Wirtschaft. Zahlreiche Kooperationen mit Unternehmen in Form von Projekten ergänzen die Ausbildung. Die Ausbildung umfasst Fachgebiete wie Software-Engineering, Datenbanken & Informationssysteme, Computer-Architektur, Netzwerksysteme, Betriebssysteme, Projektentwicklung, Betriebswirtschaft und Robotik. Seit dem Schuljahr 2021/22 wurde die Ausbildung um einen Schwerpunkt in den Bereichen Cyber-Security, Data-Science sowie Artificial Intelligence erweitert.',
        'EIGHTY',
        3),
       ('IT-Medientechnik',
        'Für moderne Computeranwendungen wird multimedialer Inhalt benötigt. Dabei ist aber nicht nur der technische Hintergrund wichtig, sondern auch der gestalterische Aspekt. Im Medientechnik-Zweig werden alle informationstechnischen Kenntnisse, die für die multimediale Computerwelt benötigt werden, gelehrt. Dabei werden der Entwurf und die Erstellung von Bild-, Audio- und Videoproduktionen genauso behandelt wie die Gestaltung von Benutzeroberflächen für Computeranwendungen, 3D-Darstellungen und 3D-Animationen oder die Entwicklung von Computerspielen. Betriebswirtschaftliche und rechtliche Inhalte runden die Ausbildung ab. Seit dem Schuljahr 2021/22 wurde die Ausbildung um einen Schwerpunkt im Bereich der IT-Security erweitert.',
        'EIGHTY',
        3),
       ('Elektronik und Technische Informatik',
        'Die Ausbildung im Bereich Elektronik und Technische Informatik vereint Hard- und Softwareentwicklung auf breiter Basis. Sie befähigt die Absolventen elektronische Systeme für Industrie und Wirtschaft entwerfen und programmieren zu können. Ab dem vierten Jahrgang werden Projekte aus den unterschiedlichsten Bereichen realisiert. Die Gegenstände der Ausbildung sind praxisnah gehalten. Die Basis bilden elektronische Grundlagen, wesentliche Bauelemente und deren Einsatz in der Schaltungstechnik. Ergänzt wird dies durch eine Ausbildung in den Labors und Werkstätten, wie beispielsweise dem Prototypenbau.',
        'EIGHTY',
        3),
       ('Biomedizin- und Gesundheitstechnik',
        'Die Biomedizinische Technik ist eine Kombination aus Elektronik, medizinischen Grundlagen und Software. In der Medizintechnik werden sowohl fundierte Kenntnisse in den Bereichen Hardware und Software als auch medizinisches Fachwissen über Aufbau und Funktion des menschlichen Körpers vermittelt. Gesundheitsmechatronik, bildgebende Systeme (z. B. Ultraschall, MR, CT), medizinische Gerätetechnik und Medizininformatik sind dabei tragende Schwerpunkte des Ausbildungszweiges.
        Zur Anwendung kommt die Medizintechnik in Arztpraxen, Krankenhäusern, Rehabilitationszentren und Labors. Außerdem werden medizintechnische Geräte vermehrt auch im Sport und im Bereich Wellness eingesetzt. Der medizintechnische Bereich weist ein rasantes Wachstum auf und bietet interessante und vielfältige berufliche Einsatzmöglichkeiten.',
        'EIGHTY',
        3),
       ('Geschichte',
        'Die Schule wurde 1984 eröffnet, anfänglich für den Nachrichtentechnik/Elektronik-Zweig. Seit 1985 besteht der Informatik-Zweig.
        Aus Platzmangel im Schulgebäude in Leonding mussten erstmals 1997/1998 Schüler disloziert im BRG Traun untergebracht werden. Daraus entstand in weiterer Folge die Expositur und später eigenständige HTBLA Traun. Auch die HTL Perg und die FH Hagenberg entwickelten sich aus der HTL Leonding. Das Stammhaus in Leonding wurde 2001/2002 renoviert und erweitert.',
        'TEXT',
        3);

-- QUIZ 1
insert into question(id, title, quiz_id)
values (3,
        'Wie viele Quadratkilometer wurden 2022 im Amazonasgebiet abgeholzt?',
        1);

insert into answer(id, answer, question_id)
values (7, '11500 km²', 3),
       (8, '5200 km²', 3),
       (9, '43000 km²', 3),
       (10, '760 km²', 3);

update question
set correct_answer = 7
where id = 3;

insert into question(id, title, quiz_id)
values (4,
        'Wie viele Stunden könnte man eine Glühbirne leuchten lassen mit der Energie einer recycelten Glasflasche?',
        1);

insert into answer(id, answer, question_id)
values (11, '7 Stunden', 4),
       (12, '0 Stunden', 4),
       (13, '4 Stunden', 4),
       (14, '10 Stunden', 4);

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
values (6,
        'Wie viele Tonnen CO2 werden jährlich durch den Verkehr ausgestoßen?',
        1);

insert into answer(id, answer, question_id)
values (19, '10 Mio. Tonnen', 6),
       (20, '50 Mio. Tonnen', 6),
       (21, '100 Mio. Tonnen', 6),
       (22, '500 Mio. Tonnen', 6);

update question
set correct_answer = 22
where id = 6;

insert into question(id, title, quiz_id)
values (7,
        'Welches Land ist der größte Verursacher von Treibhausgasemissionen?',
        1);

insert into answer(id, answer, question_id)
values (23, 'USA', 7),
       (24, 'China', 7),
       (25, 'Kanada', 7),
       (26, 'Deutschland', 7);

update question
set correct_answer = 24
where id = 7;

insert into question(id, title, quiz_id)
values (8,
        'Wie viele Bäume müssen pro Jahr gepflanzt werden, um den CO2-Ausstoß auszugleichen?',
        1);

insert into answer(id, answer, question_id)
values (27, '100 Bäume', 8),
       (28, '1.000 Bäume', 8),
       (29, '10.000 Bäume', 8),
       (30, '100.000 Bäume', 8);

update question
set correct_answer = 29
where id = 8;

insert into question(id, title, quiz_id)
values (9,
        'Welche Art von Energie ist die umweltfreundlichste?',
        1);

insert into answer(id, answer, question_id)
values (31, 'Kohle', 9),
       (32, 'Erdgas', 9),
       (33, 'Solar', 9),
       (34, 'Kernenergie', 9);

update question
set correct_answer = 33
where id = 9;


-- QUIZ 2
insert into question(id, title, quiz_id)
values (10,
        'Was ist der Hauptverursacher des Klimawandels?',
        2);
insert into answer(id, answer, question_id)
values (35, 'Die Sonne', 10),
       (36, 'Vulkanausbrüche', 10),
       (37, 'Menschliche Aktivitäten', 10),
       (38, 'Natürliche Schwankungen', 10);
update question
set correct_answer = 37
where id = 10;

insert into question(id, title, quiz_id)
values (11,
        'Welche Folgen hat der Klimawandel auf die Meere?',
        2);
insert into answer(id, question_id, answer)
values (39, 11, 'Erhöhung des pH-Werts'),
       (40, 11, 'Erhöhung der Salzgehalte'),
       (41, 11, 'Erhöhung der Artenvielfalt'),
       (42, 11, 'Erhöhung der Wassertemperaturen');
update question
set correct_answer = 42
where id = 11;

insert into question(id, title, quiz_id)
values (12,
        'Was kann man tun, um den Klimawandel zu stoppen?',
        2);
insert into answer(id, question_id, answer)
values (43, 12, 'Mehr Fleisch essen'),
       (44, 12, 'Öfter fliegen'),
       (45, 12, 'Auf erneuerbare Energien umsteigen'),
       (46, 12, 'Weniger Wasser trinken');
update question
set correct_answer = 45
where id = 12;

insert into question(id, title, quiz_id)
values (13,
        'Welche Maßnahmen können wir ergreifen, um den CO2-Ausstoß zu reduzieren?',
        2);
insert into answer(id, question_id, answer)
values (47, 13, 'Verzicht auf Plastiktüten'),
       (48, 13, 'Verwendung von Energiesparlampen'),
       (49, 13, 'Nutzung von öffentlichen Verkehrsmitteln'),
       (50, 13, 'Rauchen aufhören');
update question
set correct_answer = 49
where id = 13;

insert into question(id, title, quiz_id)
values (14,
        'Was ist das Ziel des Pariser Abkommens von 2015?',
        2);
insert into answer(id, question_id, answer)
values (51, 14, 'Begrenzung der globalen Erwärmung auf unter 1,5 Grad Celsius'),
       (52, 14, 'Förderung von Kohle als Energiequelle'),
       (53, 14, 'Reduzierung der erneuerbaren Energien'),
       (54, 14, 'Verstärkung von Naturkatastrophen');
update question
set correct_answer = 51
where id = 14;

insert into question(id, title, quiz_id)
values (15,
        'Was ist die Bedeutung von Bäumen im Kampf gegen den Klimawandel? Sie ...',
        2);
insert into answer(id, question_id, answer)
values (55, 15, 'produzieren Sauerstoff'),
       (56, 15, 'speichern Kohlenstoff'),
       (57, 15, 'verstärken den Treibhauseffekt'),
       (58, 15, 'reduzieren Luftverschmutzung');
update question
set correct_answer = 56
where id = 15;

insert into question(id, title, quiz_id)
values (16,
        'Welche Maßnahmen können dazu beitragen, den Klimawandel zu stoppen?',
        2);
insert into answer(id, question_id, answer)
values (59, 16, 'Verzehr von Fleisch'),
       (60, 16, 'Vermeidung von Plastik'),
       (61, 16, 'Förderung des Autoverkehrs'),
       (62, 16, 'Verwendung von Einwegbechern');
update question
set correct_answer = 60
where id = 16;

insert into question(id, title, quiz_id)
values (17,
        'Welche Rolle spielen die Meere im Klimawandel? Sie ...',
        2);
insert into answer(id, question_id, answer)
values (63, 17, 'nehmen CO2 auf'),
       (64, 17, 'heizen sich auf'),
       (65, 17, 'haben keinen Einfluss'),
       (66, 17, 'sind nur in geringem Maße beteiligt');
update question
set correct_answer = 63
where id = 17;

insert into question(id, title, quiz_id)
values (18,
        'Was sind die Folgen des Klimawandels für die Biodiversität?',
        2);
insert into answer(id, question_id, answer)
values (67, 18, 'keine Auswirkungen'),
       (68, 18, 'Tier- und Pflanzenarten sterben aus'),
       (69, 18, 'Sie wird gestärkt'),
       (70, 18, 'keine Auswirkungen auf die Tierwelt');
update question
set correct_answer = 68
where id = 18;

insert into picture (name, altText)
values ('http://localhost:8080/picture/get/img_1.png',
        'Placeholder');

insert into picture (name, altText, section_id)
values ('fabrikschlote.png',
        'Fabrik',
        1),
       ('methan.png',
        'Kuh Methan',
        4),
       ('carbon_cycle.png',
        'CO2 Kreislauf',
        5),
       ('globe.png',
        'Globus in einer Wiese',
        7),
       ('treibhauseffekt.png',
        'Darstellung Treibhauseffekt',
        9),
       ('htllogo.png',
        'HTL-Logo',
        10),
       ('Abteilungen_informatik_sse.jpg',
        'Informatil-Logo',
        14),
       ('Abteilungen_Medientechnik_CS.jpg',
        'Medientchnik-Logo',
        15),
       ('medizintechniklogo.png',
        'Medizintechnik-Logo',
        17),
       ('Elektronik.png',
        'HTL-Logo',
        16)
;

insert into tag (tag, question_id)
values ('Energie', 4),
       ('Recycling', 4),
       ('Recycling', 5),
       ('Emissionen', 6),
       ('Emissionen', 7),
       ('Emissionen', 8),
       ('Umwelt', 9),
       ('Umwelt', 3);

insert into tag (tag, question_id)
values ('Klimawandel', 10),
       ('Klimawandel', 12),
       ('Klimawandel', 15),
       ('Klimawandel', 16),
       ('Klimawandel', 18),
       ('Mensch', 10),
       ('Mensch', 13),
       ('Mensch', 18),
       ('Meer', 11),
       ('Meer', 17),
       ('Folgen', 11),
       ('Folgen', 17),
       ('Folgen', 18),
       ('Nachhaltigkeit', 12),
       ('Nachhaltigkeit', 13),
       ('Nachhaltigkeit', 14),
       ('Nachhaltigkeit', 16),
       ('Emissionen', 10),
       ('Emissionen', 17),
       ('Emissionen', 15),
       ('Emissionen', 11),
       ('Emissionen', 14),
       ('CO2', 13),
       ('CO2', 15);

insert into game(state, quiz_id)
values (-2, 1);

insert into gamescore (points, game_id, tag_id)
values (1000, 1, 1),
       (700, 1, 1),
       (1000, 1, 2),
       (0, 1, 2);

alter sequence quiz_id_seq restart with 100;

alter sequence question_id_seq restart with 100;

alter sequence answer_id_seq restart with 100;