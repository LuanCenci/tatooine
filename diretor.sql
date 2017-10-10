CREATE TABLE diretores 
(
  idDiretor int auto_increment,
  nomeDiretor varchar(250),
  dataNascimento date,
  imagemDiretor longblob,
  primary key(idDiretor)
);

create table direcao(
  diretor_idDiretor int references diretores (idDiretor),
  obra_idObra int references obra (idObra),
  primary key (diretor_idDiretor,obra_idObra)
);

insert into diretores (nomeDiretor,dataNascimento) values 
('George Walton Lucas Junior', '1944/05/14');

insert into diretores (nomeDiretor,dataNascimento) values 
('Irvin Kershner','1923/04/29'),
('Richard Marquand','1937/09/22'),
('Jeffrey Jacob Abrams','1966/06/27');

select idObra, nomeObra from obra where tipoObra = 'Filme';

insert into direcao values
(1,1),
(1,4),
(1,5),
(1,6),
(2,2),
(3,3),
(4,7);