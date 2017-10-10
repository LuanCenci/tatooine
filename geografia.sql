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

