USE [Financiamentos]
GO


INSERT INTO [dbo].[Cliente] ([Id], [Nome], [Cpf], [UF], [Celular]) VALUES (1, 'João Silva', '12345678901', 'SP', '11987654321');
INSERT INTO [dbo].[Cliente] ([Id], [Nome], [Cpf], [UF], [Celular]) VALUES (2, 'Maria Santos', '98765432109', 'RJ', '21987654321');
INSERT INTO [dbo].[Cliente] ([Id], [Nome], [Cpf], [UF], [Celular]) VALUES (3, 'José Oliveira', '45678912307', 'MG', '31987654321');
INSERT INTO [dbo].[Cliente] ([Id], [Nome], [Cpf], [UF], [Celular]) VALUES (4, 'Ana Pereira', '65432198705', 'BA', '71987654321');
INSERT INTO [dbo].[Cliente] ([Id], [Nome], [Cpf], [UF], [Celular]) VALUES (5, 'Paulo Costa', '78912345603', 'RS', '51987654321');

INSERT INTO [dbo].[Financiamento] ([Id], [IdCliente], [Tipo], [Valor]) VALUES (1, 1, 'Crédito Pessoal', 1000.00);
INSERT INTO [dbo].[Financiamento] ([Id], [IdCliente], [Tipo], [Valor]) VALUES (2, 2, 'Financiamento Imobiliário', 50000.00);
INSERT INTO [dbo].[Financiamento] ([Id], [IdCliente], [Tipo], [Valor]) VALUES (3, 3, 'Empréstimo Consignado', 3000.00);
INSERT INTO [dbo].[Financiamento] ([Id], [IdCliente], [Tipo], [Valor]) VALUES (4, 4, 'Crédito Pessoal', 1500.00);
INSERT INTO [dbo].[Financiamento] ([Id], [IdCliente], [Tipo], [Valor]) VALUES (5, 5, 'Crédito Pessoal', 2000.00);

truncate table [dbo].[Parcela] 

INSERT INTO [dbo].[Parcela] ([Id], [IdFinanciamento], [NumeroParcela], [Valor], [Vencimento], [Pagamento])
VALUES
    -- Financiamento 1
    (1, 1, 1, 100.00, DATEADD(MONTH, -8, GETDATE()), DATEADD(MONTH, -8, GETDATE())),
	(2, 1, 2, 100.00, DATEADD(MONTH, -7, GETDATE()), DATEADD(MONTH, -7, GETDATE())),
	(3, 1, 3, 100.00, DATEADD(MONTH, -6, GETDATE()), DATEADD(MONTH, -6, GETDATE())),
	(4, 1, 4, 100.00, DATEADD(MONTH, -5, GETDATE()), DATEADD(MONTH, -5, GETDATE())),
	(5, 1, 5, 100.00, DATEADD(MONTH, -4, GETDATE()), DATEADD(MONTH, -4, GETDATE())),
	(6, 1, 6, 100.00, DATEADD(MONTH, -3, GETDATE()), DATEADD(MONTH, -3, GETDATE())),
	(7, 1, 7, 100.00, DATEADD(MONTH, -2, GETDATE()), DATEADD(MONTH, -2, GETDATE())),
	(8, 1, 8, 100.00, DATEADD(MONTH, -1, GETDATE()), DATEADD(MONTH, -1, GETDATE())),
	(9, 1, 9, 100.00, GETDATE(), NULL),
	(10, 1, 10, 100.00, DATEADD(MONTH, 1, GETDATE()), NULL),
    -- Financiamento 2
    (11, 2, 1, 5000.00, DATEADD(MONTH, -5, GETDATE()), DATEADD(MONTH, -5, GETDATE())),
	(12, 2, 2, 5000.00, DATEADD(MONTH, -4, GETDATE()), DATEADD(MONTH, -4, GETDATE())),
	(13, 2, 3, 5000.00, DATEADD(MONTH, -3, GETDATE()), DATEADD(MONTH, -3, GETDATE())),
	(14, 2, 4, 5000.00, DATEADD(MONTH, -2, GETDATE()), DATEADD(MONTH, -2, GETDATE())),
	(15, 2, 5, 5000.00, DATEADD(MONTH, -1, GETDATE()), DATEADD(MONTH, -1, GETDATE())),
	(16, 2, 6, 5000.00, DATEADD(MONTH, 0, GETDATE()), null),
	(17, 2, 7, 5000.00, DATEADD(MONTH, 1, GETDATE()), null),
	(18, 2, 8, 5000.00, DATEADD(MONTH, 2, GETDATE()), null),
	(19, 2, 9, 5000.00, DATEADD(MONTH, 3, GETDATE()), null),
	(20, 2, 10, 50000.00, DATEADD(MONTH, 4, GETDATE()), null),
	-- Financiamento 3
    (21, 3, 1, 100.00, DATEADD(MONTH, 0, GETDATE()), null),
	(22, 3, 2, 100.00, DATEADD(MONTH, 1, GETDATE()), null),
	(23, 3, 3, 100.00, DATEADD(MONTH, 2, GETDATE()), null),	
	-- Financiamento 4
    (24, 4, 1, 100.00, DATEADD(MONTH, 0, GETDATE()), null),
	(25, 4, 2, 100.00, DATEADD(MONTH, 1, GETDATE()), null),
	(26, 4, 3, 100.00, DATEADD(MONTH, 2, GETDATE()), null),
	-- Financiamento 5
    (27, 5, 1, 100.00, DATEADD(MONTH, -1, GETDATE()), DATEADD(MONTH, -1, GETDATE())),
	(28, 5, 2, 100.00, DATEADD(DAY, -5, GETDATE()), null),
	(29, 5, 3, 100.00, DATEADD(MONTH, 2, GETDATE()), null)
