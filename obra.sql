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