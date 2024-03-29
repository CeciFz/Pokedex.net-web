use master
go
create database POKEDEX_DB2
go
use POKEDEX_DB2
go
USE [POKEDEX_DB2]
GO

/****** Object:  Table [dbo].[TIPOS]    Script Date: 06/09/2019 08:29:33 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TIPOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TIPOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
USE [POKEDEX_DB2]
GO

/****** Object:  Table [dbo].[POKEMONS]    Script Date: 06/09/2019 08:29:40 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[POKEMONS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdTipo] [int] NOT NULL,
	[IdEvolucion] [int] NULL,
	[Descripcion] [varchar](400) NOT NULL,
	[UrlImagen] [varchar](500) null
 CONSTRAINT [PK_POKEMONS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


insert into tipos values ('Planta'), ('Fuego'), ('Agua')

insert into POKEMONS values 
('Charizard',2,2,'Escupe un fuego tan caliente que funde las rocas. Causa incendios forestales sin querer.', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png'),
('Charmeleon',2,4,'Este Pok�mon de naturaleza agresiva ataca en combate con su cola llameante y hace trizas al rival con sus afiladas garras.', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png'),
('Bulbasaur',1,null,'A Bulbasaur es f�cil verle ech�ndose una siesta al sol. La semilla que tiene en el lomo va creciendo cada vez m�s a medida que absorbe los rayos del sol.', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png'),
('Charmander',2,null,'La llama que tiene en la punta de la cola arde seg�n sus sentimientos. Llamea levemente cuando est� alegre y arde vigorosamente cuando est� enfadado.', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png'),
('Squirtle',3,null,'El caparaz�n de Squirtle no le sirve de protecci�n �nicamente. Su forma redondeada y las hendiduras que tiene le ayudan a deslizarse en el agua y le permiten nadar a gran velocidad.', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png')


go

alter table POKEMONS
add Activo bit

go

update POKEMONS set Activo = 1

go


create procedure spModificarPokemon
@nombre varchar(100),
@id int
as
Update POKEMONS set Nombre=@nombre Where Id=@id

go

create procedure [dbo].[spAltaPokemon] 
@nombre varchar(100),
@idTipo int,
@idEvolucion int,
@desc varchar(300),
@urlImagen varchar(500)
as
Insert into POKEMONS values (@nombre, @idTipo, @idEvolucion, @desc,@urlImagen, 1 )

go

create procedure [dbo].[spEliminarLogico]
@id int
as
update POKEMONS set Activo = 0 where id = @id

 go

create procedure [dbo].[spListar] as
select p.id, p.Nombre, p.Descripcion PokeDesc, t.Id idTipo, t.Descripcion, 
e.id idEvol,e.Nombre nomEvol, p.UrlImagen 
from POKEMONS p 
inner join TIPOS t on p.IdTipo = t.Id 
left join POKEMONS E on p.IdEvolucion = E.Id


CREATE TABLE [dbo].[USUARIOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[TipoUser] [int] NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

insert into USUARIOS Values ('test', 'test', 1)
insert into USUARIOS Values ('admin', 'admin', 2)

go

exec dbo.spListar