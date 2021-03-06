USE [HomeIn]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
	[street] [varchar](150) NOT NULL,
	[city] [varchar](15) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[zipcode] [varchar](15) NOT NULL,
	[country] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressInformation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NULL,
	[LivingRooms] [float] NULL,
	[BedRooms] [float] NULL,
	[Kitchen] [float] NULL,
	[SquareFootSize] [float] NULL,
 CONSTRAINT [PK_AddressInformation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](10) NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_AddressType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[worker_id] [int] NOT NULL,
	[comment] [varchar](300) NULL,
	[commentedOn] [date] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeReferral](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[worker_id] [int] NULL,
	[user_id] [int] NULL,
	[employerReferrel] [varchar](max) NULL,
	[workExperience] [varchar](50) NULL,
	[ratecharged] [money] NULL,
	[recommendationDate] [datetime] NULL,
 CONSTRAINT [PK_EmployeeReferral] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 8/21/2017 4:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[worker_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_Employer_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LastHiredBy]    Script Date: 8/21/2017 4:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LastHiredBy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[worker_Id] [int] NOT NULL,
	[user_name] [varchar](200) NULL,
	[user_email] [varchar](350) NULL,
	[user_phone] [numeric](11, 0) NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentProfile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NULL,
	[person_id] [int] NOT NULL,
	[billing_address] [varchar](300) NOT NULL,
 CONSTRAINT [PK_PaymentProfile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[facebook_id] [varchar](25) NULL,
	[name] [varchar](max) NOT NULL,
	[email] [varchar](350) NULL,
	[picture] [varchar](max) NULL,
	[phone] [varchar](50) NULL,
	[gender] [varchar](6) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[worker_id] [int] NOT NULL,
	[skill_id] [int] NOT NULL,
	[rating] [int] NOT NULL,
	[ratedOn] [date] NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](15) NOT NULL,
	[description] [varchar](150) NULL,
 CONSTRAINT [PK_Role_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NULL,
	[equipment] [varchar](150) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[payment_id_user] [int] NOT NULL,
	[payment_id_worker] [int] NOT NULL,
	[amountCharged] [money] NULL,
	[user_id] [int] NOT NULL,
	[worker_id] [int] NOT NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerAvailability](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[worker_Id] [int] NOT NULL,
	[MilesWantToDrive] [int] NULL,
	[DaysAvailable] [varchar](50) NULL,
 CONSTRAINT [PK_WorkerAvailability] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerExperience](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Years] [float] NOT NULL,
	[Description] [varchar](500) NULL,
	[PersonId] [int] NOT NULL,
	[HoursWorked] [float] NULL,
 CONSTRAINT [PK_WorkerExperience] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerSchedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startdate] [datetime] NOT NULL,
	[enddate] [datetime] NOT NULL,
	[description] [varchar](150) NULL,
	[worker_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_Scheduling] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorkerSkills](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[skill_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
	[averageRating] [int] NULL,
 CONSTRAINT [PK_SkillsWorker] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_AddressType] FOREIGN KEY([type_id])
REFERENCES [dbo].[AddressType] ([id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_AddressType]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Person] FOREIGN KEY([person_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Person]
GO
ALTER TABLE [dbo].[AddressInformation]  WITH CHECK ADD  CONSTRAINT [FK_AddressInfo_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[AddressInformation] CHECK CONSTRAINT [FK_AddressInfo_person]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_User]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Worker] FOREIGN KEY([worker_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Worker]
GO
ALTER TABLE [dbo].[EmployeeReferral]  WITH CHECK ADD  CONSTRAINT [FK_recommendation_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[EmployeeReferral] CHECK CONSTRAINT [FK_recommendation_user]
GO
ALTER TABLE [dbo].[EmployeeReferral]  WITH CHECK ADD  CONSTRAINT [FK_recommendation_Worker] FOREIGN KEY([worker_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[EmployeeReferral] CHECK CONSTRAINT [FK_recommendation_Worker]
GO
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [FK_Employer_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [FK_Employer_User]
GO
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Worker] FOREIGN KEY([worker_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [FK_Employer_Worker]
GO
ALTER TABLE [dbo].[LastHiredBy]  WITH CHECK ADD  CONSTRAINT [FK_LastHiredBy_Worker] FOREIGN KEY([worker_Id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[LastHiredBy] CHECK CONSTRAINT [FK_LastHiredBy_Worker]
GO
ALTER TABLE [dbo].[PaymentProfile]  WITH CHECK ADD  CONSTRAINT [FK_PaymentProfile_id] FOREIGN KEY([person_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[PaymentProfile] CHECK CONSTRAINT [FK_PaymentProfile_id]
GO
ALTER TABLE [dbo].[PersonRole]  WITH CHECK ADD  CONSTRAINT [FK_PersonRole_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[PersonRole] CHECK CONSTRAINT [FK_PersonRole_Role]
GO
ALTER TABLE [dbo].[PersonRole]  WITH CHECK ADD  CONSTRAINT [FK_Roles_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[PersonRole] CHECK CONSTRAINT [FK_Roles_person]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Skills] FOREIGN KEY([skill_id])
REFERENCES [dbo].[Skills] ([id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Skills]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_User]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_worker] FOREIGN KEY([worker_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_worker]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_user]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_worker] FOREIGN KEY([worker_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_worker]
GO
ALTER TABLE [dbo].[WorkerAvailability]  WITH CHECK ADD  CONSTRAINT [FK_WorkerAvailability_Person] FOREIGN KEY([worker_Id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[WorkerAvailability] CHECK CONSTRAINT [FK_WorkerAvailability_Person]
GO
ALTER TABLE [dbo].[WorkerExperience]  WITH CHECK ADD  CONSTRAINT [FK_Person_WorkerExperience] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[WorkerExperience] CHECK CONSTRAINT [FK_Person_WorkerExperience]
GO
ALTER TABLE [dbo].[WorkerSchedule]  WITH CHECK ADD  CONSTRAINT [FK_Scheduling_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[WorkerSchedule] CHECK CONSTRAINT [FK_Scheduling_User]
GO
ALTER TABLE [dbo].[WorkerSchedule]  WITH CHECK ADD  CONSTRAINT [FK_Scheduling_worker] FOREIGN KEY([worker_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[WorkerSchedule] CHECK CONSTRAINT [FK_Scheduling_worker]
GO
ALTER TABLE [dbo].[WorkerSkills]  WITH CHECK ADD  CONSTRAINT [FK_SkillsWorker_Skills] FOREIGN KEY([skill_id])
REFERENCES [dbo].[Skills] ([id])
GO
ALTER TABLE [dbo].[WorkerSkills] CHECK CONSTRAINT [FK_SkillsWorker_Skills]
GO
ALTER TABLE [dbo].[WorkerSkills]  WITH CHECK ADD  CONSTRAINT [FK_SkillsWorker_Worker] FOREIGN KEY([person_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[WorkerSkills] CHECK CONSTRAINT [FK_SkillsWorker_Worker]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'person''s address information' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddressInformation', @level2type=N'CONSTRAINT',@level2name=N'FK_AddressInfo_person'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'roles a person have in the application' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PersonRole', @level2type=N'CONSTRAINT',@level2name=N'FK_Roles_person'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User information from person table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'CONSTRAINT',@level2name=N'FK_Transaction_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'worker information from person table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transaction', @level2type=N'CONSTRAINT',@level2name=N'FK_Transaction_worker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'user scheduled worker for this date and time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkerSchedule', @level2type=N'CONSTRAINT',@level2name=N'FK_Scheduling_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'worker''s schedule' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkerSchedule', @level2type=N'CONSTRAINT',@level2name=N'FK_Scheduling_worker'
GO
