create schema `Agenda_Telefonica`;
use `Agenda_Telefonica`;

create table `Agenda_Telefonica`.`contacte`(
`id` int not null auto_increment,
`nume` varchar(45) not null,
`prenume` varchar(45) ,
`data_nastere` varchar(45) ,
`companie` varchar(45) ,
`tel_mobil` varchar(45) not null,
`tel_fix` varchar(45) ,
`e_mail` varchar(45) ,

primary key (`id`));

select * from Agenda_Telefonica.contacte;

SET @@global.time_zone = '+00:00';
SET @@session.time_zone = '+00:00';

SELECT @@global.time_zone, @@session.time_zone;



alter table contacte modify column data_nastere varchar(45);

INSERT INTO contacte(id,nume,prenume,data_nastere,companie,tel_mobil,tel_fix,e_mail) Values(1,"wef",null,null,null,123123,null,null);
drop table contacte;

select max(id) from contacte;

update contacte set id=2222 where id=111111;

delete from contacte where id=4;

select * from contacte where nume like "c%";

select * from contacte;




