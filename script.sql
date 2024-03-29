USE [CertificateLoginDb]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusId] [tinyint] NOT NULL,
	[SubOrganizationId] [int] NOT NULL,
	[Url] [varchar](255) NOT NULL,
	[CallbackUrl] [varchar](500) NOT NULL,
	[Minutues] [int] NOT NULL,
	[SecretKey] [varchar](max) NOT NULL,
	[Algorithm] [varchar](max) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_Customers_Url] UNIQUE NONCLUSTERED 
(
	[Url] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerStatuses](
	[Id] [tinyint] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_CustomerStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusId] [tinyint] NOT NULL,
	[FullName] [nvarchar](1000) NOT NULL,
	[Voen] [char](10) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_Organizations_Voen] UNIQUE NONCLUSTERED 
(
	[Voen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationStatuses](
	[Id] [tinyint] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_OrganizationStatuses'] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubOrganizations]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubOrganizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusId] [tinyint] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[FullName] [nvarchar](1000) NOT NULL,
	[Sun] [char](11) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SubOrganizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_SubOrganizations_Sun] UNIQUE NONCLUSTERED 
(
	[Sun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubOrganizationStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubOrganizationStatuses](
	[Id] [tinyint] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_SubOrganizationStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusId] [tinyint] NOT NULL,
	[Pin] [char](7) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_Users_Pin] UNIQUE NONCLUSTERED 
(
	[Pin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatuses](
	[Id] [tinyint] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_CustomerStatuses] FOREIGN KEY([StatusId])
REFERENCES [dbo].[CustomerStatuses] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_CustomerStatuses]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_SubOrganizations] FOREIGN KEY([SubOrganizationId])
REFERENCES [dbo].[SubOrganizations] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_SubOrganizations]
GO
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_OrganizationStatuses] FOREIGN KEY([StatusId])
REFERENCES [dbo].[OrganizationStatuses] ([Id])
GO
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_OrganizationStatuses]
GO
ALTER TABLE [dbo].[SubOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_SubOrganizations_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[SubOrganizations] CHECK CONSTRAINT [FK_SubOrganizations_Organizations]
GO
ALTER TABLE [dbo].[SubOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_SubOrganizations_SubOrganizationStatuses] FOREIGN KEY([StatusId])
REFERENCES [dbo].[SubOrganizationStatuses] ([Id])
GO
ALTER TABLE [dbo].[SubOrganizations] CHECK CONSTRAINT [FK_SubOrganizations_SubOrganizationStatuses]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserStatuses] FOREIGN KEY([StatusId])
REFERENCES [dbo].[UserStatuses] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserStatuses]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerByUrl]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomerByUrl]
	@url varchar(255)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 1
	 Customers.Id AS Id
    ,Customers.StatusId AS CustomerStatusId
    ,SubOrganizations.StatusId AS SubOrganizationStatusId
    ,Organizations.StatusId AS OrganizationStatusId
    ,Customers.SubOrganizationId AS SubOrganizationId
    ,SubOrganizations.OrganizationId AS OrganizationId
    ,Customers.Url AS Url
    ,Customers.CallbackUrl AS CallbackUrl
    ,Customers.Minutues AS Minutues
    ,Customers.SecretKey AS SecretKey
    ,Customers.Algorithm AS Algorithm
    ,Customers.Description AS Description
    ,Customers.AddedDate AS AddedDate
	FROM [CertificateLoginDb].[dbo].[Customers] as Customers
	INNER JOIN [dbo].[SubOrganizations] AS SubOrganizations ON SubOrganizations.Id = Customers.SubOrganizationId
	INNER JOIN [dbo].[Organizations] AS Organizations ON SubOrganizations.OrganizationId = Organizations.Id
	WHERE Url = @url
