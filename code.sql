create table Prisoner(
 ssn varchar(15) not null primary key , 
 age int not null , 
 fname varchar(10) not null,
 lname varchar(10) not null, 
 sex varchar(1) not null , 
 bdate date , 
 sdate date not null , 
 fdate date not null , 
 acual_fdate date  not null, 
 address  varchar(20) ,
 CONSTRAINT sexcheck check (sex='f' or sex='m' or sex='F' or sex='M') 
);

create table CriminalState(
  duration int ,
  Crimename varchar(15), 
  crimedate date , 
  details varchar(50) 
);
 
create table marital (
  id int  , 
 pssn varchar(15) , 
  Ismarried char(1) , 
  constraint marriedcheck check(Ismarried in ('T','F')), 
  reliable char(1) , 
  constraint reliablecheck check(reliable in ('T','F')),
  rebition varchar(20)
);

create table PoliticsState(
 id int , 
 pssn varchar(15), 
 SecretOrganization char(1), 
 constraint SecretOrganization_chk check(SecretOrganization in ('T','F')),
 PoliticalPrisoner char(1), 
 constraint PoliticalPrisoner_chk check(PoliticalPrisoner in ('T','F')), 
 FolderStateSecurity varchar(1),
 constraint FolderStateSecurity_chk check(FolderStateSecurity in ('T','F')), 

);

create table WealthyState(
id int ,
pssn varchar(15),
source varchar(20),
class varchar(1)

);
create table ScientificState(
id int , 
pssn varchar(15), 
qualification varchar(30), 
degree varchar(10)
);

create table ProfessionalState(
id int , 
pssn varchar(15), 
jopname varchar(15) ,
joploc varchar(20) 

);

create Table MedicalState(
id int , 
pssn varchar(15), 
IsSafe char(1), 
constraint IsSafe_chk check(IsSafe in ('T','F')), 
diseasename varchar(15) , 
nowstate varchar(15) 
);

create table Visitor (
ssn varchar(15) primary key, 
fname varchar(10) not null, 
lname varchar(10) not null, 
vnum varchar(11) not null ,
pssn varchar(15)
);

create table vist(
id varchar(10) primary key , 
vssn varchar(15) ,
pssn varchar(15) , 
vdate date not null , 
vtime time not null , 
 CONSTRAINT vtimecheck check(vtime>='09:00:00' and vtime<='12:00:00')
);

create table Building(
bid varchar(3) primary key,
btype varchar(10) not null ,
eid varchar(15) 
);

create table workin(
pssn varchar(15) primary key ,
bid varchar(3) 
);

create table room(
rid varchar(3) , 
bid varchar(3) , 
eid varchar(15) , 
capacity int , 
pssn varchar(15) 
);

 create table Employee(
 id varchar(15) primary key , 
 name varchar(25) , 
 joptitle varchar(10) , 
 shft varchar(1) , 
 managerid varchar(15) , 
 CONSTRAINT shftcheck check(shft='A' or shft='B' or shft='C' )  
 );
