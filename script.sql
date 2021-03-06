USE [master]
GO
/****** Object:  Database [PRJ321_SE1429]    Script Date: 7/22/2021 9:26:09 AM ******/
CREATE DATABASE [PRJ321_SE1429]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_MusicShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DB_MusicShop.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_MusicShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DB_MusicShop_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PRJ321_SE1429] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ321_SE1429].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ321_SE1429] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ321_SE1429] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ321_SE1429] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ321_SE1429] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ321_SE1429] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ321_SE1429] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ321_SE1429] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ321_SE1429] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ321_SE1429] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ321_SE1429] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PRJ321_SE1429] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ321_SE1429', N'ON'
GO
USE [PRJ321_SE1429]
GO
/****** Object:  Table [dbo].[HE140102_HIEULT_Category]    Script Date: 7/22/2021 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE140102_HIEULT_Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HE140102_HIEULT_Order]    Script Date: 7/22/2021 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HE140102_HIEULT_Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NULL,
	[UserId] [varchar](100) NULL,
	[TotalPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HE140102_HIEULT_OrderDetail]    Script Date: 7/22/2021 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE140102_HIEULT_OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HE140102_HIEULT_Product]    Script Date: 7/22/2021 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE140102_HIEULT_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[Price] [float] NULL,
	[ImgUrl] [nvarchar](200) NULL,
	[Discount] [float] NULL,
	[ProductDetail] [ntext] NULL,
	[Artist] [nvarchar](50) NULL,
	[Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HE140102_HIEULT_SecurityQues]    Script Date: 7/22/2021 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE140102_HIEULT_SecurityQues](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionDetail] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HE140102_HIEULT_Stock]    Script Date: 7/22/2021 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE140102_HIEULT_Stock](
	[StockId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HE140102_HIEULT_Users]    Script Date: 7/22/2021 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HE140102_HIEULT_Users](
	[UserId] [varchar](100) NOT NULL,
	[Pass] [varchar](100) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Dob] [date] NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[UserRole] [int] NOT NULL,
	[QuestionId] [int] NULL,
	[Answer] [text] NULL,
 CONSTRAINT [PK_HE140102_DUYNK_Userss] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[HE140102_HIEULT_Order]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[HE140102_HIEULT_Users] ([UserId])
GO
ALTER TABLE [dbo].[HE140102_HIEULT_OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[HE140102_HIEULT_Order] ([OrderId])
GO
ALTER TABLE [dbo].[HE140102_HIEULT_OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[HE140102_HIEULT_Product] ([ProductId])
GO
ALTER TABLE [dbo].[HE140102_HIEULT_Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[HE140102_HIEULT_Category] ([CategoryId])
GO
USE [master]
GO
ALTER DATABASE [PRJ321_SE1429] SET  READ_WRITE 
GO
