CREATE DATABASE IF NOT EXISTS sncf;
USE sncf
CREATE TABLE IF NOT EXISTS ville (
	code_postal INT PRIMARY KEYS NOT NULL,
	nom VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS gare (
	id_gare INT PRIMARY KEYS NOT NULL,
	nom VARCHAR(50),
	id INT NOT NULL FOREIGN KEY references ville(code_postal)
);
CREATE TABLE IF NOT EXISTS tgv (
	id INT PRIMARY KEYS NOT NULL,
	heure_depart DATETIME,
	heure_arrive DATETIME,
	gare_depart INT NOT NULL FOREIGN KEY references gare(id_gare),
	gare_arrive INT NOT NULL FOREIGN KEY references gare(id_gare)
);
CREATE USER IF NOT EXIST ‘user’@’%’ IDENTIFIED BY ‘user’;
GRANT ALL PRIVILEGES ON *.* TO ‘user’@’%’;
