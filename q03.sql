Select Nome, DtNasc
From Funcionario
Where DtNasc > 21 AND NOT Codigo = (Select CodGerente From Departamento);
