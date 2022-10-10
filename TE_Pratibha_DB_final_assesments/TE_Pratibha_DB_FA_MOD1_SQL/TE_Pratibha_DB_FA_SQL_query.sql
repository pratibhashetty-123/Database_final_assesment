---Fianl assesment---
---- Creating tables as per normalization for Healthcare domain:----
create table Hospital
(
Hospital_city varchar(50),
Hospital_Adress varchar(50),
Department_id int primary key,
)

create table Doctors
(
Doctor_id int primary key,
Doctor_Name varchar(50),
Department_id int,
Doctor_Mobile_Number bigint
)

create table patient
(
Patient_Id int primary key,
Patient_Name varchar(50),
Patient_Address varchar(50),
Disease_Identified varchar(50),
Doctor_id int,
patient_Mobile_Number bigint
)
---inserting values to hospital tabale---
insert into Hospital values ('manglore','stateBank',101),
('manglore','mainroad',103),
('banglore','2nd cross',102),
('banglore','Rajajinagar',104),
('banglore','Ramangar',105),
('Udupi','kundapur',107),
('Baglkot','terdal',111),
('banglore','vijanagar',121),
('banglore','jaynagar',141),
('bijapur','ramnagar',151),
('Shimogga','Badravathi',171),
('manglore','moodbidre',131),
('Belgavi','Jayanagar',181),
('banglore','gandinagar',161),
('Hubbali','2nd cross',198),
('Bagalkot','jamkhandi',134),
('banglore','yashwanthpura',144)

------adding foreign key reference---
Alter table Doctors 
add constraint FK_Department_id
foreign key(Department_id)
references Hospital

Alter table patient  
add constraint FK_Doctor_id
foreign key(Doctor_id)
references Doctors

----adding notnull constraint--
ALTER TABLE patient 
alter column Patient_Name varchar(50) NOT NULL

----inserting values to docotor table---
insert into Doctors values(333,'manoj',101,54673832),
(301,'sujaya',103,94673832),
(302,'mahesh',104,86673832),
(303,'swathi',105,84643832),
(304,'bavana',107,984673832),
(305,'niti',111,990673832),
(306,'pooja',121,74673832),
(307,'bhavya',151,65673832),
(308,'sakshi',171,93673832),
(309,'neha',131,67339832),
(311,'kriti',111,994673832),
(332,'anu',105,54673657)

---insering value to patient table---

insert into patient values(491,'John','Mangalore','Dengue',333,783546596),
(401,'Maggi','Bangalore','Leprosy',301,64758493652),(402,'Julie','Moodbidri','Chikungunya',305,94758493652),
(403,'Kris','Mumbai','Malaria',302,29389921),(404,'Jia','Venur','Rabies',304,78654332),(405,'Mia','Chikmangalore','Snakebite',307,564356778),
(406,'Sheela','Moodbidri','Trachoma',303,3456728),(407,'Ravi','Mangalore','Leprosy',307,56432467),(408,'Malkova','Ujire','Scabies',304,7864479),
(409,'Mel','Venur','Trematodiases',305,2678345),(410,'Manoj','Belthangady','Dengue',301,7485631),(411,'Randy','Pune','Chikungunya',303,675378909),
(412,'Jorge','Mangalore','Rabies',306,563728),(413,'Lavanya','Ujire','Scabies',308,7890654),(456,'Vishal','Mangalore','Leprosy',302,7890964),
(415,'Manish','Belthangady','Snakebite',307,5623467),(416,'Rishab','Mangalore','Snakebite',307,789065),(417,'Ria','Mumbai','Dengue',301,9076543),
(418,'Raj','Ujire','Scabies',309,6754328),(419,'Anviraj','Bangalore','Trematodiases',305,785546),(420,'Shashi','Bangalore','Trematodiases',308,6789575),
(421,'Chandra','Bangalore','Dengue',306,26782925),(422,'Desmond','Pune','Trachoma',307,568292),(423,'Kiran','Venur','Dengue',311,7654390),
(424,'Laxmi','Pune','Chikungunya',307,2678854),(425,'Ashish','Chikmangalore','Malaria',307,678956),(426,'Mohan','Belthangady','Rabies',309,890054332)



---join opertion ---
----inner join opertion to doctor and patient table---
select H.Patient_Id ,H.Patient_Name ,H.Patient_Address,H.Disease_Identified,H.Doctor_id,
Doc.Doctor_name,Doc.Department_id
from patient  as H
inner join Doctors as Doc
on H.Doctor_id=Doc.Doctor_id

-------right join opertion to doctor and patient table
select H.Patient_Id ,H.Patient_Name ,H.Patient_Address,H.Disease_Identified,H.Doctor_id,
Doc.Doctor_name,Doc.Department_id
from patient  as H
right join Doctors as Doc
on H.Doctor_id=Doc.Doctor_id

-------full join opertion to doctor and patient table
select H.Patient_Id ,H.Patient_Name ,H.Patient_Address,H.Disease_Identified,H.Doctor_id,
Doc.Doctor_name,Doc.Department_id
from patient  as H
full join Doctors as Doc
on H.Doctor_id=Doc.Doctor_id

