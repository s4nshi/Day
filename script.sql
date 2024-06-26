create database Esoft
GO
use Esoft
GO

create table Agents (id int primary key,
firstName nvarchar(100),
middlename nvarchar(150),
lastname nvarchar(150),
dealshare int
)
create table Clients (id int primary key,
firstname nvarchar(100),
middlename nvarchar(120),
lastname nvarchar(150),
phone int,
email nvarchar(150)
)

create table Apartaments (id int primary key,
address_city nvarchar(100),
address_street nvarchar(100),
address_house nvarchar(100),
address_number nvarchar(100),
ñoordinate_latitude float,
coordinate_longitude float,
totalarea float,
rooms int,
floor int
)

create table Districs (id int primary key,
name nvarchar(max),
area nvarchar(max)
)

create table Apart_demands (id int primary key,
address_city nvarchar(100),
address_street nvarchar(100),
address_house nvarchar(100),
address_number nvarchar(100),
minprice float,
maxprice float,
minarea float,
minroom int,
maxroom int,
minfloor float,
id_appart int,
foreign key (id_appart) references Apartaments(id),
)

create table Houses_demands (id int primary key,
address_city nvarchar(100),
address_street nvarchar(100),
address_house nvarchar(100),
address_number nvarchar(100),
ñoordinate_latitude float,
coordinate_longitude float,
totalfloors int,
totalarea float,
id_dist int,
foreign key (id_dist) references Districs(id),
)

create table Lands (id int primary key,
address_city nvarchar(100),
address_street nvarchar(100),
address_house nvarchar(100),
address_number nvarchar(100),
ñoordinate_latitude float,
coordinate_longitude float,
totalarea float,
id_distr int
foreign key (id_distr) references Districs(id),
)

create table Offer (id int primary key,
id_client int,
id_agent int,
id_apartOffer int,
id_houseOffer int,
id_landsOffer int,
totalprice money
foreign key (id_client) references Clients(id),
foreign key (id_agent) references Agents(id),
foreign key (id_apartOffer) references Apart_demands(id),
foreign key (id_houseOffer) references Houses_demands(id),
foreign key (id_landsOffer) references Lands(id),
)