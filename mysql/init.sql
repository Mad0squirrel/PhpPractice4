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
    id         INT NOT NULL,
    name       VARCHAR(100)    NOT NULL,
    cost       INT             NOT NULL
);

CREATE TABLE IF NOT EXISTS vacancy
(
    id         INT NOT NULL,
    name       VARCHAR(100)    NOT NULL,
    salary       INT             NOT NULL
);


INSERT INTO users (name, password, role)
VALUES ('qwerty', '12345', 'admin'),
       ('user', 'user', 'user');

INSERT INTO menu (id, name, cost)
VALUES (1, 'Breitling', 2061500),
       (2, 'Porsche', 10230000),
       (3, 'Cartier', 4146000),
       (4, 'IWC', 4643000),
       (5, 'Ulysse Nardin', 2672000),
       (6, 'Cartier', 88212000),
       (7, 'Zenith', 3735600),
       (8, 'Rolex', 11414000);

INSERT INTO vacancy (id, name, salary)
VALUES (1, 'Кассир', 45000),
       (2, 'Менеджер', 80000),
       (3, 'Оценщик', 70000),
       (4, 'Охранник', 45000);

ALTER TABLE menu
  ADD PRIMARY KEY (id);

ALTER TABLE vacancy
  ADD PRIMARY KEY (id);

ALTER TABLE menu
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE vacancy
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;