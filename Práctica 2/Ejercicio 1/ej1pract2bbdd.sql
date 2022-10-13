create database futbolasir;
use futbolasir;

create table equipos(
id_equipo int(2) not null,
nombre varchar (50) not null,
estadio varchar(50) not null,
aforo int(9) not null,
ano_fundacion int(4) not null,
ciudad varchar (50) not null,
PRIMARY KEY (id_equipo)
);


insert into equipos values (1,"Real Madrid","Santiago Bernabéu",80000,1950,"Madrid"),(2,"F.C. Barcelona","Camp Nou",70000,1948,"Barcelona"),(3,"Valencia C.F","Mestalla",90000,1952,"Valencia"),(4,"Atlético de Madrid","Vicente Calderón",55000,1945,"Madrid");


create table jugadores(
id_jugador int (3) not null,
nombre varchar (50) not null,
fecha_nac date,
demarcacion varchar (50) not null,
internacional int(3) not null,
id_equipo int(2) not null,
PRIMARY KEY (id_jugador),
FOREIGN KEY (id_equipo) REFERENCES equipos (id_equipo)
);


insert into jugadores values (1,"Iker","1980-05-09","Portero",50,1),(2,"Ronaldo","1974-07-07","Delantero",80,1),(3,"Ramos","1998-09-09","Centrocampista",75,1),(4,"Neymar","1999-03-03","Delantero",50,2);


create table partidos(
id_equipo_casa int(2) not null,
id_equipo_fuera int(2) not null,
fecha date not null,
goles_casa int(2) not null,
goles_fuera int(2) not null,
observaciones varchar (200)
);


insert into partidos values (1,2,"2014-03-03",2,1,NULL),(1,3,"2014-04-04",3,1,NULL),(2,3,"2014-04-03",0,4,NULL);

create table goles(
id_equipo_casa int(2) not null,
id_equipo_fuera int(2) not null,
minuto int(2) not null,
descripcion varchar (200) null,
id_jugador int(3) not null,
FOREIGN KEY (id_jugador) REFERENCES jugadores (id_jugador)
);


insert into goles values (1,2,35,"De falta",2),(1,2,70,NULL,2),(1,2,88,NULL,4),(1,3,5,NULL,3),(1,3,10,"De penalty",2);

---3) Añadir una columna nueva a la tabla partidos que indique la hora de comienzo del partido.---
alter table partidos add column hora_comienzo time NULL;
mysql> select * from partidos;
+----------------+-----------------+------------+------------+-------------+---------------+---------------+
| id_equipo_casa | id_equipo_fuera | fecha      | goles_casa | goles_fuera | observaciones | hora_comienzo |
+----------------+-----------------+------------+------------+-------------+---------------+---------------+
|              1 |               2 | 2014-03-03 |          2 |           1 | NULL          | NULL          |
|              1 |               3 | 2014-04-04 |          3 |           1 | NULL          | NULL          |
|              2 |               3 | 2014-04-03 |          0 |           4 | NULL          | NULL          |
+----------------+-----------------+------------+------------+-------------+---------------+---------------+
3 rows in set (0.00 sec)

---7) Añadir una columna a la tabla equipos que almacene el anagrama de dicho equipo.---
alter table equipos add column anagrama varchar(50) NULL;

--- 8)Definir el campo o columna id_equipo en la tabla Jugadores como clave foránea correspondiente a la clave primaria de la tabla Equipos ---
FOREIGN KEY (id_equipo) REFERENCES equipos (id_equipo)

---9) Cambiar el nombre de la columna ano_fundacion de la tabla equipos por fundacion.---
alter table equipos change column ano_fundacion fundacion int(4) not null;





---  DEMOSTRACIÓN
mysql> describe jugadores;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_jugador    | int         | NO   | PRI | NULL    |       |
| nombre        | varchar(50) | NO   |     | NULL    |       |
| fecha_nac     | date        | YES  |     | NULL    |       |
| demarcacion   | varchar(50) | NO   |     | NULL    |       |
| internacional | int         | NO   |     | NULL    |       |
| id_equipo     | int         | NO   | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> describe partidos;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| id_equipo_casa  | int          | NO   |     | NULL    |       |
| id_equipo_fuera | int          | NO   |     | NULL    |       |
| fecha           | date         | NO   |     | NULL    |       |
| goles_casa      | int          | NO   |     | NULL    |       |
| goles_fuera     | int          | NO   |     | NULL    |       |
| observaciones   | varchar(200) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> describe goles;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| id_equipo_casa  | int          | NO   |     | NULL    |       |
| id_equipo_fuera | int          | NO   |     | NULL    |       |
| minuto          | int          | NO   |     | NULL    |       |
| descripcion     | varchar(200) | YES  |     | NULL    |       |
| id_jugador      | int          | NO   | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> describe equipos;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_equipo     | int         | NO   | PRI | NULL    |       |
| nombre        | varchar(50) | NO   |     | NULL    |       |
| estadio       | varchar(50) | NO   |     | NULL    |       |
| aforo         | int         | NO   |     | NULL    |       |
| ano_fundacion | int         | NO   |     | NULL    |       |
| ciudad        | varchar(50) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)





