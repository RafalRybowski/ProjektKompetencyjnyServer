--------------------------------------------------------
--  File created - niedziela-czerwca-21-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence COUNTER_EMP
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."COUNTER_EMP"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence EMP_SEQ_INC
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMP_SEQ_INC"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 210 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ID_TASKA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ID_TASKA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ID_ZADANIA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ID_ZADANIA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence KONTO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KONTO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PRIM_ID_TASKA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PRIM_ID_TASKA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AUTORZY
--------------------------------------------------------

  CREATE TABLE "HR"."AUTORZY" 
   (	"ID_PUBLIKACJI" NUMBER(3,0), 
	"ID_KONTA" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BUDYNEK
--------------------------------------------------------

  CREATE TABLE "HR"."BUDYNEK" 
   (	"ID_BUDYNKU" NUMBER(5,0), 
	"NAZWA_BUDYNKU" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GRUPA_STUDENTOW
--------------------------------------------------------

  CREATE TABLE "HR"."GRUPA_STUDENTOW" 
   (	"ID_GRUPY" NUMBER(5,0), 
	"ILOSC_OSOB" NUMBER(5,0), 
	"SPECJALIZACJA" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KONTO
--------------------------------------------------------

  CREATE TABLE "HR"."KONTO" 
   (	"ID_KONTA" NUMBER(3,0), 
	"TYTUL" VARCHAR2(50 BYTE), 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"ID_TYPU_KONTA" NUMBER(2,0), 
	"SPECJALIZACJA" VARCHAR2(30 BYTE), 
	"IMAGE" VARCHAR2(24 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOGIN
--------------------------------------------------------

  CREATE TABLE "HR"."LOGIN" 
   (	"ID_KONTA" NUMBER(5,0), 
	"LOGIN" VARCHAR2(25 BYTE), 
	"HASLO" VARCHAR2(24 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PUBLIKACJA
--------------------------------------------------------

  CREATE TABLE "HR"."PUBLIKACJA" 
   (	"ID_PUBLIKACJI" NUMBER(4,0), 
	"TYTUL_PUBLIKACJI" VARCHAR2(100 BYTE), 
	"DATA_PUBLIKACJI" DATE, 
	"ISBN" NUMBER(13,0), 
	"MIEJSCE_WYSTAPIENIA" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALA
--------------------------------------------------------

  CREATE TABLE "HR"."SALA" 
   (	"ID_SALI" NUMBER(5,0), 
	"ID_BUDYNKU" NUMBER(5,0), 
	"NR_SALI" NUMBER(5,0), 
	"TYP_SALI" VARCHAR2(10 BYTE), 
	"MAX_OS" NUMBER(3,0), 
	"WYPOSAZENIE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STATUS_TASKA
--------------------------------------------------------

  CREATE TABLE "HR"."STATUS_TASKA" 
   (	"ID_STATUSU_TASKA" NUMBER(2,0), 
	"NAZWA_STATUSU" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TASK
--------------------------------------------------------

  CREATE TABLE "HR"."TASK" 
   (	"ID_TASKA" NUMBER(6,0), 
	"DATA_UTWORZENIA" DATE, 
	"CZAS_REALIZACJI" DATE, 
	"TYTUL_TASKA" VARCHAR2(50 BYTE), 
	"TRESC" VARCHAR2(500 BYTE), 
	"ID_STATUSU_TASKA" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TYP_KONTA
--------------------------------------------------------

  CREATE TABLE "HR"."TYP_KONTA" 
   (	"ID_TYPU_KONTA" NUMBER(3,0), 
	"NAZWA_TYPU_KONTA" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WAGA_ZADANIA
--------------------------------------------------------

  CREATE TABLE "HR"."WAGA_ZADANIA" 
   (	"ID_WAGI_ZADANIA" NUMBER(5,0), 
	"WAGA" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZADANIE
--------------------------------------------------------

  CREATE TABLE "HR"."ZADANIE" 
   (	"ID_ZADANIA" NUMBER(6,0), 
	"ID_KONTA" NUMBER(3,0), 
	"ID_TASKA" NUMBER(6,0), 
	"ID_WAGI_ZADANIA" VARCHAR2(10 BYTE) DEFAULT 'NORMAL'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZAJECIE
--------------------------------------------------------

  CREATE TABLE "HR"."ZAJECIE" 
   (	"ID_ZAJECIA" NUMBER(5,0), 
	"ID_GRUPY" NUMBER(5,0), 
	"ID_KONTA" NUMBER(5,0), 
	"ID_SALI" NUMBER(5,0), 
	"SPECJALIZACJA" VARCHAR2(24 BYTE), 
	"LICZBA_GODZIN" NUMBER(5,0), 
	"DZIEN_TYGODNIA" VARCHAR2(10 BYTE), 
	"GODZINA_ROZPOCZECIA" NUMBER(4,0), 
	"WYPOSAZENIE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EMP_DEP
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."EMP_DEP" ("EMPLOYEE_ID", "FIRST_NAME", "LAST_NAME", "DEPARTMENT_NAME") AS 
  SELECT e.EMPLOYEE_ID, e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_NAME
FROM EMPLOYEES e, DEPARTMENTS d
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
;
--------------------------------------------------------
--  DDL for View EMP_DEP_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."EMP_DEP_VIEW" ("EMPLOYEE_ID", "LAST_NAME", "FIRST_NAME", "DEPARTMENT_NAME") AS 
  SELECT e.EMPLOYEE_ID, e.LAST_NAME, e.FIRST_NAME, d.DEPARTMENT_NAME
FROM EMPLOYEES e
INNER JOIN DEPARTMENTS d
ON e.department_id=d.department_id
;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View SALARY_ZERO_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."SALARY_ZERO_VIEW" ("SALARY") AS 
  SELECT e.SALARY
FROM EMPLOYEES e
;
REM INSERTING into HR.AUTORZY
SET DEFINE OFF;
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('1','1');
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('2','2');
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('1','3');
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('2','4');
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('3','1');
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('4','1');
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('5','2');
Insert into HR.AUTORZY (ID_PUBLIKACJI,ID_KONTA) values ('5','3');
REM INSERTING into HR.BUDYNEK
SET DEFINE OFF;
REM INSERTING into HR.GRUPA_STUDENTOW
SET DEFINE OFF;
REM INSERTING into HR.KONTO
SET DEFINE OFF;
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('1','dr.hab.mgr.inz','Adam','Spec','1','Informatyka',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('2','dr.','Maciej','Nowak','2','Elektryk',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('3','mgr.inz','Marcin','Kowalski','2','Mechatronik',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('4','dr.','Adam','Maysz','3','Fizyka',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('7','dr.','Boguslaw','Linda','2','Automatyka i Robotyka',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('6','mgr.inz','Hubert','Pietrzak','3','Informatyka',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('5','dr.hab.','Robert','Kubica','3','Mechanika',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('8','mgr.inz','Patryk','Vega','2','Informatyka',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('9','dr.hab.mgr.inz','Justyna','Kowalczyk','2','Budowa Maszyn',null);
Insert into HR.KONTO (ID_KONTA,TYTUL,IMIE,NAZWISKO,ID_TYPU_KONTA,SPECJALIZACJA,IMAGE) values ('10','mgr.inz','Krystyna','Czubówna','3','Bio-technologie',null);
REM INSERTING into HR.LOGIN
SET DEFINE OFF;
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('1','111111@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('2','111112@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('3','111113@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('4','111114@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('5','111115@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('6','111116@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('7','111117@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('8','111118@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('9','111119@edu.p.lodz.pl','pk12345!');
Insert into HR.LOGIN (ID_KONTA,LOGIN,HASLO) values ('10','111110@edu.p.lodz.pl','pk12345!');
REM INSERTING into HR.PUBLIKACJA
SET DEFINE OFF;
Insert into HR.PUBLIKACJA (ID_PUBLIKACJI,TYTUL_PUBLIKACJI,DATA_PUBLIKACJI,ISBN,MIEJSCE_WYSTAPIENIA) values ('1','Podstawy Informatyki w In¿ynierii',to_date('08/09/11','RR/MM/DD'),'2558963214745','Miejska Biblioteka publiczna w £odzi');
Insert into HR.PUBLIKACJA (ID_PUBLIKACJI,TYTUL_PUBLIKACJI,DATA_PUBLIKACJI,ISBN,MIEJSCE_WYSTAPIENIA) values ('3','Problemy we wspó³czesnej elektronice dla dzieci do lat 3',to_date('19/02/21','RR/MM/DD'),'4478569321456','Miejska Biblioteka publiczna w Warszawie');
Insert into HR.PUBLIKACJA (ID_PUBLIKACJI,TYTUL_PUBLIKACJI,DATA_PUBLIKACJI,ISBN,MIEJSCE_WYSTAPIENIA) values ('4','Do czego d¹¿y ten œwiat informatyki?',to_date('14/03/30','RR/MM/DD'),'1254632589741','Miejska Biblioteka publiczna w Warszawie');
Insert into HR.PUBLIKACJA (ID_PUBLIKACJI,TYTUL_PUBLIKACJI,DATA_PUBLIKACJI,ISBN,MIEJSCE_WYSTAPIENIA) values ('5','Jak zachowywaæ siê podczas ataku hakerskiego',to_date('17/05/24','RR/MM/DD'),'1478523698547','Miejska Biblioteka publiczna w Bydgoszczy');
Insert into HR.PUBLIKACJA (ID_PUBLIKACJI,TYTUL_PUBLIKACJI,DATA_PUBLIKACJI,ISBN,MIEJSCE_WYSTAPIENIA) values ('2','Podstawowe problemy z programowaniem u dzieci do lat 6',to_date('18/10/24','RR/MM/DD'),'1658984123698','Miejska Biblioteka publiczna w Warszawie');
REM INSERTING into HR.SALA
SET DEFINE OFF;
REM INSERTING into HR.STATUS_TASKA
SET DEFINE OFF;
Insert into HR.STATUS_TASKA (ID_STATUSU_TASKA,NAZWA_STATUSU) values ('1','W trakcie realizacji');
Insert into HR.STATUS_TASKA (ID_STATUSU_TASKA,NAZWA_STATUSU) values ('2','Ewaluacja');
Insert into HR.STATUS_TASKA (ID_STATUSU_TASKA,NAZWA_STATUSU) values ('3','Zakoñczony');
Insert into HR.STATUS_TASKA (ID_STATUSU_TASKA,NAZWA_STATUSU) values ('4','OpóŸniony');
REM INSERTING into HR.TASK
SET DEFINE OFF;
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('1',to_date('20/06/20','RR/MM/DD'),to_date('20/06/21','RR/MM/DD'),'Projekt kompetencyjny','Zapytania do projektu kompetencyjnego','1');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('2',to_date('20/06/20','RR/MM/DD'),to_date('20/06/21','RR/MM/DD'),'Projekt kompetencyjny2','Zapytania do projektu kompetencyjnego','2');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('3',to_date('20/06/20','RR/MM/DD'),to_date('20/06/21','RR/MM/DD'),'Projekt kompetencyjny3','Zapytania do projektu kompetencyjnego','3');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('4',to_date('20/06/20','RR/MM/DD'),to_date('20/06/21','RR/MM/DD'),'Projekt kompetencyjny4','Zapytania do projektu kompetencyjnego','1');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('5',to_date('20/06/20','RR/MM/DD'),to_date('20/06/21','RR/MM/DD'),'Projekt kompetencyjny5','Zapytania do projektu kompetencyjnego','1');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('6',to_date('20/06/20','RR/MM/DD'),to_date('20/06/21','RR/MM/DD'),'Projekt kompetencyjny6','Zapytania do projektu kompetencyjnego','2');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('7',to_date('20/06/20','RR/MM/DD'),to_date('20/06/21','RR/MM/DD'),'Projekt kompetencyjny7','Zapytania do projektu kompetencyjnego','3');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('9',to_date('20/06/21','RR/MM/DD'),to_date('20/06/22','RR/MM/DD'),'Zadanie testowe','Dokoñczyæ zadanie z projektu kompetencyjnego','1');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('10',to_date('20/06/21','RR/MM/DD'),to_date('20/06/22','RR/MM/DD'),'Zadanie testowe 2','Dokoñczyæ zadanie z projektu kompetencyjnego - test usera','1');
Insert into HR.TASK (ID_TASKA,DATA_UTWORZENIA,CZAS_REALIZACJI,TYTUL_TASKA,TRESC,ID_STATUSU_TASKA) values ('11',to_date('20/06/21','RR/MM/DD'),to_date('20/06/22','RR/MM/DD'),'Zadanie testowe 3','Dokoñczyæ zadanie z projektu kompetencyjnego - test usera 2','1');
REM INSERTING into HR.TYP_KONTA
SET DEFINE OFF;
Insert into HR.TYP_KONTA (ID_TYPU_KONTA,NAZWA_TYPU_KONTA) values ('1','admin');
Insert into HR.TYP_KONTA (ID_TYPU_KONTA,NAZWA_TYPU_KONTA) values ('2','dziekan');
Insert into HR.TYP_KONTA (ID_TYPU_KONTA,NAZWA_TYPU_KONTA) values ('3','wykladowca');
REM INSERTING into HR.WAGA_ZADANIA
SET DEFINE OFF;
Insert into HR.WAGA_ZADANIA (ID_WAGI_ZADANIA,WAGA) values ('1','PRIORYTET');
Insert into HR.WAGA_ZADANIA (ID_WAGI_ZADANIA,WAGA) values ('2','PILNE');
Insert into HR.WAGA_ZADANIA (ID_WAGI_ZADANIA,WAGA) values ('3','WA¯NE');
Insert into HR.WAGA_ZADANIA (ID_WAGI_ZADANIA,WAGA) values ('4','NIE PILNE');
REM INSERTING into HR.ZADANIE
SET DEFINE OFF;
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('1','1','1','1');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('2','2','2','2');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('3','3','3','3');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('4','1','4','2');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('5','1','5','2');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('6','2','6','2');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('7','3','7','1');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('10','4','11','1');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('8','1','9','1');
Insert into HR.ZADANIE (ID_ZADANIA,ID_KONTA,ID_TASKA,ID_WAGI_ZADANIA) values ('9','4','10','1');
REM INSERTING into HR.ZAJECIE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index ID_BUDYNKU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ID_BUDYNKU_PK" ON "HR"."BUDYNEK" ("ID_BUDYNKU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_GRUPY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ID_GRUPY_PK" ON "HR"."GRUPA_STUDENTOW" ("ID_GRUPY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_KONTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ID_KONTA_PK" ON "HR"."LOGIN" ("ID_KONTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_SALI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ID_SALI_PK" ON "HR"."SALA" ("ID_SALI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_ZAJECIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ID_ZAJECIE_PK" ON "HR"."ZAJECIE" ("ID_ZAJECIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KONTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."KONTO_PK" ON "HR"."KONTO" ("ID_KONTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PUBLIKACJA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PUBLIKACJA_PK" ON "HR"."PUBLIKACJA" ("ID_PUBLIKACJI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STATUS_TASKA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."STATUS_TASKA_PK" ON "HR"."STATUS_TASKA" ("ID_STATUSU_TASKA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TAKS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TAKS_PK" ON "HR"."TASK" ("ID_TASKA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TYP_KONTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TYP_KONTA_PK" ON "HR"."TYP_KONTA" ("ID_TYPU_KONTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WAGA_ZADANIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."WAGA_ZADANIA_PK" ON "HR"."WAGA_ZADANIA" ("ID_WAGI_ZADANIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ZADANIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ZADANIE_PK" ON "HR"."ZADANIE" ("ID_ZADANIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger KONTO_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."KONTO_TRG" 
BEFORE INSERT ON KONTO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID_KONTA IS NULL THEN
      SELECT KONTO_SEQ.NEXTVAL INTO :NEW.ID_KONTA FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "HR"."KONTO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SALARY_ZERO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SALARY_ZERO" 
INSTEAD OF INSERT OR UPDATE ON SALARY_ZERO_VIEW
BEGIN
    UPDATE EMPLOYEES SET
        SALARY = 0
    WHERE SALARY < 0;
END;
/
ALTER TRIGGER "HR"."SALARY_ZERO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_EMP_DEP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."TR_EMP_DEP" 
INSTEAD OF INSERT ON EMP_DEP
BEGIN
    INSERT INTO DEPARTMENTS SET
        (d.DEPARTMENT_NAME, d.DEPARTMENT_ID) VALUES (NULL, NULL);
END;
/
ALTER TRIGGER "HR"."TR_EMP_DEP" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure GET_DEP_COUNT_2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_DEP_COUNT_2" 
AS
    JOB_NAME IN VARCHAR,
    qty OUT NUMBER
BEGIN
SELECT COUNT(HR.DEPARTMENTS.DEPARTMENTS_ID)
INTO qty
FROM HR.DEPARTMENTS
LEFT JOIN HR.EMPLOYEES
ON HR.DEPARTMENTS.DEPARTMENT_ID = HR.EMPLOYEES.DEPARTMENT_ID
WHERE HR.EMPLOYEES.DEPARTMENT_ID = JOB_NAME;
 DBMS_OUTPUT.put_line(qty);
END GET_DEP_COUNT_2;

/
--------------------------------------------------------
--  DDL for Procedure GET_EMP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_EMP" 
(
    EMP_ID IN NUMBER DEFAULT NULL
) AS
 last_name1 employees.last_name%TYPE;
 first_name1 employees.first_name%TYPE;
 salary1 employees.salary%TYPE;
BEGIN
    select last_name, first_name, salary 
    into last_name1,first_name1, salary1
    from employees where employee_id = EMP_ID;
    DBMS_OUTPUT.put_line(last_name1||'-'||first_name1||'-'||salary1);
EXCEPTION
    WHEN OTHERS THEN DBMS_OUTPUT.put_line('brak pracownika o tym ID');
END GET_EMP;

/
--------------------------------------------------------
--  DDL for Procedure GET_EMP_IN_DEP_JOB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_EMP_IN_DEP_JOB" 
(
 DEP_ID IN NUMBER DEFAULT NULL,
 J_ID IN NUMBER DEFAULT NULL,
 coun OUT NUMBER
) AS
BEGIN
select COUNT(*) into coun
from employees 
where department_id = DEP_ID AND JOB_ID = J_ID;
DBMS_OUTPUT.put_line(coun);
EXCEPTION
WHEN OTHERS THEN DBMS_OUTPUT.put_line('brak pracownika o tym dep ID');
END GET_EMP_IN_DEP_JOB;

/
--------------------------------------------------------
--  DDL for Procedure GET_EMP_IN_DEP_NAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_EMP_IN_DEP_NAME" 
(
    DEP_ID NUMBER DEFAULT NULL
) IS
type xx is RECORD
(
 last_name1 employees.last_name%TYPE,
 first_name1 employees.first_name%TYPE
 );
type var is table of xx index by pls_integer;
var1 var;
BEGIN
select last_name, first_name
bulk collect into var1
from employees where department_id = DEP_ID;
for i in 1..var1.count
loop
DBMS_OUTPUT.put_line(var1(i).last_name1||'-'||var1(i).first_name1); 
end loop;
EXCEPTION
WHEN OTHERS THEN DBMS_OUTPUT.put_line('brak pracownika o tym dep ID');
END GET_EMP_IN_DEP_NAME;

/
--------------------------------------------------------
--  DDL for Procedure GET_EMPTY_DEP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_EMPTY_DEP" 
AS
    coun int;
BEGIN
    SELECT COUNT(departments.department_id) INTO coun FROM DEPARTMENTS 
    LEFT JOIN EMPLOYEES
    ON departments.department_id = employees.department_id
    WHERE employees.department_id IS NULL;
    DBMS_OUTPUT.put_line(coun);
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_JOB_COUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."GET_JOB_COUNT" 
(
    JOB IN VARCHAR,
    qty OUT NUMBER
)
AS 
BEGIN
SELECT COUNT(*)
INTO qty
FROM HR.EMPLOYEES
INNER JOIN HR.JOBS
ON HR.JOBS.JOB_ID = HR.EMPLOYEES.JOB_ID
WHERE HR.JOBS.JOB_TITLE = JOB;
 DBMS_OUTPUT.put_line(qty);
END GET_JOB_COUNT;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
--------------------------------------------------------
--  DDL for Function IF_POSITIVE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "HR"."IF_POSITIVE" 
(
    val IN DECIMAL
)
RETURN NUMBER AS 
result NUMBER;
BEGIN
    IF val > 0 THEN
        result := 1;
    ELSE IF val < 0 THEN
        result := -1;
    ELSE
        retult := 0;
    END IF;
    RETURN result;
END IF_POSITIVE;

/
--------------------------------------------------------
--  DDL for Function SIGN_CHECK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "HR"."SIGN_CHECK" 
(
    val IN DECIMAL
)
RETURN NUMBER AS 
result NUMBER;
BEGIN
    IF val > 0 THEN
        result := 1;
    ELSE IF val < 0 THEN
        result := -1;
    ELSE
        result := 0;
    END IF;
    END IF;
    RETURN result;
END SIGN_CHECK;

/
--------------------------------------------------------
--  Constraints for Table KONTO
--------------------------------------------------------

  ALTER TABLE "HR"."KONTO" MODIFY ("ID_KONTA" NOT NULL ENABLE);
  ALTER TABLE "HR"."KONTO" MODIFY ("TYTUL" NOT NULL ENABLE);
  ALTER TABLE "HR"."KONTO" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "HR"."KONTO" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "HR"."KONTO" MODIFY ("ID_TYPU_KONTA" NOT NULL ENABLE);
  ALTER TABLE "HR"."KONTO" MODIFY ("SPECJALIZACJA" NOT NULL ENABLE);
  ALTER TABLE "HR"."KONTO" ADD CONSTRAINT "KONTO_PK" PRIMARY KEY ("ID_KONTA")
  USING INDEX "HR"."KONTO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PUBLIKACJA
--------------------------------------------------------

  ALTER TABLE "HR"."PUBLIKACJA" MODIFY ("ID_PUBLIKACJI" NOT NULL ENABLE);
  ALTER TABLE "HR"."PUBLIKACJA" MODIFY ("TYTUL_PUBLIKACJI" NOT NULL ENABLE);
  ALTER TABLE "HR"."PUBLIKACJA" MODIFY ("DATA_PUBLIKACJI" NOT NULL ENABLE);
  ALTER TABLE "HR"."PUBLIKACJA" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "HR"."PUBLIKACJA" MODIFY ("MIEJSCE_WYSTAPIENIA" NOT NULL ENABLE);
  ALTER TABLE "HR"."PUBLIKACJA" ADD CONSTRAINT "PUBLIKACJA_PK" PRIMARY KEY ("ID_PUBLIKACJI")
  USING INDEX "HR"."PUBLIKACJA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STATUS_TASKA
--------------------------------------------------------

  ALTER TABLE "HR"."STATUS_TASKA" MODIFY ("ID_STATUSU_TASKA" NOT NULL ENABLE);
  ALTER TABLE "HR"."STATUS_TASKA" MODIFY ("NAZWA_STATUSU" NOT NULL ENABLE);
  ALTER TABLE "HR"."STATUS_TASKA" ADD CONSTRAINT "STATUS_TASKA_PK" PRIMARY KEY ("ID_STATUSU_TASKA")
  USING INDEX "HR"."STATUS_TASKA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SALA
--------------------------------------------------------

  ALTER TABLE "HR"."SALA" MODIFY ("ID_SALI" NOT NULL ENABLE);
  ALTER TABLE "HR"."SALA" MODIFY ("ID_BUDYNKU" NOT NULL ENABLE);
  ALTER TABLE "HR"."SALA" MODIFY ("NR_SALI" NOT NULL ENABLE);
  ALTER TABLE "HR"."SALA" MODIFY ("TYP_SALI" NOT NULL ENABLE);
  ALTER TABLE "HR"."SALA" MODIFY ("MAX_OS" NOT NULL ENABLE);
  ALTER TABLE "HR"."SALA" MODIFY ("WYPOSAZENIE" NOT NULL ENABLE);
  ALTER TABLE "HR"."SALA" ADD CONSTRAINT "ID_SALI_PK" PRIMARY KEY ("ID_SALI")
  USING INDEX "HR"."ID_SALI_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TASK
--------------------------------------------------------

  ALTER TABLE "HR"."TASK" MODIFY ("ID_TASKA" NOT NULL ENABLE);
  ALTER TABLE "HR"."TASK" MODIFY ("DATA_UTWORZENIA" NOT NULL ENABLE);
  ALTER TABLE "HR"."TASK" MODIFY ("CZAS_REALIZACJI" NOT NULL ENABLE);
  ALTER TABLE "HR"."TASK" MODIFY ("TYTUL_TASKA" NOT NULL ENABLE);
  ALTER TABLE "HR"."TASK" MODIFY ("ID_STATUSU_TASKA" NOT NULL ENABLE);
  ALTER TABLE "HR"."TASK" ADD CONSTRAINT "TAKS_PK" PRIMARY KEY ("ID_TASKA")
  USING INDEX "HR"."TAKS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZADANIE
--------------------------------------------------------

  ALTER TABLE "HR"."ZADANIE" MODIFY ("ID_ZADANIA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZADANIE" MODIFY ("ID_KONTA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZADANIE" MODIFY ("ID_TASKA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZADANIE" ADD CONSTRAINT "ZADANIE_PK" PRIMARY KEY ("ID_ZADANIA")
  USING INDEX "HR"."ZADANIE_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TYP_KONTA
--------------------------------------------------------

  ALTER TABLE "HR"."TYP_KONTA" MODIFY ("ID_TYPU_KONTA" NOT NULL ENABLE);
  ALTER TABLE "HR"."TYP_KONTA" MODIFY ("NAZWA_TYPU_KONTA" NOT NULL ENABLE);
  ALTER TABLE "HR"."TYP_KONTA" ADD CONSTRAINT "TYP_KONTA_PK" PRIMARY KEY ("ID_TYPU_KONTA")
  USING INDEX "HR"."TYP_KONTA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WAGA_ZADANIA
--------------------------------------------------------

  ALTER TABLE "HR"."WAGA_ZADANIA" MODIFY ("ID_WAGI_ZADANIA" NOT NULL ENABLE);
  ALTER TABLE "HR"."WAGA_ZADANIA" MODIFY ("WAGA" NOT NULL ENABLE);
  ALTER TABLE "HR"."WAGA_ZADANIA" ADD CONSTRAINT "WAGA_ZADANIA_PK" PRIMARY KEY ("ID_WAGI_ZADANIA")
  USING INDEX "HR"."WAGA_ZADANIA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAJECIE
--------------------------------------------------------

  ALTER TABLE "HR"."ZAJECIE" MODIFY ("ID_ZAJECIA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("ID_GRUPY" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("ID_KONTA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("ID_SALI" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("SPECJALIZACJA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("LICZBA_GODZIN" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("DZIEN_TYGODNIA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("GODZINA_ROZPOCZECIA" NOT NULL ENABLE);
  ALTER TABLE "HR"."ZAJECIE" ADD CONSTRAINT "ID_ZAJECIE_PK" PRIMARY KEY ("ID_ZAJECIA")
  USING INDEX "HR"."ID_ZAJECIE_PK"  ENABLE;
  ALTER TABLE "HR"."ZAJECIE" MODIFY ("WYPOSAZENIE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GRUPA_STUDENTOW
--------------------------------------------------------

  ALTER TABLE "HR"."GRUPA_STUDENTOW" MODIFY ("ID_GRUPY" NOT NULL ENABLE);
  ALTER TABLE "HR"."GRUPA_STUDENTOW" MODIFY ("ILOSC_OSOB" NOT NULL ENABLE);
  ALTER TABLE "HR"."GRUPA_STUDENTOW" MODIFY ("SPECJALIZACJA" NOT NULL ENABLE);
  ALTER TABLE "HR"."GRUPA_STUDENTOW" ADD CONSTRAINT "ID_GRUPY_PK" PRIMARY KEY ("ID_GRUPY")
  USING INDEX "HR"."ID_GRUPY_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BUDYNEK
--------------------------------------------------------

  ALTER TABLE "HR"."BUDYNEK" MODIFY ("ID_BUDYNKU" NOT NULL ENABLE);
  ALTER TABLE "HR"."BUDYNEK" MODIFY ("NAZWA_BUDYNKU" NOT NULL ENABLE);
  ALTER TABLE "HR"."BUDYNEK" ADD CONSTRAINT "ID_BUDYNKU_PK" PRIMARY KEY ("ID_BUDYNKU")
  USING INDEX "HR"."ID_BUDYNKU_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGIN
--------------------------------------------------------

  ALTER TABLE "HR"."LOGIN" MODIFY ("ID_KONTA" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOGIN" MODIFY ("LOGIN" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOGIN" MODIFY ("HASLO" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOGIN" ADD CONSTRAINT "ID_KONTA_PK" PRIMARY KEY ("ID_KONTA")
  USING INDEX "HR"."ID_KONTA_PK"  ENABLE;
