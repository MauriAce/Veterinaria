USE [master]
GO
/****** Object:  Database [wpfcrud]    Script Date: 15/11/2022 22:17:46 ******/
CREATE DATABASE [wpfcrud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wpfcrud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\wpfcrud.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'wpfcrud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\wpfcrud_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [wpfcrud] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wpfcrud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wpfcrud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wpfcrud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wpfcrud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wpfcrud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wpfcrud] SET ARITHABORT OFF 
GO
ALTER DATABASE [wpfcrud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wpfcrud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wpfcrud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wpfcrud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wpfcrud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wpfcrud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wpfcrud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wpfcrud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wpfcrud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wpfcrud] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wpfcrud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wpfcrud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wpfcrud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wpfcrud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wpfcrud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wpfcrud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wpfcrud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wpfcrud] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wpfcrud] SET  MULTI_USER 
GO
ALTER DATABASE [wpfcrud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wpfcrud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wpfcrud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wpfcrud] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [wpfcrud] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [wpfcrud] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [wpfcrud] SET QUERY_STORE = OFF
GO
USE [wpfcrud]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 15/11/2022 22:17:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[telefono] [int] NULL,
	[mail] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[turno]    Script Date: 15/11/2022 22:17:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[turno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente] [nvarchar](50) NULL,
	[fecha] [nvarchar](50) NULL,
	[servicio] [nvarchar](50) NULL,
 CONSTRAINT [PK_turno] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 
GO
INSERT [dbo].[cliente] ([id], [nombre], [apellido], [telefono], [mail], [direccion]) VALUES (1008, N'mauricio', N'ace', 15121316, N'm@gmail.com', N'cucha cucha 1234')
GO
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[turno] ON 
GO
INSERT [dbo].[turno] ([id], [cliente], [fecha], [servicio]) VALUES (1, N'juan carlos', N'25-11-22', N'peluqueria')
GO
INSERT [dbo].[turno] ([id], [cliente], [fecha], [servicio]) VALUES (2, N'marcelo', N'27-11-22', N'doctor')
GO
SET IDENTITY_INSERT [dbo].[turno] OFF
GO
USE [master]
GO
ALTER DATABASE [wpfcrud] SET  READ_WRITE 
GO
