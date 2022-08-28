use sprint1;

create table curso(
	idCurso int primary key auto_increment,
    nome varchar(50),
    sigla char(3),
    coordenador varchar(50)
);

insert into curso (nome, sigla, coordenador) values 
('Matematica','MTM','Alessandra'),
('Inglês','EN','Andreia'),
('Portuga','PT','Carlin');

select coordenador from curso;

select * from curso where sigla like 'MTM';

select * from curso order by nome asc;

select * from curso order by coordenador desc;

select * from curso where nome like 'I%';

select * from curso where nome like '%a';

select * from curso where nome like '_a%';

select * from curso where nome like '%g_';

truncate curso;

drop table curso;