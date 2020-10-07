Create View Quantidade AS
Select Codigo, CodDepto
From Projeto;

Select Departamento.Nome, Funcionario.Nome, Count(Codigo)
From Departamento
Left Join Funcionario
Where Departamento.CodGerente = Funcionario.Codigo
Left Join Quantidade
Where Quantidade.CodDepto = Departamento.Codigo;
