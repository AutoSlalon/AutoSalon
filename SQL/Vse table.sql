 CREATE TABLE CAR (
    ID_CAR        integer NOT NULL,
    NAMEMARKA      VARCHAR(25) NOT NULL,
    COLOR          VARCHAR(10) NOT NULL,
    KOLDV    VARCHAR(8) NOT NULL,
    PRIVOD         VARCHAR(15) NOT NULL,
    KATEG     VARCHAR(5) NOT NULL,
    COMP  VARCHAR(15) NOT NULL,
    CENA           integer NOT NULL,
    COD_POST   integer NOT NULL,
    COD_KUZ     integer NOT NULL,
    COD_DVIG       integer NOT NULL
);
CREATE TABLE DOGOVOR (
    ID_DOGOVOR     integer NOT NULL,
    DATEDOGV DATE NOT NULL,
    NAMECS   VARCHAR(15) NOT NULL,
    COD_CUST  integer NOT NULL,
    COD_RAB  integer NOT NULL,
    COD_CAR        integer NOT NULL
);
CREATE TABLE DOLJNOST (
    ID_DOLJ    integer NOT NULL,
    NAMEDOLJ  VARCHAR(30) NOT NULL
);
CREATE TABLE CUSTOMERS (
    ID_CUST      integer NOT NULL,
    FIRSTNAME         VARCHAR(10) NOT NULL,
    LASTNAME          VARCHAR(15) NOT NULL,
    PATRONYMIC        VARCHAR(15) NOT NULL,
    TEL_CUST     VARCHAR(11) NOT NULL,
    ADR_CUST  VARCHAR(50) NOT NULL,
    PASSPORT          VARCHAR(12) NOT NULL,
    INN               VARCHAR(20) NOT NULL
);
CREATE TABLE POSTAVKA (
    ID_POST       integer NOT NULL,
    NAMEPR       VARCHAR(15) NOT NULL,
    NAMEPOST    VARCHAR(15) NOT NULL,
    ADRPOST  VARCHAR(60) NOT NULL
);
CREATE TABLE RABOTNIC (
    ID_RAB  integer NOT NULL,
    NAMERAB      VARCHAR(15) NOT NULL,
    LASTRAB      VARCHAR(15) NOT NULL,
    TEL_RAB      VARCHAR(11),
    ADR  VARCHAR(50),
    COD_DOLZ     integer NOT NULL
);
CREATE TABLE TIP_DVIG (
    ID_TIP_DVIG  integer NOT NULL,
    NAME_TIP_DVIG    VARCHAR(30) NOT NULL
);
CREATE TABLE TIP_KUSOV (
    ID_TIP_KUZOV    integer NOT NULL,
    NAME_TIP_KUZOV  VARCHAR(15) NOT NULL
);

ALTER TABLE CAR ADD PRIMARY KEY (ID_CAR);
ALTER TABLE DOGOVOR ADD PRIMARY KEY (ID_DOGOVOR);
ALTER TABLE DOLJNOST ADD PRIMARY KEY (ID_DOLJ);
ALTER TABLE CUSTOMERS ADD PRIMARY KEY (ID_CUST);
ALTER TABLE POSTAVKA ADD PRIMARY KEY (ID_POST);
ALTER TABLE RABOTNIC ADD PRIMARY KEY (ID_RAB);
ALTER TABLE TIP_DVIG ADD PRIMARY KEY (ID_TIP_DVIG);
ALTER TABLE TIP_KUSOV ADD PRIMARY KEY (ID_TIP_KUZOV);


ALTER TABLE CAR ADD CONSTRAINT CAR_1 FOREIGN KEY (COD_POST) REFERENCES POSTAVKA (ID_POST);
ALTER TABLE CAR ADD CONSTRAINT CAR_2 FOREIGN KEY (COD_KUZ) REFERENCES TIP_KUSOV (ID_TIP_KUZOV);
ALTER TABLE CAR ADD CONSTRAINT CAR_3 FOREIGN KEY (COD_DVIG) REFERENCES TIP_DVIG (ID_TIP_DVIG);
ALTER TABLE RABOTNIC ADD CONSTRAINT RABOTNIC_1 FOREIGN KEY (COD_DOLZ) REFERENCES DOLJNOST (ID_DOLJ);
ALTER TABLE DOGOVOR  ADD CONSTRAINT DOROVOR_1 FOREIGN KEY (COD_RAB) REFERENCES RABOTNIC (ID_RAB);
ALTER TABLE DOGOVOR  ADD CONSTRAINT DOROVOR_2 FOREIGN KEY (COD_CUST) REFERENCES CUSTOMERS (ID_CUST);
ALTER TABLE DOGOVOR  ADD CONSTRAINT DOROVOR_3 FOREIGN KEY (COD_CAR) REFERENCES CAR (ID_CAR);


create generator gen_car;
create generator gen_rab;
create generator gen_pokup;
create generator gen_dogov;
create generator gen_dolj;
create generator gen_tipkuz;
create generator gen_tipdvig;
create generator gen_post;



