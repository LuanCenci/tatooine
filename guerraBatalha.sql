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