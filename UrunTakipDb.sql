USE [UrunTakipDb]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 18.01.2022 22:21:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Aciklama] [nvarchar](400) NOT NULL,
	[Stok] [int] NOT NULL,
	[EklemeTarihi] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([Id], [Ad], [Aciklama], [Stok], [EklemeTarihi]) VALUES (12, N'iPhone 13', N'Güzide bir teknolojik alet.', 4, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Urunler] ([Id], [Ad], [Aciklama], [Stok], [EklemeTarihi]) VALUES (13, N'iPhone 13', N'Güzide bir teknolojik alet.', 4, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Urunler] ([Id], [Ad], [Aciklama], [Stok], [EklemeTarihi]) VALUES (14, N'iPhone 13', N'Güzide bir teknolojik alet.', 4, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Urunler] ([Id], [Ad], [Aciklama], [Stok], [EklemeTarihi]) VALUES (15, N'iPhone 13', N'Güzide bir teknolojik alet.', 4, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Urunler] ([Id], [Ad], [Aciklama], [Stok], [EklemeTarihi]) VALUES (16, N'iPhone 13', N'Güzide bir teknolojik alet.', 4, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Urunler] ([Id], [Ad], [Aciklama], [Stok], [EklemeTarihi]) VALUES (17, N'Deneme', N'Deneme ürün açıklaması', 5, CAST(N'2022-01-18T21:28:00.2029455' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
