create table roteiristas
( 
  idRoterista int auto_increment,
  nomeRoteirista varchar(250),
  dataNascimento date,
  imagemRoteirista longblob,
  primary key(idRoterista)
);

create table roteiro
(
  roteirista_idRoterista int references roteiro (idRoterista),
  obra_idObra int references obra (idObra),
  primary key(roteirista_idRoterista,obra_idObra)
);

drop table roteiro;

insert into roteiristas (nomeRoteirista,dataNascimento) values 
('George Walton Lucas Junior', '1944/05/14'),
('Leigh Douglass Brackett','1915/12/07');

insert into roteiristas (nomeRoteirista,dataNascimento) values 
('Lawrence Edward Kasdan', '1949/01/14'),
('Jeffrey Jacob Abrams','1966/06/27');

insert into roteiristas (nomeRoteirista) values 
('Michael Arndt');


insert into roteiro values 
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),
(3,2),(3,3),(3,7),(2,2),(5,7);