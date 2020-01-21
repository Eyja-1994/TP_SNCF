CREATE DATABASE IF NOT EXISTS sncf;
USE sncf
CREATE TABLE IF NOT EXISTS ville (
	code_postal INT PRIMARY KEY NOT NULL,
	nom VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS gare (
	id_gare INT PRIMARY KEY NOT NULL,
	nom VARCHAR(50),
	id_postal INT NOT NULL,
	FOREIGN KEY (id_postal) REFERENCES ville(code_postal)
);
CREATE TABLE IF NOT EXISTS tgv (
	id INT PRIMARY KEY NOT NULL,
	heure_depart DATETIME,
	heure_arrive DATETIME,
	gare_depart INT NOT NULL,
	gare_arrive INT NOT NULL,
	FOREIGN KEY (gare_depart) REFERENCES gare(id_gare),
	FOREIGN KEY (gare_arrive) REFERENCES gare(id_gare)
);
/*CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';
GRANT ALL PRIVILEGES ON * . * TO 'user'@'%';
*\
