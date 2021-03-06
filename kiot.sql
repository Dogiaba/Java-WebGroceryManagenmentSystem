USE [kiot2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [varchar](30) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[phoneNumber] [varchar](20) NULL,
	[amountCustomerOwes] [int] NULL,
	[amountCustomerPays] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureGroup]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureGroup](
	[fid] [int] NOT NULL,
	[rid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fid] ASC,
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupNumber] [int] NOT NULL,
	[IDLeader] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[importBill]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[importBill](
	[id] [int] NOT NULL,
	[date] [date] NULL,
	[ProviderID] [int] NULL,
	[AmountPaid] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[importGoods]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[importGoods](
	[categoryID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Seri] [varchar](50) NOT NULL,
	[importbillID] [int] NULL,
	[DVT] [nvarchar](30) NULL,
	[Number] [int] NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kho]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kho](
	[seri] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Address] [nvarchar](500) NULL,
	[phoneNumber] [varchar](20) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 7/9/2021 10:05:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[rid] [int] NOT NULL,
	[UserName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'Bao@gmail', N'123')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'Baodg', N'1122')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'DungQT@gmail.com', N'2345')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [Name]) VALUES (1, N'Đồ ăn vặt')
INSERT [dbo].[Category] ([id], [Name]) VALUES (2, N'Nước giải khát')
INSERT [dbo].[Category] ([id], [Name]) VALUES (3, N'Gia vị')
INSERT [dbo].[Category] ([id], [Name]) VALUES (4, N'Lương thực')
INSERT [dbo].[Category] ([id], [Name]) VALUES (5, N'Đồ hộp')
INSERT [dbo].[Category] ([id], [Name]) VALUES (6, N'Đồ ăn bảo quản lạnh')
INSERT [dbo].[Category] ([id], [Name]) VALUES (7, N'Mỹ phẩm ')
INSERT [dbo].[Category] ([id], [Name]) VALUES (8, N'Sim điện thoại')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [amountCustomerOwes], [amountCustomerPays]) VALUES (N'Baodg11', N'Đỗ Gia Bảo', N'0988002476', 0, 100000)
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [amountCustomerOwes], [amountCustomerPays]) VALUES (N'HanhPT9', N'Phạm Thúy Hạnh ', N'0123212322', 1000000, 0)
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [amountCustomerOwes], [amountCustomerPays]) VALUES (N'KhaiL2', N'Nguyễn Lý Hải', N'0936337498', 0, 185000)
INSERT [dbo].[customer] ([id], [Name], [phoneNumber], [amountCustomerOwes], [amountCustomerPays]) VALUES (N'LeAnhnk4', N'Nguyễn Khắc Lê Anh', N'02253977462', 0, 500000)
GO
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (111, CAST(N'2021-01-15' AS Date), 1, 12000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (1001, CAST(N'2021-03-04' AS Date), 2, 200000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (1122, CAST(N'2021-03-06' AS Date), 1, 300000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (1919, CAST(N'2021-02-01' AS Date), 3, 400000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (2000, CAST(N'2021-01-15' AS Date), 2, 12000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (7041, CAST(N'2021-01-22' AS Date), 3, 0)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (10021, CAST(N'2021-03-02' AS Date), 2, 200000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (35077, CAST(N'2021-03-16' AS Date), 4, 1500000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (121111, CAST(N'2021-03-18' AS Date), 2, 120000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (1110000, CAST(N'2021-01-15' AS Date), 1, 12000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (1333333, CAST(N'2021-02-05' AS Date), 1, 300000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (3050210, CAST(N'2021-02-05' AS Date), 2, 300000)
INSERT [dbo].[importBill] ([id], [date], [ProviderID], [AmountPaid]) VALUES (25122020, CAST(N'2020-12-25' AS Date), 1, 0)
GO
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (3, N'Mắm cát hải', N'12009', 1001, N'Thùng', 1, 200000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (1, N'Kẹo táo', N'1221', 1122, N'gói', 2, 150000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (4, N'Bánh đa cua', N'122222', 111, N'Thùng', 5, 200000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (1, N'kẹo dẻo', N'123333', 1122, N'gói', 8, 120000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (4, N'cocacola', N'12341', 35077, N'Thùng', 8, 400000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (4, N'phở gà', N'1255', 111, N'thùng', 5, 35000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (2, N'Phở', N'1881', 3050210, N'túi', 9, 40000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (1, N'Kẹo gấu gấu', N'2223', 1333333, N'thùng', 4, 10000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (4, N'Bánh đa cua', N'434', 1001, N'Thùng', 5, 500000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (1, N'Kẹo táo', N'61222', 25122020, N'gói ', 3, 34000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (1, N'Kẹo gấu', N'6456', 25122020, N'gói', 4, 35000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (1, N'Kẹo mút Jida', N'6546654', 25122020, N'gói', 2, 32000)
INSERT [dbo].[importGoods] ([categoryID], [Name], [Seri], [importbillID], [DVT], [Number], [Price]) VALUES (4, N'Bánh đa cua', N'9812', 111, N'Thùng', 2, 40000)
GO
INSERT [dbo].[kho] ([seri]) VALUES (N'1221')
INSERT [dbo].[kho] ([seri]) VALUES (N'2223')
INSERT [dbo].[kho] ([seri]) VALUES (N'434')
INSERT [dbo].[kho] ([seri]) VALUES (N'61222')
INSERT [dbo].[kho] ([seri]) VALUES (N'9812')
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (1, N'An Phú', N'3c, Phan ĐÌnh Phùng,Hải Phòng', N'0862 019 369', N'Anphu@gmail.com')
INSERT [dbo].[Provider] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (2, N'Cát Tiên', N'34 An Đà, Lạch Tray, Ngô Quyền, Hải Phòng', N'0225 3741 638', N'CatTien12@gmail.com')
INSERT [dbo].[Provider] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (3, N'NPP-Dũng Mai', N'số 9b Mạc đĩnh Phúc', N'0988966074', N'Dung11@gmail.com')
INSERT [dbo].[Provider] ([id], [Name], [Address], [phoneNumber], [Email]) VALUES (4, N'Tuấn Ngà', N'16F/630 Thiên Lôi-Lê chân _hải Phòng', N'0934687496', N'Tuannga1998@gmail.com')
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
ALTER TABLE [dbo].[FeatureGroup]  WITH CHECK ADD FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[FeatureGroup]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([IDLeader])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[importBill]  WITH CHECK ADD FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([id])
GO
ALTER TABLE [dbo].[importGoods]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[importGoods]  WITH CHECK ADD FOREIGN KEY([importbillID])
REFERENCES [dbo].[importBill] ([id])
GO
ALTER TABLE [dbo].[kho]  WITH CHECK ADD FOREIGN KEY([seri])
REFERENCES [dbo].[importGoods] ([Seri])
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[RoleAccount]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([id])
GO
