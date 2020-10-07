Create View F0 AS
Select f.Codigo, f.Nome, f.Salario, d.Codigo, Count(d.codigo)
From Funcionario f, Projeto p, Departamento d
Where f.Nome = p.CodResponsavel;
Group by f.Nome;

Create View G0 AS
Select g.Codigo, g.Salario, d.Codigo
From Funcionario g, Departamento d
Where g.Codigo = d.CodGerente;

Select f.Nome, f.Salario,
From F0, G0
Where F0.f.salario > G0.g.salario AND F0.d.Codigo = G0.d.Codigo;
