Select Nome, Salario, CodDepto
From Funcionario
Where NOT Codigo = (Select CodGerente From Departamento)
Order by CodDepto;
