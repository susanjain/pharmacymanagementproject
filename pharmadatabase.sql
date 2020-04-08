create schema first;

create database project;
use project;
create table medicinedetails (medId int, medName varchar(20), units int, pricepu int, manufacDate varchar(20), expDate varchar(20), manufacComp varchar(30));
insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (1150, 'CEPAL', 500, 25, '2020-02-05', '2023-03-04', 'Caplet');

insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (1134, 'MEDOMOL', 350, 23, '2020-05-01', '2024-03-01', 'Medopharm');

insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (21560, 'DOLO 650', 200, 20, '2019-05-07', '2022-03-09', 'Micro Labs');

insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (2278, 'CALIPAR', 500, 25, '2020-09-24', '2022-12-15', 'Calibar');

insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (11789, 'BABYGESIC', 150, 95, '2020-11-21', '2022-07-25', 'Meyer Organics');

insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (1167, 'BETACARD', 135, 69, '2019-09-27', '2021-08-25', 'Meyer Organics');

insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (1109, 'MEGLIPRIDE', 99, 49, '2019-07-11', '2021-09-06', 'Lifecare');
insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (2128, 'CAPRIL', 201, 80, '2018-01-12', '2020-05-11', 'Cutigen');
insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (7564, 'EMPERIDE', 78, 39, '2019-07-04', '2020-02-08', 'Emcure');
insert into medicinedetails(medId, medName ,units ,pricepu, manufacDate, expDate, manufacComp) values (5439, 'CADPRES', 176, 36, '2020-02-01', '2023-01-02', 'Cadila Pharmaceuticals');
select * from medicinedetails;

alter table medicinedetails modify column units varchar(10);
alter table medicinedetails modify column pricepu varchar(10);
alter table medicinedetails modify column manufacDate date;
alter table medicinedetails modify column expDate date;
drop table billdetails;
create table billdetails(billNo int,billDate varchar(20),medId int,medName varchar(20),manufacComp varchar(30),units int,pricepu int,tax double(8,3),total double(10,3));

insert into billdetails(billNo,billDate,medId,medName,manufacComp,units,pricepu,tax,total) values (1,'06-04-2020',1109,'MEGLIPRIDE','Lifecare',5,49,(((pricepu*units)*5)/100) ,((pricepu*units)+tax));

insert into billdetails(billNo,billDate,medId,medName,manufacComp,units,pricepu,tax,total) values (2,'07-04-2020',2128, 'CAPRIL','Cutigen',5,80,(((pricepu*units)*5)/100),((pricepu*units)+tax));
                                                                                                                                                                                        select * from billdetails;
alter table billdetails modify column tax int;
alter table billdetails modify column total int;
insert into billdetails(billNo,billDate,medId,medName,manufacComp,units,pricepu) values (3,'07-04-2020',7564, 'EMPERIDE','Emcure',2,39);

update billdetails set tax=(((pricepu*units)*5)/100) where billNo IS NOT NULL;

update billdetails set total=((pricepu*units)+tax) where billNo IS NOT NULL;

select * from billdetails;
