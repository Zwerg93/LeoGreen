insert into quiz(id, topic)
values (1, 'TestQuiz');

insert into question(id, title, quiz_id)
values (1, 'What is the best quiz website?', 1);

insert into answer(id, answer, question_id)
values (1, 'Leogreen', 1);
insert into answer(id, answer, question_id)
values (2, 'Kahoot', 1);

update question
set correct_answer = 1
where id = 1;

insert into question(id, title, quiz_id)
values (2, 'What is the best School?', 1);

insert into answer(id, answer, question_id)
values (3, 'Khevenhüller', 2);
insert into answer(id, answer, question_id)
values (4, 'HTL 1', 2);
insert into answer(id, answer, question_id)
values (5, 'HAK', 2);
insert into answer(id, answer, question_id)
values (6, 'HTL Leonding', 2);

update question
set correct_answer = 6
where id = 2;

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


insert into picture (name, altText) values ('http://localhost:8080/picture/get/img_1.png', 'Placeholder');

alter sequence quiz_id_seq restart with 100;
alter sequence question_id_seq restart with 100;
alter sequence answer_id_seq restart with 100;