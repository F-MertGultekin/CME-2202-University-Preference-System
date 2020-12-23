-- CREATE DATABASE

CREATE DATABASE "2017510037"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF-8'
       LC_CTYPE = 'en_US.UTF-8'
       CONNECTION LIMIT = -1;
create table university
(
	uni_id integer primary key not null,
	uni_name text not null,
	uni_address text not null,
	uni_e_mail text ,
	uni_city text not null,
	uni_type text not null,
	uni_foundation_year integer not null
	
);
insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(1,'Dokuz Eylül Üniversitesi','kaynaklar-buca','info@deu.edu.tr','İzmir','state',1982);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(2,'Ege Üniversitesi','Bornova','info@ege.edu.tr','İzmir','state',1955);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(3,'İzmir Yüksek Teknoloji Üniversitesi','urla','info@iyte.edu.tr','İzmir','state',1992);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(4,'İzmir Katip Çelebi Üniversitesi','çiğli','info@ikcu.edu.tr','İzmir','state',2010);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(5,'İzmir Demokrasi Üniversitesi','Karabağlar','info@du.edu.tr','İzmir','state',2016);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(6,'İzmir Teknik Üniversitesi','Alsancak','info@iztu.edu.tr','İzmir','state',2019);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(7,'İzmir Üniversitesi','Balçova','info@iu.edu.tr','İzmir','private',2007);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(8,'Yaşar Üniversitesi','Bornova','info@yu.edu.tr','İzmir','private',2003);

insert into university (uni_id,uni_name,uni_address,uni_e_mail,uni_city,uni_type,uni_foundation_year)
values(9,'İzmir Ekonomi Üniversitesi','Balçova','info@iyu.edu.tr','İzmir','private',2001);



create table faculty
(
	faculty_id integer primary key  not null,
	faculty_name text not null,
	faculty_e_mail text,
	university_id int  not null,
	FOREIGN KEY (university_id) REFERENCES university(uni_id)
);
--deu
insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(1,'Engineering','info@eng.deu.edu.tr',1);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(2,'Medicine','info@med.deu.edu.tr',1);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(3,'Law','info@law.deu.edu.tr',1);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(4,'Architecture','info@arch.deu.edu.tr',1);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(5,'Fine Arts','info@art.deu.edu.tr',1);

--ege

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(6,'Engineering','info@eng.ege.edu.tr',2);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(7,'Medicine','info@med.ege.edu.tr',2);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(8,' Fine Arts','info@art.ege.edu.tr',2);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(9,'Dentistry','info@dent.ege.edu.tr',2);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(10,'Letters','info@let.ege.edu.tr',2);


--iyte
insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(11,'Engineering','info@eng.iyte.edu.tr',3);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(12,'Technology','info@tech.iyte.edu.tr',3);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(13,' Fine Arts','info@art.iyte.edu.tr',3);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(14,'Dentistry','info@dent.iyte.edu.tr',3);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(15,'Sport','info@sport.iyte.edu.tr',3);

--ikçü
insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(16,'Engineering','info@eng.ikcü.edu.tr',4);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(17,'Technology','info@tech.ikcü.edu.tr',4);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(18,' Fine Arts','info@art.ikcü.edu.tr',4);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(19,'Dentistry','info@dent.ikcü.edu.tr',4);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(20,'Sport','info@sport.ikcü.edu.tr',4);

--izmir demokrasi
insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(21,'Medicine','info@med.idu.edu.tr',5);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(22,' Fine Arts','info@art.idu.edu.tr',5);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(23,'Dentistry','info@dent.idu.edu.tr',5);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(24,'Letters','info@let.idu.edu.tr',5);

--izmir teknik


insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(26,'Architecture','info@arch.iztu.edu.tr',6);

--izmir üni
insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(27,' Fine Arts','info@art.izu.edu.tr',7);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(28,'Sport','info@sport.izu.edu.tr',7);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(29,'Letters','info@let.izu.edu.tr',7);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(30,'Law','info@law.izu.edu.tr',7);

--yasar

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(31,'Law','info@law.yu.edu.tr',8);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(32,'Engineering','info@eng.yu.edu.tr',8);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(33,'Architecture','info@arch.yu.edu.tr',8);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(34,'Letters','info@let.yu.edu.tr',9);

