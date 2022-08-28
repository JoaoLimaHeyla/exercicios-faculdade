create database sprint1;

use sprint1;

create table Atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int);

insert into Atleta values
	(1,'Juliano','Natação',4),
    (2,'Susan','Corrida',2),
    (3,'Patrissia','Tiro',6),
    (4,'Ribeiro','Basquete',2),
    (5,'Angela','Skate',5);
    
select * from Atleta;

update Atleta set qtdMedalha = 2 where idAtleta = 1;

update Atleta set qtdMedalha = 3 where idAtleta = 2 or idAtleta = 3;

update Atleta set qtdMedalha = 5 where idAtleta = 4;

alter table Atleta add column dtNasc date;

update Atleta set dtNasc = '2004-12-10' where idAtleta = 1;
-- São gêmeos 
update Atleta set dtNasc = '2005-04-19' where idAtleta = 2 or idAtleta = 3 or idAtleta = 4 or idAtleta = 5;
    
delete from Atleta where idAtleta = 5;

select * from Atleta where modalidade <> 'Natação';

select * from atleta where qtdMedalha >= 3;

alter table Atleta modify column modalidade varchar(60);

truncate table Atleta; 