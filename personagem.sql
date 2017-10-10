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

insert into personagem values
(default,'Luke','Skywalker','M','19 ABY',1.72,load_file('C:/Users/Win7/Pictures/starwars/personagem/009.jpg'));

insert into personagem values
(default,'Wilhuff','Tarkin','M','64 ABY',1.80,load_file('C:/Users/Win7/Pictures/starwars/personagem/Tarkin.jpg'));

select * from personagem;
