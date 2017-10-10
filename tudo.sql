CREATE TABLE titulo
(
   idTitulo int auto_increment primary key,
   nomeTitulo varchar(250),
   tipoTitulo varchar(30)
);

CREATE TABLE batalha
(
   idBatalha int primary key auto_increment,
   nomeBatalha varchar(250),
   anoBatlha varchar(15),
   tipoBatlha varchar(30),
   objetivoBatalha longtext,
   imagemBatalha longblob
);

insert into batalha values
(default,'Batalha de Yavin','0 ABY','Espacial',
'- Destruição da Base rebelde de Yavin (Império);
 - Destruição da Estrela da Morte',
 null
 );


CREATE table guerra 
(
    idGuerra int primary key auto_increment,
    nomeGuerra varchar(250),
    inicioConflito varchar(15),
    fimConlfito varchar(15),
    causaConflito longtext
);

insert into guerra values 
(default,' Guerra Civil Galáctica','2 ABY','19 DBY',null);

CREATE TABLE comandante_batalha
(
   idPersonagem int references personagem,
   idBatalha  int references batalha,
   primary key(idPersonagem,idBatalha)
);

Create table Guerra_Batalha
(
    idGuerra int references guerra,
    idBatalha int references batalha,
    primary key(idBatalha,idGuerra)
);

Create table guerra_participante
(
    idGuerra int references guerra,
    idOrganization int references organization,
    primary key(idOrganization,idGuerra)
);

CREATE TABLE atores
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


CREATE TABLE especie
(
   idEspecie int auto_increment,
   nomeEspecie varchar(250),
   alturaMedia double,
   distincoesEspecie text,
   planetaNatal int references planeta (idPlaneta),
   primary key(idEspecie)
);

alter table especie add column senciente boolean;

insert INTO especie values 
(default,'Wampa',2.5,' * Dentes afiados e garras
* Chifres curvos ',null,false);

select * from especie;

update especie set senciente = true where idEspecie = 1;
update especie set senciente = true where idEspecie = 2;
update especie set senciente = true where idEspecie = 3;


CREATE TABLE territorio
(
  idTerritorio int auto_increment,
  nomeTerritorio varchar(250),
  primary key(idTerritorio)
);

create table sistema
(
   idSistema int auto_increment,
   nomeSistema varchar(250),
   territorio_idTerritorio int references territorio (idTerritorio),
   primary key(idSistema)
);

CREATE TABLE planeta
(
  idPlaneta int auto_increment,
  nomePlaneta varchar(250),
  climaPlaneta varchar(30),
  tipoPlaneta varchar(30),
  imagemPlaneta longblob,
  sistema_idSistema int references sistema (idSistema),
  primary key(idPlaneta)
);

CREATE TABLE satelite
(
   idSatelite int auto_increment,
   nomeSatelite varchar(250),
   climaSatelite varchar(100),
   tipoSatelite varchar(100),
   imageSatelite longblob,
   planeta_idPlaneta int references planeta (idPlaneta),
   primary key(idSatelite)   
);

CREATE TABLE obra
(
  idObra int auto_increment,
  nomeObra varchar(250),
  lancamentoObra date,
  cronologiaUniverso varchar(10),
  trilogia varchar(20),
  tipoObra varchar(50),
  posterObra longblob,
  primary key(idObra)
);

CREATE TABLE ORGANIZATION
(
  idOrganization int primary key auto_increment,
  nomeOrganization Varchar(300),
  nomeReduzido varchar(150),
  tipoOrganização text,
  fundacaoOrganition varchar(20),
  simboloOrganization  longblob
);

CREATE TABLE PERSONAGEM
(
  idPersonagem integer primary key auto_increment,
  nomePersonagem varchar(250),
  SobrenomePersonagem varchar(250),
  sexoPersonagem char(2),
  DataNasciemto varchar(10),
  AlturaPersonagem double,
  imagemPersonagem longblob
);