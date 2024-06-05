USE [master]
GO

/****** Object:  Database [GaragemCarro]    Script Date: 05/06/2024 08:49:34 ******/
CREATE DATABASE [GaragemCarro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GaragemCarro', FILENAME = N'/var/opt/mssql/data/GaragemCarro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GaragemCarro_log', FILENAME = N'/var/opt/mssql/data/GaragemCarro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GaragemCarro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [GaragemCarro] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [GaragemCarro] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [GaragemCarro] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [GaragemCarro] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [GaragemCarro] SET ARITHABORT OFF 
GO

ALTER DATABASE [GaragemCarro] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [GaragemCarro] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [GaragemCarro] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [GaragemCarro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [GaragemCarro] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [GaragemCarro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [GaragemCarro] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [GaragemCarro] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [GaragemCarro] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [GaragemCarro] SET  DISABLE_BROKER 
GO

ALTER DATABASE [GaragemCarro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [GaragemCarro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [GaragemCarro] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [GaragemCarro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [GaragemCarro] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [GaragemCarro] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [GaragemCarro] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [GaragemCarro] SET RECOVERY FULL 
GO

ALTER DATABASE [GaragemCarro] SET  MULTI_USER 
GO

ALTER DATABASE [GaragemCarro] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [GaragemCarro] SET DB_CHAINING OFF 
GO

ALTER DATABASE [GaragemCarro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [GaragemCarro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [GaragemCarro] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [GaragemCarro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [GaragemCarro] SET QUERY_STORE = OFF
GO

ALTER DATABASE [GaragemCarro] SET  READ_WRITE 
GO