END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerStatusById]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetCustomerStatusById] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1
	 CustomerStatuses.Id AS Id
	,CustomerStatuses.Name AS Name
	,CustomerStatuses.Description AS Description
	FROM [dbo].[CustomerStatuses] AS CustomerStatuses
	WHERE CustomerStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerStatusByIdCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetCustomerStatusByIdCount] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 COUNT(CustomerStatuses.Id)
	FROM [dbo].[CustomerStatuses] AS CustomerStatuses
	WHERE CustomerStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetCustomerStatuses] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 CustomerStatuses.Id AS Id
	,CustomerStatuses.Name AS Name
	,CustomerStatuses.Description AS Description
	FROM [dbo].[CustomerStatuses] AS CustomerStatuses
END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerStatusesCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCustomerStatusesCount] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	 COUNT(CustomerStatuses.Id)
	FROM [dbo].[CustomerStatuses] AS CustomerStatuses
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrganizationStatusById]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetOrganizationStatusById] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1
	 OrganizationStatuses.Id AS Id
	,OrganizationStatuses.Name AS Name
	,OrganizationStatuses.Description AS Description
	FROM [dbo].[OrganizationStatuses] AS OrganizationStatuses
	WHERE OrganizationStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrganizationStatusByIdCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetOrganizationStatusByIdCount] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 COUNT(OrganizationStatuses.Id)
	FROM [dbo].[OrganizationStatuses] AS OrganizationStatuses
	WHERE OrganizationStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrganizationStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetOrganizationStatuses] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 OrganizationStatuses.Id AS Id
	,OrganizationStatuses.Name AS Name
	,OrganizationStatuses.Description AS Description
	FROM [dbo].[OrganizationStatuses] AS OrganizationStatuses
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrganizationStatusesCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetOrganizationStatusesCount] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	 COUNT(OrganizationStatuses.Id)
	FROM [dbo].[OrganizationStatuses] AS OrganizationStatuses
END
GO
/****** Object:  StoredProcedure [dbo].[GetSubOrganizationStatusById]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetSubOrganizationStatusById] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1
	 SubOrganizationStatuses.Id AS Id
	,SubOrganizationStatuses.Name AS Name
	,SubOrganizationStatuses.Description AS Description
	FROM [dbo].[SubOrganizationStatuses] AS SubOrganizationStatuses
	WHERE SubOrganizationStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetSubOrganizationStatusByIdCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetSubOrganizationStatusByIdCount] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 COUNT(SubOrganizationStatuses.Id)
	FROM [dbo].[SubOrganizationStatuses] AS SubOrganizationStatuses
	WHERE SubOrganizationStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetSubOrganizationStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetSubOrganizationStatuses] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 SubOrganizationStatuses.Id AS Id
	,SubOrganizationStatuses.Name AS Name
	,SubOrganizationStatuses.Description AS Description
	FROM [dbo].[SubOrganizationStatuses] AS SubOrganizationStatuses
END
GO
/****** Object:  StoredProcedure [dbo].[GetSubOrganizationStatusesCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetSubOrganizationStatusesCount] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	 COUNT(SubOrganizationStatuses.Id)
	FROM [dbo].[SubOrganizationStatuses] AS SubOrganizationStatuses
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserStatusById]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetUserStatusById] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP 1
	 UserStatuses.Id AS Id
	,UserStatuses.Name AS Name
	,UserStatuses.Description AS Description
	FROM [dbo].[UserStatuses] AS UserStatuses
	WHERE UserStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserStatusByIdCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetUserStatusByIdCount] 
	@statusId tinyint
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 COUNT(UserStatuses.Id)
	FROM [dbo].[UserStatuses] AS UserStatuses
	WHERE UserStatuses.Id = @statusId
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserStatuses]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetUserStatuses] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
	 UserStatuses.Id AS Id
	,UserStatuses.Name AS Name
	,UserStatuses.Description AS Description
	FROM [dbo].[UserStatuses] AS UserStatuses
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserStatusesCount]    Script Date: 1/31/2024 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GetUserStatusesCount] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
	 COUNT(UserStatuses.Id)
	FROM [dbo].[UserStatuses] AS UserStatuses
END
GO
