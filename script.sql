USE [master]
GO
/****** Object:  Database [Марафон]    Script Date: 25.02.2021 14:07:24 ******/
CREATE DATABASE [Марафон]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Марафон', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Марафон.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Марафон_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Марафон_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Марафон] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Марафон].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Марафон] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Марафон] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Марафон] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Марафон] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Марафон] SET ARITHABORT OFF 
GO
ALTER DATABASE [Марафон] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Марафон] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Марафон] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Марафон] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Марафон] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Марафон] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Марафон] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Марафон] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Марафон] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Марафон] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Марафон] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Марафон] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Марафон] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Марафон] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Марафон] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Марафон] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Марафон] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Марафон] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Марафон] SET  MULTI_USER 
GO
ALTER DATABASE [Марафон] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Марафон] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Марафон] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Марафон] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Марафон] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Марафон] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Марафон] SET QUERY_STORE = OFF
GO
USE [Марафон]
GO
/****** Object:  Table [dbo].[Charity]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charity](
	[CharityId] [int] IDENTITY(1,1) NOT NULL,
	[CharityName] [nvarchar](100) NOT NULL,
	[CharityDescription] [nvarchar](2000) NULL,
	[CharityLogo] [nvarchar](50) NULL,
 CONSTRAINT [pk_Charity] PRIMARY KEY CLUSTERED 
(
	[CharityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [nchar](3) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[CountryFlag] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventId] [nchar](6) NOT NULL,
	[EventName] [nvarchar](50) NOT NULL,
	[EventTypeId] [nchar](2) NOT NULL,
	[MarathonId] [tinyint] NOT NULL,
	[StartDateTime] [datetime] NULL,
	[Cost] [decimal](10, 2) NULL,
	[MaxParticipants] [smallint] NULL,
 CONSTRAINT [pk_Event] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventType]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventType](
	[EventTypeId] [nchar](2) NOT NULL,
	[EventTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_EventType] PRIMARY KEY CLUSTERED 
(
	[EventTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_Gender] PRIMARY KEY CLUSTERED 
(
	[Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marathon]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marathon](
	[MarathonId] [tinyint] IDENTITY(1,1) NOT NULL,
	[MarathonName] [nvarchar](80) NOT NULL,
	[CityName] [nvarchar](80) NULL,
	[CountryCode] [nchar](3) NOT NULL,
	[YearHeld] [smallint] NULL,
 CONSTRAINT [pk_Marathon] PRIMARY KEY CLUSTERED 
(
	[MarathonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Position_ID] [nvarchar](50) NOT NULL,
	[Position_Name] [nvarchar](50) NULL,
	[Position_Description] [nvarchar](100) NULL,
	[Pay_Period] [nvarchar](50) NULL,
	[Pay_Rate] [int] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Position_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RaceKitOption]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceKitOption](
	[RaceKitOptionId] [nchar](1) NOT NULL,
	[RaceKitOption] [nvarchar](80) NOT NULL,
	[Cost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [pk_RaceKitOption] PRIMARY KEY CLUSTERED 
(
	[RaceKitOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[RegistrationId] [int] IDENTITY(1,1) NOT NULL,
	[RunnerId] [int] NOT NULL,
	[RegistrationDateTime] [datetime] NOT NULL,
	[RaceKitOptionId] [nchar](1) NOT NULL,
	[RegistrationStatusId] [tinyint] NOT NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[CharityId] [int] NOT NULL,
	[SponsorshipTarget] [decimal](10, 2) NOT NULL,
 CONSTRAINT [pk_Registration] PRIMARY KEY CLUSTERED 
(
	[RegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationEvent]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationEvent](
	[RegistrationEventId] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationId] [int] NOT NULL,
	[EventId] [nchar](6) NOT NULL,
	[BibNumber] [smallint] NULL,
	[RaceTime] [int] NULL,
 CONSTRAINT [pk_RegistrationEvent] PRIMARY KEY CLUSTERED 
(
	[RegistrationEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationStatus]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationStatus](
	[RegistrationStatusId] [tinyint] IDENTITY(1,1) NOT NULL,
	[RegistrationStatus] [nvarchar](80) NOT NULL,
 CONSTRAINT [pk_RegistrationStatus] PRIMARY KEY CLUSTERED 
(
	[RegistrationStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [nchar](1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Runner]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Runner](
	[RunnerId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[CountryCode] [nchar](3) NOT NULL,
 CONSTRAINT [pk_Runner] PRIMARY KEY CLUSTERED 
(
	[RunnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsorship]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsorship](
	[SponsorshipId] [int] IDENTITY(1,1) NOT NULL,
	[SponsorName] [nvarchar](150) NOT NULL,
	[RegistrationId] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
 CONSTRAINT [pk_Sponsorship] PRIMARY KEY CLUSTERED 
(
	[SponsorshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Staff_ID_Num] [nvarchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
	[Date_of_Birth] [float] NULL,
	[Gender] [nvarchar](50) NULL,
	[Position_ID] [nvarchar](50) NULL,
	[Position_Name] [nvarchar](50) NULL,
	[Position_Description] [nvarchar](100) NULL,
	[Pay_Period] [nvarchar](50) NULL,
	[Pay_Rate] [int] NULL,
	[Email_Address] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[Timesheet_ID_Num] [nvarchar](50) NULL,
	[Staff_ID_Num] [nvarchar](50) NULL,
	[Start_Date_Time] [datetime2](7) NULL,
	[End_Date_Time] [datetime2](7) NULL,
	[Payment_Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](80) NULL,
	[LastName] [nvarchar](80) NULL,
	[RoleId] [nchar](1) NOT NULL,
 CONSTRAINT [pk_User] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 25.02.2021 14:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[VolunteerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](80) NULL,
	[LastName] [nvarchar](80) NULL,
	[CountryCode] [nchar](3) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_Volunteer] PRIMARY KEY CLUSTERED 
(
	[VolunteerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_EventType] FOREIGN KEY([EventTypeId])
REFERENCES [dbo].[EventType] ([EventTypeId])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_EventType]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Marathon] FOREIGN KEY([MarathonId])
REFERENCES [dbo].[Marathon] ([MarathonId])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Marathon]
GO
ALTER TABLE [dbo].[Marathon]  WITH CHECK ADD  CONSTRAINT [FK_Marathon_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Marathon] CHECK CONSTRAINT [FK_Marathon_Country]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_RegistrationEvent] FOREIGN KEY([CharityId])
REFERENCES [dbo].[RegistrationEvent] ([RegistrationEventId])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_RegistrationEvent]
GO
ALTER TABLE [dbo].[Runner]  WITH CHECK ADD FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Runner]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Runner]  WITH CHECK ADD FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([Gender])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([Gender])
GO
USE [master]
GO
ALTER DATABASE [Марафон] SET  READ_WRITE 
GO
