USE [Financiamentos]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[Id] [int] NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[Cpf] [varchar](11) NOT NULL,
	[UF] [varchar](2) NOT NULL,
	[Celular] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Financiamento](
	[Id] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Financiamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Financiamento]  WITH CHECK ADD  CONSTRAINT [FK_Financiamento_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO

ALTER TABLE [dbo].[Financiamento] CHECK CONSTRAINT [FK_Financiamento_Cliente]
GO


CREATE TABLE [dbo].[Parcela](
	[Id] [int] NOT NULL,
	[IdFinanciamento] [int] NOT NULL,
	[NumeroParcela] [int] NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[Vencimento] [datetime] NOT NULL,
	[Pagamento] [datetime] NULL,
 CONSTRAINT [PK_Parcela] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Parcela]  WITH CHECK ADD  CONSTRAINT [FK_Parcela_Financiamento] FOREIGN KEY([IdFinanciamento])
REFERENCES [dbo].[Financiamento] ([Id])
GO

ALTER TABLE [dbo].[Parcela] CHECK CONSTRAINT [FK_Parcela_Financiamento]
GO

