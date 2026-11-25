-- =====================================================================
-- Smart Campus Portal - database script (safe to run more than once)
-- Server : (localdb)\ProjectModels
-- =====================================================================
IF DB_ID(N'SmartCampusDB') IS NULL
    CREATE DATABASE SmartCampusDB;
GO

USE SmartCampusDB;
GO

IF OBJECT_ID(N'dbo.ServiceRequests', N'U') IS NULL
BEGIN
    CREATE TABLE ServiceRequests
    (
        RequestId   INT IDENTITY(1,1) PRIMARY KEY,
        StudentName NVARCHAR(100) NOT NULL,
        Department  NVARCHAR(100) NOT NULL,
        ServiceType NVARCHAR(50)  NOT NULL,
        Description NVARCHAR(500) NOT NULL,
        Priority    NVARCHAR(20)  NOT NULL DEFAULT 'Medium',
        Status      NVARCHAR(20)  NOT NULL DEFAULT 'Pending',
        RequestDate DATETIME      NOT NULL DEFAULT GETDATE()
    );
END
GO

IF NOT EXISTS (SELECT 1 FROM ServiceRequests)
BEGIN
    INSERT INTO ServiceRequests
        (StudentName, Department, ServiceType, Description, Priority, Status)
    VALUES
        ('Rahul Patel', 'Computer Engineering',    'IT Support',  'Wi-Fi connectivity issue',  'High',   'Pending'),
        ('Priya Shah',  'Computer Engineering',    'Library',     'Request for library access','Medium', 'In Progress'),
        ('Amit Mehta',  'Information Technology',  'Maintenance', 'Classroom projector issue', 'Low',    'Completed');
END
GO
