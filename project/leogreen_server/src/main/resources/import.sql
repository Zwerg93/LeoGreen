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
values (4, 'Wie viele Stunden könnte man eine Glühbirne leuchten lassen mit der Energie einer recycelten Glasflasche?',
        1);
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
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
        'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel',
        'In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.',
        'Klima');
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


insert into picture (name, altText)
values ('http://localhost:8080/picture/get/img_1.png', 'Placeholder');


insert into tag (tag, question_id)
values ('Energie', 4),
       ('Recycling', 4),
       ('Recycling', 5),
       ('Emissionen', 6),
       ('Emissionen', 7),
       ('Emissionen', 8),
       ('Umwelt', 9),
       ('Umwelt',3);

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