-------cross join opertion to doctor and patient table
select H.Patient_Id ,H.Patient_Name ,H.Patient_Address,H.Disease_Identified,H.Doctor_id,
Doc.Doctor_name,Doc.Department_id
from patient  as H
cross join Doctors as Doc

---creating views---
create view new_healthcare
as select * from doctors h 

select * from new_healthcare 

----creting view using join opertion
create view healthcare
as
select H.Patient_Id ,H.Patient_Name ,H.Patient_Address,H.Disease_Identified,H.Doctor_id,
Doc.Doctor_name,Doc.Department_id
from patient  as H
full join Doctors as Doc
on H.Doctor_id=Doc.Doctor_id
select * from healthcare

---CREATING TABLE FOR  CINEMA_TICKET
create table DFA_CINEMA_TICKET
(
Film_Type varchar(100),
film_code varchar(100),
cinema_code	varchar(100),
total_sales	int,
tickets_sold int,	
tickets_out	 int,
show_time time,	
occu_perc varchar(100),
ticket_price float,	
ticket_use	int,
capacity	varchar(100),
show_date	date,
show_day varchar(100)
) 
----DML COMMONDS--
--- INSERTING DATA INTO THE TABLE-- 
INSERT INTO DFA_CINEMA_TICKET VALUES 
('ROMANCE','511','R13',3000,100,20,'13:30','34',300,20,'590','2022-04-05','monday'),
('ACTION','161','R21',5000,400,20,'10:30','24',300,20,'590','2022-06-04','monday'), 
('ACTION','181','R16',3000,600,20,'13:30','34',300,20,'590','2022-10-04','monday'), 
('ROMANCE','118','R21',6000,100,20,'10:30','34.4',300,20,'590','2022-05-05','monday'), 
('ROMANCE','198','R61',3000,100,20,'18:30','36',300,20,'590','2022-05-04','monday'), 
('ROMANCE','201','R81',6000,800,20,'13:30','34.2',300,20,'590','2022-06-24','monday'), 
('ACTION','504','R17',2000,100,20,'10:30','24',400,20,'590','2022-07-08','monday'), 
('ROMANCE','639','R16',7000,500,20,'18:30','34',600,20,'590','2022-09-09','monday'),
('ACTION','116','R18',9000,100,20,'13:30','54.4',600,20,'590','2022-04-10','monday'),
('ROMANCE','162','R01',3000,600,20,'18:30','34.5',600,20,'590','2022-04-06','monday') 
  
 ----updating the data ----
 update DFA_CINEMA_TICKET SET show_day='tuesday' WHERE film_code='511'
 update DFA_CINEMA_TICKET SET show_day='saturaday' WHERE film_code='181'
 update DFA_CINEMA_TICKET SET show_day='sunday' WHERE film_code='201'
 update DFA_CINEMA_TICKET SET show_day='wednesday' WHERE film_code='116'
 
 -----displaying data using selcet keyword--
 select * from DFA_CINEMA_TICKET
 
 ---DELETING THE DATA -----
 
 delete from DFA_CINEMA_TICKET where film_code='116'
 
 ----DDL COMMONDS---
 ---adding new row using ALTER command 
 ALTER TABLE DFA_CINEMA_TICKET ADD cenema_name varchar(100);
  
select * from  DFA_CINEMA_TICKET

----truncate table ---
  
truncate table  DFA_CINEMA_TICKET;

---drop table---

drop table  DFA_CINEMA_TICKET;

----creating table for covid health --
CREATE TABLE covid_heath_care (
   DRGID varchar(50),
    DRG_Definition varchar(255),
   Provider_Id varchar(50),
    Provider_Name varchar(255),
   ProviderStreet_Address varchar(255),
   Provider_City varchar(255),
    Provider_State varchar(255),
     Provider_Zip_Code varchar(50),
     Hospital_Referral_Region_Description varchar(255),
    Total_Discharges varchar(50),
    Average_Covered_Charges varchar(50),
  Average_TotalPayments varchar(50),
    AverageMedicarePayments varchar(50)
)

--- view columns in table---
select * from covid_heath_care

----DML COMMONDS--
  
 ----updating the data ----
 update covid_heath_care SET Provider_Id='100' WHERE DRGID='45'
 update covid_heath_careT SET Provider_Id='10001' WHERE DRGID='45'
 update covid_heath_care SET Provider_Id='10003' WHERE DRGID='87'
 
 -----displaying data using selcet keyword--
 select * from covid_heath_care
 
 ---DELETING THE DATA -----
 
 delete from covid_heath_care where provider_id='100'
 
 ----DDL COMMONDS---
 ---adding new row using ALTER command 
 ALTER TABLE covid_heath_care ADD desease_name varchar(100);
  
select * from  covid_heath_care

----truncate table ---
  
truncate table  covid_heath_care;

---drop table---

drop table covid_heath_care;

















  












  
  
  