----  DEMOSTRACIÓN CON CAMBIOS ----

mysql> describe jugadores;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_jugador    | int         | NO   | PRI | NULL    |       |
| nombre        | varchar(50) | NO   |     | NULL    |       |
| fecha_nac     | date        | YES  |     | NULL    |       |
| demarcacion   | varchar(50) | NO   |     | NULL    |       |
| internacional | int         | NO   |     | NULL    |       |
| id_equipo     | int         | NO   | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> describe equipos;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_equipo     | int         | NO   | PRI | NULL    |       |
| nombre        | varchar(50) | NO   |     | NULL    |       |
| estadio       | varchar(50) | NO   |     | NULL    |       |
| aforo         | int         | NO   |     | NULL    |       |
| ano_fundacion | int         | NO   |     | NULL    |       |
| ciudad        | varchar(50) | NO   |     | NULL    |       |
| anagrama      | varchar(50) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> describe partidos;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| id_equipo_casa  | int          | NO   |     | NULL    |       |
| id_equipo_fuera | int          | NO   |     | NULL    |       |
| fecha           | date         | NO   |     | NULL    |       |
| goles_casa      | int          | NO   |     | NULL    |       |
| goles_fuera     | int          | NO   |     | NULL    |       |
| observaciones   | varchar(200) | YES  |     | NULL    |       |
| hora_comienzo   | time         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> describe goles;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| id_equipo_casa  | int          | NO   |     | NULL    |       |
| id_equipo_fuera | int          | NO   |     | NULL    |       |
| minuto          | int          | NO   |     | NULL    |       |
| descripcion     | varchar(200) | YES  |     | NULL    |       |
| id_jugador      | int          | NO   | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)






------- DEMOSTRACIÓN DATOS ------
mysql> select * from jugadores;
+------------+---------+------------+----------------+---------------+-----------+
| id_jugador | nombre  | fecha_nac  | demarcacion    | internacional | id_equipo |
+------------+---------+------------+----------------+---------------+-----------+
|          1 | Iker    | 1980-05-09 | Portero        |            50 |         1 |
|          2 | Ronaldo | 1974-07-07 | Delantero      |            80 |         1 |
|          3 | Ramos   | 1998-09-09 | Centrocampista |            75 |         1 |
|          4 | Neymar  | 1999-03-03 | Delantero      |            50 |         2 |
+------------+---------+------------+----------------+---------------+-----------+
4 rows in set (0.00 sec)

mysql> select * from equipos;
+-----------+--------------------+-------------------+-------+---------------+-----------+----------+
| id_equipo | nombre             | estadio           | aforo | ano_fundacion | ciudad    | anagrama |
+-----------+--------------------+-------------------+-------+---------------+-----------+----------+
|         1 | Real Madrid        | Santiago Bernabéu | 80000 |          1950 | Madrid    | NULL     |
|         2 | F.C. Barcelona     | Camp Nou          | 70000 |          1948 | Barcelona | NULL     |
|         3 | Valencia C.F       | Mestalla          | 90000 |          1952 | Valencia  | NULL     |
|         4 | Atlético de Madrid | Vicente Calderón  | 55000 |          1945 | Madrid    | NULL     |
+-----------+--------------------+-------------------+-------+---------------+-----------+----------+
4 rows in set (0.00 sec)

mysql> select * from partidos;
+----------------+-----------------+------------+------------+-------------+---------------+---------------+
| id_equipo_casa | id_equipo_fuera | fecha      | goles_casa | goles_fuera | observaciones | hora_comienzo |
+----------------+-----------------+------------+------------+-------------+---------------+---------------+
|              1 |               2 | 2014-03-03 |          2 |           1 | NULL          | NULL          |
|              1 |               3 | 2014-04-04 |          3 |           1 | NULL          | NULL          |
|              2 |               3 | 2014-04-03 |          0 |           4 | NULL          | NULL          |
+----------------+-----------------+------------+------------+-------------+---------------+---------------+
3 rows in set (0.00 sec)

mysql> select * from goles;
+----------------+-----------------+--------+-------------+------------+
| id_equipo_casa | id_equipo_fuera | minuto | descripcion | id_jugador |
+----------------+-----------------+--------+-------------+------------+
|              1 |               2 |     35 | De falta    |          2 |
|              1 |               2 |     70 | NULL        |          2 |
|              1 |               2 |     88 | NULL        |          4 |
|              1 |               3 |      5 | NULL        |          3 |
|              1 |               3 |     10 | De penalty  |          2 |
+----------------+-----------------+--------+-------------+------------+
5 rows in set (0.00 sec)