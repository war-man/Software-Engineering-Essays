USE [master]
GO
/****** Object:  Database [BDT_MLDB]    Script Date: 2019/10/17 10:19:37 ******/
CREATE DATABASE [BDT_MLDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDT_MLDB', FILENAME = N'F:\Program File\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDT_MLDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDT_MLDB_log', FILENAME = N'F:\Program File\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDT_MLDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BDT_MLDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDT_MLDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDT_MLDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDT_MLDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDT_MLDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDT_MLDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDT_MLDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDT_MLDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDT_MLDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDT_MLDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDT_MLDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDT_MLDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDT_MLDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDT_MLDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDT_MLDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDT_MLDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDT_MLDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDT_MLDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDT_MLDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDT_MLDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDT_MLDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDT_MLDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDT_MLDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BDT_MLDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDT_MLDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDT_MLDB] SET  MULTI_USER 
GO
ALTER DATABASE [BDT_MLDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDT_MLDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDT_MLDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDT_MLDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDT_MLDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDT_MLDB] SET QUERY_STORE = OFF
GO
USE [BDT_MLDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2019/10/17 10:19:37 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](400) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](400) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](400) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](400) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[IsAdmin] [int] NOT NULL,
	[IsBlock] [int] NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[IsVip] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](400) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Block]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Block](
	[ID_Block] [int] NOT NULL,
	[ID_User] [nvarchar](400) NOT NULL,
	[ID_Admin] [nvarchar](400) NOT NULL,
	[Reason] [nvarchar](450) NOT NULL,
	[UnLockDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Block] PRIMARY KEY CLUSTERED 
(
	[ID_Block] ASC,
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LaseName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Account_Id] [nvarchar](400) NOT NULL,
	[Avatar_URL] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detail_Post]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail_Post](
	[ID_Detail] [int] NOT NULL,
	[Floor] [int] NOT NULL,
	[Bedroom] [int] NULL,
	[Bathroom] [int] NULL,
	[Livingroom] [int] NULL,
	[Yard] [int] NULL,
 CONSTRAINT [PK_Detail_Post_1] PRIMARY KEY CLUSTERED 
(
	[ID_Detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID_Post] [int] NOT NULL,
	[PostTime] [datetime] NOT NULL,
	[PostType] [int] NOT NULL,
	[Tittle] [nvarchar](250) NULL,
	[Area] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Post_Image] [int] NULL,
	[ID_RealEstateType] [int] NOT NULL,
	[Location] [nvarchar](10) NULL,
	[City] [nchar](10) NULL,
	[Detail_ID] [int] NULL,
	[Post_Status_ID] [int] NULL,
	[Comment_ID] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID_Post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Comment]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Comment](
	[Comment_ID] [int] NOT NULL,
	[User_ID] [nvarchar](400) NULL,
	[Comment] [nvarchar](400) NULL,
 CONSTRAINT [PK_Post_Comment] PRIMARY KEY CLUSTERED 
(
	[Comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Customer]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Customer](
	[ID] [nvarchar](400) NOT NULL,
	[ID_Post] [int] NOT NULL,
 CONSTRAINT [PK_Post_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ID_Post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_FullStatus]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_FullStatus](
	[Post_Status_ID] [int] NOT NULL,
	[Decripstion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post_FullStatus] PRIMARY KEY CLUSTERED 
(
	[Post_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Image]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Image](
	[ID_Post] [int] NOT NULL,
	[url] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post_Image_1] PRIMARY KEY CLUSTERED 
(
	[ID_Post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealEstate_Type]    Script Date: 2019/10/17 10:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealEstate_Type](
	[ID_RealEstateType] [int] NOT NULL,
	[Decripstion] [nvarchar](50) NULL,
 CONSTRAINT [PK_RealEstate_Type] PRIMARY KEY CLUSTERED 
(
	[ID_RealEstateType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191009145249_addUserAndRole', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191009145904_addUserAndRole1', N'2.2.6-servicing-10079')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'49e6c4b8-d09c-4658-9bc3-b52942f9efca', N'Admin', N'ADMIN', N'0d7b1cb7-a5f9-416f-9717-02afc98fa969')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8c25a1af-0f27-48e1-b596-0403a9d4ff72', N'User', N'USER', N'471f8a41-d8fb-4998-a44e-da3efad82c27')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'98e0aa5f-fcdc-4232-b68d-709a203e26a9', N'49e6c4b8-d09c-4658-9bc3-b52942f9efca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4860732-2ac3-4782-ba6f-f12f20e7fc1e', N'49e6c4b8-d09c-4658-9bc3-b52942f9efca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'da9bbfab-62fd-4232-ba10-5e0f9f75bb8f', N'49e6c4b8-d09c-4658-9bc3-b52942f9efca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10536712-2016-45b9-9804-808c2fa4f441', N'8c25a1af-0f27-48e1-b596-0403a9d4ff72')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'16492ecc-79da-4ba3-a8db-dfb92593f886', N'8c25a1af-0f27-48e1-b596-0403a9d4ff72')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2a2b7c8c-0d4a-4f7d-8078-d3f28287bf3b', N'8c25a1af-0f27-48e1-b596-0403a9d4ff72')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d9b9992-2ddd-4335-ad33-d1f645449e4b', N'8c25a1af-0f27-48e1-b596-0403a9d4ff72')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fda24506-234e-4ef6-b0a5-8fd191a05b1d', N'8c25a1af-0f27-48e1-b596-0403a9d4ff72')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'10536712-2016-45b9-9804-808c2fa4f441', N'my@my.com', N'MY@MY.COM', N'my@my.com', N'MY@MY.COM', 0, N'AQAAAAEAACcQAAAAEDC7aBJnbVVB6nDbIWAPvhhN+VebE4BI17eCWtlx8YI5YPORPkscvSdxcaUQpEqiMg==', N'VG4BR3W4IRO2Q37XNJ6ABMBBER4TGKXL', N'25c90825-1f21-461a-a0c9-dfeb53dfa239', N'1123432234', 0, 0, NULL, 1, 0, N'112434234', N'2342342', N'My', 0, 0, N'My', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'16492ecc-79da-4ba3-a8db-dfb92593f886', N'huong@huong.com', N'HUONG@HUONG.COM', N'huong@huong.com', N'HUONG@HUONG.COM', 0, N'AQAAAAEAACcQAAAAEOg+KnfMg2vQ6Bjc8Qb/8/SXGpT339HBoChjFLYGIFF3B2ZqQtF+22cE4OjIuqND8Q==', N'YDMMNVBHLFZRTPMN55UJINW35QAM7AME', N'e08db071-6cd2-4d87-a46f-5d850599951d', N'234234234234', 0, 0, NULL, 1, 0, N'dèdgfgdfgdfg', N'dfgdfgdfg', N'HUong', 0, 0, N'Huong', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'2a2b7c8c-0d4a-4f7d-8078-d3f28287bf3b', N'bb@bb.com', N'BB@BB.COM', N'bb@bb.com', N'BB@BB.COM', 0, NULL, N'LN4O55Z5ZMABTFIT6EKCTVLI473XDUZ6', N'4538de88-06ff-43fa-9c8e-7f4df92a211b', N'01gjgj32321', 0, 0, NULL, 1, 0, N'Nguyen Thi Minh Khai, Q.1', N'Tp.HCM', N'BB', 0, 0, N'bb', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'98e0aa5f-fcdc-4232-b68d-709a203e26a9', N'admin@admin', N'ADMIN@ADMIN', N'admin@admin', N'ADMIN@ADMIN', 0, N'AQAAAAEAACcQAAAAEFN0dhkq3unE+APTzvakuMA/Dl/gRAJ5L/UYXXEMWolJWMzf8B731QPfoqLAkVdX9g==', N'HNQWKALDTOGQNZH7NPM5K2PWOBO47E4W', N'e4e27751-299f-4e34-b117-473c70c9eaa3', N'11323123244333445', 0, 0, NULL, 1, 0, N'Anonymos', N'Anonymos', N'Amin', 0, 0, N'Admin', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'9d9b9992-2ddd-4335-ad33-d1f645449e4b', N'nguyen@nguyen.com', N'NGUYEN@NGUYEN.COM', N'nguyen@nguyen.com', N'NGUYEN@NGUYEN.COM', 0, N'AQAAAAEAACcQAAAAEKTl01aMlbFtox46JIzLK67YzWysbYH//2ngJGVB9T3mvRTLRoA8IC8yVgdakwjNMA==', N'3EAZIRDITSZRRMNSUYS6WJXIPLZG37PK', N'02529e10-109d-4e99-9bea-82d3a8a40b5b', N'13243234343', 0, 0, NULL, 1, 0, N'Long Xuyen', N'Ang Giang', N'Dang', 0, 0, N'Khoi', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'a4860732-2ac3-4782-ba6f-f12f20e7fc1e', N'aa@aa.com', N'AA@AA.COM', N'aa@aa.com', N'AA@AA.COM', 0, NULL, N'YFSAW4OLZN6SBIHVTEBGKDXFME2XLYA7', N'8358917f-0bba-492a-92c3-1fbb5b51fff7', N'012232321', 0, 0, NULL, 1, 0, N'Ho Ba Phan, Q.9', N'Tp.HCM', N'AA', 1, 0, N'aa', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'da9bbfab-62fd-4232-ba10-5e0f9f75bb8f', N'nam@nam.com', N'NAM@NAM.COM', N'nam@nam.com', N'NAM@NAM.COM', 0, N'AQAAAAEAACcQAAAAEK608p+/yKUbvWiDHbK/eOcNTnm7bfjYGHQfcUEwB6KTRd8TMvkWWuHFRxs4Rh4niQ==', N'JRQCTN7D3M6OZSPKIOIIN7DOEXET5FK2', N'fbcc130b-b587-42fe-a82b-fb43fb7e905d', NULL, 0, 0, NULL, 1, 0, N'Ho Ba Phan, Q.9', N'Tp.HCM', N'Phan', 1, 0, N'Nam', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName], [IsVip]) VALUES (N'fda24506-234e-4ef6-b0a5-8fd191a05b1d', N'quoc@quoc.com', N'QUOC@QUOC.COM', N'quoc@quoc.com', N'QUOC@QUOC.COM', 0, N'AQAAAAEAACcQAAAAEMkN1myGEK8oo7grU/3nF2+9ZDxSdusoWCW6BZNO9TrA5NFm5BaSEjBycw7qekKyNg==', N'EHOO645VL2OGGGJST7UIDZXVXD2AXWT7', N'ed958d09-d248-4d32-b154-32264aafb0aa', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Nguyen', 0, 0, N'Quoc', NULL)
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2019/10/17 10:19:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019/10/17 10:19:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2019/10/17 10:19:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2019/10/17 10:19:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2019/10/17 10:19:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2019/10/17 10:19:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019/10/17 10:19:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF__AspNetUse__IsAdm__1273C1CD]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF__AspNetUse__IsBlo__1367E606]  DEFAULT ((0)) FOR [IsBlock]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Block]  WITH CHECK ADD  CONSTRAINT [FK_Block_AspNetUsers] FOREIGN KEY([ID_User])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Block] CHECK CONSTRAINT [FK_Block_AspNetUsers]
GO
ALTER TABLE [dbo].[Block]  WITH CHECK ADD  CONSTRAINT [FK_Block_AspNetUsers1] FOREIGN KEY([ID_Admin])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Block] CHECK CONSTRAINT [FK_Block_AspNetUsers1]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_AspNetUsers] FOREIGN KEY([Account_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_AspNetUsers]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Detail_Post] FOREIGN KEY([Detail_ID])
REFERENCES [dbo].[Detail_Post] ([ID_Detail])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Detail_Post]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post_Comment] FOREIGN KEY([Comment_ID])
REFERENCES [dbo].[Post_Comment] ([Comment_ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post_Comment]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post_FullStatus] FOREIGN KEY([Post_Status_ID])
REFERENCES [dbo].[Post_FullStatus] ([Post_Status_ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post_FullStatus]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post_Image] FOREIGN KEY([ID_Post])
REFERENCES [dbo].[Post_Image] ([ID_Post])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post_Image]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_RealEstate_Type] FOREIGN KEY([ID_RealEstateType])
REFERENCES [dbo].[RealEstate_Type] ([ID_RealEstateType])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_RealEstate_Type]
GO
ALTER TABLE [dbo].[Post_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comment_AspNetUsers] FOREIGN KEY([User_ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_Comment] CHECK CONSTRAINT [FK_Post_Comment_AspNetUsers]
GO
ALTER TABLE [dbo].[Post_Customer]  WITH CHECK ADD  CONSTRAINT [FK_Post_Customer_AspNetUsers] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post_Customer] CHECK CONSTRAINT [FK_Post_Customer_AspNetUsers]
GO
ALTER TABLE [dbo].[Post_Customer]  WITH CHECK ADD  CONSTRAINT [FK_Post_Customer_Post] FOREIGN KEY([ID_Post])
REFERENCES [dbo].[Post] ([ID_Post])
GO
ALTER TABLE [dbo].[Post_Customer] CHECK CONSTRAINT [FK_Post_Customer_Post]
GO
USE [master]
GO
ALTER DATABASE [BDT_MLDB] SET  READ_WRITE 
GO
