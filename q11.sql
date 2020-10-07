Select p.Nome, d.Nome, f.Nome, e.Nome
From Projeto p, Departamento d
Where p.CodDepto = d.Codigo
Left Join Funcionario f, Departamento e
Where p.CodResponsavel = f.Codigo AND e.Codigo = f.CodDepto AND NOT f.CodDepto = d.Codigo;
