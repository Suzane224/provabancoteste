/* Lógico_1: */

CREATE TABLE Aluno (
    id int PRIMARY KEY,
    ra char(8),
    tempoestudo int,
    rendafamiliar decimal(8,2)
);

CREATE TABLE diariobordo (
    id int PRIMARY KEY,
    texto text,
    datahora datetime,
    fk_Aluno_id int
);
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_Aluno_id)
    REFERENCES Aluno (id)
    ON DELETE CASCADE;