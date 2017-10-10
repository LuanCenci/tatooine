CREATE TABLE ATORES
(
  idAtor int auto_increment,
  nomeCompleto varchar(250),
  nomeArtistico varchar(200),
  dataNascimento date default "1900-01-01",
  imagemAtor longblob,
  primary key(idAtor) 
);

insert into atores values
(default,'Mark Richard Hamill','Mark Hamill',"1951/09/25",load_file("C:/Users/Win7/Pictures/starwars/atores/markHamil.jpg"));

CREATE TABLE ator_interpreta
(
  ator_idAtor int references atores(idAtor),
  personagem_idPersonagem int references personagem(idPersonagem),
  primary key(personagem_idPersonagem,ator_idAtor)
);

insert into ator_interpreta values (1,1);

create table aparicao
(
   personagem_idPersonagem int references personagem(idPersonagem),
   obra_idObra int references obra (idObra),
   primary key(personagem_idPersonagem,obra_idObra)
);

insert into aparicao values (1,1);
insert into aparicao values (1,2);
insert into aparicao values (1,3),(1,7);