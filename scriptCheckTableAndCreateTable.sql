SELECT * FROM INFORMATION_SCHEMA.TABLES

IF OBJECT_ID (N'[Xweb].[dbo].[XR77CX_244]', N'U') IS NULL
BEGIN
    CREATE TABLE [Xweb].[dbo].[XR77CX_244] (
        [ID] [int] IDENTITY(1,1) NOT NULL,
        [Address] CHAR(20) NOT NULL,
        [TimeStamp] VARCHAR(20) NULL,
	    PRIMARY KEY ([Address])
    )
END

IF NOT EXISTS(
	SELECT TOP 1 1
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE 
	[TABLE_NAME] = '[XR77CX_244]'
	AND [COLUMN_NAME] = 'Probe_2')
BEGIN
	ALTER TABLE [dbo].[XR77CX_244]
	ADD [Probe_2] CHAR(20) NULL
END

--****************************************************************************

IF OBJECT_ID (N'[Xweb].[dbo].[{{deviceName}}]', N'U') IS NULL
BEGIN
    CREATE TABLE [Xweb].[dbo].[{{deviceName}}] (
        [ID] [int] IDENTITY(1,1) NOT NULL,
        [Address] CHAR(20) NOT NULL,
        [TimeStamp] VARCHAR(20) NULL,
	    PRIMARY KEY ([Address])
    )
END
IF NOT EXISTS(
	SELECT TOP 1 1
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE 
	[TABLE_NAME] = '[{{deviceName}}]'
	AND [COLUMN_NAME] = '{{data}}')
BEGIN
	ALTER TABLE [dbo].[{{deviceName}}]
	ADD [{{data}}] CHAR(20) NULL
END

--*************************************************************************************
---********* INSERT INTO DATA********************************************

IF EXISTS(
	SELECT TOP 1 1
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE 
	[TABLE_NAME] = 'XR77CX_244'
	AND [COLUMN_NAME] = 'Test_SensorName_Name')
BEGIN
	INSERT INTO [dbo].[XR77CX_244]([Address],[Test_SensorName_Name]) VALUES('244','2.3')
END
