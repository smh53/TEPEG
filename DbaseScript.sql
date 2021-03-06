USE [TEPEG]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7.05.2021 13:50:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 7.05.2021 13:50:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[Mark] [nvarchar](max) NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 7.05.2021 13:50:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_OperationClaims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7.05.2021 13:50:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[StudentNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 7.05.2021 13:50:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
 CONSTRAINT [PK_UserOperationClaims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7.05.2021 13:50:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PasswordHash] [varbinary](500) NULL,
	[PasswordSalt] [varbinary](500) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210507085344_Initial', N'5.0.5')
GO
SET IDENTITY_INSERT [dbo].[Grades] ON 

INSERT [dbo].[Grades] ([Id], [StudentId], [CourseName], [Mark]) VALUES (1, 1, N'Math', N'90')
INSERT [dbo].[Grades] ([Id], [StudentId], [CourseName], [Mark]) VALUES (3, 5, N'Turkish', N'50')
INSERT [dbo].[Grades] ([Id], [StudentId], [CourseName], [Mark]) VALUES (7, 7, N'string', N'string')
SET IDENTITY_INSERT [dbo].[Grades] OFF
GO
SET IDENTITY_INSERT [dbo].[OperationClaims] ON 

INSERT [dbo].[OperationClaims] ([ID], [Name]) VALUES (1, N'teacher')
SET IDENTITY_INSERT [dbo].[OperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Surname], [StudentNumber]) VALUES (1, N'Semih', N'Tavukçu', N'1234')
INSERT [dbo].[Students] ([Id], [Name], [Surname], [StudentNumber]) VALUES (4, N'string', N'string', N'string')
INSERT [dbo].[Students] ([Id], [Name], [Surname], [StudentNumber]) VALUES (5, N'string', N'string', N'string')
INSERT [dbo].[Students] ([Id], [Name], [Surname], [StudentNumber]) VALUES (7, N'string', N'string', N'string')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[UserOperationClaims] ON 

INSERT [dbo].[UserOperationClaims] ([ID], [UserId], [OperationClaimId]) VALUES (1, 3, 1)
SET IDENTITY_INSERT [dbo].[UserOperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (3, N'string', N'string', N'string', 0x0B7B4BB608C0CC6D7B8D5658ADD51296121BA305A293FEA4B3C6C272A1015D938A95E51DF3B1798430A841724BC6D06A344E21A5DD498C84843ED4E7CF3054D3, 0x847892E39912DE5A23608052917C094BFBD963C5323E587D50C588F57B70EC777C91C8E2206D5C26E6EE7A24AEF7AE15C651B3DE7AF412381465F3D46732D677151A320257AF9E214EB9AA815918029AD4BC7D8099837C72B90402F4798082F61301C5A7FEB27484F9981B0F90DA1865F367F454CB6FE3D20C2B0B3F23236386, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Grades]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grades] CHECK CONSTRAINT [FK_Grades_Students_StudentId]
GO
