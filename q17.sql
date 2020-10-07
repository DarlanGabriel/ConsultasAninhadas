CREATE VIEW Maximo AS
SELECT Max(g.Salario) as Total
From Funcionario g, Departamento d
Where d.CodGerente = g.Codigo;

Select p.Codigo, p.Descricao
From Projeto p, Funcionario f, Maximo m
Where p.CodGerente = f.Codigo AND f.Salario = m.Total;
