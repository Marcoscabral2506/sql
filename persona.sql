create database clase14;
use clase14; 
create table Persona(
	 CUIT Integer not null,
     Nombre Varchar (40) not null,
     Apellido Varchar (40) not null,
     F_nacimiento Date not null,
     Ingreso_anual Float not null,
     PRIMARY KEY (CUIT)
);

/*SELECT * FROM Persona;*/
/*select * from Persona where Ingreso_anual > 0;
select * from Persona where Upper(Apellido) LIKE '%PEREZ%';
select * from Persona where Upper(Apellido) LIKE 'P%';  todos los apellidos que empiecen con P
select * from Persona where Ingreso_anual BETWEEN 1000 And 10000;
select * from Persona where F_nacimiento between '20000101' and '20101231'; 
select * from Persona where Ingreso_anual in (20000, 50000,70000); con el in tenes una lista de posibilidades  o NOT IN que es negarlo*/
/*IS NULL / IS NOT NULL nunca = null 
select * from Persona where Nombre is null;
select * from Persona where Ingreso_anual > 0 and upper(Apellido) like 'A%';*/

select * from Persona where Ingreso_anual > 100000 and Apellido not like 'P%' and Apellido not like 'Q%';
select * from Persona where Ingreso_anual > 0 and Nombre like 'A%' and F_nacimiento between '19900101' and '19913112' and Apellido is not null;
select CUIT from Persona  order by 4 asc;/*desc*/
select CUIT, Nombre as N from Persona order by Nombre,N;

select distinct Apellido from Persona;

/*dml*/
insert into Persona (CUIT, Apellido, Nombre,F_nacimiento,Ingreso_anual) values (2222223,'Cabral','Marcos','19900625',10000);

insert into Persona (CUIT, Apellido, Nombre,F_nacimiento,Ingreso_anual) values (234636278,'Virgolini','Franchesco','19990612',30000);

insert into Persona (CUIT, Apellido, Nombre,F_nacimiento,Ingreso_anual) values (23436278,'DUKETO','DIABLO','19600612',30000);

insert into Persona (CUIT, Apellido, Nombre,F_nacimiento,Ingreso_anual) values (23116278,'ACDC','DEMOLEDOR','20100612',30000);


insert into Persona (CUIT, Apellido, Nombre,F_nacimiento,Ingreso_anual) values (2286443,'Fagliano','Pedro','20000612',200000);

insert into Persona (CUIT, Apellido, Nombre,F_nacimiento,Ingreso_anual) values (4376812,'XXXX','Tentacion','19990612',200000);

insert into Persona (CUIT, Apellido, Nombre,F_nacimiento,Ingreso_anual) values (2289034234,'Rodriguez','Carlos','10030612',7000);

select * from Persona where (F_nacimiento < '20000101') and ((Ingreso_anual >=200000) or (Ingreso_anual <=10000)) order by Ingreso_anual asc;

select * 
from Persona 
where ((CUIT like '22%') and (F_nacimiento >= '19900101' and F_nacimiento <='19901231')) 
or ((CUIT like '23%') and (F_nacimiento > '19901231')) order by F_nacimiento asc;








