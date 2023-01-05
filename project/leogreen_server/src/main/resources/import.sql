insert into quiz(id, topic) values (1, 'TestQuiz');
insert into question(id, title, quiz_id) values (1, 'What is the best quiz website?', 1);
insert into answer(id, answer, question_id) values (1, 'Leogreen', 1);
insert into answer(id, answer, question_id) values (2, 'Kahoot', 1);
insert into lesson(id,content, description, summary, title) values (1, 'Klima', 'Dieses Element ist eine Mischung aus den beiden, hier sind die Elemente so lang, das der Button nur halb sichtbar ist und somit abgeschnitten angezeigt wird. Beispiel','In diesem Quiz geht es um die Wichtigkeit von Umweltschutz. Alle nötigen Informationen, die dich über dieses Thema wissen musst, findest du hier Wenn du aber noch mehr wissen möchtest, klicke gerne andere Inhalte an.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.' );

update question set rightanswer_id = 1 where id = 1;

alter sequence quiz_id_seq restart with  2;
alter sequence question_id_seq restart with 2;
alter sequence answer_id_seq restart with 3;