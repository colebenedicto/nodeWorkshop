DROP DATABASE IF EXISTS TEST_DB;
CREATE DATABASE TEST_DB;

DROP TABLE USERS;
CREATE TABLE USERS (
    ID INT NOT NULL auto_increment PRIMARY KEY,
    EMAIL VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL
);
INSERT INTO USERS
    (EMAIL, PASSWORD)
VALUES
    ("champagne_problems@tstv.com", "midasTouch"),
    ("ivy@tstv.com", "houseOfStone"),
    ("tis_the_damn_season@tstv.com", "mudOnTruckTires"),
    ("time_to_go@tstv.com", "youJustKnow"),
    ("cowboy_like_me", "eyesFullOfStars"),
    ("evermore@tstv.com", "feelingSoPeculiar"),
    ("gold_rush", "cantDareToDream"),
    ("tolerate_it@tstv.com", "templeMuralSky");

DROP TABLE VIDEOS;
CREATE TABLE VIDEOS (
    SERIAL_NUMBER VARCHAR(255),
    IDENTIFIER VARCHAR(255),
    TITLE VARCHAR(255),
    GENRE VARCHAR(255),
    RELEASE_DATE DATE,
    AVAILABLE BOOLEAN,
    RENTAL_PLACE INT(3)
);


DROP TABLE RENTALS;
CREATE TABLE RENTALS (

);
