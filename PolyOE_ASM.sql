USE [PolyOE]
GO
/****** Object:  Table [dbo].[CUSTOMER_MASTER1]    Script Date: 3/5/2021 10:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER_MASTER1](
	[CUSTOMER_ID] [int] IDENTITY(1,1) NOT NULL,
	[FIRST_NAME] [nvarchar](50) NULL,
	[LAST_NAME] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[MOBILE] [nvarchar](50) NULL,
 CONSTRAINT [PK_CUSTOMER_MASTER1] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 3/5/2021 10:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VideoId] [char](11) NULL,
	[UserId] [nvarchar](20) NULL,
	[LikeDate] [date] NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 3/5/2021 10:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[lastname] [varchar](20) NULL,
	[isAdmin] [bit] NULL,
	[image] [varchar](50) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/5/2021 10:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 3/5/2021 10:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Id] [char](11) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Poster] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Views] [int] NULL,
	[urlVideo] [varchar](max) NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER_MASTER1] ON 

INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1, N'Teo', N'Le Van', N'teolv@gmail.com', N'0903414749')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (2, N'Phu', N'Nguyen Thanh', N'phungsts@gmail.com', N'0903414749')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1002, N'Gai', N'Nguye Thi', N'gai@gmail.com', N'0909999999')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1003, N'Cu', N'Ng Van', N'cung@gmail.com', N'0903333333')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1004, N'Dat', N'Le Thanh', N'dat@gmail.com', N'0903454545')
SET IDENTITY_INSERT [dbo].[CUSTOMER_MASTER1] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (57, N'vd4        ', N'datxike', CAST(N'2021-03-04' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (58, N'vd2        ', N'datxike', CAST(N'2021-03-04' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'bich', N'321', N'phan thi ngoc', 0, N'images1.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'fpt', N'123', N'Nguyen Van', 1, N'images2.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'gai', N'123', N'le thi', 1, N'images3.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'hieu', N'123', N'nguyen thi bao', 0, N'images4.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'hoa', N'abc', N'ng van', 1, N'Nonbo.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'kien', N'123', N'le thi', 1, N'images5.jpg')
GO
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'datxike', N'123', N'Hoang Xuan Dat', N'dathxps12656@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'gaint', N'123', N'nguyen thi', N'gaint@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'phuc', N'123', N'Vu Hoang Phuc', N'phucvhps12860@fpt.edu.vn', 1)
GO
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd1        ', N'Bố già', N'bogia.jpg', N'Bo gia Tran Thanh', 0, 24124, N'')
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd2        ', N'Minions', N'minions.jpg', N'minions', 1, 14166, N'<iframe width="560" height="315" src="https://www.youtube.com/embed/3Y9XeruN5RY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd3        ', N'King Kong', N'kingkong.jpg', N'King Kong', 0, 12344, N'<iframe width="560" height="315" src="https://www.youtube.com/embed/odM92ap8_c0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd4        ', N'Gái già lắm chiêu V', N'gaigia.jpg', N'Gái già lắm chiêu V', 1, 21244, N'<iframe width="560" height="315" src="https://www.youtube.com/embed/fNE3wgaHr18" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd5        ', N'Người nhện', N'spiderman.jpg', N'Spider Man', 1, 16443, N'<iframe width="560" height="315" src="https://www.youtube.com/embed/oBFsrewOU1o" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd6        ', N'Avengers: Infinity War', N'avenger.jpg', N'Avenger', 1, 47556, N'<iframe width="560" height="315" src="https://www.youtube.com/embed/6ZfuNTqbHE8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd7        ', N'Mắc biếc', N'macbiec.jpg', N'Mắc biếc', 1, 25115, N'<iframe width="560" height="315" src="https://www.youtube.com/embed/ITlQ0oU7tDA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views], [urlVideo]) VALUES (N'vd8        ', N'Trạng quỳnh', N'trangquynh.jpg', N'Trạng quỳnh', 1, 21667, N'<iframe width="560" height="315" src="https://www.youtube.com/embed/ikXMNocYUeY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Users]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Videos] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Videos]
GO
/****** Object:  StoredProcedure [dbo].[spFavoriteByYear]    Script Date: 3/5/2021 10:42:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spFavoriteByYear](@Year INT)
AS
BEGIN
SELECT
v.Title AS 'Group',
count(f.Id) AS 'Likes',
max(f.LikeDate) AS 'Newest',
min(f.LikeDate) AS 'Oldest'
FROM Favorites f JOIN Videos v ON v.Id = f.VideoId
WHERE year(f.LikeDate) = @Year
GROUP BY v.Title
END
GO
