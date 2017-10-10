CREATE TABLE titulo
(
   idTitulo int auto_increment primary key,
   nomeTitulo varchar(250),
   tipoTitulo varchar(30)
);

insert into titulo values
(default,'General','Militar'),
(default,'Grand Moff','Militar');

select * from titulo;