--izmir ekonomi

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(35,'Law','info@law.ieu.edu.tr',9);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(36,'Engineering','info@eng.ieu.edu.tr',9);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(37,'Architecture','info@arch.ieu.edu.tr',9);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(38,'Letters','info@let.ieu.edu.tr',9);

insert into faculty(faculty_id,faculty_name,faculty_e_mail,university_id) 
values(39,'Medicine','info@med.ieu.edu.tr',9);


create table department
(
	dep_id integer PRIMARY KEY not null,
	dep_name text not null,
	dep_e_mail text,
	dep_lang text ,
	dep_edu_type text ,
	dep_quota integer not null,
	dep_spec_quota integer,
	dep_period integer not null,
	dep_min_score numeric,
	dep_min_order integer ,
	faculty_id  integer not null,
	
	FOREIGN KEY (faculty_id)
	REFERENCES faculty(faculty_id)	
);

--deu
insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(1,'Computer Engineering','info@ceng.deu.edu.tr','EN','formal',90,3,4,415,30000,1);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(2,'Civil Engineering','info@civil.deu.edu.tr','TR','formal',110,4,4,350,70000,1);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(3,'Medicine','info@dep.med.deu.edu.tr','TR','formal',160,10,6,470,3000,2);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(4,'Nursing','info@nurse.deu.edu.tr','TR','formal',100,3,4,390,90000,2);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(5,'Turkish Law','info@law.deu.edu.tr','TR','formal',250,7,4,420,20000,3);


insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(6,'Architecture','info@arc.deu.edu.tr','TR','formal',90,3,4,400,40000,4);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(7,'Conservatory','info@cons.deu.edu.tr','TR','formal',40,1,4,300,100000,5);


--ege
insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(8,'Computer Engineering','info@ceng.ege.edu.tr','TR','formal',100,3,4,420,29000,6);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(9,'Civil Engineering','info@civil.ege.edu.tr','TR','formal',110,0,4,350,72000,6);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(10,'Medicine','info@dep.med.ege.edu.tr','TR','formal',160,10,6,480,2000,7);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(11,'Nursing','info@nurse.ege.edu.tr','TR','formal',100,3,4,390,95000,7);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(12,'Nursing','info@nurse.ege.edu.tr','TR','evening',100,1,4,350,110000,7);


insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(13,'Conservatory','info@cons.ege.edu.tr','TR','formal',50,0,4,320,900000,8);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(14,'Dentisty','info.dep@dent.ege.edu.tr','EN','formal',150,5,5,440,15000,9);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(15,'Letters','info@let.ege.edu.tr','TR','formal',80,38,4,390,95000,10);


--iyte 

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(16,'Computer Engineering','info@ceng.iyte.edu.tr','EN','formal',60,3,4,440,25000,11);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(17,'Civil Engineering','info@civil.iyte.edu.tr','EN','formal',110,0,4,350,52000,11);


insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(18,'Computer Science','info@csci.iyte.edu.tr','EN','formal',60,3,4,290,200000,12);



insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(19,'Conservatory','info@cons.iyte.edu.tr','TR','formal',40,1,4,2800,120000,13);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(20,'Dentisty','info.dep@dent.iyte.edu.tr','TR','formal',100,5,5,400,25000,14);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(21,'Athletics','info.dep@ath.iyte.edu.tr','TR','formal',30,5,4,360,120000,15);


--ikçü

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(22,'Mechanical Engineering','info@civil.ikcu.edu.tr','TR','formal',100,6,4,370,82000,16);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(23,'Mechanical Engineering','info@civil.ikcu.edu.tr','TR','evening',50,1,4,320,112000,16);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(24,'Computer Science','info@csci.ikcu.edu.tr','TR','formal',60,3,4,310,220000,17);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(25,'Theater','info@the.ikcu.edu.tr','TR','formal',40,0,4,280,120000,18);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(26,'Dentisty','info.dep@dent.ikcu.edu.tr','EN','formal',100,5,5,420,19000,19);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(27,'Football','info.dep@foot.ikcu.edu.tr','TR','formal',22,0,2,300,220000,20);


