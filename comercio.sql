create database if not exists `comercio` default character set utf8 collate utf8_spanish_ci;

use `comercio`;

drop table if exists `productos`;
drop table if exists `grupos`;

-- ----------------------------------------------
-- Tabla Grupos
-- ---------------------------------------------
create table if not exists `grupos`(
  `idgrupo` int(2) primary key,
  `nombre` varchar(25),
  `logo` varchar(50)
) engine=InnoDB default character set utf8 collate utf8_spanish_ci;

-- ----------------------------------------------
-- Tabla Productos
-- ---------------------------------------------
create table if not exists `productos` (
    `idproducto` int(4) primary key,
    `grupo` int(2),
    `nombre` varchar(30),
    `descripcion` varchar(150),
    `precio` float not null,
    `descuento` int(2),
    `imagen` varchar(50),
    `stock` int(3),
    constraint `fkgrupo` foreign key (`grupo`)
        references `grupos` (`idgrupo`)
) engine=InnoDB default character set utf8 collate utf8_spanish_ci;


-- ----------------------------------------------
-- inserts Grupos
-- ---------------------------------------------
insert into `grupos` (`idgrupo`,`nombre`,`logo`) values
    (11,'Bisuteria','logoBisuteria.jpg'),
    (12,'Bolsos','logoBolsos.jpg'),
    (14,'Estuches','logoEstuches.jpg'),
    (17,'Textil Complementos','logoTexComplementos.jpg'),
    (22,'Decoración','logoDecoracion.jpg'),
    (42,'Muñecos y Peluches','logoPeluches.jpg'),
    (43,'Textil Infantil','logoTexInfantil.jpg'),
    (51,'Camisetas','logoCamisetas.jpg');

-- ----------------------------------------------
-- inserts Productos
-- ---------------------------------------------
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1111,11,'Brazalete centro decorado','Brazalete Cuero',15,0,'brazalete-centro.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1112,11,'Brazalete circulos multicolor','Brazalete Cuero',15,10,'brazalete-circulos.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1113,11,'Colgante tres circulos','Bisuteria reciclada',21,0,'colgante-3-circulos.jpg',20);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1114,11,'Colgante circulo','Bisuteria reciclada',21,10,'colgante-circulo.jpg',2);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1115,11,'Colgante estrella','Bisuteria reciclada',21,0,'colgante-estrella.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1116,11,'Anillo multicolor','Anillo cuero',10,5,'anillo-multicolor.jpg',20);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1211,12,'Bolso multicolor','Bolso reciclado',17.50,0,'bolso-multicolor.jpg',2);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1212,12,'Mochila kayi','Mochila saco',25,10,'mochila-kayi.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1213,12,'Mochila lume','Mochila saco',35,10,'mochila-lume.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1214,12,'Mochila rayas','Mochila saco',25,0,'mochila-rayas.jpg',20);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1215,12,'Riñonera lume','Riñonera reciclada',25,0,'rinonera-lume.jpg',20);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1411,14,'Estuche kayi','Estuche reciclado',17,10,'estuche-kayi.jpg',20);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1412,14,'Estuche kiko','Estuche reciclado',17,0,'estuche-kiko.jpg',2);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1413,14,'Estuche cuadros','Estuche reciclado',17,0,'estuche-cuadros.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1414,14,'Estuche redondo kayi','Estuche reciclado redondo',10,10,'estuche-redondo-kayi.jpg',100);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1415,14,'Estuche redondo cuadros','Estuche reciclado redondo',10,0,'estuche-redondo-cuadros.jpg',25);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1711,17,'Minifalda kayi','Minifalda reciclada',45,10,'minifalda-kayi.jpg',2);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1712,17,'Foulard kiko','Foulard reciclado',20,5,'foulard-kiko.jpg',100);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1713,17,'Delantal kiko','Delantal reciclado',25,10,'delantal-kiko.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (1714,17,'Toalla kiko','Toalla reciclada',30,10,'toalla-kiko.jpg',20);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4211,42,'Elefante','Muñeco reciclado',18,0,'elefante.jpg',5);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4212,42,'Jirafa','Muñeco reciclado',18,5,'jirafa.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4213,42,'Jirafa Monster','Muñeco reciclado',25,10,'jirafa-monster.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4214,42,'Leon','Muñeco reciclado',15,0,'leon.jpg',25);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4215,42,'Muñeca','Muñeco reciclado',15,5,'muneca.jpg',2);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4216,42,'Rinoceronte','Muñeco reciclado',15,0,'rinoceronte.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4311,43,'Babero kayi','Babero reciclado',19,10,'babero-kayi.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4312,43,'Babero kiko','Babero reciclado',19,5,'babero-kiko.jpg',100);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4313,43,'Babero pat','Babero reciclado',19,0,'babero-pat.jpg',50);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (4314,43,'Toalla infantil kiko','Toalla reciclada',22,10,'toalla-infantil-kiko.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (2211,22,'Mantel elefantes','Mantel reciclado',30,10,'mantel-elefantes.jpg',6);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (2212,22,'Mantel kayi','Mantel reciclado',30,0,'mantel-kayi.jpg',20);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (2213,22,'Cojin pat','Cojin reciclado',20,5,'cojin-pat.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (2214,22,'Cojin elefante','Cojin reciclado',20,10,'cojin-elefante.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (2215,22,'Colcha pat','Colcha reciclada',40,5,'colcha-pat.jpg',200);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (2216,22,'Colcha elefante','Colcha reciclada',40,10,'colcha-elefante.jpg',10);
insert into `productos` (`idproducto`,`grupo`,`nombre`,`descripcion`,`precio`,`descuento`,`imagen`,`stock`) values (2217,22,'Hamaca lume','Hamaca reciclada',50,5,'hamaca-lume.jpg',200);
