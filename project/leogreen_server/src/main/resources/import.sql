insert into quiz(id, topic) values (1, 'TestQuiz');
insert into question(id, title, quiz_id) values (1, 'What is the best quiz website?', 1);
insert into answer(id, answer, question_id) values (1, 'Leogreen', 1);
insert into answer(id, answer, question_id) values (2, 'Kahoot', 1);

update question set rightanswer_id = 1 where id = 1;

alter sequence quiz_id_seq restart with  2;
alter sequence question_id_seq restart with 2;
alter sequence answer_id_seq restart with 3;