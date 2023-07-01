create database Hospital;
use Hospital;
create table patient(patient_Id int, Name varchar(20),address varchar(40),DOB date,mobilenumber varchar(10));
insert into patient(patient_Id,Name,address,DOB,mobilenumber)values(1,'Patient 1','Narasaraopet','2023-06-30','9988765431');
insert into patient(patient_Id,Name,address,DOB,mobilenumber)values(2,'Patient 2','Guntur','2023-05-30','9988567431');
insert into patient(patient_Id,Name,address,DOB,mobilenumber)values(3,'Patient 3','Vijayawada','2023-04-15','8866765431');
insert into patient(patient_Id,Name,address,DOB,mobilenumber)values(4,'Patient 4','mangalagiri','2024-02-14','9986587431');
insert into patient(patient_Id,Name,address,DOB,mobilenumber)values(5,'Patient 5','Ongole','2023-02-14','9986583471');
select * from patient;
alter table patient add constraint pk primary key(patient_Id);
create table medicalhistory(patient_id int,diseasename varchar(20),surgeries varchar(20),medication varchar(20));
insert into medicalhistory values(1,'Brain tumor','radio therapy','Temozolomide');
insert into medicalhistory values(1,'Appendicitis','Appendectomy','ceftriaxone');
insert into medicalhistory values(2,'Appendicitis','Appendectomy','metronidazole');
insert into medicalhistory values(3,'Gallstones','Cholecystectomy','Ursodeoxycholic acid ');
insert into medicalhistory values(4,'Hernia','Hernia repair surgery','acetaminophen');
insert into medicalhistory values(5,'Cataracts','Surgical Procedure','antibiotics');
select * from medicalhistory;
create table labresultstable(patient_id int,bloodtest varchar(10),urinetest varchar(20));
insert into labresultstable values(1,'Normal','good');
insert into labresultstable values(2,'abnormal','bad');
insert into labresultstable values(3,'Normal','good');
insert into labresultstable values(4,'abnormal','bad');
insert into labresultstable values(5,'Normal','good');
create table medicines(patient_id int,medicines varchar(20),dosage int,frequency int);
insert into medicines values(1,'Acetaminophen',300,3);
insert into medicines values(2,'Amoxicillin',400,4);
insert into medicines values(3,'Atorvastatin',200,2);
insert into medicines values(4,'Omeprazole',200,3);
insert into medicines values(5,'Metformin',300,2);
select * from medicines;
create table outcome(patient_id int,readmission varchar(1),medication varchar(1));
insert into outcome values(1,'Y','Y');
insert into outcome values(2,'N','N');
insert into outcome values(3,'Y','N');
insert into outcome values(4,'N','N');
insert into outcome values(5,'N','Y');
select * from outcome;