--izmir demokrasi
insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(28,'Medicine','info@dep.med.izdu.edu.tr','TR','formal',100,1,6,450,5000,21);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(29,'Theater','info@the.izdu.edu.tr','TR','formal',30,0,2,240,300000,22);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(30,'Opera','info@op.izdu.edu.tr','TR','formal',10,0,4,340,140000,22);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(31,'Dentisty','info.dep@dent.izdu.edu.tr','TR','formal',70,3,5,440,16000,23);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(32,'Letters','info.dep@let.izdu.edu.tr','TR','formal',80,1,3,380,86000,24);

--izmir teknik 





insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(34,'Architecture','info@arc.iztu.edu.tr','TR','formal',90,3,4,400,100000,26);


--izmir üni
insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(35,'Music','info@op.izu.edu.tr','TR','formal',10,0,4,340,140000,27);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(36,'Basketball','info.dep@basket.izu.edu.tr','TR','formal',24,1,4,316,228000,28);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(37,'Letters','info.dep@let.izu.edu.tr','TR','formal',70,2,4,390,80000,29);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(38,'Turkish Law','info@law.iztu.edu.tr','TR','formal',190,7,4,370,40000,30);

--yasar
insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(39,'Turkish Law','info@law.yu.edu.tr','TR','formal',100,2,4,390,34000,31);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(40,'Software Engineering','info@soft.yu.edu.tr','EN','formal',60,3,4,400,65000,32);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(41,'Architecture','info@arc.yu.edu.tr','EN','formal',60,0,4,385,87000,33);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(42,'Letters','info.dep@let.yu.edu.tr','TR','formal',70,2,4,390,80000,34);

--Ekonomi 
insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(43,'Turkish Law','info@law.ieu.edu.tr','TR','formal',100,2,4,395,33000,35);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(44,'Software Engineering','info@soft.ieu.edu.tr','TR','formal',60,3,4,390,75000,36);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(45,'Architecture','info@arc.yu.edu.tr','TR','formal',50,0,4,385,84000,37);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(46,'Letters','info.dep@let.ieu.edu.tr','TR','formal',90,1,4,400,60000,38);

insert into department (dep_id,dep_name,dep_e_mail,dep_lang,dep_edu_type,dep_quota,dep_spec_quota,dep_period,dep_min_score,dep_min_order,faculty_id)
values(47,'Medicine','info@dep.med.ieu.edu.tr','EN','formal',60,3,6,459,4200,39);

create table student
(
	stu_id integer primary key not null,
	stu_name text not null,
	stu_surname text not null,
	stu_score integer not null,
	stu_rank integer not null,
	stu_spec boolean ,
	stu_pre1 integer ,
	stu_pre2 integer,
	stu_pre3 integer,
	FOREIGN KEY (stu_pre1)
	REFERENCES department(dep_id),	
	
	FOREIGN KEY (stu_pre2)
	REFERENCES department(dep_id),	
	
	FOREIGN KEY (stu_pre3)
	REFERENCES department(dep_id)	
);
insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(1,'Mehmet','Yılmaz',430,1500,false,1,4,6);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(2,'Mustafa','Koç',420,1600,false,1,4,6);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(3,'Acun','Ilıca',400,25000,false,1,4,6);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(4,'Kaan','Kural',480,500,false,2,5,1);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(5,'Kerem','Tunçeri',500,1,true,1,3,10);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(6,'Burak','Yılmaz',300,150000,false,17,18,19);


insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(7,'Melih','Mahmutoğlu',400,10000,false,1,30,25);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(8,'Ahmet','Düverioğlu',415,5900,false,19,12,47);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(9,'Volkan','Demirel',380,69900,false,30,21,18);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(10,'Kenan','İmirzalı',460,6900,false,9,28,31);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(11,'Çağrı','Ergençoğlu',440,10900,false,45,25,5);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(12,'Sercan','Kulluk',445,10000,false,5,25,35);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(13,'Umut Ekin','Güneş',390,56000,false,3,15,46);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(14,'Oğulcan','Çelen',380,66000,false,2,23,38);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(15,'Bert','Şermet',393,50000,false,7,6,8);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(16,'Erman','Alpay',383,70000,false,12,16,22);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(17,'Oğuz','Aydn',443,7000,false,1,16,6);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(18,'Berkay','Kaya',400,47000,false,13,17,26);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(19,'Emir','Doğan',300,347000,false,46,47,38);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(20,'Süleyman','Demlik',351,97000,false,23,24,25);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(21,'Furkan','Korkmaz',400,40000,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(22,'Cedi','Osman',399,40001,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(23,'Ersan','İlyasova',401,39999,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(24,'Mehmet','Okur',402,39998,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(25,'Hidayet','Türkoğlu',403,39997,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(26,'Semih','Erden',404,39996,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(27,'Shane','Larkin',405,39995,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(28,'İsmail','Palamut',280,339995,false,11,12,13);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(29,'Muhammed','Bozkurt',290,333995,false,19,24,23);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(30,'Onur','Önal',310,203995,false,9,4,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(31,'Berke','Civa',499,2,false,1,2,3);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(32,'Batuhan','Ortakçı',409,20002,false,1,20,30);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(33,'Mert','Ziyagil',410,2000,false,44,29,37);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(34,'Samet','Uyandıran',420,1800,false,1,19,7);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(35,'Kadir','Türkan',449,1000,false,13,17,23);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(36,'Salih','Barış',374,111000,false,28,29,30);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(37,'Oğuzhan','Fakiroğlu',180,1111000,false,47,46,45);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(38,'Doğukan','Kolpak',190,110004,false,47,46,45);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(39,'Fikret','Gülistan',200,100000,false,43,42,41);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(40,'Taner','Davaslıoğlu',450,13000,false,1,9,16);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(41,'Yunus','Pakoğlu',430,19030,false,12,13,23);


insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(42,'Ferhat','Toprak',498,3,false,11,30,23);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(43,'Halil','İnan',308,300000,false,18,19,21);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(44,'Recep','Erdoğdu',300,400001,false,28,10,19);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(45,'Kemal','Kılıç',301,400000,false,28,10,19);


insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(46,'Osman','Türkoğlu',470,300,false,7,15,44);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(47,'Metin','Uysal',476,280,false,7,1,42);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(48,'Yiğit','Sönmez',464,580,false,2,1,25);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(49,'Reşat','Güntekin',404,53312,false,16,9,41);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(50,'Sevgi','Gültekin',448,3312,false,1,12,23);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(51,'Zeynep','Değirmen',395,93312,false,18,41,42);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(52,'Merve','Kuşçu',388,103312,false,10,39,38);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(53,'Ümran','Ay',398,92312,false,1,19,37);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(54,'Elif','Bıçak',339,192312,false,12,11,37);


insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(55,'Esra','Buğday',407,55060,false,13,2,14);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(56,'Büşra','Sarı',369,155060,false,31,40,14);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(57,'İrem','Aslan',367,165060,false,31,29,2);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(58,'Esra','Aslan',442,9060,false,3,27,10);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(59,'Ayşe','Fatma',402,69060,false,3,27,10);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(60,'Hayriye','Esen',342,149060,false,17,27,14);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(61,'Beyza','Kafadar',361,123049,false,1,24,10);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(62,'Dilara','Çelik',411,23049,false,16,44,19);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(63,'Zehra','Temel',441,2049,false,12,40,39);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(64,'Melisa','Tatlı',370,120049,false,37,41,8);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(65,'Aleyna','Kaplan',346,240049,false,37,36,17);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(66,'Betül','Dayı',435,20049,false,5,4,18);

insert into student(stu_id,stu_name,stu_surname,stu_score ,stu_rank ,stu_spec ,stu_pre1 ,stu_pre2 ,stu_pre3)
values(67,'Hilal','Dayı',435,20049,false,5,4,18);




insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (68, 'Afitap', 'Ateş', 483, 19, false, 13, 39, 27);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (69, 'Ecmel', 'Türk', 482, 26, false, 20, 18, 43);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (70, 'Elisa', 'Demir', 419, 23792, false, 27, 27, 13);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (71, 'Afitap', 'Arslan', 356, 1722209, false, 1, 47, 34);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (72, 'Ecmel', 'Yılmaz', 441, 253753, false, 5, 3, 37);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (73, 'Ecmel', 'Aslan', 482, 20, true, 13, 38, 43);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (74, 'Lena', 'Aslan', 368, 261089, true, 17, 22, 44);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (75, 'Lara', 'Kara', 432, 28910, true, 45, 16, 37);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (76, 'Enes', 'Ateş', 313, 244602, false, 24, 31, 35);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (77, 'İlayda', 'Aksoy', 321, 147242, false, 12, 44, 34);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (78, 'İlayda', 'Gündoğdu', 376, 164159, true, 47, 43, 43);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (79, 'Mirel', 'Karakaya', 376, 289004, true, 5, 6, 11);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (80, 'Açela', 'Kaya', 321, 112937, true, 31, 43, 2);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (81, 'Elif', 'Demir', 429, 10249, false, 22, 3, 4);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (82, 'Meva', 'Başol', 372, 204605, true, 15, 11, 24);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (83, 'Leyla', 'Kaya', 421, 10329, false, 46, 26, 47);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (84, 'Açılay', 'Özdemir', 318, 8976, false, 16, 6, 30);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (85, 'Dilay', 'Kara', 395, 160997, false, 8, 25, 5);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (86, 'Elisa', 'Çağlar', 360, 113146, false, 38, 9, 23);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (87, 'Evin', 'Aksoy', 397, 49688, false, 37, 22, 4);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (88, 'Miran', 'Karakaya', 402, 48836, true, 12, 23, 19);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (89, 'Açelya', 'Çağlar', 459, 3516, true, 7, 8, 34);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (90, 'Elif', 'Gültekin', 424, 28651, true, 2, 1, 7);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (91, 'Lena', 'Aydın', 396, 69655, false, 39, 25, 22);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (92, 'Açılay', 'Karakaya', 303, 127493, false, 46, 2, 16);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (93, 'Mısra', 'Ateş', 353, 224085, false, 46, 23, 6);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (94, 'Adelya', 'Demir', 459, 2484, true, 46, 30, 26);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (95, 'Karen', 'Aksoy', 330, 168940, true, 14, 4, 36);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (96, 'Lara', 'Demir', 426, 20022, true, 32, 24, 4);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (97, 'Meva', 'Çetin', 341, 79774, true, 30, 18, 3);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (98, 'Maya', 'Koç', 373, 125557, false, 8, 17, 27);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (99, 'Lena', 'Aksoy', 341, 216929, false, 5, 17, 15);
insert into student (stu_id, stu_name, stu_surname, stu_score, stu_rank, stu_spec, stu_pre1, stu_pre2, stu_pre3) values (100, 'Meva', 'Gültekin', 412, 35915, false, 14, 20, 6);



--Query 1-------------
--SELECT * from university where uni_name like 'İ%'  and  uni_foundation_year>1990;
------------------------------
--Query 2----------------------
--Select * from university where exists 
--(Select * from faculty where university.uni_id=faculty.university_id 
-- and(faculty_name='%Engineering' or faculty_name='Medicine'));
-------------------------------


--Query 4----------------------
--SELECT * from department where dep_edu_type='evening'and faculty_id in
--(Select faculty_id from faculty where faculty_name='Engineering');
-------------------------------
--Query 5 ---------------------
--Select * from department  order by dep_period DESC,dep_min_score DESC FETCH NEXT 5 ROWS ONLY  ;
-------------------------------
--Query 6----------------------
--Select * from department where  dep_period=4 and dep_id in
--(Select (stu_pre1)  from student  GROUP BY stu_pre1 ORDER BY (Count(stu_pre1) )DESC)FETCH NEXT 1 ROWS ONLY;
-------------------------------

--Query 7 ---------------------
--Select * from student  where stu_pre1 in(Select dep_id from department 
--where dep_name='Computer Engineering')order by 	stu_pre1 DESC; 					 

--Query 8----------------------
--update faculty set university_id =(Select uni_id from university where uni_name='İzmir Teknik Üniversitesi')
--where university_id in 
--(Select uni_id from university where uni_name='Dokuz Eylül Üniversitesi'and faculty_name='Engineering');

-------------------------------
--Query 9----------------------
--Update department set dep_period=5 where  faculty_id in(Select faculty_id from faculty where faculty_name='Law' ); --9
--Select * from department where faculty_id in(Select faculty_id from faculty where faculty_name='Law' ); 	--9
-------------------------------

--Query 10---------------------
--Delete  from department where faculty_id in
--(Select faculty_id from faculty where university_id in(Select uni_id 
--from university where uni_name='İzmir University'));		
-------------------------------
--Select * from faculty where university_id in(Select uni_id from university where uni_name='İzmir Teknik Üniversitesi');
--Select * from faculty where university_id in(Select uni_id from university where uni_name='Dokuz Eylül Üniversitesi')









