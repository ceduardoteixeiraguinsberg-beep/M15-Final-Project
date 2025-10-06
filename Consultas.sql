
SELECT * FROM Alunos;

SELECT nome, idade FROM Alunos WHERE idade > 20;

SELECT c.nome AS Curso, p.nome AS Professor
FROM Cursos c
JOIN Professores p ON c.idProfessor = p.idProfessor;

SELECT a.dataAula, a.horario, c.nome AS Curso
FROM Aulas a
JOIN Cursos c ON a.idCurso = c.idCurso;

SELECT al.nome AS Aluno, i.nome AS Instrumento
FROM AlunosInstrumentos ai
JOIN Alunos al ON ai.idAluno = al.idAluno
JOIN Instrumentos i ON ai.idInstrumento = i.idInstrumento;

SELECT i.idInscricao, a.nome AS Aluno, c.nome AS Curso, p.nome AS Professor
FROM Inscricoes i
JOIN Alunos a ON i.idAluno = a.idAluno
JOIN Cursos c ON i.idCurso = c.idCurso
JOIN Professores p ON c.idProfessor = p.idProfessor;

SELECT c.nome AS Curso, COUNT(i.idAluno) AS Total_Alunos
FROM Cursos c
LEFT JOIN Inscricoes i ON c.idCurso = i.idCurso
GROUP BY c.nome;

SELECT COUNT(*) AS TotalAlunos FROM Alunos;

SELECT AVG(idade) AS IdadeMedia FROM Alunos;

SELECT MAX(idade) AS MaisVelho, MIN(idade) AS MaisNovo FROM Alunos;
