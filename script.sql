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
VALUES ("google", "admin@gmail.com");

INSERT INTO Companies (CNAME, EMAIL)
VALUES ("facebook", "admin@facebook.com");

INSERT INTO Assets (ANAME, COMPANY, COST)
VALUES ("chrome", "google", 1000000);

INSERT INTO Assets (ANAME, COMPANY, COST)
VALUES ("youtube", "google", 5000000);

INSERT INTO Assets (ANAME, COMPANY, COST)
VALUES ("gmail", "google", 4000000);