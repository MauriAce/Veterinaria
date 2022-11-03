create database Veterinaria
go
use Veterinaria
go
create table [User]
(
	
	Username nvarchar (50) unique not null,
	[Password] nvarchar (100) not null,
	
)
go
insert into [User] values ('admin', 'admin')

go

select *from [User]