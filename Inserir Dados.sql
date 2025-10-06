INSERT INTO Professores (nome, especialidade, email) VALUES
('João Mendes', 'Piano', 'joao.mendes@escola.pt'),
('Maria Silva', 'Violino', 'maria.silva@escola.pt'),
('Carlos Rocha', 'Guitarra', 'carlos.rocha@escola.pt'),
('Ana Sousa', 'Bateria', 'ana.sousa@escola.pt'),
('Luís Santos', 'Canto', 'luis.santos@escola.pt');

INSERT INTO Alunos (nome, idade, telefone, email) VALUES
('Ana Costa', 18, '912345678', 'ana.costa@email.com'),
('Pedro Lima', 22, NULL, 'pedro.lima@email.com'),
('Rita Nunes', 19, '913223344', 'rita.nunes@email.com'),
('Tiago Sousa', 25, '914556677', 'tiago.sousa@email.com'),
('Beatriz Alves', 20, NULL, 'beatriz.alves@email.com');

INSERT INTO Cursos (nome, duracaoMeses, idProfessor) VALUES
('Curso de Piano Básico', 12, 1),
('Curso de Violino Avançado', 18, 2),
('Curso de Guitarra Elétrica', 10, 3),
('Curso de Bateria Iniciante', 6, 4),
('Curso de Canto', 8, 5);

INSERT INTO Instrumentos (nome, tipo) VALUES
('Piano', 'Teclas'),
('Violino', 'Cordas'),
('Guitarra', 'Cordas'),
('Bateria', 'Percussão'),
('Microfone', 'Voz');

INSERT INTO AlunosInstrumentos (idAluno, idInstrumento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO Aulas (dataAula, horario, idCurso) VALUES
('2025-02-01', '10:00:00', 1),
('2025-02-02', '11:00:00', 2),
('2025-02-03', '14:00:00', 3),
('2025-02-04', '15:00:00', 4),
('2025-02-05', '16:00:00', 5);

INSERT INTO Inscricoes (idAluno, idCurso, dataInscricao) VALUES
(1, 1, '2025-01-10'),
(2, 2, '2025-02-05'),
(3, 3, '2025-02-12'),
(4, 4, '2025-03-01'),
(5, 5, '2025-03-05');
