USE [master]
GO
/****** Object:  Database [NewCommunityMedicineAutomationDB]    Script Date: 2015-07-03 11:17:29 ******/
CREATE DATABASE [NewCommunityMedicineAutomationDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewCommunityMedicineAutomationDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NewCommunityMedicineAutomationDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NewCommunityMedicineAutomationDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NewCommunityMedicineAutomationDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewCommunityMedicineAutomationDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET  MULTI_USER 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [NewCommunityMedicineAutomationDB]
GO
/****** Object:  Table [dbo].[tbl_center]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_center](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CenterName] [nvarchar](100) NOT NULL,
	[CenterCode] [nvarchar](300) NOT NULL,
	[CenterPassward] [nvarchar](1000) NOT NULL,
	[DistrictId] [int] NOT NULL,
	[ThanaId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_center] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_destrict]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_destrict](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[District] [nvarchar](100) NOT NULL,
	[Population] [varchar](500) NOT NULL,
	[loclat] [varchar](50) NULL,
	[loclong] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_destrict] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_diseases]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_diseases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DiseasesName] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[TreatmentProc] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_diseases] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_doctor]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_doctor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[degree] [nvarchar](300) NOT NULL,
	[specialization] [nvarchar](500) NOT NULL,
	[CenterId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_doctor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_medicine]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MedicineName] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_tbl_medicine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_send_medicine]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_send_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DistrictId] [int] NOT NULL,
	[ThanaId] [int] NOT NULL,
	[CenterId] [int] NOT NULL,
	[MedicineId] [int] NOT NULL,
	[Quentity] [int] NOT NULL,
 CONSTRAINT [PK_tbl_send_medicine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_thana]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_thana](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Thana] [nvarchar](100) NOT NULL,
	[DistrictId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_thana] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_treatment]    Script Date: 2015-07-03 11:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_treatment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[observation] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[patientVoterId] [nvarchar](500) NOT NULL,
	[doctorId] [int] NOT NULL,
	[diseaseId] [int] NOT NULL,
	[medicineId] [int] NOT NULL,
	[does] [nvarchar](100) NULL,
	[meal_time] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[note] [nvarchar](500) NULL,
	[centerId] [int] NOT NULL,
 CONSTRAINT [PK_t_treatment_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_center] ON 

INSERT [dbo].[tbl_center] ([id], [CenterName], [CenterCode], [CenterPassward], [DistrictId], [ThanaId]) VALUES (1, N'Sunrise', N'Sunrise2584', N'bUpYeTkjZ1E=', 2, 4)
INSERT [dbo].[tbl_center] ([id], [CenterName], [CenterCode], [CenterPassward], [DistrictId], [ThanaId]) VALUES (2, N'Morden', N'Morden3351', N'dHVEZDh1QkE=', 2, 1)
INSERT [dbo].[tbl_center] ([id], [CenterName], [CenterCode], [CenterPassward], [DistrictId], [ThanaId]) VALUES (3, N'Metro', N'Metro7215', N'V2plSE5kP1I=', 1, 3)
INSERT [dbo].[tbl_center] ([id], [CenterName], [CenterCode], [CenterPassward], [DistrictId], [ThanaId]) VALUES (4, N'Dew Drop', N'Dew Drop3339', N'cnBvNm8hUTQ=', 1, 3)
INSERT [dbo].[tbl_center] ([id], [CenterName], [CenterCode], [CenterPassward], [DistrictId], [ThanaId]) VALUES (5, N'Medinoma', N'Medinoma4486', N'dnlYTjZ6OSE=', 1, 3)
INSERT [dbo].[tbl_center] ([id], [CenterName], [CenterCode], [CenterPassward], [DistrictId], [ThanaId]) VALUES (6, N'Clinic', N'ClinicC3B5E', N'aU9mV3JEalQ=', 64, 235)
SET IDENTITY_INSERT [dbo].[tbl_center] OFF
SET IDENTITY_INSERT [dbo].[tbl_destrict] ON 

INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (1, N'Barguna', N'880711', N'22.15789', N'90.11441')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (2, N'Barisal', N'2292055', N'22.70482', N'90.34705')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (3, N'Bhola', N'1759351', N'22.45403', N'90.72660')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (4, N'Jhalokati', N'595455', N'22.64060', N'90.19868')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (5, N'Patuakhali', N'1517091', N'22.35430', N'90.33484')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (6, N'Pirojpur ', N'1103952', N'22.58411', N'89.97201')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (7, N'Bandarban', N'395194', N'22.19530', N'92.21830')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (8, N'Brahmanbaria', N'2807639', N'23.96667', N'91.10000')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (9, N'Chandpur', N'2392416', N'23.23210', N'90.66307')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (10, N'Chittagong', N'7507143', N'22.36579', N'91.79691')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (11, N'Comilla', N'5303115', N'23.46157', N'91.18309')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (12, N'Cox''s Bazar', N'2275196', N'21.43946', N'92.00773')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (13, N'Feni', N'1419840', N'23.01591', N'91.39758')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (14, N'Khagrachhari', N'607500', N'23.11082', N'91.99060')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (15, N'Lakshmipur', N'1710100', N'22.94540', N'90.83416')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (16, N'Noakhali', N'3071653', N'22.82503', N'91.10206')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (17, N'Rangamati', N'593252', N'22.65735', N'92.17327')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (18, N'Dhaka', N'11874504', N'23.81033', N'90.41252')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (19, N'Faridpur', N'1867773', N'23.60252', N'89.83646')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (20, N'Gazipur', N'3333600', N'23.99149', N'90.41714')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (21, N'Gopalganj', N'1148790', N'23.01301', N'89.82241')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (22, N'Jamalpur', N'2265680', N'24.92498', N'89.94634')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (23, N'Kishoreganj', N'2853029', N'24.43312', N'90.78657')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (24, N'Madaripur', N'1149580', N'23.16488', N'90.19399')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (25, N'Manikganj ', N'1379000', N'23.86442', N'90.00466')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (26, N'Munshiganj', N'1420085', N'23.54972', N'90.52500')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (27, N'Mymensingh', N'5043628', N'24.74407', N'90.39808')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (28, N'Narayanganj', N'3141501', N'23.61667', N'90.50000')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (29, N'Narsingdi', N'1059989', N'23.91927', N'90.71765')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (30, N'Netrakona', N'2208660', N'24.87500', N'90.73333')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (31, N'Rajbari', N'1039551', N'23.76437', N'89.64752')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (32, N'Shariatpur', N'1146540', N'23.21970', N'90.35013')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (33, N'Sherpur', N'1333992', N'25.01999', N'90.01373')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (34, N'Tangail', N'3571044', N'24.24497', N'89.91131')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (35, N'Bagerhat', N'1460871', N'22.65545', N'89.76615')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (36, N'Chuadanga', N'1122858', N'23.64417', N'88.84739')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (37, N'Jessore', N'2741556', N'23.17889', N'89.18023')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (38, N'Jhenaidah', N'1755095', N'23.55282', N'89.17536')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (39, N'Khulna', N'2293668', N'22.84709', N'89.54052')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (40, N'Kushtia', N'1932407', N'23.89760', N'89.11818')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (41, N'Magura', N'913679', N'23.48547', N'89.41983')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (42, N'Meherpur', N'463190', N'23.77213', N'88.63137')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (43, N'Narail', N'714780', N'23.16570', N'89.49902')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (44, N'Satkhira', N'1971438', N'22.71849', N'89.07048')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (45, N'Bogra', N'3369680', N'24.84461', N'89.37014')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (46, N'Joypurhat', N'909030', N'25.09753', N'89.02293')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (47, N'Naogaon', N'2577000', N'24.79486', N'88.93179')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (48, N'Natore', N'1695024', N'24.41096', N'88.98207')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (49, N'Chapainawabganj', N'1634880', N'24.57972', N'88.27045')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (50, N'Pabna', N'2497716', N'24.01336', N'89.25602')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (51, N'Rajshahi', N'2573083', N'24.36667', N'88.60000')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (52, N'Sirajganj', N'3072540', N'24.45265', N'89.68162')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (53, N'Dinajpur', N'2970432', N'25.62165', N'88.63542')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (54, N'Gaibandha', N'2348962', N'25.32898', N'89.54151')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (55, N'Kurigram', N'2050328', N'25.81035', N'89.64870')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (56, N'Lalmonirhat', N'1248446', N'25.91620', N'89.45058')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (57, N'Nilphamari', N'1820160', N'25.93680', N'88.84023')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (58, N'Panchagarh', N'980690', N'26.33538', N'88.55170')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (59, N'Rangpur', N'2865280', N'25.74389', N'89.27523')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (60, N'Thakurgaon', N'1389220', N'26.02736', N'88.46461')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (61, N'Habiganj', N'2059497', N'24.38428', N'91.41634')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (62, N'Moulvibazar', N'1900521', N'24.48083', N'91.76444')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (63, N'Sunamganj', N'2444220', N'25.06760', N'91.40704')
INSERT [dbo].[tbl_destrict] ([id], [District], [Population], [loclat], [loclong]) VALUES (64, N'Sylhet', N'3402750', N'24.90494', N'91.86109')
SET IDENTITY_INSERT [dbo].[tbl_destrict] OFF
SET IDENTITY_INSERT [dbo].[tbl_diseases] ON 

INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (1, N'Hemophilia', N'Hemophilia is not one disease but rather one of a group of inherited bleeding disorders that cause abnormal or exaggerated bleeding and poor blood clotting. The term is most commonly used to refer to two specific conditions known as hemophilia A and hemophilia B, which will be the main subjects of this article. Hemophilia A and B are distinguished by the specific gene that is mutated (altered to become defective) and codes for a defective clotting factor (protein) in each disease. Rarely, hemophilia C (a deficiency of Factor XI) is encountered, but its effect on clotting is far less pronounced than A or B.', N'The majority of patients with hemophilia have a known family history of the condition. However, about one-third of cases occur in the absence of a known family history. Most of these cases without a family history arise due to a spontaneous mutation in the affected gene. Other cases may be due to the affected gene being passed through a long line of female carriers. ')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (2, N'Typhoid fever', N'Diagnosis is made by any blood, bone marrow or stool cultures and with the Widal test (demonstration of antibodies against Salmonella antigens O-somatic and H-flagellar). In epidemics and less wealthy countries, after excluding malaria, dysentery, or pneumonia, a therapeutic trial time with chloramphenicol is generally undertaken while awaiting the results of the Widal test and cultures of the blood and stool.', N'The rediscovery of oral rehydration therapy in the 1960s provided a simple way to prevent many of the deaths of diarrheal diseases in general.

Where resistance is uncommon, the treatment of choice is a fluoroquinolone such as ciprofloxacin')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (3, N'Malaria', N'Malaria is a mosquito-borne infectious disease of humans and other animals caused by parasitic protozoans (a group of single-celled microorganism) belonging to the genus Plasmodium.[1] Malaria causes symptoms that typically include fever, fatigue, vomiting and headaches. In severe cases it can cause yellow skin, seizures, coma or death.', N'Malaria is treated with antimalarial medications; the ones used depends on the type and severity of the disease. While medications against fever are commonly used, their effects on outcomes are not clear.')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (4, N'Hepatitis A', N'Hepatovirus A is a species of virus in the order Picornavirales, in the family Picornaviridae, and is the only member and type species of the genus Hepatovirus. Human and vertebrates serve as natural hosts. There is no apparent virus-mediated cytotoxicity presumably because of the virus'' own requirement for an intact eIF4G and liver pathology is likely immune-mediated.', N'There is no specific treatment for hepatitis A. Sufferers are advised to rest, avoid fatty foods and alcohol (these may be poorly tolerated for some additional months during the recovery phase and cause minor relapses), eat a well-balanced diet, and stay hydrated.')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (5, N'Hepatitis B', N'The virus is transmitted by exposure to infectious blood or body fluids. Infection around the time of birth or from contact with other people''s blood during childhood is the most frequent method by which hepatitis B is acquired in areas where the disease is common. In areas where the disease is rare, intravenous drug use and sexual intercourse are the most frequent routes of infection.', N'Acute hepatitis B infection does not usually require treatment and most adults clear the infection spontaneously.[62][63] Early antiviral treatment may be required in fewer than 1% of people, whose infection takes a very aggressive course (fulminant hepatitis) or who are immunocompromised. On the other hand, treatment of chronic infection may be necessary to reduce the risk of cirrhosis and liver cancer. Chronically infected individuals with persistently elevated serum alanine aminotransferase, a marker of liver damage, and HBV DNA levels are candidates for therapy.[64] Treatment lasts from six months to a year, depending on medication and genotype.[65]')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (6, N'Hepatitis C', N'Hepatitis C is an infectious disease affecting primarily the liver, caused by the hepatitis C virus (HCV).[1] The infection is often asymptomatic, but chronic infection can lead to scarring of the liver and ultimately to cirrhosis, which is generally apparent after many years. In some cases, those with cirrhosis will go on to develop liver failure, liver cancer, or life-threatening esophageal and gastric varices.', N'HCV induces chronic infection in 50–80% of infected persons. Approximately 40–80% of these clear with treatment.[71][72] In rare cases, infection can clear without treatment.[12] Those with chronic hepatitis C are advised to avoid alcohol and medications toxic to the liver,[10] and to be vaccinated for hepatitis A and hepatitis B.[10] Ultrasound surveillance for hepatocellular carcinoma is recommended in those with accompanying cirrhosis.[10]')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (7, N'HIV/AIDS', N'HIV is transmitted by three main routes: sexual contact, exposure to infected body fluids or tissues, and from mother to child during pregnancy, delivery, or breastfeeding (known as vertical transmission).[4] There is no risk of acquiring HIV if exposed to feces, nasal secretions, saliva, sputum, sweat, tears, urine, or vomit unless these are contaminated with blood.[34] It is possible to be co-infected by more than one strain of HIV—a condition known as HIV superinfection.', N'There is currently no cure or effective HIV vaccine. Treatment consists of highly active antiretroviral therapy (HAART) which slows progression of the disease.')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (8, N'Diphtheria', N'Diphtheria is usually spread between people by direct contact or through the air. It may also be spread by contaminated objects. Some people carry the bacteria without having symptoms, but can still spread the disease to others. There are three main types of C. diphtheriae causing different severities of disease. The symptoms are due to a toxin produced by the bacteria. Diagnosis can often be made based on the appearance of the throat with confirmation by culture. Previous infection may not prevent against future infection.', N'The disease may remain manageable, but in more severe cases, lymph nodes in the neck may swell, and breathing and swallowing will be more difficult. People in this stage should seek immediate medical attention, as obstruction in the throat may require intubation or a tracheotomy. Abnormal cardiac rhythms can occur early in the course of the illness or weeks later, and can lead to heart failure.')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (9, N'Heart block', N'A heart block is a disease in the electrical system of the heart. This is opposed to coronary artery disease, which is disease of the blood vessels of the heart. While coronary artery disease can cause angina (chest pain) or myocardial infarction (heart attack), heart block can cause lightheadedness, syncope (fainting), and palpitations.', N'Different Hart Block treatment procedure are different.')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (10, N'Brain tumor', N'A bilateral temporal visual field defect (due to compression of the optic chiasm) or dilatation of the pupil, and the occurrence of either slowly evolving or the sudden onset of focal neurologic symptoms, such as cognitive and behavioral impairment (including impaired judgment, memory loss, lack of recognition, spatial orientation disorders), personality or emotional changes, hemiparesis, hypoesthesia, aphasia, ataxia, visual field impairment, impaired sense of smell, impaired hearing, facial paralysis, double vision, or more severe symptoms such as tremors, paralysis on one side of the body hemiplegia, or (epileptic) seizures in a patient with a negative history for epilepsy, should raise the possibility of a brain tumor.', N'When a brain tumor is diagnosed, a medical team will be formed to assess the treatment options presented by the leading surgeon to the patient and his/her family. Given the location of primary solid neoplasms of the brain in most cases a "do-nothing" option is usually not presented. Neurosurgeons take the time to observe the evolution of the neoplasm before proposing a management plan to the patient and his/her relatives.')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (11, N'Pericardial effusion', N'Pericardial effusion ("fluid around the heart") is an abnormal accumulation of fluid in the pericardial cavity. Because of the limited amount of space in the pericardial cavity, fluid accumulation leads to an increased intrapericardial pressure which can negatively affect heart function. A pericardial effusion with enough pressure to adversely affect heart function is called cardiac tamponade. Pericardial effusion usually results from a disturbed equilibrium between the production and re-absorption of pericardial fluid, or from a structural abnormality that allows fluid to enter the pericardial cavity.', N'Treatment depends on the underlying cause and the severity of the heart impairment. Pericardial effusion due to a viral infection usually goes away within a few weeks without treatment. Some pericardial effusions remain small and never need treatment. If the pericardial effusion is due to a condition such as lupus, treatment with anti-inflammatory medications may help. If the effusion is compromising heart function and causing cardiac tamponade, it will need to be drained, most commonly by a needle inserted through the chest wall and into the pericardial space called pericardiocentesis. A drainage tube is often left in place for several days. In some cases, surgical drainage may be required by cutting through the pericardium creating a pericardial window.')
INSERT [dbo].[tbl_diseases] ([id], [DiseasesName], [Description], [TreatmentProc]) VALUES (12, N'Anemia', N'Anemia or anaemia (/əˈniːmiə/; also spelled anæmia) is usually defined as a decrease in the amount of red blood cells (RBCs) or hemoglobin in the blood.[1][2] It can also be defined as a lowered ability of the blood to carry oxygen.[3] When anemia comes on slowly the symptoms are often vague and may include: feeling tired', N'Treatments for anemia depend on cause and severity. Vitamin supplements given orally (folic acid or vitamin B12) or intramuscularly (vitamin B12) will replace specific deficiencies.')
SET IDENTITY_INSERT [dbo].[tbl_diseases] OFF
SET IDENTITY_INSERT [dbo].[tbl_doctor] ON 

INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [CenterId]) VALUES (1, N'Dr. Nuzral Islam', N'M.B.B.S., M.S. ', N'Gen. & Laparoscopic Surgeon ', 2)
INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [CenterId]) VALUES (2, N'Dr. Kiran Kaushik ', N'M.B.B.S., M.D. ', N'Consultant in Obs & Gynae ', 2)
INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [CenterId]) VALUES (5, N'Dr. Imrul Hoque', N'MBBS,FCPS', N'Child Specialist', 2)
INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [CenterId]) VALUES (6, N'Dr. Imrul Hoque', N'MBBS,FCPS', N'Hard Specialist', 2)
INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [CenterId]) VALUES (7, N'Dr. Ahasan Habib', N'MBBS', N'Cardio Specialists', 5)
INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [CenterId]) VALUES (8, N'Dr. Baker', N'MBBS', N'Gino-logiest ', 6)
SET IDENTITY_INSERT [dbo].[tbl_doctor] OFF
SET IDENTITY_INSERT [dbo].[tbl_medicine] ON 

INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (1, N'Abilify')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (9, N'Buspirone 10mg')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (7, N'Buten 500mg')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (11, N'Losectil 10mg')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (3, N'Napa (500mg)')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (4, N'Napa 500mg')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (6, N'Napa Extra 500mg')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (8, N'Naproxen 500mg')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (5, N'Neotack 150mg')
INSERT [dbo].[tbl_medicine] ([id], [MedicineName]) VALUES (10, N'Nexium 40mg')
SET IDENTITY_INSERT [dbo].[tbl_medicine] OFF
SET IDENTITY_INSERT [dbo].[tbl_send_medicine] ON 

INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (4, 2, 4, 1, 4, 400)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (8, 2, 1, 2, 5, 534)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (9, 1, 3, 3, 8, 1200)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (10, 1, 3, 3, 4, 120)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (11, 2, 4, 1, 8, 400)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (12, 2, 4, 1, 5, 345)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (14, 2, 1, 2, 6, 168)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (15, 2, 1, 2, 8, 501)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (16, 2, 1, 2, 7, 80)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (17, 2, 1, 2, 1, 180)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (18, 2, 1, 2, 4, 200)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (19, 1, 3, 5, 3, 300)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (20, 1, 3, 5, 6, 300)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (21, 1, 3, 5, 9, 200)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (22, 1, 3, 5, 10, 188)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (23, 1, 3, 5, 5, 126)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (24, 64, 235, 6, 9, 200)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (25, 64, 235, 6, 7, 190)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (26, 64, 235, 6, 11, 178)
INSERT [dbo].[tbl_send_medicine] ([id], [DistrictId], [ThanaId], [CenterId], [MedicineId], [Quentity]) VALUES (27, 64, 235, 6, 8, 200)
SET IDENTITY_INSERT [dbo].[tbl_send_medicine] OFF
SET IDENTITY_INSERT [dbo].[tbl_thana] ON 

INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (1, N'Madargonj', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (2, N'Melandha', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (3, N'Gazipur', 1)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (4, N'Jamalpur Sadar', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (5, N'Ghatail', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (6, N'Mirzapur', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (7, N'Amtali', 1)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (8, N'Bamna', 1)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (9, N'Barguna Sadar', 1)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (10, N'Betagi', 1)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (11, N'Patharghata', 1)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (12, N'Taltali', 1)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (13, N'Muladi', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (14, N'Babuganj', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (15, N'Agailjhara', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (16, N'Barisal Sadar', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (17, N'Bakerganj', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (18, N'Banaripara', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (19, N'Gaurnadi ', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (20, N'Hizla', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (21, N'Mehendiganj', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (22, N'Wazirpur', 2)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (23, N'Bhola Sadar', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (25, N'Burhanuddin', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (26, N'Char Fasson', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (27, N'Daulatkhan', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (28, N'Lalmohan', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (29, N'Manpura', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (30, N'Tazumuddin', 3)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (31, N'Jhalokati', 4)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (32, N'Kathalia', 4)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (33, N'Nalchity', 4)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (34, N'Rajapur', 4)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (35, N'Bauphal', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (36, N'Dashmina', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (37, N'Galachipa', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (38, N'Kalapara', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (39, N'Mirzaganj', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (40, N'Patuakhali', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (41, N'Dumki ', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (42, N'Rangabali', 5)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (43, N'Bhandaria', 6)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (44, N'Kawkhali', 6)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (45, N'Mathbaria', 6)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (46, N'Bandarban Sadar', 7)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (47, N' Thanchi', 7)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (48, N' Rowangchhari', 7)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (49, N'Brahmanbaria Sadar', 8)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (50, N'Sarail', 8)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (51, N'Kasba', 8)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (53, N'Akhaura', 8)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (54, N'Chandpur Sadar', 9)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (55, N' Haziganj', 9)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (56, N'Kachua', 9)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (57, N'Anwara', 10)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (58, N'Sitakunda', 10)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (59, N'Mirsharai', 10)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (60, N'Patiya', 10)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (61, N'Homna', 11)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (62, N'Laksam', 11)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (63, N'Debidwar', 11)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (64, N'Chakaria', 12)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (65, N'Teknaf', 12)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (66, N'Cox''s Bazar Sadar', 12)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (67, N'Feni Sadar', 13)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (68, N'Sonagazi', 13)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (69, N'Fhulgazi', 13)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (70, N'Parshuram', 13)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (71, N'Chagalnaiya', 13)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (72, N'Dighinala', 14)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (73, N'Lakshmichhari', 14)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (74, N'Khagrachhari', 14)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (75, N'Lakshmipur Sadar', 15)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (76, N'Raipur', 15)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (77, N'Ramganj', 15)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (78, N'Ramgati', 15)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (79, N'Noakhali Sadar', 16)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (80, N'Chatkhil', 16)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (81, N'Companiganj', 16)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (82, N'Rangamati Sadar', 17)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (83, N'Naniarchar ', 17)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (84, N'Juraichhari ', 17)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (85, N'Adabor', 18)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (86, N'Badda', 18)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (87, N'Demra', 18)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (88, N'Gulshan', 18)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (89, N'Khilgaon', 18)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (90, N'Mohammadpur', 18)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (91, N'Ramna', 18)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (92, N'Faridpur Sadar', 19)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (94, N'Bhanga', 19)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (96, N'Sadarpur', 19)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (97, N'Gazipur Sadar', 20)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (98, N'Tongi', 20)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (99, N'Gopalganj Sadar ', 21)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (100, N'Tungipara', 21)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (101, N'Austagram', 23)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (102, N'Bhairab', 23)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (103, N'Kishoreganj Sadar', 23)
GO
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (104, N'Madaripur Sadar', 24)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (105, N'Shibchar', 24)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (106, N'Manikganj Sadar', 25)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (108, N' Singair', 25)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (109, N'Lohajang', 26)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (110, N'Munshiganj Sadar', 26)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (111, N'Gazaria', 26)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (112, N'Bhaluka', 27)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (114, N'Mymensingh Sadar', 27)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (115, N'Haluaghat', 27)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (116, N'Araihazar', 28)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (117, N'Sonargaon', 28)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (118, N'Narayanganj Sadar', 28)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (119, N'Belabo', 29)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (120, N'Narsingdi Sadar', 29)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (121, N'Netrokona Sadar', 30)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (122, N'Durgapur', 30)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (123, N'Madan', 30)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (124, N'Rajbari Sadar', 31)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (125, N'Pangsha', 31)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (126, N'Shariatpur Sadar', 32)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (128, N'Naria', 32)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (129, N'Jhenaigati', 33)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (130, N'Sherpur Sadar', 33)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (131, N'Tangail Sadar', 34)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (132, N'Madhupur', 34)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (134, N'Bagerhat Sadar', 35)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (136, N'Fakirhat', 35)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (137, N'Chuadanga Sadar', 36)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (139, N'Damurhuda', 36)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (140, N'Alamdanga', 36)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (141, N'Jessore Sadar ', 37)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (142, N'Bagherpara ', 37)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (143, N'Jhikargachha ', 37)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (144, N'Jhenaidah Sadar', 38)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (145, N'Shailkupa', 38)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (146, N'Terokhada', 39)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (147, N'Rupsa', 39)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (148, N'Paikgachha', 39)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (149, N'Kushtia Sadar', 40)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (150, N'Daulatpur', 40)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (151, N'Magura Sadar', 41)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (152, N'Sreepur', 41)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (153, N'Meherpur Sadar', 42)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (154, N'Mujibnagar', 42)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (155, N' Gangni', 42)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (156, N' Narail Sadar', 43)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (157, N' Kalia', 43)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (158, N'Satkhira Sadar', 44)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (159, N'Debhata', 44)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (160, N'Bogra Sadar', 45)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (161, N'Kahaloo', 45)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (162, N'Dhupchanchia', 45)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (163, N'Shajahanpur', 45)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (164, N'Joypurhat', 46)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (165, N'Panchbibi', 46)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (166, N'Naogaon Sadar', 47)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (167, N'Mohadevpur', 47)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (168, N'Sapahar', 47)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (169, N'Gurudaspur ', 48)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (170, N'Natore Sadar ', 48)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (171, N'Baraigram', 48)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (172, N'Singra', 48)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (173, N'Bagatipara', 48)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (174, N'Bholahat ', 49)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (175, N'Nawabganj Sadar', 49)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (176, N'Nachole', 49)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (177, N'Pabna Sadar ', 50)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (178, N'Bhangura', 50)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (179, N'Ishwardi', 50)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (180, N'Mohanpur', 51)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (181, N'Bagha', 51)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (182, N'Bagmara', 51)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (183, N'Sirajganj Sadar', 52)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (184, N'Ullahpara', 52)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (185, N'Dinajpur Sadar', 53)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (186, N'Nawabganj', 53)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (187, N'Parbatipur', 53)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (188, N'Gaibandha Sadar', 54)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (189, N'Gobindaganj', 54)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (190, N'Sundarganj', 54)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (191, N'Kurigram Sadar', 55)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (192, N'Nageshwari', 55)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (193, N'Bhurungamari', 55)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (194, N'Lalmonirhat Sadar', 56)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (195, N'Hatibandha', 56)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (196, N'Aditmari', 56)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (197, N'Nilphamari Sadar', 57)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (198, N'Kishoreganj', 57)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (199, N'Domar', 57)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (200, N'Panchagarh Sadar', 58)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (201, N'Tetulia', 58)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (202, N'Debiganj', 58)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (204, N'Rangpur Sadar', 59)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (205, N'Mithapukur', 59)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (207, N'Taraganj', 59)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (208, N'Thakurgaon Sadar', 60)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (209, N'Pirganj', 60)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (210, N'Baliadangi', 60)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (211, N'Haripur', 60)
GO
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (212, N'Habiganj Sadar', 61)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (213, N'Madhabpur', 61)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (214, N'Baniachang', 61)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (215, N'Lakhai', 61)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (216, N'Moulvibazar Sadar', 62)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (217, N'Barlekha', 62)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (219, N'Sreemangal', 62)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (220, N'Sunamganj Sadar', 63)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (221, N'Dharampasha', 63)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (222, N'Dowarabazar', 63)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (223, N'Jamalganj', 63)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (224, N'Derai', 63)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (226, N'Chhatak', 63)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (227, N'Tahirpur', 63)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (228, N'Sylhet Sadar', 64)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (229, N'South Surma', 64)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (230, N'Golapganj', 64)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (231, N'Osmani Nagar', 64)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (233, N'Gowainghat', 64)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (234, N'Jaintiapur', 64)
INSERT [dbo].[tbl_thana] ([id], [Thana], [DistrictId]) VALUES (235, N'Fenchuganj', 64)
SET IDENTITY_INSERT [dbo].[tbl_thana] OFF
SET IDENTITY_INSERT [dbo].[tbl_treatment] ON 

INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (1, N'Nothing to say', CAST(0x0C3A0B00 AS Date), N'5644309456813', 2, 1, 7, N'Only Night', N'Take After Meal', 10, N'Eat vegitable properly', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (2, N'Nothing to say', CAST(0x0C3A0B00 AS Date), N'5644309456813', 2, 1, 1, N'Noon and Night', N'Take Before Meal', 10, N'Eat vegitable properly', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (3, N'sa', CAST(0x0A3A0B00 AS Date), N'5644309456813', 2, 1, 6, N'Only Noon', N'Take Before Meal', 10, N'Continue', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (4, N'sa', CAST(0x0A3A0B00 AS Date), N'5644309456813', 2, 1, 5, N'Only Noon', N'Take Before Meal', 20, N'Continue', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (5, N'sa', CAST(0x0A3A0B00 AS Date), N'5644309456813', 2, 1, 8, N'Only Noon', N'Take Before Meal', 20, N'Continue', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (6, N'Rupom', CAST(0x1B3A0B00 AS Date), N'9509623450915', 1, 4, 6, N'Day,Noon and Night', N'Take After Meal', 12, N'Come again after 7 dayes', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (7, N'Rupom', CAST(0x1B3A0B00 AS Date), N'9509623450915', 1, 4, 8, N'Day,Noon and Night', N'Take After Meal', 12, N'Come again after 7 dayes', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (8, N'Rupom', CAST(0x1F3A0B00 AS Date), N'5644309456813', 6, 9, 8, N'Noon and Night', N'Take Before Meal', 12, N'Come again after 7 dayes', 2)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (10, N'rupom', CAST(0x213A0B00 AS Date), N'9509623450915', 7, 5, 5, N'Only Noon', N'Take After Meal', 12, N'Come again after 7 dayes', 5)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (11, N'rupom', CAST(0x213A0B00 AS Date), N'9509623450915', 7, 5, 10, N'Only Noon', N'Take After Meal', 12, N'Come again after 7 dayes', 5)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (12, N'Robin', CAST(0x223A0B00 AS Date), N'9509623450915', 7, 9, 5, N'Day and Noon', N'Take After Meal', 12, N'Come again after 7 dayes', 5)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (13, N'RObin', CAST(0x053A0B00 AS Date), N'19917499875303', 8, 4, 11, N'Noon and Night', N'Take Before Meal', 10, N'Come After 1 Week', 6)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (14, N'RObin', CAST(0x053A0B00 AS Date), N'19917499875303', 8, 4, 7, N'Noon and Night', N'Take Before Meal', 10, N'Come After 1 Week', 6)
INSERT [dbo].[tbl_treatment] ([id], [observation], [date], [patientVoterId], [doctorId], [diseaseId], [medicineId], [does], [meal_time], [quantity], [note], [centerId]) VALUES (15, N'RObin', CAST(0x053A0B00 AS Date), N'19917499875303', 8, 4, 11, N'Noon and Night', N'Take Before Meal', 12, N'Come After 1 Week', 6)
SET IDENTITY_INSERT [dbo].[tbl_treatment] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_center]    Script Date: 2015-07-03 11:17:29 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_center] ON [dbo].[tbl_center]
(
	[CenterCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_destrict]    Script Date: 2015-07-03 11:17:29 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_destrict] ON [dbo].[tbl_destrict]
(
	[District] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_diseases]    Script Date: 2015-07-03 11:17:29 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_diseases] ON [dbo].[tbl_diseases]
(
	[DiseasesName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_medicine]    Script Date: 2015-07-03 11:17:29 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_medicine] ON [dbo].[tbl_medicine]
(
	[MedicineName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_thana]    Script Date: 2015-07-03 11:17:29 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_thana] ON [dbo].[tbl_thana]
(
	[Thana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_center]  WITH CHECK ADD  CONSTRAINT [FK_tbl_center_tbl_destrict] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[tbl_destrict] ([id])
GO
ALTER TABLE [dbo].[tbl_center] CHECK CONSTRAINT [FK_tbl_center_tbl_destrict]
GO
ALTER TABLE [dbo].[tbl_center]  WITH CHECK ADD  CONSTRAINT [FK_tbl_center_tbl_thana] FOREIGN KEY([ThanaId])
REFERENCES [dbo].[tbl_thana] ([id])
GO
ALTER TABLE [dbo].[tbl_center] CHECK CONSTRAINT [FK_tbl_center_tbl_thana]
GO
ALTER TABLE [dbo].[tbl_send_medicine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_send_medicine_tbl_center] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tbl_center] ([id])
GO
ALTER TABLE [dbo].[tbl_send_medicine] CHECK CONSTRAINT [FK_tbl_send_medicine_tbl_center]
GO
ALTER TABLE [dbo].[tbl_send_medicine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_send_medicine_tbl_medicine] FOREIGN KEY([MedicineId])
REFERENCES [dbo].[tbl_medicine] ([id])
GO
ALTER TABLE [dbo].[tbl_send_medicine] CHECK CONSTRAINT [FK_tbl_send_medicine_tbl_medicine]
GO
ALTER TABLE [dbo].[tbl_send_medicine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_send_medicine_tbl_send_medicine] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[tbl_destrict] ([id])
GO
ALTER TABLE [dbo].[tbl_send_medicine] CHECK CONSTRAINT [FK_tbl_send_medicine_tbl_send_medicine]
GO
ALTER TABLE [dbo].[tbl_send_medicine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_send_medicine_tbl_thana] FOREIGN KEY([ThanaId])
REFERENCES [dbo].[tbl_thana] ([id])
GO
ALTER TABLE [dbo].[tbl_send_medicine] CHECK CONSTRAINT [FK_tbl_send_medicine_tbl_thana]
GO
ALTER TABLE [dbo].[tbl_thana]  WITH CHECK ADD  CONSTRAINT [FK_tbl_thana_tbl_destrict] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[tbl_destrict] ([id])
GO
ALTER TABLE [dbo].[tbl_thana] CHECK CONSTRAINT [FK_tbl_thana_tbl_destrict]
GO
ALTER TABLE [dbo].[tbl_treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_treatment_tbl_center] FOREIGN KEY([centerId])
REFERENCES [dbo].[tbl_center] ([id])
GO
ALTER TABLE [dbo].[tbl_treatment] CHECK CONSTRAINT [FK_tbl_treatment_tbl_center]
GO
ALTER TABLE [dbo].[tbl_treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_treatment_tbl_diseases] FOREIGN KEY([diseaseId])
REFERENCES [dbo].[tbl_diseases] ([id])
GO
ALTER TABLE [dbo].[tbl_treatment] CHECK CONSTRAINT [FK_tbl_treatment_tbl_diseases]
GO
ALTER TABLE [dbo].[tbl_treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_treatment_tbl_doctor] FOREIGN KEY([doctorId])
REFERENCES [dbo].[tbl_doctor] ([id])
GO
ALTER TABLE [dbo].[tbl_treatment] CHECK CONSTRAINT [FK_tbl_treatment_tbl_doctor]
GO
ALTER TABLE [dbo].[tbl_treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_treatment_tbl_medicine] FOREIGN KEY([medicineId])
REFERENCES [dbo].[tbl_medicine] ([id])
GO
ALTER TABLE [dbo].[tbl_treatment] CHECK CONSTRAINT [FK_tbl_treatment_tbl_medicine]
GO
USE [master]
GO
ALTER DATABASE [NewCommunityMedicineAutomationDB] SET  READ_WRITE 
GO
