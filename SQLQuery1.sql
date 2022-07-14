USE master;
GO
CREATE DATABASE usersmange;
GO
USE usersmange;
GO
CREATE TABLE users(
	id int not null IDENTITY(1,1),
	username varchar(30) not null,
	pass_word varchar(30),
	first_name varchar(30),
	last_name varchar(30),
	position varchar(20),
	primary key (id),
);
