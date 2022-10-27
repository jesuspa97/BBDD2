--0) Crear una base de datos llamada pruebas:
create database pruebas;
use pruebas;

create table profesor(
    DNI VARCHAR(9) not null,
    nombre VARCHAR(15) not null,
    direccion VARCHAR(50) not null,
    telefono INT(9) not null,
    primary key (DNI)
);

create table modulo(
    codigo VARCHAR(4) not null,
    nombre VARCHAR(15) not null,
    primary key(codigo)
);

create table alumno(
    expediente VARCHAR(10) not null,
    nombre VARCHAR(15) not null,
    apellidos VARCHAR(30) not null,
    fecha_de_nacimiento date not null, 
    primary key(expediente)
);

create table Imparte(
    DNI VARCHAR(9) references profesor(DNI),
    codigo VARCHAR(4) references modulo(codigo)
);

create table cursa(
    codigo VARCHAR(4) references modulo(codigo),
    expediente VARCHAR(10) references alumno(expediente)
);


--1) Crear un usuario llamado “alumno” que tenga acceso a las tablas ALUMNO, CURSA,Y
MODULO desde cualquier lugar .

create user alumno@'%' IDENTIFIED BY 'rootroot';
Query OK, 0 rows affected (0.00 sec)

select user,host from mysql.user;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| alumno           | %         |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
5 rows in set (0.00 sec)

GRANT select ON pruebas.alumno TO alumno@'%';
Query OK, 0 rows affected (0.00 sec)

GRANT select ON pruebas.cursa TO alumno@'%';
Query OK, 0 rows affected (0.00 sec)

GRANT select ON pruebas.modulo TO alumno@'%';
Query OK, 0 rows affected (0.00 sec)

show grants for alumno@'%';
+----------------------------------------------------+
| Grants for alumno@%                                |
+----------------------------------------------------+
| GRANT USAGE ON *.* TO `alumno`@`%`                 |
| GRANT SELECT ON `pruebas`.`alumno` TO `alumno`@`%` |
| GRANT SELECT ON `pruebas`.`cursa` TO `alumno`@`%`  |
| GRANT SELECT ON `pruebas`.`modulo` TO `alumno`@`%` |
+----------------------------------------------------+
4 rows in set (0.00 sec)


--2) Crear un usuario llamado “profesor” que tenga permiso de lectura(no puede añadir y
modificar nada) a toda la base de datos.

create user profesor@'%' IDENTIFIED by 'profprof';
Query OK, 0 rows affected (0.00 sec)

select user,host from mysql.user;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| alumno           | %         |
| profesor         | %         |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
6 rows in set (0.00 sec)

GRANT select ON pruebas.* TO profesor@'%';
Query OK, 0 rows affected (0.00 sec)

show grants for profesor@'%';
+-----------------------------------------------+
| Grants for profesor@%                         |
+-----------------------------------------------+
| GRANT USAGE ON *.* TO `profesor`@`%`          |
| GRANT SELECT ON `pruebas`.* TO `profesor`@`%` |
+-----------------------------------------------+
2 rows in set (0.00 sec)


--3) Crear un usuario llamado “profesorasir” con los privilegios anteriores y los privilegios
de inserción y borrado en la tabla.

create user profesorasir@'%' IDENTIFIED by 'profprof';
Query OK, 0 rows affected (0.00 sec)

select user,host from mysql.user;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| alumno           | %         |
| profesor         | %         |
| profesorasir     | %         |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
7 rows in set (0.00 sec)

GRANT SELECT,INSERT,DELETE ON pruebas.* to profesorasir@'%';
Query OK, 0 rows affected (0.00 sec)

show grants for profesorasir@'%';
+-----------------------------------------------------------------+
| Grants for profesorasir@%                                       |
+-----------------------------------------------------------------+
| GRANT USAGE ON *.* TO `profesorasir`@`%`                        |
| GRANT SELECT, INSERT, DELETE ON `pruebas`.* TO `profesorasir`@`%` |
+-----------------------------------------------------------------+
2 rows in set (0.00 sec)


--4) Crear un usuario llamado “adminasir” que tenga todos los privilegios a todas las bases
de datos de nuestro servidor. Este administrador no tendrá la posibilidad de dar
privilegios.

create user adminasir@'%' IDENTIFIED by 'adminadmin';
Query OK, 0 rows affected (0.00 sec)

select user,host from mysql.user;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| adminasir        | %         |
| alumno           | %         |
| profesor         | %         |
| profesorasir     | %         |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
8 rows in set (0.00 sec)

GRANT ALL PRIVILEGES ON *.* to adminasir@'%';
Query OK, 0 rows affected (0.00 sec)

show grants for adminasir@'%';
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for adminasir@%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE, CREATE ROLE, DROP ROLE ON *.* TO `adminasir`@`%`                                                                                                                                                                                                                                                                                                                                                                 |
| GRANT APPLICATION_PASSWORD_ADMIN,AUDIT_ABORT_EXEMPT,AUDIT_ADMIN,AUTHENTICATION_POLICY_ADMIN,BACKUP_ADMIN,BINLOG_ADMIN,BINLOG_ENCRYPTION_ADMIN,CLONE_ADMIN,CONNECTION_ADMIN,ENCRYPTION_KEY_ADMIN,FIREWALL_EXEMPT,FLUSH_OPTIMIZER_COSTS,FLUSH_STATUS,FLUSH_TABLES,FLUSH_USER_RESOURCES,GROUP_REPLICATION_ADMIN,GROUP_REPLICATION_STREAM,INNODB_REDO_LOG_ARCHIVE,INNODB_REDO_LOG_ENABLE,PASSWORDLESS_USER_ADMIN,PERSIST_RO_VARIABLES_ADMIN,REPLICATION_APPLIER,REPLICATION_SLAVE_ADMIN,RESOURCE_GROUP_ADMIN,RESOURCE_GROUP_USER,ROLE_ADMIN,SENSITIVE_VARIABLES_OBSERVER,SERVICE_CONNECTION_ADMIN,SESSION_VARIABLES_ADMIN,SET_USER_ID,SHOW_ROUTINE,SYSTEM_USER,SYSTEM_VARIABLES_ADMIN,TABLE_ENCRYPTION_ADMIN,XA_RECOVER_ADMIN ON *.* TO `adminasir`@`%` |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)


