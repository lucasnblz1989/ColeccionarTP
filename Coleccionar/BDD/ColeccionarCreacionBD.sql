USE [master]
GO
/****** Object:  Database [Coleccionar]    Script Date: 01/11/2020 7:13:02 p. m. ******/
CREATE DATABASE [Coleccionar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Coleccionar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Coleccionar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Coleccionar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Coleccionar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Coleccionar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coleccionar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coleccionar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coleccionar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coleccionar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coleccionar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coleccionar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coleccionar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Coleccionar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coleccionar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coleccionar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coleccionar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coleccionar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coleccionar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coleccionar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coleccionar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coleccionar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Coleccionar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coleccionar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coleccionar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coleccionar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coleccionar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coleccionar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coleccionar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coleccionar] SET RECOVERY FULL 
GO
ALTER DATABASE [Coleccionar] SET  MULTI_USER 
GO
ALTER DATABASE [Coleccionar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coleccionar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coleccionar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coleccionar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coleccionar] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Coleccionar', N'ON'
GO
ALTER DATABASE [Coleccionar] SET QUERY_STORE = OFF
GO
USE [Coleccionar]
GO
/****** Object:  Table [dbo].[calificacion]    Script Date: 01/11/2020 7:13:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calificacion](
	[ID_Calificacion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Venta] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Calificacion] [tinyint] NOT NULL,
 CONSTRAINT [PK_calificacion] PRIMARY KEY CLUSTERED 
(
	[ID_Calificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[ID_Categoria] [tinyint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[ID_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[encontrado]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[encontrado](
	[ID_Encontrado] [int] IDENTITY(1,1) NOT NULL,
	[ID_Publicacion] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_encontrado] PRIMARY KEY CLUSTERED 
(
	[ID_Encontrado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](
	[ID_Estado] [tinyint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[ID_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localidad]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localidad](
	[ID_Localidad] [int] NOT NULL,
	[ID_Provincia] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_localidad] PRIMARY KEY CLUSTERED 
(
	[ID_Localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mensajeria]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mensajeria](
	[ID_Mensaje] [int] IDENTITY(1,1) NOT NULL,
	[ID_Remitente] [int] NOT NULL,
	[ID_Destinatario] [int] NOT NULL,
	[ID_Publicacion] [int] NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_mensajeria] PRIMARY KEY CLUSTERED 
(
	[ID_Mensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincia](
	[ID_Provincia] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_provincia] PRIMARY KEY CLUSTERED 
(
	[ID_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publicacion]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publicacion](
	[ID_Publicacion] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Publicacion] [int] NOT NULL,
	[ID_Categoria] [tinyint] NOT NULL,
	[ID_SubCategoria] [tinyint] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[Estado_Publicacion] [tinyint] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado_Producto] [tinyint] NOT NULL,
	[Precio] [float] NOT NULL,
	[Estado_Visibilidad] [int] NULL,
 CONSTRAINT [PK_publicacion] PRIMARY KEY CLUSTERED 
(
	[ID_Publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publicacionFoto]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publicacionFoto](
	[ID_PublicacionFoto] [int] IDENTITY(1,1) NOT NULL,
	[ID_Publicacion] [int] NOT NULL,
	[Foto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_publicacionFoto] PRIMARY KEY CLUSTERED 
(
	[ID_PublicacionFoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subCategoria]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subCategoria](
	[ID_SubCategoria] [tinyint] IDENTITY(1,1) NOT NULL,
	[ID_Categoria] [tinyint] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_subCategoria] PRIMARY KEY CLUSTERED 
(
	[ID_SubCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoPago](
	[ID_TipoPago] [tinyint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tipoPago] PRIMARY KEY CLUSTERED 
(
	[ID_TipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[ID_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Dni] [int] NOT NULL,
	[Fecha_Nac] [date] NOT NULL,
	[Domicilio_Lat] [decimal](9, 6) NOT NULL,
	[Domicilio_Lon] [decimal](9, 6) NOT NULL,
	[Domicilio_Calle] [varchar](50) NOT NULL,
	[Domicilio_ID_Provincia] [int] NOT NULL,
	[Domicilio_ID_Localidad] [int] NOT NULL,
	[Domicilio_Nro] [int] NULL,
	[Domicilio_Piso] [int] NULL,
	[Domicilio_Depto] [char](1) NULL,
	[Telefono] [int] NULL,
	[Celular] [int] NULL,
	[Email] [varchar](50) NOT NULL,
	[Clave] [varchar](12) NOT NULL,
	[ID_Facebook] [int] NULL,
	[Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 01/11/2020 7:13:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[ID_Venta] [int] IDENTITY(1,1) NOT NULL,
	[ID_Publicacion] [int] NOT NULL,
	[ID_Vendedor] [int] NOT NULL,
	[ID_Comprador] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Estado] [tinyint] NOT NULL,
	[Importe] [float] NOT NULL,
	[ID_TipoPago] [tinyint] NOT NULL,
 CONSTRAINT [PK_venta] PRIMARY KEY CLUSTERED 
(
	[ID_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[calificacion]  WITH CHECK ADD  CONSTRAINT [FK_calificacion_usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[calificacion] CHECK CONSTRAINT [FK_calificacion_usuario]
GO
ALTER TABLE [dbo].[calificacion]  WITH CHECK ADD  CONSTRAINT [FK_calificacion_venta] FOREIGN KEY([ID_Venta])
REFERENCES [dbo].[venta] ([ID_Venta])
GO
ALTER TABLE [dbo].[calificacion] CHECK CONSTRAINT [FK_calificacion_venta]
GO
ALTER TABLE [dbo].[encontrado]  WITH CHECK ADD  CONSTRAINT [FK_encontrado_publicacion] FOREIGN KEY([ID_Publicacion])
REFERENCES [dbo].[publicacion] ([ID_Publicacion])
GO
ALTER TABLE [dbo].[encontrado] CHECK CONSTRAINT [FK_encontrado_publicacion]
GO
ALTER TABLE [dbo].[encontrado]  WITH CHECK ADD  CONSTRAINT [FK_encontrado_usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[encontrado] CHECK CONSTRAINT [FK_encontrado_usuario]
GO
ALTER TABLE [dbo].[localidad]  WITH CHECK ADD  CONSTRAINT [FK_localidad_provincia] FOREIGN KEY([ID_Provincia])
REFERENCES [dbo].[provincia] ([ID_Provincia])
GO
ALTER TABLE [dbo].[localidad] CHECK CONSTRAINT [FK_localidad_provincia]
GO
ALTER TABLE [dbo].[mensajeria]  WITH CHECK ADD  CONSTRAINT [FK_mensajeria_publicacion] FOREIGN KEY([ID_Publicacion])
REFERENCES [dbo].[publicacion] ([ID_Publicacion])
GO
ALTER TABLE [dbo].[mensajeria] CHECK CONSTRAINT [FK_mensajeria_publicacion]
GO
ALTER TABLE [dbo].[mensajeria]  WITH CHECK ADD  CONSTRAINT [FK_mensajeria_usuario] FOREIGN KEY([ID_Remitente])
REFERENCES [dbo].[usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[mensajeria] CHECK CONSTRAINT [FK_mensajeria_usuario]
GO
ALTER TABLE [dbo].[mensajeria]  WITH CHECK ADD  CONSTRAINT [FK_mensajeria_usuario1] FOREIGN KEY([ID_Destinatario])
REFERENCES [dbo].[usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[mensajeria] CHECK CONSTRAINT [FK_mensajeria_usuario1]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_categoria] FOREIGN KEY([ID_Categoria])
REFERENCES [dbo].[categoria] ([ID_Categoria])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_categoria]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_estado] FOREIGN KEY([Estado_Publicacion])
REFERENCES [dbo].[estado] ([ID_Estado])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_estado]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_estado1] FOREIGN KEY([Estado_Producto])
REFERENCES [dbo].[estado] ([ID_Estado])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_estado1]
GO
ALTER TABLE [dbo].[publicacion]  WITH CHECK ADD  CONSTRAINT [FK_publicacion_subCategoria] FOREIGN KEY([ID_SubCategoria])
REFERENCES [dbo].[subCategoria] ([ID_SubCategoria])
GO
ALTER TABLE [dbo].[publicacion] CHECK CONSTRAINT [FK_publicacion_subCategoria]
GO
ALTER TABLE [dbo].[publicacionFoto]  WITH CHECK ADD  CONSTRAINT [FK_publicacionFoto_publicacion] FOREIGN KEY([ID_Publicacion])
REFERENCES [dbo].[publicacion] ([ID_Publicacion])
GO
ALTER TABLE [dbo].[publicacionFoto] CHECK CONSTRAINT [FK_publicacionFoto_publicacion]
GO
ALTER TABLE [dbo].[subCategoria]  WITH CHECK ADD  CONSTRAINT [FK_subCategoria_categoria] FOREIGN KEY([ID_Categoria])
REFERENCES [dbo].[categoria] ([ID_Categoria])
GO
ALTER TABLE [dbo].[subCategoria] CHECK CONSTRAINT [FK_subCategoria_categoria]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_localidad] FOREIGN KEY([Domicilio_ID_Localidad])
REFERENCES [dbo].[localidad] ([ID_Localidad])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_localidad]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_provincia] FOREIGN KEY([Domicilio_ID_Provincia])
REFERENCES [dbo].[provincia] ([ID_Provincia])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_provincia]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_estado] FOREIGN KEY([Estado])
REFERENCES [dbo].[estado] ([ID_Estado])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_estado]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_publicacion] FOREIGN KEY([ID_Publicacion])
REFERENCES [dbo].[publicacion] ([ID_Publicacion])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_publicacion]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_tipoPago] FOREIGN KEY([ID_TipoPago])
REFERENCES [dbo].[tipoPago] ([ID_TipoPago])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_tipoPago]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_usuario] FOREIGN KEY([ID_Vendedor])
REFERENCES [dbo].[usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_usuario]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_usuario1] FOREIGN KEY([ID_Comprador])
REFERENCES [dbo].[usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_usuario1]
GO
USE [master]
GO
ALTER DATABASE [Coleccionar] SET  READ_WRITE 
GO
