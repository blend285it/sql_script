USE master;
GO
CREATE DATABASE pacific;
GO
use pacific
GO
CREATE TABLE DEVICES_NAME(
	ADR INT NOT NULL,
	DEVICES_NAME VARCHAR(50) NOT NULL,
	PRIMARY KEY(ADR),
);
CREATE TABLE ANALOGINPUT(
	ADR INT NOT NULL,
	NAME VARCHAR(80) NOT NULL,
	VALUE FLOAT(20),
	UNIT VARCHAR(10),
	[INDEX] VARCHAR(10),
	PRIMARY KEY(ADR),
);
CREATE TABLE DIGITALINPUT(
	ADR INT NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	VALUE VARCHAR(10),
	PRIMARY KEY(ADR),
);
CREATE TABLE DEVICES_STATUS(
	ADR INT NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	VALUE VARCHAR(10),
	PRIMARY KEY(ADR),
);
CREATE TABLE OUTPUT_STATUS(
	ADR INT NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	VALUE VARCHAR(10),
	PRIMARY KEY(ADR),
);
CREATE TABLE ALARMS(
	ADR INT NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	VALUE VARCHAR(10),
	PRIMARY KEY(ADR),
);
CREATE TABLE CATEGORY(
	ADR INT NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	VALUE VARCHAR(10),
	PRIMARY KEY(ADR),
);