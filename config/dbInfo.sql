CREATE DATABASE IF NOT EXISTS `camagru` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `camagru`;

CREATE TABLE IF NOT EXISTS users
(id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
login varchar(255) NOT NULL,
email varchar(255) NOT NULL, 
password varchar(255) NOT NULL,
notisfications tinyint(1) NOT NULL DEFAULT '1',
confirm tinyint(1) NOT NULL DEFAULT '0',
token varchar(255));

CREATE TABLE IF NOT EXISTS photos
(id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
path varchar(255) NOT NULL,
owner int(11));

CREATE TABLE IF NOT EXISTS likes
(id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
photoId int(11),
owner int(11));

CREATE TABLE IF NOT EXISTS comments
(id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
comment varchar(255) NOT NULL,
photoId int(11),
owner int(11));

INSERT INTO users (login, email, password, confirm) 
VALUES
('test1', 'test1@gmail.com', '$2y$10$DN58ikL04jlGsndhA6F2S.w21CktwkAWFs757Jz4x.kHIKltegv62', true),
('test2', 'test2@gmail.com', '$2y$10$8jVbQ/HVc2Iyw4C0YDvHpO5arJ2CbXnE7oSXWswuTH4Z3gxdwaYNi', true),
('test3', 'test3@gmail.com', '$2y$10$7djjAzdo0y2pefR1N2NZSeQbRXFvD0utulO5yDMUCSy2bXmvf1s7u', false);