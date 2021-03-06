
CREATE TABLE [dbo].[CompanySetup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CompanySetup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemSetup]    Script Date: 06-May-2018 8:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemSetup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[CompanyId] [int] NULL,
	[ItemName] [varchar](50) NULL,
	[ReorderLevel] [int] NULL,
 CONSTRAINT [PK_ItemSetup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 06-May-2018 8:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_ProductCatagory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockIn]    Script Date: 06-May-2018 8:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockIn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[ItemId] [int] NULL,
	[StockQuantity] [int] NULL,
 CONSTRAINT [PK_StockIn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockOutSell]    Script Date: 06-May-2018 8:16:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockOutSell](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[Sell] [int] NULL,
	[Date] [smalldatetime] NULL,
 CONSTRAINT [PK_StockOutSubtract] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CompanySetup] ON 

INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (1, N'Pran')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (2, N'RFL')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (5, N'Bengal')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (6, N'Ispahani')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (7, N'Matador')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (8, N'Libra')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (9, N'a')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (10, N'b')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (11, N'c')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (12, N'd')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (13, N'e')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (14, N'f')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (15, N'123')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (16, N'jhjshgdf')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (17, N'ksls')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (18, N'rwrwer')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (19, N'sakj')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (20, N'dfgg')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (1008, N'Kitchen Items')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (1009, N'Cosmetics')
INSERT [dbo].[CompanySetup] ([Id], [CompanyName]) VALUES (1010, N'Regal')
SET IDENTITY_INSERT [dbo].[CompanySetup] OFF
SET IDENTITY_INSERT [dbo].[ItemSetup] ON 

INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (1, 3, 5, N'Dining Chair', 5)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (2, 8, 1, N'Juice', 10)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (3, 9, 7, N'Gel Pen', 100)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (4, 3, 7, N'Chair', 8)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (5, 8, 2, N'Soft Brush', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (6, 3, 5, N'123', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (7, 3, 2, N'45564', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (8, 3, 5, N's', 5)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (9, 3, 5, N'dfgdg', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (10, 3, 5, N'dfgd', 10)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (11, 8, 2, N'ghgf', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (12, 8, 2, N'ghgk', 8)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (13, 3, 2, N'jhg', 2)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (14, 3, 2, N'jh', 10)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (15, 3, 2, N'jkj', 10)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (16, 8, 2, N'ssdg', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (17, 8, 2, N'ssdk', 15)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (18, 8, 2, N'kl', 8)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (19, 1010, 8, N'Body Lotion', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (20, 1011, 1008, N'deep condition', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (21, 1012, 1009, N'Face wash', 0)
INSERT [dbo].[ItemSetup] ([Id], [CategoryId], [CompanyId], [ItemName], [ReorderLevel]) VALUES (22, 1013, 1010, N'Cot', 3)
SET IDENTITY_INSERT [dbo].[ItemSetup] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (3, N'ef')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (8, N'x')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (9, N'Pen')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (10, N'xyz')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (11, N'%#')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (12, N'sdfsdfs')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (13, N'gdgf')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (1010, N'Lotion')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (1011, N'Refrigerator')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (1012, N'Uniliver')
INSERT [dbo].[ProductCategory] ([Id], [CategoryName]) VALUES (1013, N'Furniture')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[StockIn] ON 

INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (1, 2, 1, 38)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (2, 6, 2, 0)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (3, 4, 3, 0)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (1003, 2, 2, 2)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (1004, 2, 3, 0)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (1005, 5, 4, 0)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (1006, 5, 1, 40000)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (1007, 2, 4, 81)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (1008, 1, 2, 200)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (2007, 2, 9, 80)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (2008, 7, 3, 10)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (3008, 8, 19, 0)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (3009, 1008, 20, 500)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (3010, 1009, 21, 400)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (3011, 2, 5, 800)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (3012, 2, 7, 60)
INSERT [dbo].[StockIn] ([Id], [CompanyId], [ItemId], [StockQuantity]) VALUES (3013, 1010, 22, 700)
SET IDENTITY_INSERT [dbo].[StockIn] OFF
SET IDENTITY_INSERT [dbo].[StockOutSell] ON 

INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (2, 2, 2, CAST(0x4FD202FB AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (3, 2, 2, CAST(0x4FD202FB AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (5, 2, 2, CAST(0xA8D6051A AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (6, 3, 5, CAST(0xA8D6051C AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (7, 4, 10, CAST(0xA8D6051C AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (8, 3, 5, CAST(0xA8D6051E AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (9, 4, 10, CAST(0xA8D6051E AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (10, 3, 2, CAST(0xA8D60521 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (11, 4, 7, CAST(0xA8D60521 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (12, 3, 18, CAST(0xA8D60521 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (13, 4, 103, CAST(0xA8D60521 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (14, 1, 2, CAST(0xA8D6053D AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1002, 1, 5, CAST(0xA8D70543 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1003, 1, 5, CAST(0xA8D70543 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1004, 1, 3, CAST(0xA8D7054C AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1005, 1, 3, CAST(0xA8D7054C AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1006, 2, 5, CAST(0xA8D70556 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1007, 2, 5, CAST(0xA8D70556 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1008, 2, 5, CAST(0xA8D70559 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1009, 2, 5, CAST(0xA8D70559 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1010, 2, 10, CAST(0xA8D7055E AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1011, 2, 10, CAST(0xA8D7055E AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1012, 2, 5, CAST(0xA8D7055E AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1013, 1, 5, CAST(0xA8D70563 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1014, 1, 5, CAST(0xA8D70563 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1015, 1, 2, CAST(0xA8D70565 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1016, 1, 4, CAST(0xA8D70565 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1017, 1, 2, CAST(0xA8D70567 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1018, 1, 5, CAST(0xA8D70568 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1019, 1, 3, CAST(0xA8D70568 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1020, 1, 3, CAST(0xA8D70571 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1021, 1, 3, CAST(0xA8D70571 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1022, 1, 4, CAST(0xA8D70571 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1023, 1, 1, CAST(0xA8D70571 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1024, 1, 1, CAST(0xA8D70572 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1025, 1, 3, CAST(0xA8D70575 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1026, 1, 3, CAST(0xA8D70575 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1027, 1, 4, CAST(0xA8D70575 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1028, 8, 5, CAST(0xA8D80049 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1029, 1, 30, CAST(0xA8D8006A AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1030, 1, 2, CAST(0xA8D8006A AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1031, 2, 5, CAST(0xA8D802C8 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1032, 2, 10, CAST(0xA8D804AF AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1033, 2, 11, CAST(0xA8D804AF AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1034, 2, 10, CAST(0xA8D804AF AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1035, 2, 11, CAST(0xA8D804AF AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1036, 2, 10, CAST(0xA8D804B0 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1037, 2, 11, CAST(0xA8D804B0 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1038, 2, 5, CAST(0xA8D804B0 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1039, 2, 5, CAST(0xA8D804B0 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1040, 2, 5, CAST(0xA8D804B0 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1041, 2, 10, CAST(0xA8D804B0 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1042, 2, 10, CAST(0xA8D804B4 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1043, 2, 5, CAST(0xA8D804B4 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1044, 2, 5, CAST(0xA8D804B4 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1045, 5, 90, CAST(0xA8D804B9 AS SmallDateTime))
INSERT [dbo].[StockOutSell] ([Id], [ItemId], [Sell], [Date]) VALUES (1046, 19, 500, CAST(0xA8D804BD AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[StockOutSell] OFF
ALTER TABLE [dbo].[ItemSetup]  WITH CHECK ADD  CONSTRAINT [FK_ItemSetup_CompanySetup] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[CompanySetup] ([Id])
GO
ALTER TABLE [dbo].[ItemSetup] CHECK CONSTRAINT [FK_ItemSetup_CompanySetup]
GO
ALTER TABLE [dbo].[ItemSetup]  WITH CHECK ADD  CONSTRAINT [FK_ItemSetup_ProductCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[ItemSetup] CHECK CONSTRAINT [FK_ItemSetup_ProductCategory]
GO
USE [master]
GO
ALTER DATABASE [StockManagementDB] SET  READ_WRITE 
GO
