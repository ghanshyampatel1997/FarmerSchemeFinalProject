USE [master]
GO
/****** Object:  Database [FarmerSchemeDB]    Script Date: 11/13/2020 10:21:14 PM ******/
CREATE DATABASE [FarmerSchemeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FarmerSchemeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FarmerSchemeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FarmerSchemeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FarmerSchemeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FarmerSchemeDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FarmerSchemeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FarmerSchemeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FarmerSchemeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FarmerSchemeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FarmerSchemeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FarmerSchemeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FarmerSchemeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FarmerSchemeDB] SET  MULTI_USER 
GO
ALTER DATABASE [FarmerSchemeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FarmerSchemeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FarmerSchemeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FarmerSchemeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FarmerSchemeDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FarmerSchemeDB] SET QUERY_STORE = OFF
GO
USE [FarmerSchemeDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UserRegister](
	[UserEmailId] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[ContactNo.] [nvarchar](20) NULL,
	[fullname] [nvarchar](50) NULL,
	[address1] [nvarchar](100) NULL,
	[address2] [nvarchar](100) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[pincode] [int] NULL,
	[pancardDocument] [nvarchar](50) NULL,
	[aadharCardDocument] [nvarchar](50) NULL,
 CONSTRAINT [PK_rolltype] PRIMARY KEY CLUSTERED 
(
	[UserEmailId] ASC
)
GO


/****** Object:  Table [dbo].[RollType]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RollType](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RollType] [nvarchar](10) NULL,
	[certificate] [nvarchar](50) NULL,
	[ApprovedStatus] [bit] NULL,
	[UserEmailId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)
GO

/****** Object:  Table [dbo].[FarmerLand]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmerLand](
	[FarmId] [int] IDENTITY(1,1) NOT NULL,
	[landArea] [nvarchar](50) NULL,
	[landAddress] [nvarchar](100) NULL,
	[landPinCode] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_farmerland] PRIMARY KEY CLUSTERED 
(
	[FarmId] ASC
)
GO



/****** Object:  Table [dbo].[BankDetails]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankDetails](
	[BankId] [int] IDENTITY(1000,1) NOT NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[BankAccountNo] [bigint] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_bankdetails] PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)
GO

/****** Object:  Table [dbo].[InsuranceApplication]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceApplication](
	[PolicyNo] [int] IDENTITY(1000000,1) NOT NULL,
	[season] [nchar](30) NULL,
	[year] [int] NOT NULL,
	[cropname] [nvarchar](50) NULL,
	[SumInsured] [int] NULL,
	[FarmId] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_insuranceapplication] PRIMARY KEY CLUSTERED 
(
	[PolicyNo] ASC
)
GO

/****** Object:  Table [dbo].[ClaimForm]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimForm](
	[PolicyNo] [int] NULL,
	[ClaimNo] [bigint] IDENTITY(5000000,1) NOT NULL,
	[dateOfLoss] [date] NULL,
	[CauseOfLoss] [nvarchar](50) NULL,
	[ClaimApprove] [bit] NULL,
 CONSTRAINT [PK_claimform] PRIMARY KEY CLUSTERED 
(
	[ClaimNo] ASC
)
GO


/****** Object:  Table [dbo].[Cropprice]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cropprice](
	[CropId] [int] NOT NULL,
	[cropname] [nvarchar](50) NULL,
	[MSP] [int] NULL,
 CONSTRAINT [PK_croptable] PRIMARY KEY CLUSTERED 
(
	[CropId] ASC
)
GO


/****** Object:  Table [dbo].[FarmerCropdetils]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmerCropdetils](
	[FarmerSellID] [int] IDENTITY(1000,1) NOT NULL,
	[cropType] [nvarchar](40) NULL,
	[CropId] [int] NULL,
	[fertilizerType] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[SoilPHCertificate] [nvarchar](50) NULL,
	[AproovedFarmersell] [bit] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[FarmerSellID] ASC
)
GO

/****** Object:  Table [dbo].[BiddingTable]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BiddingTable](
	[BidID] [int] IDENTITY(1,1) NOT NULL,
	[bidAmount] [int] NULL,
	[FarmerSellID] [int] NULL,
	[ApprovedBid] [bit] NULL,
	[date] [date] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_bid] PRIMARY KEY CLUSTERED 
(
	[BidID] ASC
)
GO


/****** Object:  Table [dbo].[UserRegister]    Script Date: 11/13/2020 10:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER TABLE [dbo].[UserRegister] ADD  CONSTRAINT [DF_UserRegister_address1]  DEFAULT (getdate()) FOR [address1]
GO
ALTER TABLE [dbo].[BankDetails]  WITH CHECK ADD  CONSTRAINT [FK_266] FOREIGN KEY([UserID])
REFERENCES [dbo].[RollType] ([UserID])
GO
ALTER TABLE [dbo].[BankDetails] CHECK CONSTRAINT [FK_266]
GO
ALTER TABLE [dbo].[BiddingTable]  WITH CHECK ADD  CONSTRAINT [FK_235] FOREIGN KEY([FarmerSellID])
REFERENCES [dbo].[FarmerCropdetils] ([FarmerSellID])
GO
ALTER TABLE [dbo].[BiddingTable] CHECK CONSTRAINT [FK_235]
GO
ALTER TABLE [dbo].[BiddingTable]  WITH CHECK ADD  CONSTRAINT [FK_272] FOREIGN KEY([UserID])
REFERENCES [dbo].[RollType] ([UserID])
GO
ALTER TABLE [dbo].[BiddingTable] CHECK CONSTRAINT [FK_272]
GO
ALTER TABLE [dbo].[ClaimForm]  WITH CHECK ADD  CONSTRAINT [FK_185] FOREIGN KEY([PolicyNo])
REFERENCES [dbo].[InsuranceApplication] ([PolicyNo])
GO
ALTER TABLE [dbo].[ClaimForm] CHECK CONSTRAINT [FK_185]
GO
ALTER TABLE [dbo].[FarmerCropdetils]  WITH CHECK ADD  CONSTRAINT [FK_144] FOREIGN KEY([UserID])
REFERENCES [dbo].[RollType] ([UserID])
GO
ALTER TABLE [dbo].[FarmerCropdetils] CHECK CONSTRAINT [FK_144]
GO
ALTER TABLE [dbo].[FarmerCropdetils]  WITH CHECK ADD  CONSTRAINT [FK_228] FOREIGN KEY([CropId])
REFERENCES [dbo].[Cropprice] ([CropId])
GO
ALTER TABLE [dbo].[FarmerCropdetils] CHECK CONSTRAINT [FK_228]
GO
ALTER TABLE [dbo].[FarmerLand]  WITH CHECK ADD  CONSTRAINT [FK_258] FOREIGN KEY([UserID])
REFERENCES [dbo].[RollType] ([UserID])
GO
ALTER TABLE [dbo].[FarmerLand] CHECK CONSTRAINT [FK_258]
GO
ALTER TABLE [dbo].[InsuranceApplication]  WITH CHECK ADD  CONSTRAINT [FK_173] FOREIGN KEY([UserID])
REFERENCES [dbo].[RollType] ([UserID])
GO
ALTER TABLE [dbo].[InsuranceApplication] CHECK CONSTRAINT [FK_173]
GO
ALTER TABLE [dbo].[InsuranceApplication]  WITH CHECK ADD  CONSTRAINT [FK_276] FOREIGN KEY([FarmId])
REFERENCES [dbo].[FarmerLand] ([FarmId])
GO
ALTER TABLE [dbo].[InsuranceApplication] CHECK CONSTRAINT [FK_276]
GO
ALTER TABLE [dbo].[RollType]  WITH CHECK ADD  CONSTRAINT [FK_301] FOREIGN KEY([UserEmailId])
REFERENCES [dbo].[UserRegister] ([UserEmailId])
GO
ALTER TABLE [dbo].[RollType] CHECK CONSTRAINT [FK_301]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Basic information 
about Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FarmerCropdetils'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order information
like Date, Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RollType'
GO
USE [master]
GO
ALTER DATABASE [FarmerSchemeDB] SET  READ_WRITE 
GO
