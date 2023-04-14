USE [master]
GO
/****** Object:  Database [SanitationEquipment]    Script Date: 4/11/2023 4:04:35 PM ******/
CREATE DATABASE [SanitationEquipment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SanitationEquipment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SanitationEquipment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SanitationEquipment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SanitationEquipment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SanitationEquipment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SanitationEquipment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SanitationEquipment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SanitationEquipment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SanitationEquipment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SanitationEquipment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SanitationEquipment] SET ARITHABORT OFF 
GO
ALTER DATABASE [SanitationEquipment] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SanitationEquipment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SanitationEquipment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SanitationEquipment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SanitationEquipment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SanitationEquipment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SanitationEquipment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SanitationEquipment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SanitationEquipment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SanitationEquipment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SanitationEquipment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SanitationEquipment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SanitationEquipment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SanitationEquipment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SanitationEquipment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SanitationEquipment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SanitationEquipment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SanitationEquipment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SanitationEquipment] SET  SINGLE_USER 
GO
ALTER DATABASE [SanitationEquipment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SanitationEquipment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SanitationEquipment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SanitationEquipment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SanitationEquipment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SanitationEquipment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SanitationEquipment] SET QUERY_STORE = OFF
GO
USE [SanitationEquipment]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[brand_id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](16) NULL,
	[name] [nvarchar](255) NULL,
	[logo] [varchar](max) NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[cate_id] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_id] [bigint] NULL,
	[code] [varchar](255) NULL,
	[cate] [nvarchar](250) NULL,
	[url] [varchar](250) NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[comment_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NULL,
	[code] [varchar](255) NULL,
	[email] [varchar](100) NULL,
	[name] [nvarchar](255) NULL,
	[content] [nvarchar](1500) NULL,
	[rating_star] [int] NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[contact_id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](16) NULL,
	[name] [nvarchar](255) NULL,
	[email] [varchar](100) NULL,
	[message] [ntext] NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customer_id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[gender] [bit] NULL,
	[email] [varchar](180) NULL,
	[phone_number] [varchar](16) NULL,
	[password] [varchar](100) NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[news_id] [bigint] IDENTITY(1,1) NOT NULL,
	[newsgroup_id] [bigint] NULL,
	[code] [varchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[short_description] [nvarchar](1000) NULL,
	[description] [ntext] NULL,
	[view] [bigint] NULL,
	[url] [varchar](255) NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsGroups]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsGroups](
	[newsgroup_id] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_id] [bigint] NULL,
	[code] [varchar](16) NULL,
	[newsgroup_name] [nvarchar](255) NULL,
	[url] [varchar](255) NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[newsgroup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsImages]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsImages](
	[image_id] [bigint] IDENTITY(1,1) NOT NULL,
	[news_id] [bigint] NULL,
	[code] [varchar](255) NULL,
	[image] [varchar](max) NULL,
	[level] [int] NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderdetail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[code] [varchar](255) NULL,
	[quantity] [int] NULL,
	[unitprice] [float] NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[customer_id] [bigint] NULL,
	[user_id] [bigint] NULL,
	[code] [varchar](255) NULL,
	[address] [nvarchar](500) NULL,
	[total] [float] NULL,
	[state] [int] NOT NULL,
	[payment] [bit] NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[image_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[code] [varchar](255) NULL,
	[image] [varchar](max) NULL,
	[level] [int] NULL,
	[status] [bit] NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [bigint] IDENTITY(1,1) NOT NULL,
	[cate_id] [bigint] NULL,
	[brand_id] [bigint] NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](500) NULL,
	[url] [varchar](500) NULL,
	[shortdescript] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[rating_star] [float] NULL,
	[price] [float] NULL,
	[out_of_stock] [bit] NOT NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_ProductTags]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_ProductTags](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NULL,
	[tag_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTags]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTags](
	[tag_id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](16) NULL,
	[tag] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepContactUs]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepContactUs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](16) NULL,
	[contact_id] [bigint] NULL,
	[title] [nvarchar](300) NOT NULL,
	[message] [ntext] NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/11/2023 4:04:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](16) NULL,
	[fullname] [nvarchar](255) NULL,
	[dob] [date] NULL,
	[gender] [bit] NULL,
	[address] [nvarchar](500) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[id_card] [varchar](28) NULL,
	[avatar] [varchar](max) NULL,
	[role] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [bigint] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
