SET NAMES utf8mb4;
DROP DATABASE IF EXISTS commandes;
CREATE DATABASE commandes CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE commandes;

CREATE TABLE clients(
   id BIGINT PRIMARY KEY AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
    adresse VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
   
);

CREATE TABLE articles(
   id_article BIGINT PRIMARY KEY AUTO_INCREMENT,
   code_article VARCHAR(50) NOT NULL,
   libelle VARCHAR(50) NOT NULL,
   prix DECIMAL(15,2) NOT NULL,
   UNIQUE(Code_article),
   UNIQUE(libelle)
);

CREATE TABLE commandes(
   id BIGINT PRIMARY KEY AUTO_INCREMENT,
   code VARCHAR(50) NOT NULL,
   date_commande DATE NOT NULL,
    total_ht DECIMAL(10,2) NOT NULL,
    total_ttc DECIMAL(10,2) NOT NULL,
   id_client BIGINT NOT NULL,
    FOREIGN KEY(id_client) REFERENCES clients(id)
);

CREATE TABLE commande_ligne(
   id BIGINT PRIMARY KEY AUTO_INCREMENT,
   id_article BIGINT NOT NULL,
   id_commande BIGINT,
   quantite DECIMAL(10,2) NOT NULL,
   FOREIGN KEY(id_article) REFERENCES articles(id_article),
   FOREIGN KEY(id) REFERENCES commandes(id)
);
