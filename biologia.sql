
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