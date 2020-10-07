Select p.Nome, p.DataInicio, p.DataFim, a.Nome, a.DataInicio, a.DataFim
From Projeto p, Atividade a
Where p.Codigo = a.CodProjeto;
