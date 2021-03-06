USE [master]
GO
/****** Object:  Database [BDT_MLDB]    Script Date: 10/9/2019 11:41:21 PM ******/
CREATE DATABASE [BDT_MLDB] ON  PRIMARY 
( NAME = N'BDT_MLDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BDT_MLDB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDT_MLDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BDT_MLDB_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
USE [BDT_MLDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/9/2019 11:41:22 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/9/2019 11:41:22 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/9/2019 11:41:22 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/9/2019 11:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/9/2019 11:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/9/2019 11:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/9/2019 11:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/9/2019 11:41:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191009145249_addUserAndRole', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191009145904_addUserAndRole1', N'2.2.6-servicing-10079')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'49e6c4b8-d09c-4658-9bc3-b52942f9efca', N'Admin', N'ADMIN', N'0d7b1cb7-a5f9-416f-9717-02afc98fa969')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8c25a1af-0f27-48e1-b596-0403a9d4ff72', N'User', N'USER', N'471f8a41-d8fb-4998-a44e-da3efad82c27')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'98e0aa5f-fcdc-4232-b68d-709a203e26a9', N'49e6c4b8-d09c-4658-9bc3-b52942f9efca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4860732-2ac3-4782-ba6f-f12f20e7fc1e', N'49e6c4b8-d09c-4658-9bc3-b52942f9efca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'da9bbfab-62fd-4232-ba10-5e0f9f75bb8f', N'49e6c4b8-d09c-4658-9bc3-b52942f9efca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2a2b7c8c-0d4a-4f7d-8078-d3f28287bf3b', N'8c25a1af-0f27-48e1-b596-0403a9d4ff72')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fda24506-234e-4ef6-b0a5-8fd191a05b1d', N'8c25a1af-0f27-48e1-b596-0403a9d4ff72')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName]) VALUES (N'2a2b7c8c-0d4a-4f7d-8078-d3f28287bf3b', N'bb@bb.com', N'BB@BB.COM', N'bb@bb.com', N'BB@BB.COM', 0, NULL, N'LN4O55Z5ZMABTFIT6EKCTVLI473XDUZ6', N'4538de88-06ff-43fa-9c8e-7f4df92a211b', N'01gjgj32321', 0, 0, NULL, 1, 0, N'Nguyen Thi Minh Khai, Q.1', N'Tp.HCM', N'BB', 0, 0, N'bb')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName]) VALUES (N'98e0aa5f-fcdc-4232-b68d-709a203e26a9', N'admin@admin', N'ADMIN@ADMIN', N'admin@admin', N'ADMIN@ADMIN', 0, N'AQAAAAEAACcQAAAAEFN0dhkq3unE+APTzvakuMA/Dl/gRAJ5L/UYXXEMWolJWMzf8B731QPfoqLAkVdX9g==', N'HNQWKALDTOGQNZH7NPM5K2PWOBO47E4W', N'e4e27751-299f-4e34-b117-473c70c9eaa3', N'11323123244333445', 0, 0, NULL, 1, 0, N'Anonymos', N'Anonymos', N'Amin', 0, 0, N'Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName]) VALUES (N'a4860732-2ac3-4782-ba6f-f12f20e7fc1e', N'aa@aa.com', N'AA@AA.COM', N'aa@aa.com', N'AA@AA.COM', 0, NULL, N'YFSAW4OLZN6SBIHVTEBGKDXFME2XLYA7', N'8358917f-0bba-492a-92c3-1fbb5b51fff7', N'012232321', 0, 0, NULL, 1, 0, N'Ho Ba Phan, Q.9', N'Tp.HCM', N'AA', 1, 0, N'aa')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName]) VALUES (N'da9bbfab-62fd-4232-ba10-5e0f9f75bb8f', N'nam@nam.com', N'NAM@NAM.COM', N'nam@nam.com', N'NAM@NAM.COM', 0, N'AQAAAAEAACcQAAAAEK608p+/yKUbvWiDHbK/eOcNTnm7bfjYGHQfcUEwB6KTRd8TMvkWWuHFRxs4Rh4niQ==', N'JRQCTN7D3M6OZSPKIOIIN7DOEXET5FK2', N'a1320a76-2e3b-4f3b-908b-53385ec181dc', NULL, 0, 0, NULL, 1, 0, N'Ho Ba Phan, Q.9', N'Tp.HCM', N'Phan', 1, 0, N'Nam')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [City], [FirstName], [IsAdmin], [IsBlock], [LastName]) VALUES (N'fda24506-234e-4ef6-b0a5-8fd191a05b1d', N'quoc@quoc.com', N'QUOC@QUOC.COM', N'quoc@quoc.com', N'QUOC@QUOC.COM', 0, N'AQAAAAEAACcQAAAAEMkN1myGEK8oo7grU/3nF2+9ZDxSdusoWCW6BZNO9TrA5NFm5BaSEjBycw7qekKyNg==', N'EHOO645VL2OGGGJST7UIDZXVXD2AXWT7', N'ed958d09-d248-4d32-b154-32264aafb0aa', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'Nguyen', 0, 0, N'Quoc')
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/9/2019 11:41:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/9/2019 11:41:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10/9/2019 11:41:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10/9/2019 11:41:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10/9/2019 11:41:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10/9/2019 11:41:22 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/9/2019 11:41:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [IsBlock]
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
USE [master]
GO
ALTER DATABASE [BDT_MLDB] SET  READ_WRITE 
GO
