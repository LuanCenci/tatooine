Create table localidade
(
   idLocalidade int auto_increment,
   idPlaneta int references planeta (idPlaneta),
   idSatelite int references satelite (idSatelite),
   primary key(idLocalidade)
);

insert into localidade values 
(default,1,1),
(default,1,1);

alter table batalha add column idLocalidade int;

alter table batalha add constraint foreign key (idLocalidade) references localidade ;