CREATE TABLE POSTAVKA (
    ID_POSTAVKA        VARCHAR(6) NOT NULL,
    NAMEPROIZVOD       VARCHAR(15) NOT NULL,
    NAMEPOSTAVSHIKA    VARCHAR(15) NOT NULL,
    ADRESSPOSTAVSHIKA  VARCHAR(60) NOT NULL
);
ALTER TABLE POSTAVKA ADD PRIMARY KEY (ID_POSTAVKA);
