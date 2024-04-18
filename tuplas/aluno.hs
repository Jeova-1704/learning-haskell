type NomeAluno = String
type NotaAluno = Int
type Aluno = (NomeAluno, NotaAluno) -- Nome, nota
type Turma = [Aluno]


aprovados :: Turma -> Int -> [NomeAluno]
aprovados [] _ = []
aprovados turma nota = [nome | (nome, media) <- turma, media >= nota]


main :: IO()
main = do
    let turma = [("Joao", 7), ("Maria", 8), ("Jose", 5), ("Ana", 6), ("Pedro", 9)]
    print(aprovados turma 7)
    print(aprovados turma 8)
