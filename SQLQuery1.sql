USE [MVVMLoginDb]
GO
/****** Object:  Table [dbo].[User]    Script Date: 15/11/2022 22:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([Id], [Username], [Password], [Name], [LastName], [Email]) VALUES (N'8ee3b95a-12b0-4754-9214-1f7098aa8a15', N'federico', N'121212', N'federico', N'di napoli', N'jj@gmail.com')
GO
INSERT [dbo].[User] ([Id], [Username], [Password], [Name], [LastName], [Email]) VALUES (N'3b7a114a-614f-4f09-a117-2a4acbf44a03', N'ariadna', N'121212', N'ariadna', N'menendez', N'mm@gmail.com')
GO
INSERT [dbo].[User] ([Id], [Username], [Password], [Name], [LastName], [Email]) VALUES (N'd940e05c-d846-48de-8964-30079b7afd8a', N'mauricio', N'121212', N'Mauricio', N'Acevedo', N'm@gmail.com')
GO
INSERT [dbo].[User] ([Id], [Username], [Password], [Name], [LastName], [Email]) VALUES (N'8a911f78-97c4-4395-910b-3d19bfa9ed71', N'admin', N'admin', N'admin', N'admin', N'radmin@gmail.com')
GO
INSERT [dbo].[User] ([Id], [Username], [Password], [Name], [LastName], [Email]) VALUES (N'cbb6d31b-2a49-40c7-8d1e-a6b2564bec52', N'juan', N'121212', N'juan', N'podesta', N'jp@gmail.com')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__536C85E4F1377096]    Script Date: 15/11/2022 22:23:12 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__A9D10534AA5B427E]    Script Date: 15/11/2022 22:23:12 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (newid()) FOR [Id]
GO
