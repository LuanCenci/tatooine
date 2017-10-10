CREATE TABLE ORGANIZATION
(
  idOrganization int primary key auto_increment,
  nomeOrganization Varchar(300),
  nomeReduzido varchar(150),
  tipoOrganização text,
  fundacaoOrganition varchar(20),
  simboloOrganization  longblob
);

Drop Table organization;

insert into ORGANIZATION values 
(default,'Aliança para Restauração da República','Aliança Rebelde','- Paramilitar,
- Politica,','19 ABY',load_file('C:/Users/Win7/Pictures/starwars/organization/Rebel_Alliance.png')); 

insert into ORGANIZATION values 
(DEFAULT,'Republica Galactica', 'Republica','- Politica,
- Govenamental,
- Constituida','25.053 ABY',load_file('C:/Users/Win7/Pictures/starwars/organization/Republica.svg.png')),
(DEFAULT,'Senado Galactico','Senado',
'- Politica,
- Govenamental,
- Constituida',
'25.053 ABY',load_file('C:/Users/Win7/Pictures/starwars/organization/Senado.svg.png')),
(DEFAULT,'Imperio Galactico','Imperio'
,'- Politica,
- Govenamental,
- Constituida'
,'19 ABY',load_file('C:/Users/Win7/Pictures/starwars/organization/Imperio.jpg')),
(DEFAULT,'Ordem Jedi','Ordem Jedi',
'- Politica,
- Religiosa ,',
'25.000 ABY',load_file('C:/Users/Win7/Pictures/starwars/organization/Jedi_symbol.png')),
(DEFAULT,'Federação Galáctico do Comercio',
'- Politica,
- Economica','Federação Comércio','350 ABY', load_file('C:/Users/Win7/Pictures/starwars/organization/federation.jpg')),
(DEFAULT,'Confederação de Sistemas Independentes','Separatistas','
- Politica,
- Paramilitar',
'24 ABY',
load_file('C:/Users/Win7/Pictures/starwars/organization/CSI.svg.png')),

(DEFAULT,'Primera Ordem','Primeira Ordem',
'- Politica,
-Militar'
,'4 DBY',load_file('C:/Users/Win7/Pictures/starwars/organization/First_Order.png')),
(DEFAULT,'Nova Republica Galactica', 'Nova Republica',
'- Politica,
- Govenamental,
- Constituida','4 DBY',load_file('C:/Users/Win7/Pictures/starwars/organization/NovaRepublica.png'));
