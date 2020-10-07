Select Nome
From Funcionario
Where Not DtNasc = (Select Max(DtNasc) From Funcionario)
