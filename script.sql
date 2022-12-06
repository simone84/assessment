create database cdsolutions;
use cdsolutions;

CREATE TABLE Companies (
    ID int NOT NULL AUTO_INCREMENT,
    CNAME varchar(255) NOT NULL,
    EMAIL varchar(255),
    PRIMARY KEY (ID)
);

CREATE TABLE Assets (
    ANAME varchar(255) NOT NULL,
    COMPANY varchar(255) NOT NULL,
    COST varchar(255)
);

INSERT INTO Companies (CNAME, EMAIL)
VALUES ("google", "google@gmail.com");

INSERT INTO Assets (ANAME, COMPANY, COST)
VALUES ("chrome", "google", 1000000);

SELECT Companies.ID, Companies.CNAME, Assets.ANAME
FROM Companies
INNER JOIN Assets ON Companies.CNAME=Assets.COMPANY;