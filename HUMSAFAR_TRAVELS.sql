USE [master]
GO
/****** Object:  Database [humsafar_travels]    Script Date: 07-09-2023 13:19:21 ******/
CREATE DATABASE [humsafar_travels]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'humsafar_travels', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\humsafar_travels.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'humsafar_travels_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\humsafar_travels_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [humsafar_travels] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [humsafar_travels].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [humsafar_travels] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [humsafar_travels] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [humsafar_travels] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [humsafar_travels] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [humsafar_travels] SET ARITHABORT OFF 
GO
ALTER DATABASE [humsafar_travels] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [humsafar_travels] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [humsafar_travels] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [humsafar_travels] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [humsafar_travels] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [humsafar_travels] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [humsafar_travels] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [humsafar_travels] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [humsafar_travels] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [humsafar_travels] SET  ENABLE_BROKER 
GO
ALTER DATABASE [humsafar_travels] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [humsafar_travels] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [humsafar_travels] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [humsafar_travels] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [humsafar_travels] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [humsafar_travels] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [humsafar_travels] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [humsafar_travels] SET RECOVERY FULL 
GO
ALTER DATABASE [humsafar_travels] SET  MULTI_USER 
GO
ALTER DATABASE [humsafar_travels] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [humsafar_travels] SET DB_CHAINING OFF 
GO
ALTER DATABASE [humsafar_travels] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [humsafar_travels] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [humsafar_travels] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'humsafar_travels', N'ON'
GO
ALTER DATABASE [humsafar_travels] SET QUERY_STORE = OFF
GO
USE [humsafar_travels]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [humsafar_travels]
GO
/****** Object:  User [NT SERVICE\ReportServer]    Script Date: 07-09-2023 13:19:22 ******/
CREATE USER [NT SERVICE\ReportServer] FOR LOGIN [NT SERVICE\ReportServer] WITH DEFAULT_SCHEMA=[NT SERVICE\ReportServer]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 07-09-2023 13:19:22 ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 07-09-2023 13:19:22 ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
/****** Object:  DatabaseRole [RSExecRole]    Script Date: 07-09-2023 13:19:22 ******/
CREATE ROLE [RSExecRole]
GO
ALTER ROLE [RSExecRole] ADD MEMBER [NT SERVICE\ReportServer]
GO
/****** Object:  Schema [NT SERVICE\ReportServer]    Script Date: 07-09-2023 13:19:22 ******/
CREATE SCHEMA [NT SERVICE\ReportServer]
GO
/****** Object:  Schema [RSExecRole]    Script Date: 07-09-2023 13:19:22 ******/
CREATE SCHEMA [RSExecRole]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[admin_status] [nvarchar](100) NOT NULL,
	[email_id] [nvarchar](100) NOT NULL,
	[mobile_number] [bigint] NOT NULL,
	[password] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[mobile_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[agents]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[branch_name] [nvarchar](100) NOT NULL,
	[email_id] [nvarchar](100) NOT NULL,
	[mobile_number] [bigint] NOT NULL,
	[password] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[mobile_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[branch_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bookings]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[source] [nvarchar](100) NOT NULL,
	[destination] [nvarchar](100) NOT NULL,
	[bus_no] [nvarchar](100) NOT NULL,
	[email_id] [nvarchar](100) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bus]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[source] [nvarchar](100) NOT NULL,
	[destination] [nvarchar](100) NOT NULL,
	[bus_no] [nvarchar](100) NOT NULL,
	[source_time] [nvarchar](100) NOT NULL,
	[destination_time] [nvarchar](100) NOT NULL,
	[added_by] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bus_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chennai_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chennai_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [nvarchar](100) NOT NULL,
	[seat_type] [nvarchar](100) NOT NULL,
	[seat_status] [nvarchar](100) NOT NULL,
	[Amount] [nvarchar](100) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[seat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[delhi_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delhi_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [nvarchar](100) NOT NULL,
	[seat_type] [nvarchar](100) NOT NULL,
	[seat_status] [nvarchar](100) NOT NULL,
	[Amount] [nvarchar](100) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[seat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feedback]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[email_id] [nvarchar](100) NOT NULL,
	[feedback] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kashmir_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kashmir_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [nvarchar](100) NOT NULL,
	[seat_type] [nvarchar](100) NOT NULL,
	[seat_status] [nvarchar](100) NOT NULL,
	[Amount] [nvarchar](100) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[seat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kolkata_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kolkata_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [nvarchar](100) NOT NULL,
	[seat_type] [nvarchar](100) NOT NULL,
	[seat_status] [nvarchar](100) NOT NULL,
	[Amount] [nvarchar](100) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[seat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mumbai_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mumbai_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [nvarchar](100) NOT NULL,
	[seat_type] [nvarchar](100) NOT NULL,
	[seat_status] [nvarchar](100) NOT NULL,
	[Amount] [nvarchar](100) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[seat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[news]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[admin_status] [nvarchar](100) NOT NULL,
	[news] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[passengers]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[passengers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[email_id] [nvarchar](100) NOT NULL,
	[mobile_number] [bigint] NOT NULL,
	[password] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rajasthan_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rajasthan_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [nvarchar](100) NOT NULL,
	[seat_type] [nvarchar](100) NOT NULL,
	[seat_status] [nvarchar](100) NOT NULL,
	[Amount] [nvarchar](100) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[seat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sabarmati_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sabarmati_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seat_name] [nvarchar](100) NOT NULL,
	[seat_type] [nvarchar](100) NOT NULL,
	[seat_status] [nvarchar](100) NOT NULL,
	[Amount] [nvarchar](100) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[seat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[bookings]  WITH CHECK ADD FOREIGN KEY([bus_no])
REFERENCES [dbo].[bus] ([bus_no])
GO
ALTER TABLE [dbo].[bookings]  WITH CHECK ADD FOREIGN KEY([email_id])
REFERENCES [dbo].[passengers] ([email_id])
GO
ALTER TABLE [dbo].[bus]  WITH CHECK ADD FOREIGN KEY([added_by])
REFERENCES [dbo].[admins] ([admin_status])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([email_id])
REFERENCES [dbo].[passengers] ([email_id])
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD FOREIGN KEY([admin_status])
REFERENCES [dbo].[admins] ([admin_status])
GO
/****** Object:  StoredProcedure [dbo].[available_chennai_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[available_chennai_express]
@seat_status nvarchar(100)
as
begin
select * from chennai_express where seat_status=@seat_status
end



GO
/****** Object:  StoredProcedure [dbo].[available_delhi_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[available_delhi_express]
@seat_status nvarchar(100)
as
begin
select * from delhi_express where seat_status=@seat_status
end



GO
/****** Object:  StoredProcedure [dbo].[available_kashmir_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[available_kashmir_express]
@seat_status nvarchar(100)
as
begin
select * from kashmir_express where seat_status=@seat_status
end



GO
/****** Object:  StoredProcedure [dbo].[available_kolkata_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[available_kolkata_express]
@seat_status nvarchar(100)
as
begin
select * from kolkata_express where seat_status=@seat_status
end



GO
/****** Object:  StoredProcedure [dbo].[available_mumbai_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[available_mumbai_express]
@seat_status nvarchar(100)
as
begin
select * from mumbai_express where seat_status=@seat_status
end



GO
/****** Object:  StoredProcedure [dbo].[available_rajasthan_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[available_rajasthan_express]
@seat_status nvarchar(100)
as
begin
select * from rajasthan_express where seat_status=@seat_status
end



GO
/****** Object:  StoredProcedure [dbo].[available_sabarmati_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[available_sabarmati_express]
@seat_status nvarchar(100)
as
begin
select * from sabarmati_express where seat_status=@seat_status
end



GO
/****** Object:  StoredProcedure [dbo].[ce_search_by_seat_type]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ce_search_by_seat_type]
@var nvarchar(200) 
as
begin
select * from chennai_express where seat_type=@var
end

GO
/****** Object:  StoredProcedure [dbo].[de_search_by_seat_type]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[de_search_by_seat_type]
@var nvarchar(200) 
as
begin
select * from delhi_express where seat_type=@var
end

GO
/****** Object:  StoredProcedure [dbo].[get_admin_by_email_id]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_admin_by_email_id]
@email_id nvarchar(100)
as
begin
select * from admins where email_id=@email_id
end



GO
/****** Object:  StoredProcedure [dbo].[get_agents_by_branch_name]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_agents_by_branch_name]
@branch_name nvarchar(100)
as
begin
select * from agents where branch_name=@branch_name
end



GO
/****** Object:  StoredProcedure [dbo].[get_bus_by_bus_number]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_bus_by_bus_number]
@var nvarchar(100)
as
begin
select * from bus where bus_no=@var
end



GO
/****** Object:  StoredProcedure [dbo].[get_bus_by_destination]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_bus_by_destination]
@var nvarchar(100)
as
begin
select * from bus where destination=@var
end



GO
/****** Object:  StoredProcedure [dbo].[get_bus_by_destination_time]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_bus_by_destination_time]
@var nvarchar(100)
as
begin
select * from bus where destination_time=@var
end



GO
/****** Object:  StoredProcedure [dbo].[get_bus_by_name]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_bus_by_name]
@var nvarchar(100)
as
begin
select * from bus where name=@var
end



GO
/****** Object:  StoredProcedure [dbo].[get_bus_by_source]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_bus_by_source]
@var nvarchar(100)
as
begin
select * from bus where source=@var
end



GO
/****** Object:  StoredProcedure [dbo].[get_bus_by_source_time]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_bus_by_source_time]
@var nvarchar(100)
as
begin
select * from bus where source_time=@var
end




GO
/****** Object:  StoredProcedure [dbo].[get_feedback_by_email_id]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_feedback_by_email_id]
@email_id nvarchar(100)
as
begin
select * from feedback where email_id=@email_id
end



GO
/****** Object:  StoredProcedure [dbo].[get_news_by_admin_status]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_news_by_admin_status]
@admin_status nvarchar(100)
as
begin
select * from news where admin_status=@admin_status
end



GO
/****** Object:  StoredProcedure [dbo].[get_passengers_by_email_id]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[get_passengers_by_email_id]
@email_id nvarchar(100)
as
begin
select * from passengers where email_id=@email_id
end



GO
/****** Object:  StoredProcedure [dbo].[insert_admins]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_admins]
@name nvarchar(100),
@admin_status nvarchar(100),
@email_id nvarchar(100),
@mobile_number bigint,
@password nvarchar(100)
as
begin
insert into admins values (@name,@admin_status,@email_id,@mobile_number,@password)
end



GO
/****** Object:  StoredProcedure [dbo].[insert_agents]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_agents]
@name nvarchar(100),
@branch_name nvarchar(100),
@email_id nvarchar(100),
@mobile_number bigint,
@password nvarchar(100)
as
begin
insert into agents values (@name,@branch_name,@email_id,@mobile_number,@password)
end



GO
/****** Object:  StoredProcedure [dbo].[insert_bus]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insert_bus]
@name nvarchar(100),
@source nvarchar(100),
@destination nvarchar(100),
@bus_no nvarchar(100),
@source_time nvarchar(100),
@destination_time nvarchar(100)
as
begin
insert into bus values(@name,@source,@destination,@bus_no,@source_time,@destination_time)
end




GO
/****** Object:  StoredProcedure [dbo].[insert_chennai_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_chennai_express]
@seat_name nvarchar(100),
@seat_type nvarchar(100),
@seat_status nvarchar(100)
as
begin
insert into chennai_express values (@seat_name,@seat_type,@seat_status)
end



GO
/****** Object:  StoredProcedure [dbo].[insert_delhi_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_delhi_express]
@seat_name nvarchar(100),
@seat_type nvarchar(100),
@seat_status nvarchar(100)
as
begin
insert into delhi_express values (@seat_name,@seat_type,@seat_status)
end



GO
/****** Object:  StoredProcedure [dbo].[insert_feedback]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_feedback]
@name nvarchar(100),
@email_id nvarchar(100),
@feedback nvarchar(max)
as
begin
insert into feedback values(@name,@email_id,@feedback)
end



GO
/****** Object:  StoredProcedure [dbo].[insert_kashmir_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_kashmir_express]
@seat_name nvarchar(100),
@seat_type nvarchar(100),
@seat_status nvarchar(100)
as
begin
insert into kashmir_express values (@seat_name,@seat_type,@seat_status)
end




GO
/****** Object:  StoredProcedure [dbo].[insert_kolkata_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_kolkata_express]
@seat_name nvarchar(100),
@seat_type nvarchar(100),
@seat_status nvarchar(100)
as
begin
insert into kolkata_express values (@seat_name,@seat_type,@seat_status)
end




GO
/****** Object:  StoredProcedure [dbo].[insert_mumbai_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_mumbai_express]
@seat_name nvarchar(100),
@seat_type nvarchar(100),
@seat_status nvarchar(100)
as
begin
insert into mumbai_express values (@seat_name,@seat_type,@seat_status)
end



GO
/****** Object:  StoredProcedure [dbo].[insert_news]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_news]
@name nvarchar(100),
@admin_status nvarchar(100),
@news nvarchar(max)
as 
begin
insert into news values
(@name,@admin_status,@news)
end



GO
/****** Object:  StoredProcedure [dbo].[insert_passengers]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_passengers]
@name nvarchar(100),
@address nvarchar(200),
@email_id nvarchar(100),
@mobile_number bigint,
@password nvarchar(100)
as
begin
insert into passengers values (@name,@address,@email_id,@mobile_number,@password)
end

exec insert_passengers 'kishan','azamagrh','gkkishan08999@gmail.com',9696115431,'kishan123'



select * from passengers



GO
/****** Object:  StoredProcedure [dbo].[insert_rajasthan_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_rajasthan_express]
@seat_name nvarchar(100),
@seat_type nvarchar(100),
@seat_status nvarchar(100)
as
begin
insert into rajasthan_express values (@seat_name,@seat_type,@seat_status)
end




GO
/****** Object:  StoredProcedure [dbo].[insert_sabarmati_express]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_sabarmati_express]
@seat_name nvarchar(100),
@seat_type nvarchar(100),
@seat_status nvarchar(100)
as
begin
insert into sabarmati_express values (@seat_name,@seat_type,@seat_status)
end




GO
/****** Object:  StoredProcedure [dbo].[ke_search_by_seat_type]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ke_search_by_seat_type]
@var nvarchar(200) 
as
begin
select * from kashmir_express where seat_type=@var
end
 
GO
/****** Object:  StoredProcedure [dbo].[koe_search_by_seat_type]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[koe_search_by_seat_type]
@var nvarchar(200) 
as
begin
select * from kolkata_express where seat_type=@var
end

GO
/****** Object:  StoredProcedure [dbo].[me_search_by_seat_type]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[me_search_by_seat_type]
@var nvarchar(200) 
as
begin
select * from mumbai_express where seat_type=@var
end
 
GO
/****** Object:  StoredProcedure [dbo].[re_search_by_seat_type]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[re_search_by_seat_type]
@var nvarchar(200) 
as
begin
select * from rajasthan_express where seat_type=@var
end

GO
/****** Object:  StoredProcedure [dbo].[read_all_admins]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[read_all_admins]
as
begin
select * from admins
end



GO
/****** Object:  StoredProcedure [dbo].[read_all_agents]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[read_all_agents]
as
begin
select * from agents
end




GO
/****** Object:  StoredProcedure [dbo].[read_all_bus]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[read_all_bus]
as
begin
select * from bus
end



GO
/****** Object:  StoredProcedure [dbo].[read_all_feedback]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[read_all_feedback]
as
begin
select * from feedback
end




GO
/****** Object:  StoredProcedure [dbo].[read_all_news]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[read_all_news]
as
begin
select * from feedback
end



GO
/****** Object:  StoredProcedure [dbo].[read_all_passengers]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[read_all_passengers]
as
begin
select * from passengers
end



GO
/****** Object:  StoredProcedure [dbo].[se_search_by_seat_type]    Script Date: 07-09-2023 13:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[se_search_by_seat_type]
@var nvarchar(200) 
as
begin
select * from sabarmati_express where seat_type=@var
end

GO
USE [master]
GO
ALTER DATABASE [humsafar_travels] SET  READ_WRITE 
GO
