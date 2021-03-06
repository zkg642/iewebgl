/****** Object:  Table [dbo].[purchase]    Script Date: 08/09/2011 15:04:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[purchase]') AND type in (N'U'))
DROP TABLE [dbo].[purchase]
GO
/****** Object:  Table [dbo].[sell_items]    Script Date: 08/09/2011 15:04:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sell_items]') AND type in (N'U'))
DROP TABLE [dbo].[sell_items]
GO
/****** Object:  Table [dbo].[validation]    Script Date: 08/09/2011 15:04:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[validation]') AND type in (N'U'))
DROP TABLE [dbo].[validation]
GO
/****** Object:  Table [dbo].[validation]    Script Date: 08/09/2011 15:04:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[validation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[validation](
	[id] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[domain] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[valid_through] [datetime] NOT NULL,
 CONSTRAINT [PK_validation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[validation] ON
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(2 AS Decimal(18, 0)), N'iewebgl.com', CAST(0x00011D5900000000 AS DateTime))
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(3 AS Decimal(18, 0)), N'ambiera.com', CAST(0x00011D5900000000 AS DateTime))
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(4 AS Decimal(18, 0)), N'oak3d.com', CAST(0x00011D5900000000 AS DateTime))
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(6 AS Decimal(18, 0)), N'iewebgl.net', CAST(0x00011D5900000000 AS DateTime))
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(7 AS Decimal(18, 0)), N'iewebgl.org', CAST(0x00011D5900000000 AS DateTime))
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(9 AS Decimal(18, 0)), N'iewebgl.info', CAST(0x00011D5900000000 AS DateTime))
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(10 AS Decimal(18, 0)), N'iewebgl.biz', CAST(0x00011D5900000000 AS DateTime))
INSERT [dbo].[validation] ([id], [domain], [valid_through]) VALUES (CAST(11 AS Decimal(18, 0)), N'myprocedure.umn.edu', CAST(0x00011D5900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[validation] OFF
/****** Object:  Table [dbo].[sell_items]    Script Date: 08/09/2011 15:04:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sell_items]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sell_items](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[price] [float] NOT NULL,
	[duration] [int] NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_sell_items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[sell_items] ON
INSERT [dbo].[sell_items] ([id], [name], [price], [duration], [active]) VALUES (CAST(1 AS Numeric(18, 0)), N'3 months', 30, 91, 1)
INSERT [dbo].[sell_items] ([id], [name], [price], [duration], [active]) VALUES (CAST(2 AS Numeric(18, 0)), N'6 months', 50, 183, 1)
INSERT [dbo].[sell_items] ([id], [name], [price], [duration], [active]) VALUES (CAST(3 AS Numeric(18, 0)), N'12 months', 80, 365, 1)
INSERT [dbo].[sell_items] ([id], [name], [price], [duration], [active]) VALUES (CAST(4 AS Numeric(18, 0)), N'unlimited', 150, 36500, 1)
SET IDENTITY_INSERT [dbo].[sell_items] OFF
/****** Object:  Table [dbo].[purchase]    Script Date: 08/09/2011 15:04:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[purchase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[purchase](
	[id] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[item_id] [decimal](18, 0) NOT NULL,
	[date_time] [datetime] NOT NULL,
	[domain] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[paypal_tid] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_purchase] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
