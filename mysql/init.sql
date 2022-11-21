CREATE DATABASE IF NOT EXISTS appDB default charset utf8;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT, UPDATE, INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;
SET NAMES utf8;
CREATE TABLE IF NOT EXISTS users
(
    id       INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name     VARCHAR(100)    NOT NULL,
    password VARCHAR(100)    NOT NULL,
    role     VARCHAR(10)     NOT NULL
);
CREATE TABLE IF NOT EXISTS menu
(
    id         INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name       VARCHAR(100)    NOT NULL,
    collection VARCHAR(100)    NOT NULL,
    cost       INT             NOT NULL
);


INSERT INTO users (name, password, role)
VALUES ('qwerty', '12345', 'admin'),
       ('user', 'user', 'user');

INSERT INTO menu (name, collection, cost)
VALUES ('Breitling', 'Super Chronomat', 2061500),
       ('Porsche', 'Indicator', 10230000),
       ('Cartier', 'Ballon bleu de', 4146000),
       ('IWC', 'Portugieser', 4643000),
       ('Ulysse Nardin', 'Skeleton', 2672000),
       ('Cartier', 'Baignoire', 88212000),
       ('Zenith', 'Defy', 3735600),
       ('Rolex', 'Daytona', 11414000);