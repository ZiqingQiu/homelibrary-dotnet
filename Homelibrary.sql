USE [Homelibrary]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 2017-12-22 4:06:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[ISBN] [nvarchar](13) NOT NULL,
	[Title] [nvarchar](20) NOT NULL,
	[Author] [nvarchar](20) NOT NULL,
	[Genre] [nvarchar](10) NOT NULL,
	[Pages] [int] NOT NULL,
	[Landed] [char](1) NOT NULL,
	[Friend] [nvarchar](20) NULL,
	[Comments] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Books] ([ISBN], [Title], [Author], [Genre], [Pages], [Landed], [Friend], [Comments]) VALUES (N'11111', N'ASP.NET', N'Jake', N'Romance', 44, N'Y', N'Peter', N'abcded')
INSERT [dbo].[Books] ([ISBN], [Title], [Author], [Genre], [Pages], [Landed], [Friend], [Comments]) VALUES (N'22222', N'Java', N'Yamin', N'Drama', 44, N'Y', N'Mike', N'')
INSERT [dbo].[Books] ([ISBN], [Title], [Author], [Genre], [Pages], [Landed], [Friend], [Comments]) VALUES (N'333333', N'Database', N'Zoran', N'Comedy', 13, N'N', NULL, NULL)
INSERT [dbo].[Books] ([ISBN], [Title], [Author], [Genre], [Pages], [Landed], [Friend], [Comments]) VALUES (N'44444', N'Math', N'Singh', N'Comedy', 34, N'Y', N'Mike', NULL)
INSERT [dbo].[Books] ([ISBN], [Title], [Author], [Genre], [Pages], [Landed], [Friend], [Comments]) VALUES (N'55555', N'English', N'Mary', N'Comedy', 45, N'Y', N'Mike', NULL)
INSERT [dbo].[Books] ([ISBN], [Title], [Author], [Genre], [Pages], [Landed], [Friend], [Comments]) VALUES (N'66666', N'Linux', N'Yamin', N'Comedy', 45, N'Y', N'Peter', NULL)
ALTER TABLE [dbo].[Books] ADD  DEFAULT ('N') FOR [Landed]
GO
