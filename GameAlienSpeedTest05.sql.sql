create database JogogAlien;

use JogogAlien;

CREATE TABLE missaocompetecia(
	id INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE missao (
    ID INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(80),
    Forca BOOLEAN,
    fk_competencia_ID INT
);

CREATE TABLE historia (
    ID INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(80),
    Descricao VARCHAR(80),
    Final BOOLEAN
);

CREATE TABLE competencia (
    ID INT PRIMARY KEY,
    Descricao VARCHAR(150)
);

CREATE TABLE verbo (
    ID INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY,
    Nome_Verbo VARCHAR(80),
    fk_bloom_ID INT 
);

CREATE TABLE blooom (
    ID INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(80)
);

CREATE TABLE etapa (
	ID INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Relacionamento_2 (
    fk_competencia_ID INT,
    fk_verbo_ID INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Relacionamento_4 (
    fk_bloom_ID INT PRIMARY KEY AUTO_INCREMENT
);
 
ALTER TABLE missao ADD CONSTRAINT FK_missao_2
    FOREIGN KEY (fk_competencia_ID)
    REFERENCES competencia (ID)
    ON DELETE CASCADE;
 
ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_ID)
    REFERENCES bloom (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Relacionamento_2 ADD CONSTRAINT FK_Relacionamento_2_1
    FOREIGN KEY (fk_competencia_ID)
    REFERENCES competencia (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Relacionamento_2 ADD CONSTRAINT FK_Relacionamento_2_2
    FOREIGN KEY (fk_verbo_ID)
    REFERENCES verbo (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Relacionamento_4 ADD CONSTRAINT FK_Relacionamento_4_1
    FOREIGN KEY (fk_bloom_ID)
    REFERENCES bloom (ID)
    ON DELETE SET NULL;
    
    SELECT * FROM blooom;
    
    drop table bloom;
    
    INSERT INTO blooom VALUES(
		"","MEMORIZAR"
    );
    INSERT INTO blooom VALUES(
		"","COMPREEDER"
    );
    INSERT INTO blooom VALUES(
		"","APLICAR"
    );
    INSERT INTO blooom VALUES(
		"","ANALISAR"
    );
    INSERT INTO blooom VALUES(
		"","AVALIAR"
    );
    INSERT INTO blooom VALUES(
		"","CRIAR"
    );
    