USE [master]
GO
/****** Object:  Database [AhorcadoCinematico]    Script Date: 18/6/2026 08:42:14 ******/
CREATE DATABASE [AhorcadoCinematico]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AhorcadoCinematico', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AhorcadoCinematico.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AhorcadoCinematico_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AhorcadoCinematico_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AhorcadoCinematico] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AhorcadoCinematico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AhorcadoCinematico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET ARITHABORT OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AhorcadoCinematico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AhorcadoCinematico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AhorcadoCinematico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AhorcadoCinematico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET RECOVERY FULL 
GO
ALTER DATABASE [AhorcadoCinematico] SET  MULTI_USER 
GO
ALTER DATABASE [AhorcadoCinematico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AhorcadoCinematico] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AhorcadoCinematico] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AhorcadoCinematico] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AhorcadoCinematico] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AhorcadoCinematico', N'ON'
GO
ALTER DATABASE [AhorcadoCinematico] SET QUERY_STORE = OFF
GO
USE [AhorcadoCinematico]
GO
/****** Object:  User [alumno]    Script Date: 18/6/2026 08:42:14 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Palabras]    Script Date: 18/6/2026 08:42:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Palabras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[palabra] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Palabras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Palabras] ON 

INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (1, N'ALIEN')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (2, N'INCEPTION')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (3, N'SHREK')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (4, N'AMADEUS')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (5, N'JAWS')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (6, N'HEAT')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (7, N'MATILDA')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (8, N'DUNKIRK')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (9, N'ERASERHEAD')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (10, N'PSYCHO')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (11, N'FRANKENSTEIN')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (12, N'DRACULA')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (13, N'TITANIC')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (14, N'MICHAEL')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (15, N'HALLOWEEN')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (16, N'AVATAR')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (17, N'WHIPLASH')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (18, N'SE7EN')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (19, N'MISERY')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (20, N'SINNERS')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (21, N'NOSFERATU')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (22, N'TENET')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (24, N'POLTERGHEIST')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (25, N'GHOSTBUSTERS')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (26, N'ZOOLANDER')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (27, N'DUNE')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (28, N'OPPENHEIMER')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (29, N'MEMENTO')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (30, N'INTERSTELLAR')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (31, N'UP')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (32, N'SAW')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (33, N'GOODFELLAS')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (34, N'GLADIATOR')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (35, N'DRIVE')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (36, N'OBSESSION')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (37, N'ARRIVAL')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (38, N'MOANA')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (39, N'BARBIE')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (40, N'MULAN')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (41, N'TWISTER')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (42, N'SCREAM')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (43, N'BRAVEHEART')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (44, N'PARASITE')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (45, N'HER')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (46, N'ZODIAC')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (47, N'SKYFALL')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (48, N'VERTIGO')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (49, N'CLOVERFIELD')
INSERT [dbo].[Palabras] ([id], [palabra]) VALUES (50, N'SPLIT')
SET IDENTITY_INSERT [dbo].[Palabras] OFF
GO
USE [master]
GO
ALTER DATABASE [AhorcadoCinematico] SET  READ_WRITE 
GO
