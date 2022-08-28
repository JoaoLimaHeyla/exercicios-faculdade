create database sprint1;

use sprint1;

create table Filme (
idFilme int primary key,
titulo varchar (40),
genero varchar (40),
diretor varchar (40)
);

insert into Filme values
(1, 'Clube da Luta', 'drama', 'David Fincher'),
(2, 'Pulp Fiction', 'drama', 'Quentin Tarantino'),
(3, 'Creep Show', 'terror', 'George Romeu'),
(4, 'O Iluminado', 'terror', 'Stanley Kubrick'),
(5, 'Laranja Mecânica', 'drama', 'Stanley Kubrick'),
(6, 'Dragão Vermelho', 'thriller', 'Brett Ratner'),
(7, 'Silêncio dos Inocentes', 'thriller', 'Jonathan Demme');

select * from Filme;

alter table Filme add column protagonista varchar(50);

update Filme set protagonista = 'John Travolta' where idFilme = 1 or idFilme = 2 or idFilme = 3 or idFilme = 4 or idFilme = 5 or idFilme = 6 or idFilme = 7;

alter table Filme modify column diretor varchar(150);

update Filme set diretor = 'Jorginha do dogão' where idFilme = 5;

update Filme set diretor = 'Lucah' where idFilme = 2 or idFilme = 7;

update Filme set diretor = 'Jorginha do dogão' where idFilme = 6;

delete from Filme where idFilme = 3;

select * from Filme where genero <> 'drama';

select * from Filme where genero = 'thriller';

desc Filme;

truncate Filme;
