Select Nome
From Funcionario
Where Salario > (Select MAX(Salario) From Funcionario Where CodDepto = 5)
