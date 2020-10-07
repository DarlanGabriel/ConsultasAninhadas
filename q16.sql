CREATE VIEW RicosGerentes AS
Select g.Codigo, g.Salario,
From Funcionario f, Departamento d
Where g.Codigo = d.CodGerente;

Select f.Nome
From Funcionario f, Projeto p, Departamento d
Where f.Codigo = p.CodResponsavel AND f.Codigo = d.CodGerente
UNION ALL
Select f.Nome
From Funcionario f, Projeto p, Departamento d, RicosGerentes r
Where f.Codigo = p.CodResponsavel AND f.Codigo = r.g.Codigo AND f.Salario > r.g.Salario;
