BEGIN TRANSACTION;
DROP TABLE IF EXISTS "clientes";
CREATE TABLE IF NOT EXISTS "clientes" (
	"Cedula"	TEXT,
	"Nombre"	TEXT NOT NULL,
	"Region"	TEXT NOT NULL,
	"Edad"	 NOT NULL,
	PRIMARY KEY("Cedula")
);
DROP TABLE IF EXISTS "cuentas";
CREATE TABLE IF NOT EXISTS "cuentas" (
	"Num_cuenta"	TEXT,
	"Cedula_cliente"	TEXT NOT NULL,
	"Estado"	INTEGER NOT NULL,
	"Saldo"	INTEGER NOT NULL,
	"Fecha_apertura"	INTEGER NOT NULL,
	PRIMARY KEY("Num_cuenta"),
	FOREIGN KEY("Cedula_cliente") REFERENCES "clientes"("Cedula")
);
DROP TABLE IF EXISTS "clave_dinamica";
CREATE TABLE IF NOT EXISTS "clave_dinamica" (
	"cedula_cliente"	TEXT NOT NULL,
	"correo"	TEXT NOT NULL,
	"celular"	TEXT NOT NULL,
	FOREIGN KEY("cedula_cliente") REFERENCES "cuentas"("Cedula_cliente")
);
INSERT INTO "clientes" ("Cedula","Nombre","Region","Edad") VALUES ('11111111','Tom B. Erichsen','Centro',35),
 ('22222222','Natalia Mendoza','Sur',24),
 ('33333333','Carlos Sanchez','Centro',35),
 ('44444444','Manuel Garcia','Norte',32),
 ('55555555','Silvia Cardona','Centro',35),
 ('66666666','Antonio Guitierrez','Norte',35),
 ('77777777','Camilo Sanchez','Sur',29),
 ('88888888','Miguel Campusano','Centro',38),
 ('99999999','Luisa Alvarez','Centro',35),
 ('25252525','Paula Gomez','Sur',20),
 ('35353535','Cesar velasquez','Norte',40),
 ('24242424','Mario Montoya','Centro',25),
 ('17171717','Carolina Suarez','Sur',27),
 ('21212121','Diana Herrera','Centro',32),
 ('12121212','Camila Gil','Norte',21);
INSERT INTO "cuentas" ("Num_cuenta","Cedula_cliente","Estado","Saldo","Fecha_apertura") VALUES ('111222333991','11111111',1,1245,20180510),
 ('111222333992','11111111',1,8765,20190318),
 ('111222333993','11111111',1,98765,20190318),
 ('111222333994','22222222',0,65445,20180510),
 ('111222333995','22222222',1,45678,20200813),
 ('111222333996','33333333',0,43212,20190318),
 ('111222333997','44444444',0,9834,20180510),
 ('111222333998','44444444',1,43256,20200813),
 ('111222333999','44444444',1,5434,20210101),
 ('111222333919','44444444',1,7654,20210101),
 ('111222333929','55555555',0,6523,20211125),
 ('111222333939','66666666',0,94567,20180522),
 ('111222333949','66666666',1,54765,20180911),
 ('111222333959','66666666',1,6545,20180911),
 ('111222333969','77777777',0,9123,20180911),
 ('111222333979','88888888',0,3452,20200813),
 ('111222333989','99999999',1,7634,20180522),
 ('111222333199','25252525',1,1234,20190320),
 ('111222333299','25252525',1,98533,20190320),
 ('111222333399','25252525',1,65412,20180522),
 ('111222333499','25252525',1,65312,20211125),
 ('111222333599','25252525',0,85432,20190320),
 ('111222333699','35353535',0,76213,20210101),
 ('111222333799','24242424',1,5432,20200625),
 ('111222333899','17171717',1,6543,20200627),
 ('111222331399','21212121',1,8743,20190722),
 ('111222332399','12121212',1,3421,20190721),
 ('111222334399','12121212',1,85243,20200621),
 ('111222335399','12121212',0,7532,20211125);
INSERT INTO "clave_dinamica" ("cedula_cliente","correo","celular") VALUES ('11111111','tom@bancolombia.com.co','3103206565'),
 ('22222222','Natalia@bancolombia.com.co','3103206569'),
 ('33333333','Carlos@bancolombia.com.co','3103206565'),
 ('44444444','Manuel@bancolombia.com.co','3103206554'),
 ('55555555','Silvia@bancolombia.com.co','3103206565'),
 ('66666666','Antonio@bancolombia.com.co','3103206521'),
 ('35353535','Cesar@bancolombia.com.co','3103206511'),
 ('24242424','Mario@bancolombia.com.co','3103206522'),
 ('17171717','Carolina@bancolombia.com.co','3103206533'),
 ('21212121','Diana@bancolombia.com.co','3103206555');
COMMIT;
