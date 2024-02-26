
--Listar todos os clientes do estado de SP que possuem mais de 60% das parcelas pagas;


SELECT c.Id, c.Nome, c.Cpf, c.UF, c.Celular
FROM Cliente c
WHERE c.UF = 'SP'
AND EXISTS (
    SELECT 1
    FROM Financiamento f
    JOIN Parcela p ON f.Id = p.IdFinanciamento
    WHERE f.IdCliente = c.Id
    GROUP BY f.Id
    HAVING SUM(CASE WHEN p.Pagamento IS NOT NULL THEN 1 ELSE 0 END) * 1.0 / COUNT(*) > 0.6
)




--Listar os primeiros quatro clientes que possuem alguma parcela com mais de cinco dia em
--atraso (Data Vencimento maior que data atual E data pagamento nula).
SELECT TOP 4 c.Id, c.Nome, c.Cpf, c.UF, c.Celular
FROM Cliente c
WHERE EXISTS (
    SELECT 1
    FROM Financiamento f
    JOIN Parcela p ON f.Id = p.IdFinanciamento
    WHERE f.IdCliente = c.Id
    AND p.Vencimento < GETDATE()
    AND p.Pagamento IS NULL
    AND DATEDIFF(DAY, p.Vencimento, GETDATE()) < 5
)
