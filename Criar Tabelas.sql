CREATE DATABASE EscolaMusica;
USE EscolaMusica;

CREATE TABLE Professores (
    idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(80),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Alunos (
    idAluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT CHECK (idade > 0),
    telefone VARCHAR(15),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Cursos (
    idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    duracaoMeses INT CHECK (duracaoMeses > 0),
    idProfessor INT,
    FOREIGN KEY (idProfessor) REFERENCES Professores(idProfessor)
);

CREATE TABLE Aulas (
    idAula INT PRIMARY KEY AUTO_INCREMENT,
    dataAula DATE NOT NULL,
    horario TIME NOT NULL,
    idCurso INT,
    FOREIGN KEY (idCurso) REFERENCES Cursos(idCurso)
);

CREATE TABLE Instrumentos (
    idInstrumento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50)
);

CREATE TABLE AlunosInstrumentos (
    idAluno INT,
    idInstrumento INT,
    PRIMARY KEY (idAluno, idInstrumento),
    FOREIGN KEY (idAluno) REFERENCES Alunos(idAluno),
    FOREIGN KEY (idInstrumento) REFERENCES Instrumentos(idInstrumento)
);

CREATE TABLE Inscricoes (
    idInscricao INT PRIMARY KEY AUTO_INCREMENT,
    idAluno INT,
    idCurso INT,
    dataInscricao DATE,
    FOREIGN KEY (idAluno) REFERENCES Alunos(idAluno),
    FOREIGN KEY (idCurso) REFERENCES Cursos(idCurso)
);
