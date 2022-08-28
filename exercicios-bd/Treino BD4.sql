create database sprint1;

use sprint1;
create table Professor(
idProfessor int primary key,
nome varchar(40),
especialidade varchar(40),
dtNasc date);

insert into Professor values
('1','Valdir','Matemática', '1983-10-13'),
('2', 'Helena', 'Português', '1990-12-29'),
('3', 'Carolina', 'Inglês', '1968-05-30'),
('4', 'Marcelo', 'História', '1980-06-20'),
('5', 'Eduardo', 'Sociologia', '1990-01-09'),
('6', 'Mariana', 'Filosofia', '1989-04-01');

select * from Professor;

alter table Professor add column funcao varchar(50);

alter table Professor add constraint chkfuncao check (funcao in('monitor', 'assistente', 'titular')); 

update Professor set funcao = 'titular' where idProfessor = 1;

update Professor set funcao = 'assistente' where idProfessor = 2;

update Professor set funcao = 'monitor' where idProfessor = 3;

update Professor set funcao = 'titular' where idProfessor = 4;

update Professor set funcao = 'titular' where idProfessor = 5;

update Professor set funcao = 'titular' where idProfessor = 6;

insert into Professor (idProfessor, nome, especialidade, dtNasc) values
('7','Andressa','Geografia','1980-04-29');

delete from Professor where idProfessor = 5;

select * from Professor where funcao like 'titular';

select especialidade, dtNasc from Professor where funcao like 'monitor';
-- Não sei como tá vivo
update Professor set dtNasc = '1920-04-08' where idProfessor = 3;

truncate Professor;
