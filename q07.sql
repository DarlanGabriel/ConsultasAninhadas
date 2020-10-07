Create View Quantidade AS
Select Count(f.Codigo) as Total, d.Codigo
From Funcionario f, Departamento d
Where f.CodDepto = d.Codigo
Group By d.Codigo;

Select Departamento.Nome, Funcionario.Nome, Total
From Departamento
Left Join Funcionario
Where Departamento.CodGerente = Funcionario.Codigo
Left Join Quantidade
Where Quantidade.d.Codigo = Departamento.Codigo;
