CREATE VIEW Quantidade AS
Select f.Codigo, Count(a.Codigo) AS toal
From Funcionario f, Atividade a
Where f.Codigo = a.CodResponsavel
Group by f.Codigo;

Select f.Nome, q.Total
From Funcionario f, Atividade a, Qaantidade q
Where f.Codigo = a.CodResponsavel AND f.Codigo = q.f.Codigo;