--5) Crear un usuario llamado “superasir” con los privilegios anteriores y con
posibilidad de dar privilegios.

create user superasir@'%' IDENTIFIED BY 'supersuper';
Query OK, 0 rows affected (0.00 sec)

select host,user from mysql.user;
+-----------+------------------+
| host      | user             |
+-----------+------------------+
| %         | adminasir        |
| %         | alumno           |
| %         | profesor         |
| %         | profesorasir     |
| %         | superasir        |
| localhost | mysql.infoschema |
| localhost | mysql.session    |
| localhost | mysql.sys        |
| localhost | root             |
+-----------+------------------+
9 rows in set (0.00 sec)

GRANT ALL PRIVILEGES ON *.* to superasir@'%';
Query OK, 0 rows affected (0.00 sec)

GRANT GRANT OPTION ON *.* to superasir@'%';
Query OK, 0 rows affected (0.00 sec)

show grants for superasir@'%';
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for superasir@%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE, CREATE ROLE, DROP ROLE ON *.* TO `superasir`@`%` WITH GRANT OPTION                                                                                                                                                                                                                                                                                                                                                                 |
| GRANT APPLICATION_PASSWORD_ADMIN,AUDIT_ABORT_EXEMPT,AUDIT_ADMIN,AUTHENTICATION_POLICY_ADMIN,BACKUP_ADMIN,BINLOG_ADMIN,BINLOG_ENCRYPTION_ADMIN,CLONE_ADMIN,CONNECTION_ADMIN,ENCRYPTION_KEY_ADMIN,FIREWALL_EXEMPT,FLUSH_OPTIMIZER_COSTS,FLUSH_STATUS,FLUSH_TABLES,FLUSH_USER_RESOURCES,GROUP_REPLICATION_ADMIN,GROUP_REPLICATION_STREAM,INNODB_REDO_LOG_ARCHIVE,INNODB_REDO_LOG_ENABLE,PASSWORDLESS_USER_ADMIN,PERSIST_RO_VARIABLES_ADMIN,REPLICATION_APPLIER,REPLICATION_SLAVE_ADMIN,RESOURCE_GROUP_ADMIN,RESOURCE_GROUP_USER,ROLE_ADMIN,SENSITIVE_VARIABLES_OBSERVER,SERVICE_CONNECTION_ADMIN,SESSION_VARIABLES_ADMIN,SET_USER_ID,SHOW_ROUTINE,SYSTEM_USER,SYSTEM_VARIABLES_ADMIN,TABLE_ENCRYPTION_ADMIN,XA_RECOVER_ADMIN ON *.* TO `superasir`@`%` WITH GRANT OPTION |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)


--6) Crear un usuario llamado “ocasional” con permiso para realizar consultas(select) en
las tablas.

create user ocasional@'%' IDENTIFIED BY 'ocasional';
Query OK, 0 rows affected (0.00 sec)

select host,user from mysql.user;
+-----------+------------------+
| host      | user             |
+-----------+------------------+
| %         | adminasir        |
| %         | alumno           |
| %         | ocasional        |
| %         | profesor         |
| %         | profesorasir     |
| %         | superasir        |
| localhost | mysql.infoschema |
| localhost | mysql.session    |
| localhost | mysql.sys        |
| localhost | root             |
+-----------+------------------+
10 rows in set (0.00 sec)

GRANT SELECT ON pruebas.* to ocasional@'%';
Query OK, 0 rows affected (0.00 sec)

show grants for ocasional@'%';
+------------------------------------------------+
| Grants for ocasional@%                         |
+------------------------------------------------+
| GRANT USAGE ON *.* TO `ocasional`@`%`          |
| GRANT SELECT ON `pruebas`.* TO `ocasional`@`%` |
+------------------------------------------------+
2 rows in set (0.00 sec)


--7) Cambiar la contraseña de root a “css99”.

SET PASSWORD FOR root@'localhost' ='css99';
Query OK, 0 rows affected (0.00 sec)

mysql -u root -p
Enter password: ********
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)


--8) Quitar los privilegios al usuario “profesorasir”.

REVOKE ALL ON *.* FROM profesorasir@'%';
Query OK, 0 rows affected (0.00 sec)

+------------------------------------------+
| Grants for profesorasir@%                |
+------------------------------------------+
| GRANT USAGE ON *.* TO `profesorasir`@`%` |
+------------------------------------------+
1 row in set (0.00 sec)


--9) Eliminar todos los privilegios al usuario "alumno".

REVOKE ALL ON *.* from alumno@'%';
Query OK, 0 rows affected (0.00 sec)

show grants for alumno@'%';
+------------------------------------+
| Grants for alumno@%                |
+------------------------------------+
| GRANT USAGE ON *.* TO `alumno`@`%` |
+------------------------------------+
1 row in set (0.00 sec)


--10) Muestra los privilegios de usuario alumno.

show grants for alumno@'%';
+------------------------------------+
| Grants for alumno@%                |
+------------------------------------+
| GRANT USAGE ON *.* TO `alumno`@`%` |
+------------------------------------+
1 row in set (0.00 sec)
