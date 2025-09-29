SET NAMES utf8mb4;
CREATE DATABASE commandes CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE clients(
   id INT,
   Nom VARCHAR(50) NOT NULL,
   Prenom VARCHAR(50) NOT NULL,
    Adresse VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE articles(
   id_article BIGINT PRIMARY KEY AUTO_INCREMENT,
   Code_article VARCHAR(50) NOT NULL,
   Libelle VARCHAR(50) NOT NULL,
   Prix DECIMAL(15,2) NOT NULL,
   PRIMARY KEY(Id_article),
   UNIQUE(Code_article),
   UNIQUE(Libelle)
);

CREATE TABLE commandes(
   id BIGINT PRIMARY KEY AUTO_INCREMENT,
   code VARCHAR(50) NOT NULL,
   date_commande DATE NOT NULL,
    total_ht DECIMAL(10,2) NOT NULL,
    total_ttc DECIMAL(10,2) NOT NULL,
   id_client BIGINT NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(code),
   UNIQUE(date_),
   FOREIGN KEY(id_1) REFERENCES clients(id)
);

CREATE TABLE commande_ligne(
   id BIGINT PRIMARY KEY AUTO_INCREMENT,
   id_article BIGINT PRIMARY KEY AUTO_INCREMENT,
   id_commandeINT,
   quantité DECIMAL(10,2) NOT NULL,
   FOREIGN KEY(Id_article) REFERENCES articles(Id_article),
   FOREIGN KEY(id) REFERENCES commandes(id)
);
