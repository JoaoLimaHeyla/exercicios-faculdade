create database sprint1;

use sprint1;

create table Musica(
idMusica int primary key,
titulo varchar (40),
artista varchar(40),
genero varchar(40));

insert into Musica values
	(1,'Like That', 'Doja Cat', 'POP'),
    (2,'Say So', 'Doja Cat', 'POP'),
    (3,'Saturday Love', 'Cherelle', 'Funk'),
    (4,'The Right Time', 'Cherelle', 'Funk'),
    (5,'Savoir Fire', 'Chic', 'R&B'),
    (6,'Le freak', 'Chic', 'Funk'),
    (7,'Im in love', 'Evellyn King', 'Disco');
    
select * from Musica;

alter table Musica add column curtidas int;

update Musica set curtidas = 50 where idMusica = 1 or idMusica = 2 or idMusica = 3 or idMusica = 4 or idMusica = 5 or idMusica = 6 or idMusica = 7;

alter table Musica modify column artista varchar(80);

update Musica set curtidas = 30 where idMusica = 1;

update Musica set curtidas = 40 where idMusica = 2 or idMusica = 3;

update Musica set curtidas = 10 where idMusica = 5;

delete from Musica where idMusica = 4;

select * from Musica where genero <> 'Funk';

select * from Musica where curtidas >= 20; 

desc Musica;

truncate Musica;