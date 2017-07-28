create table dbo.Countries (
	Id int primary key,
	Short nvarchar(5) not null,
	Name nvarchar(100) not null,
	PhoneCode nvarchar(10)
)

create table dbo.States (
	Id int primary key,
	Name nvarchar(100) not null,
	CountryId int not null,
	
	constraint FK_States_Countries foreign key (CountryId) references Countries(Id)
)

create table dbo.Cities (
	Id int primary key,
	Name nvarchar(100) not null,
	StateId int not null,

	constraint FK_Cities_States foreign key (StateId) references States(Id)
)