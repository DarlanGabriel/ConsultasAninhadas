Select Nome, Salario, Descrição
From Funcionario
Left Join Departamento
On Funcionario.CodDepto = Departamento.Codigo;
