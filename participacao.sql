create table participacao
(
   ator_idAtor int references atores (idAtor),
   obra_idObra int references obra (idObra),
   primary key (ator_idAtor,obra_idObra)
);

select * from atores;