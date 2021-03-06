USE [master]
GO
/****** Object:  Database [CardExpress_Dev]    Script Date: 11/27/2017 3:04:28 PM ******/
CREATE DATABASE [CardExpress_Dev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CardExpress_Dev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CardExpress_Dev.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CardExpress_Dev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CardExpress_Dev_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CardExpress_Dev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CardExpress_Dev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET ARITHABORT OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CardExpress_Dev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CardExpress_Dev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CardExpress_Dev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CardExpress_Dev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CardExpress_Dev] SET  MULTI_USER 
GO
ALTER DATABASE [CardExpress_Dev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CardExpress_Dev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CardExpress_Dev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CardExpress_Dev] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CardExpress_Dev]
GO
/****** Object:  Table [dbo].[AccessRight]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRight](
	[AccessRight_Id] [bigint] NOT NULL,
	[UserType_Id] [bigint] NOT NULL,
	[Screen_Id] [bigint] NOT NULL,
	[OperationType] [varchar](50) NOT NULL,
 CONSTRAINT [PKAccessRight] PRIMARY KEY CLUSTERED 
(
	[AccessRight_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccudataPunchout]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccudataPunchout](
	[AccudataPunchout_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PurchaseListGroup_Id] [bigint] NULL,
	[SiteID] [varchar](50) NULL,
	[GroupID] [varchar](50) NULL,
	[SiteURL] [nvarchar](300) NULL,
	[ShareHistory] [varchar](3) NULL,
	[LinkName] [nvarchar](300) NULL,
	[ProductCode] [nvarchar](50) NULL,
	[AdminUsername] [varchar](30) NULL,
	[AdminPassword] [varchar](30) NULL,
	[Online] [varchar](3) NULL,
	[BetaService] [varchar](3) NULL,
 CONSTRAINT [PK_AccudataPunchout] PRIMARY KEY CLUSTERED 
(
	[AccudataPunchout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdditionalCostCentreApprover]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalCostCentreApprover](
	[AdditionalCostCentreApprover_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NULL,
	[Employee_Id] [bigint] NOT NULL,
	[AllowApproverEdit] [varchar](3) NULL,
	[ApprovalOrder] [float] NULL,
	[Template_Id] [bigint] NULL,
	[ProjectTemplate_Id] [bigint] NULL,
	[NexJobPage_Id] [bigint] NULL,
 CONSTRAINT [PKAdditionalCostCentreApprover] PRIMARY KEY CLUSTERED 
(
	[AdditionalCostCentreApprover_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressCountry]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressCountry](
	[AddressCountry_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [varchar](4) NULL,
	[CountryName] [varchar](100) NULL,
	[CountryNameVariations] [varchar](255) NULL,
 CONSTRAINT [PK_AddressCountry] PRIMARY KEY CLUSTERED 
(
	[AddressCountry_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressState]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressState](
	[AddressState_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AddressCountry_ID] [bigint] NULL,
	[StateCode] [varchar](4) NULL,
	[StateName] [varchar](100) NULL,
 CONSTRAINT [PK_AddressState] PRIMARY KEY CLUSTERED 
(
	[AddressState_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvancedFieldLayoutOption]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvancedFieldLayoutOption](
	[AdvancedFieldLayoutOption_Id] [bigint] NOT NULL,
	[FieldLayout_Id] [bigint] NOT NULL,
	[OptionName] [varchar](200) NOT NULL,
	[SetFieldLayout_Id] [bigint] NOT NULL,
	[Value] [ntext] NULL,
 CONSTRAINT [PKAdvancedFieldLayoutOption] PRIMARY KEY CLUSTERED 
(
	[AdvancedFieldLayoutOption_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autologin]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autologin](
	[Login_Id] [varchar](32) NOT NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[token] [varchar](100) NULL,
	[tokenCreated] [datetime] NULL,
 CONSTRAINT [PK__Autologin__108157BA] PRIMARY KEY CLUSTERED 
(
	[Login_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CampaignTemplate]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignTemplate](
	[CampaignTemplate_Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Customer_Id] [bigint] NOT NULL,
	[StationeryType_Id] [bigint] NULL,
	[Online] [varchar](3) NULL,
	[MasterNo] [varchar](50) NULL,
	[Thumbnail] [varchar](100) NULL,
	[NoTouches] [int] NULL,
	[HelpText] [ntext] NULL,
	[PrintBroker_Id] [bigint] NULL,
	[AutoScheduleJobs] [varchar](3) NULL,
	[UnsubscribeOptions] [varchar](50) NULL,
	[UnsubscribeEmailOptions] [varchar](50) NULL,
	[DefaultOrder] [bigint] NULL,
	[EmailServer_Id] [bigint] NULL,
	[ExcludeLoyaltyPoints] [varchar](3) NULL,
	[SMSPhoneNumber_Id] [bigint] NULL,
 CONSTRAINT [PKCampaignTemplate] PRIMARY KEY CLUSTERED 
(
	[CampaignTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CampaignTemplateCostCentre]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignTemplateCostCentre](
	[CampaignTemplate_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartTransaction]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartTransaction](
	[CartTransaction_Id] [bigint] NOT NULL,
	[ReturnedId] [varchar](255) NULL,
	[ReturnedMessage] [varchar](255) NULL,
	[BankRef] [varchar](255) NULL,
	[DateTime] [datetime] NOT NULL,
	[CartAmountOriginal] [float] NOT NULL,
	[BankMessage] [varchar](100) NULL,
	[Type] [varchar](20) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](80) NULL,
	[Address3] [nvarchar](80) NULL,
	[Address4] [nvarchar](80) NULL,
	[Suburb] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Postcode] [nvarchar](15) NULL,
	[Country] [nvarchar](50) NULL,
	[Comments] [ntext] NULL,
	[OrderIds] [ntext] NULL,
	[Freight] [float] NULL,
	[GST] [float] NULL,
	[CostCentre_Id] [bigint] NULL,
	[FreightType] [varchar](150) NULL,
	[City_Id] [bigint] NULL,
	[County_Id] [bigint] NULL,
	[State_Id] [bigint] NULL,
	[Handling] [float] NULL,
	[AddressAttention] [nvarchar](150) NULL,
	[JobTicketNumber] [varchar](50) NULL,
	[AdditionalEmailAddress] [varchar](100) NULL,
	[GroupDiscount] [float] NULL,
	[OrderSummary] [ntext] NULL,
	[PaymentProcessStatus] [varchar](10) NULL,
	[PaymentProcessTimeStamp] [datetime] NULL,
	[BillingAddress1] [nvarchar](80) NULL,
	[BillingAddress2] [nvarchar](80) NULL,
	[BillingAddress3] [nvarchar](80) NULL,
	[BillingAddress4] [nvarchar](80) NULL,
	[BillingSuburb] [nvarchar](50) NULL,
	[BillingState] [nvarchar](50) NULL,
	[BillingPostcode] [nvarchar](15) NULL,
	[BillingCountry] [nvarchar](50) NULL,
	[OrderApproved] [varchar](3) NULL,
	[AwaitingPayment] [varchar](3) NULL,
	[AllocatedToBudget] [float] NULL,
	[BudgetPaymentType] [varchar](20) NULL,
	[XMLPostFile] [ntext] NULL,
	[CartAmount] [float] NULL,
	[BankLog] [ntext] NULL,
	[CostCentreCostRuleCaption] [varchar](255) NULL,
	[CostCentreCostRuleType] [varchar](255) NULL,
	[AddressExternalId] [varchar](50) NULL,
	[BillingExternalId] [varchar](50) NULL,
	[AddressCompany] [nvarchar](150) NULL,
	[AddressPhoneNumber] [varchar](150) NULL,
	[SubmitStatus] [varchar](50) NULL,
	[FreightType_Id] [bigint] NULL,
	[PaymentGateway_Id] [bigint] NULL,
	[ExtraShippingNotificationEmail] [varchar](150) NULL,
 CONSTRAINT [PK_CartTransaction] PRIMARY KEY CLUSTERED 
(
	[CartTransaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartTransactionTaxes]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartTransactionTaxes](
	[CartTransaction_Id] [bigint] NOT NULL,
	[Value] [float] NULL,
	[Rate] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_id] [bigint] NOT NULL,
	[County_Id] [bigint] NOT NULL,
	[CityName] [varchar](100) NULL,
	[Postcodes] [ntext] NULL,
	[CityTax] [float] NULL,
	[DefaultTotalTax] [float] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientProject]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientProject](
	[ClientProject_Id] [bigint] NOT NULL,
	[Employee_Id] [bigint] NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[ProjectTemplate_Id] [bigint] NOT NULL,
	[ProjectName] [varchar](150) NOT NULL,
	[Description] [ntext] NULL,
	[Date] [datetime] NOT NULL,
	[Type] [varchar](10) NULL,
	[LoginAccount_Id] [bigint] NULL,
	[List_Id] [bigint] NULL,
	[ListMappings] [ntext] NULL,
	[UrgentPostage] [varchar](3) NULL,
 CONSTRAINT [PKClientProject] PRIMARY KEY CLUSTERED 
(
	[ClientProject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colour]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colour](
	[Colour_Id] [bigint] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[C] [int] NULL,
	[M] [int] NULL,
	[Y] [int] NULL,
	[K] [int] NULL,
	[R] [int] NULL,
	[G] [int] NULL,
	[B] [int] NULL,
	[SortOrder] [int] NULL,
	[Spot] [varchar](50) NULL,
	[ExternalId] [varchar](100) NULL,
 CONSTRAINT [PK_Colour] PRIMARY KEY CLUSTERED 
(
	[Colour_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condition]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condition](
	[Condition_Id] [bigint] NOT NULL,
	[Report_Id] [bigint] NOT NULL,
	[ConditionField_Id] [bigint] NOT NULL,
	[Operator] [varchar](50) NOT NULL,
	[Value] [varchar](50) NULL,
 CONSTRAINT [PKCondition] PRIMARY KEY CLUSTERED 
(
	[Condition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentre]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentre](
	[CostCentre_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
	[CostCentreName] [nvarchar](100) NULL,
	[CostCentreNumber] [varchar](50) NULL,
	[ParentCostCentre_Id] [bigint] NULL,
	[CostCentreApprover_Id] [bigint] NULL,
	[AddressAddress1] [nvarchar](80) NULL,
	[AddressAddress2] [nvarchar](80) NULL,
	[AddressAddress3] [nvarchar](80) NULL,
	[AddressAddress4] [nvarchar](80) NULL,
	[AddressSuburb] [nvarchar](50) NULL,
	[AddressState] [nvarchar](50) NULL,
	[AddressPostcode] [nvarchar](15) NULL,
	[AddressCountry] [nvarchar](50) NULL,
	[LoginAccount_Id] [bigint] NULL,
	[Registration] [varchar](50) NULL,
	[UrgentOrdersCanBypassAppr] [varchar](3) NULL,
	[ApproverOrdersCanBypassAp] [varchar](50) NULL,
	[ReOrdersCanBypassApproval] [varchar](3) NULL,
	[DeliveryAddressRetrievalA] [varchar](3) NULL,
	[DeliveryAddressRetrievalA1] [varchar](3) NULL,
	[DeliveryAddressRetrievalA2] [varchar](3) NULL,
	[DisplayCost] [varchar](3) NULL,
	[CostCentreNumberCaption] [varchar](50) NULL,
	[CostCentreNumberLength] [bigint] NULL,
	[CostCentreNumberRequired] [varchar](3) NULL,
	[ExtraOrderInfo1Caption] [varchar](200) NULL,
	[ExtraOrderInfo1Required] [varchar](3) NULL,
	[ExtraOrderInfo1Length] [bigint] NULL,
	[ExtraOrderInfo2Caption] [varchar](200) NULL,
	[ExtraOrderInfo2Required] [varchar](3) NULL,
	[ExtraOrderInfo2Length] [bigint] NULL,
	[EmployeeUpdate] [varchar](3) NULL,
	[UseDynamicCostCentres] [varchar](3) NULL,
	[ShoppingCartType] [varchar](50) NULL,
	[CostCentreAdministrator_Id] [bigint] NULL,
	[AddDeliveryPerOrder] [varchar](3) NULL,
	[CostCentreNumberShowWhere] [varchar](50) NULL,
	[ExtraInfo1Type] [varchar](20) NULL,
	[ExtraInfo2Type] [varchar](20) NULL,
	[UserSideCaption] [varchar](50) NULL,
	[FreightMinCost] [float] NULL,
	[FreightCostPerKilo] [float] NULL,
	[FileUpload] [varchar](3) NULL,
	[Status_Id] [bigint] NULL,
	[DisplayStock] [varchar](3) NULL,
	[TaxPercent] [float] NULL,
	[TaxLabel] [varchar](50) NULL,
	[AllowRequiredDate] [varchar](3) NULL,
	[UseDynamicCostCentresTabs] [varchar](3) NULL,
	[FreightMethod] [varchar](50) NULL,
	[State_Id] [bigint] NULL,
	[County_Id] [bigint] NULL,
	[City_Id] [bigint] NULL,
	[CalculateTaxBy] [varchar](50) NULL,
	[AllowReporting] [varchar](3) NULL,
	[PreapprovalRequired] [varchar](3) NULL,
	[PreapprovalAddresses] [ntext] NULL,
	[ActivationType] [varchar](50) NULL,
	[ActivationEmail] [varchar](250) NULL,
	[AllowApproverEdit] [varchar](3) NULL,
	[PreApprovalArea] [varchar](20) NULL,
	[TaxFreight] [varchar](3) NULL,
	[AddressAttention] [nvarchar](20) NULL,
	[VWebDomains] [ntext] NULL,
	[HideOrderHistory] [varchar](3) NULL,
	[UniqueSessions] [varchar](3) NULL,
	[RegistrationEnterAddress] [varchar](3) NULL,
	[RegistrationUploadImage] [varchar](3) NULL,
	[EmployeeAddressCreation] [varchar](3) NULL,
	[Online] [varchar](3) NULL,
	[DynamicSelect] [varchar](3) NULL,
	[FreightCaption] [varchar](50) NULL,
	[Country] [varchar](20) NULL,
	[CurrencySymbol] [nvarchar](10) NULL,
	[SendAdditionalEmail] [varchar](3) NULL,
	[AdditionalEmailAddress] [varchar](100) NULL,
	[CreditCardShowAsPopUp] [varchar](3) NULL,
	[MergeShippingHandling] [varchar](3) NULL,
	[CreditCardProcessInternally] [varchar](3) NULL,
	[AdditionalHandlingCharge] [float] NULL,
	[HandlingCaption] [varchar](50) NULL,
	[Budget] [float] NULL,
	[Period] [varchar](20) NULL,
	[ShowEPFinRows] [varchar](3) NULL,
	[RetailURLs] [varchar](100) NULL,
	[DeliveryCaption] [varchar](100) NULL,
	[DeliveryScreen] [varchar](100) NULL,
	[PaymentGateway_Id] [bigint] NULL,
	[EditQuantityInCart] [varchar](3) NULL,
	[AdminAddToCarts] [varchar](3) NULL,
	[AdminOrderFromUserCarts] [varchar](3) NULL,
	[UPSShipperNumber] [varchar](30) NULL,
	[DisplayTemplateExternalNumber] [varchar](3) NULL,
	[AdditionalEmailRequired] [varchar](3) NULL,
	[BillingAddressRetrievalA] [varchar](3) NULL,
	[BillingAddressRetrievalA2] [varchar](3) NULL,
	[SpecialOrderField] [varchar](100) NULL,
	[CASS] [varchar](20) NULL,
	[NCOA] [varchar](20) NULL,
	[CostGroup_Id] [bigint] NULL,
	[CreditCardApproval] [varchar](20) NULL,
	[Logo] [varchar](100) NULL,
	[AllowBudgetAllocation] [varchar](3) NULL,
	[AlternatePaymentMethod] [varchar](50) NULL,
	[AllowDoNotMail] [varchar](3) NULL,
	[CommentReasons] [ntext] NULL,
	[AvailableInProfiles] [varchar](50) NULL,
	[SignOnKey] [varchar](25) NULL,
	[AddressCompany] [nvarchar](20) NULL,
	[AddressPhoneNumber] [varchar](20) NULL,
	[TaxPostage] [varchar](3) NULL,
	[MarkUpType] [varchar](1) NULL,
	[MarkUpValue] [float] NULL,
	[PrintBroker_Id] [bigint] NULL,
	[ScreenDefinition_Id] [bigint] NULL,
	[AccessImageLibrary] [varchar](3) NULL,
	[PreSortFormatNCOA_Id] [bigint] NULL,
	[AllowSplitShip] [varchar](50) NULL,
	[ExternalListProcessor_Id] [bigint] NULL,
	[DisplayTaxZero] [varchar](3) NULL,
	[OpenIdLogin] [varchar](3) NULL,
	[LoyaltyPointsProfile_Id] [bigint] NULL,
	[ConsolidateApprovalEmails] [varchar](3) NULL,
	[DisplayCostProductsAtQuantityDropDown] [varchar](3) NULL,
	[DeliveryAddressRetrievalA3] [varchar](3) NULL,
	[BillingAddressRetrievalA3] [varchar](3) NULL,
	[CutOffAddressPopup] [bigint] NULL,
	[DisplayTaxRatesAtCart] [varchar](3) NULL,
	[InvoicePaymentMethod] [varchar](50) NULL,
	[AlternateExternalCode] [varchar](50) NULL,
	[ShoppingCartAbandonmentEmailDaysCount] [int] NULL,
	[ShoppingCartAbandonmentEmailDaysCountRS] [int] NULL,
	[AllowExtraShippingNotification] [varchar](3) NULL,
	[WholeCartApprove] [varchar](3) NULL,
	[ExternalTax_Id] [bigint] NULL,
	[SeoDescription] [ntext] NULL,
	[SeoKeywords] [ntext] NULL,
 CONSTRAINT [PKCostCentre] PRIMARY KEY CLUSTERED 
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreAddress]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreAddress](
	[CostCentreAddress_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](80) NULL,
	[Address3] [nvarchar](80) NULL,
	[Address4] [nvarchar](80) NULL,
	[Suburb] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Postcode] [nvarchar](15) NULL,
	[Country] [nvarchar](50) NULL,
	[ShowInDeliveryList] [varchar](3) NULL,
	[ShowInDefaultList] [varchar](3) NULL,
	[PostalAddressAddress1] [nvarchar](80) NULL,
	[PostalAddressAddress2] [nvarchar](80) NULL,
	[PostalAddressAddress3] [nvarchar](80) NULL,
	[PostalAddressSuburb] [nvarchar](50) NULL,
	[PostalAddressState] [nvarchar](50) NULL,
	[PostalAddressPostcode] [nvarchar](15) NULL,
	[PostalAddressCountry] [nvarchar](50) NULL,
	[ContactNumbersPhone] [nvarchar](50) NULL,
	[ContactNumbersFax] [nvarchar](50) NULL,
	[DefaultDeliveryAddress] [varchar](3) NULL,
	[Scope] [varchar](50) NULL,
	[SortOrder] [float] NULL,
	[Employee_Id] [bigint] NULL,
	[RegistrationAddress] [varchar](3) NULL,
	[ExternalId] [varchar](50) NULL,
	[DefaultStationeryAddress] [varchar](3) NULL,
	[ShowInBillingList] [varchar](3) NULL,
	[StateArtwork] [nvarchar](50) NULL,
	[CountryArtwork] [nvarchar](50) NULL,
	[Location] [nvarchar](100) NULL,
	[AttentionTo] [nvarchar](150) NULL,
	[CompanyName] [nvarchar](150) NULL,
	[Website] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[ContactNumbersTollFree] [nvarchar](150) NULL,
 CONSTRAINT [PKCostCentreAddress] PRIMARY KEY CLUSTERED 
(
	[CostCentreAddress_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreAdministrator]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreAdministrator](
	[CostCentre_Id] [bigint] NOT NULL,
	[Employee_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreCostRule]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreCostRule](
	[CostCentreCostRule_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NULL,
	[Caption] [varchar](255) NULL,
	[Type] [varchar](255) NULL,
	[MinCost] [float] NULL,
	[FlatDiscount] [float] NULL,
	[PercentDiscount] [float] NULL,
 CONSTRAINT [PK_CostCentreCostRule] PRIMARY KEY CLUSTERED 
(
	[CostCentreCostRule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreCostRuleFreightMethod]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreCostRuleFreightMethod](
	[CostCentreCostRuleFreightMethod_Id] [bigint] NOT NULL,
	[CostCentreCostRule_Id] [bigint] NULL,
	[FreightMethod_Id] [bigint] NULL,
 CONSTRAINT [PK_CostCentreCostRuleFreightMethod] PRIMARY KEY CLUSTERED 
(
	[CostCentreCostRuleFreightMethod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreExternalList]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreExternalList](
	[CostCentreExternalList_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[ExternalList_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_CostCentreExternalList] PRIMARY KEY CLUSTERED 
(
	[CostCentreExternalList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreFreightAccount]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreFreightAccount](
	[CostCentreFreightAccount_id] [bigint] NOT NULL,
	[CostCentre_id] [bigint] NULL,
	[FreightAccount_id] [bigint] NULL,
 CONSTRAINT [PK_CostCentreFreightAccount] PRIMARY KEY CLUSTERED 
(
	[CostCentreFreightAccount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreNexJobPage]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreNexJobPage](
	[CostCentre_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NOT NULL,
	[CostCentreNexJobPage_Id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentreNumber]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentreNumber](
	[CostCentreNumber_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[GroupName] [varchar](100) NULL,
	[Code] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[DisplayIn] [varchar](100) NULL,
 CONSTRAINT [PK_CostCentreNumber] PRIMARY KEY CLUSTERED 
(
	[CostCentreNumber_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentrePaymentGateway]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentrePaymentGateway](
	[CostCentrePaymentGateway_id] [bigint] NOT NULL,
	[CostCentre_id] [bigint] NULL,
	[PaymentGateway_id] [bigint] NULL,
 CONSTRAINT [PK_CostCentrePaymentGateway] PRIMARY KEY CLUSTERED 
(
	[CostCentrePaymentGateway_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentrePDFs]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentrePDFs](
	[CostCentre_Id] [bigint] NOT NULL,
	[PDFs_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostGroup]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostGroup](
	[CostGroup_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Customer_Id] [bigint] NULL,
	[UnitQtysMaxUnits] [float] NULL,
	[UnitQtysQtyPerUnit] [float] NULL,
 CONSTRAINT [PK_CostGroup] PRIMARY KEY CLUSTERED 
(
	[CostGroup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [varchar](4) NULL,
	[CountryName] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[County]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[County_Id] [bigint] NOT NULL,
	[State_Id] [bigint] NOT NULL,
	[CountyName] [varchar](100) NOT NULL,
	[CountyTax] [float] NOT NULL,
	[DefaultTotalTax] [float] NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[County_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_Id] [bigint] NOT NULL,
	[CustomerName] [nvarchar](100) NULL,
	[PrinterNotificationEmail] [varchar](400) NULL,
	[PrintBroker_Id] [bigint] NULL,
	[IndexPageText] [ntext] NULL,
	[DebtorCode] [varchar](50) NULL,
	[AddressAddress1] [nvarchar](80) NULL,
	[AddressAddress2] [nvarchar](80) NULL,
	[AddressAddress3] [nvarchar](80) NULL,
	[AddressAddress4] [nvarchar](80) NULL,
	[AddressSuburb] [nvarchar](50) NULL,
	[AddressState] [nvarchar](50) NULL,
	[AddressPostcode] [nvarchar](15) NULL,
	[AddressCountry] [nvarchar](50) NULL,
	[LoginAccount_Id] [bigint] NULL,
	[Logo] [varchar](100) NULL,
	[UseEditablePDF] [varchar](3) NULL,
	[ShowPONumberBox] [varchar](50) NOT NULL,
	[AdditionalEmployeeInfo] [varchar](50) NULL,
	[UseCart] [varchar](3) NULL,
	[ShowSaveButton] [varchar](3) NULL,
	[Comments] [ntext] NULL,
	[DebtorCode2] [varchar](50) NULL,
	[SharedSecret] [varchar](64) NULL,
	[Supplier_Id] [bigint] NULL,
	[Online] [varchar](3) NULL,
	[ReplaceSiteLogo] [varchar](3) NULL,
	[SeparateEmailPerOrder] [varchar](3) NULL,
	[AllowSaveAs] [varchar](3) NULL,
	[EmailFromName] [nvarchar](50) NULL,
	[EmailFromAddress] [nvarchar](50) NULL,
	[ScreenDefinition_Id] [bigint] NULL,
	[ExternalUsername] [nvarchar](100) NULL,
	[ExternalURL] [nvarchar](100) NULL,
	[Watermark] [nvarchar](50) NULL,
	[FacebookAppId] [varchar](50) NULL,
	[CatalogSearchPartialMatch] [varchar](3) NULL,
	[AllowTemplateDataSaving] [varchar](3) NULL,
 CONSTRAINT [PKCustomer] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerIntegration]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerIntegration](
	[Customer_Id] [bigint] NOT NULL,
	[Integration_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomHTML]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomHTML](
	[CustomHTML_Id] [bigint] NOT NULL,
	[PrintBroker_Id] [bigint] NOT NULL,
	[CustomerScreen] [varchar](50) NOT NULL,
	[HTMLFile] [varchar](100) NULL,
	[Domain] [varchar](500) NULL,
 CONSTRAINT [PK_CustomHTML] PRIMARY KEY CLUSTERED 
(
	[CustomHTML_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DashboardItem]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardItem](
	[DashboardItem_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [ntext] NULL,
	[Link] [varchar](1000) NULL,
	[DefaultOrder] [int] NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_DashboardItem] PRIMARY KEY CLUSTERED 
(
	[DashboardItem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefaultCostCentreEntry]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultCostCentreEntry](
	[DefaultCostCentreEntry_Id] [bigint] NOT NULL,
	[Field_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[Text] [ntext] NULL,
	[Options] [ntext] NULL,
	[RemoveIfUnchanged] [varchar](3) NOT NULL,
	[TextReplaceTag] [varchar](30) NULL,
 CONSTRAINT [PKDefaultCostCentreEntry] PRIMARY KEY CLUSTERED 
(
	[DefaultCostCentreEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefaultEntry]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultEntry](
	[DefaultEntry_Id] [bigint] NOT NULL,
	[Field_Id] [bigint] NOT NULL,
	[CostCentreAddress_Id] [bigint] NOT NULL,
	[Text] [ntext] NULL,
	[Options] [ntext] NULL,
	[RemoveIfUnchanged] [varchar](3) NOT NULL,
 CONSTRAINT [PKDefaultEntry] PRIMARY KEY CLUSTERED 
(
	[DefaultEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DispatchProfile]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DispatchProfile](
	[DispatchProfile_id] [bigint] NOT NULL,
	[Type] [varchar](50) NULL,
	[Caption] [varchar](100) NULL,
	[Day] [int] NOT NULL,
 CONSTRAINT [PK_DispatchProfile] PRIMARY KEY CLUSTERED 
(
	[DispatchProfile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoNotMailEntry]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoNotMailEntry](
	[DoNotMailEntry_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [bigint] NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[NameFirstName] [nvarchar](50) NULL,
	[NameSurname] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[AddressAddress1] [nvarchar](200) NULL,
	[AddressAddress2] [nvarchar](200) NULL,
	[AddressSuburb] [nvarchar](100) NULL,
	[AddressState] [nvarchar](100) NULL,
	[AddressPostcode] [nvarchar](50) NULL,
	[AddressCountry] [nvarchar](100) NULL,
	[TimeStamp] [datetime] NULL,
	[CASSTimeStamp] [datetime] NULL,
	[UnsubscribeCheck] [varchar](3) NULL,
	[CarrierRoute] [varchar](50) NULL,
	[ErrorCode] [varchar](50) NULL,
	[DPC] [varchar](50) NULL,
 CONSTRAINT [PK_DoNotMailEntry] PRIMARY KEY CLUSTERED 
(
	[DoNotMailEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoubleCut]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoubleCut](
	[DoubleCut_Id] [bigint] NOT NULL,
	[GapName] [varchar](50) NOT NULL,
	[VerticalHeight] [float] NULL,
	[HorizontalWidth] [float] NULL,
	[Gutter] [float] NULL,
	[UnitOfMeasurement_Id] [bigint] NOT NULL,
 CONSTRAINT [PKDoubleCut] PRIMARY KEY CLUSTERED 
(
	[DoubleCut_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_costcenterOption]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_costcenterOption](
	[record_Id] [bigint] NOT NULL,
	[costCentre_Id] [bigint] NULL,
	[customer_Id] [bigint] NULL,
	[property_Id] [varchar](50) NULL,
	[brand] [varchar](50) NULL,
	[region] [varchar](75) NULL,
	[country] [varchar](75) NULL,
	[option1] [varchar](100) NULL,
	[option2] [varchar](100) NULL,
	[prop_name1] [varchar](100) NULL,
	[prop_name2] [varchar](100) NULL,
	[prop_address1] [varchar](100) NULL,
	[prop_address2] [varchar](100) NULL,
	[prop_city] [varchar](50) NULL,
	[prop_state] [varchar](50) NULL,
	[prop_zip] [varchar](50) NULL,
	[prop_phone1] [varchar](50) NULL,
	[prop_fax1] [varchar](50) NULL,
	[prop_name3] [varchar](100) NULL,
	[import_source] [varchar](50) NULL,
	[prop_address3] [varchar](100) NULL,
 CONSTRAINT [PK__ds_costcenterOpt__07B7078F] PRIMARY KEY CLUSTERED 
(
	[record_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_customerOption]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_customerOption](
	[customerOptionId] [bigint] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NOT NULL,
	[key] [varchar](20) NOT NULL,
	[value] [varchar](100) NOT NULL,
 CONSTRAINT [PK__ds_customerOptio__36A700A2] PRIMARY KEY CLUSTERED 
(
	[customerOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_Enhancements]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_Enhancements](
	[Id] [int] NOT NULL,
	[enhancement_Id] [varchar](50) NOT NULL,
	[enhancement_Name] [varchar](100) NOT NULL,
	[enhancement_desc] [varchar](100) NULL,
 CONSTRAINT [PK__ds_Enhan__3214EC078BB2C408] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_orderLimits]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_orderLimits](
	[grouping] [varchar](50) NOT NULL,
	[limit] [int] NOT NULL,
	[type] [varchar](20) NULL,
	[roundTo] [int] NULL,
	[hiddenMatchAll] [int] NULL,
 CONSTRAINT [PK__ds_orderLimits__74D93D45] PRIMARY KEY CLUSTERED 
(
	[grouping] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_orderPageOptions]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_orderPageOptions](
	[Record_Id] [varchar](1) NOT NULL,
	[CostCenter_Id] [bigint] NOT NULL,
	[ParentCostCenter_Id] [bigint] NULL,
	[SelectOrdersByCostCenter] [smallint] NULL,
	[DisplayNextOrderDate] [smallint] NULL,
	[DisplayOrderHistory] [smallint] NULL,
 CONSTRAINT [PK__ds_order__603A0C400F854CB9] PRIMARY KEY CLUSTERED 
(
	[Record_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_orderStatusLog]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_orderStatusLog](
	[StatusChange_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_Id] [bigint] NOT NULL,
	[OrderDate] [datetime2](0) NOT NULL,
	[PreviousStatus_Id] [bigint] NOT NULL,
	[ChangeDate] [datetime2](0) NOT NULL,
 CONSTRAINT [PK__ds_order__43263C8DA7EBA47F] PRIMARY KEY CLUSTERED 
(
	[StatusChange_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_propertySetupErrorLog]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_propertySetupErrorLog](
	[PropertyIdentifier] [ntext] NULL,
	[Error] [ntext] NULL,
	[Location] [ntext] NULL,
	[TimeDate] [datetime2](0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_templanguage]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_templanguage](
	[recordId] [bigint] NOT NULL,
	[templateId] [varchar](50) NOT NULL,
	[languageCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK__ds_templanguage__1BF30A66] PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ds_templateGrouping]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ds_templateGrouping](
	[grouping] [varchar](50) NOT NULL,
	[templateId] [bigint] NOT NULL,
	[costCenterId] [bigint] NOT NULL,
	[type] [smallint] NULL,
	[useMax] [smallint] NULL,
 CONSTRAINT [PK__ds_templateGroup__72F0F4D3] PRIMARY KEY CLUSTERED 
(
	[grouping] ASC,
	[templateId] ASC,
	[costCenterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dtproperties]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dtproperties](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[objectid] [int] NULL,
	[property] [varchar](64) NOT NULL,
	[value] [varchar](255) NULL,
	[uvalue] [nvarchar](255) NULL,
	[lvalue] [image] NULL,
	[version] [int] NOT NULL,
 CONSTRAINT [pk_dtproperties] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[property] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 11/27/2017 3:04:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailLog](
	[EmailLog_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailFrom] [varchar](50) NULL,
	[EmailTo] [ntext] NULL,
	[EmailSubject] [ntext] NULL,
	[EmailBody] [ntext] NULL,
	[EmailSentDate] [datetime] NULL,
	[EmailStatus] [varchar](3) NULL,
	[ErrorLog] [ntext] NULL,
	[Employee_Id] [bigint] NULL,
	[Customer_Id] [bigint] NULL,
	[LoginAccount_Id] [bigint] NULL,
	[EmailFromName] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailServer]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailServer](
	[EmailServer_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebDefault] [varchar](3) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ServerAddress] [nvarchar](200) NOT NULL,
	[FromAddress] [nvarchar](150) NOT NULL,
	[FromName] [nvarchar](200) NOT NULL,
	[BCC] [nvarchar](150) NULL,
	[Authentication] [varchar](3) NOT NULL,
	[Username] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
 CONSTRAINT [PK_EmailServer] PRIMARY KEY CLUSTERED 
(
	[EmailServer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailServerParameter]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailServerParameter](
	[EmailServerParameter_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailServer_Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](500) NULL,
 CONSTRAINT [PK_EmailServerParameter] PRIMARY KEY CLUSTERED 
(
	[EmailServerParameter_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplate]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplate](
	[EmailTemplate_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[EmailType] [varchar](50) NULL,
	[Subject] [varchar](200) NULL,
	[Title] [varchar](200) NULL,
	[Body] [ntext] NULL,
	[TemplateFile] [varchar](100) NULL,
 CONSTRAINT [PK_EmailTemplate] PRIMARY KEY CLUSTERED 
(
	[EmailTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailUnsubscribe]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailUnsubscribe](
	[EmailUnsubscribe_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [varchar](200) NOT NULL,
	[Customer_Id] [bigint] NULL,
	[TimeStamp] [datetime] NOT NULL,
	[UnsubscribeCheck] [datetime] NULL,
 CONSTRAINT [PK_EmailUnsubscribe] PRIMARY KEY CLUSTERED 
(
	[EmailUnsubscribe_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_Id] [bigint] NOT NULL,
	[NameFirstName] [nvarchar](50) NULL,
	[NameSurname] [nvarchar](50) NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[Email] [varchar](100) NULL,
	[AdditionalEmployeeInfo] [nvarchar](50) NULL,
	[CostCentreNumber] [varchar](50) NULL,
	[LoginAccount_Id] [bigint] NULL,
	[RegistrationLoginAccount_Id] [bigint] NULL,
	[ContactNumbersPhone] [varchar](50) NULL,
	[ContactNumbersFax] [varchar](50) NULL,
	[Approver_Id] [bigint] NULL,
	[EmpId] [varchar](100) NULL,
	[Active] [varchar](3) NULL,
	[ActivationKey] [varchar](50) NULL,
	[DefaultDetails] [varchar](3) NULL,
	[CreateTemplate] [varchar](3) NULL,
	[OnBehalfOf] [varchar](3) NULL,
	[PunchoutAccount] [varchar](30) NULL,
	[PaymentType] [varchar](50) NULL,
	[ScreenDefinition_Id] [bigint] NULL,
	[OpenId] [varchar](3) NULL,
	[CIMProfileId] [varchar](50) NULL,
	[CIMPaymentProfileId] [varchar](50) NULL,
	[ContactNumbersMobile] [varchar](50) NULL,
	[CIMCCNumber] [varchar](4) NULL,
	[CIMCCType] [varchar](50) NULL,
 CONSTRAINT [PKEmployee] PRIMARY KEY CLUSTERED 
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeCostCentre]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCostCentre](
	[EmployeeCostCentre_Id] [bigint] NOT NULL,
	[Employee_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[Budget] [float] NULL,
	[Period] [varchar](20) NULL,
	[ExternalId] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeCostCentre] PRIMARY KEY CLUSTERED 
(
	[EmployeeCostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeExtraInputField]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeExtraInputField](
	[EmployeeExtraInputField_Id] [bigint] NOT NULL,
	[Employee_Id] [bigint] NOT NULL,
	[ExtraInputField_Id] [bigint] NOT NULL,
	[Value] [ntext] NULL,
	[DefaultAction] [varchar](20) NULL,
 CONSTRAINT [PK_EmployeeExtraInputField] PRIMARY KEY CLUSTERED 
(
	[EmployeeExtraInputField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTemplate]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTemplate](
	[Employee_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NULL,
	[QuantityCap] [bigint] NULL,
	[Period] [varchar](50) NULL,
	[EmployeeTemplate_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_EmployeeTemplate] PRIMARY KEY CLUSTERED 
(
	[EmployeeTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalImageLibrary]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalImageLibrary](
	[ExternalImageLibrary_Id] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[Caption] [varchar](100) NULL,
	[PunchoutURL] [varchar](255) NULL,
	[ReturnImageParameter] [varchar](50) NULL,
	[ReturnCaptionParameter] [varchar](50) NULL,
	[ScreenWidth] [varchar](5) NULL,
	[ScreenHeight] [varchar](5) NULL,
 CONSTRAINT [PK_ExternalImageLibrary] PRIMARY KEY CLUSTERED 
(
	[ExternalImageLibrary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalList]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalList](
	[ExternalList_Id] [bigint] NOT NULL,
	[ExternalListType_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NULL,
	[LinkCaption] [varchar](100) NULL,
	[AutoSelect] [varchar](3) NULL,
 CONSTRAINT [PK_ExternalList] PRIMARY KEY CLUSTERED 
(
	[ExternalList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalListParameter]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalListParameter](
	[ExternalListParameter_Id] [bigint] NOT NULL,
	[ExternalList_Id] [bigint] NOT NULL,
	[ParameterName] [varchar](50) NULL,
	[ParameterPlaceHolder] [varchar](50) NULL,
	[ExtraInputFieldExternalName] [varchar](50) NULL,
	[DefaultCostCentreEntryReplaceTag] [varchar](50) NULL,
	[TemplateFieldFieldName] [varchar](50) NULL,
 CONSTRAINT [PK_ExternalListParameter] PRIMARY KEY CLUSTERED 
(
	[ExternalListParameter_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalListProcessor]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalListProcessor](
	[ExternalListProcessor_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ProcessType] [nvarchar](20) NOT NULL,
	[Action] [nvarchar](100) NOT NULL,
	[Workflow] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_ExternalListProcessor] PRIMARY KEY CLUSTERED 
(
	[ExternalListProcessor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalListType]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalListType](
	[ExternalListType_Id] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[PunchoutURL] [varchar](200) NULL,
	[ListInfoURL] [varchar](200) NULL,
	[OrderListURL] [varchar](200) NULL,
	[DownloadURL] [varchar](200) NULL,
	[ReturnOrderNumberName] [varchar](100) NULL,
	[PopupWidth] [int] NULL,
	[PopupHeight] [int] NULL,
 CONSTRAINT [PK_ExternalListType] PRIMARY KEY CLUSTERED 
(
	[ExternalListType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalLookup]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalLookup](
	[ExternalLookup_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
	[IntegrationType] [nvarchar](100) NOT NULL,
	[URL] [nvarchar](500) NULL,
	[VariableName] [nvarchar](50) NULL,
	[Encoding] [varchar](50) NULL,
 CONSTRAINT [PK_ExternalLookup] PRIMARY KEY CLUSTERED 
(
	[ExternalLookup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalTax]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalTax](
	[ExternalTax_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[External_id] [nvarchar](100) NULL,
	[Type] [nvarchar](20) NOT NULL,
	[URL] [nvarchar](200) NOT NULL,
	[XMLFile] [nvarchar](200) NULL,
 CONSTRAINT [PK_ExternalTax] PRIMARY KEY CLUSTERED 
(
	[ExternalTax_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraInputField]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraInputField](
	[ExtraInputField_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[Caption] [nvarchar](80) NULL,
	[Required] [varchar](50) NOT NULL,
	[Length] [decimal](18, 0) NULL,
	[LengthType] [varchar](15) NULL,
	[Options] [ntext] NULL,
	[ErrorMessage] [nvarchar](150) NULL,
	[DisplayIn] [varchar](50) NULL,
	[DefaultText] [ntext] NULL,
	[DefaultOrder] [int] NULL,
	[ShowWhere] [varchar](100) NULL,
	[JavaScriptFunction_Id] [bigint] NULL,
	[ApplyJavaScript] [varchar](20) NULL,
	[ExternalName] [varchar](20) NULL,
	[FieldType] [varchar](15) NULL,
	[TextReplaceTag] [varchar](30) NULL,
	[GroupName] [nvarchar](50) NULL,
	[GroupSelect] [varchar](3) NULL,
 CONSTRAINT [PKExtraInputField] PRIMARY KEY CLUSTERED 
(
	[ExtraInputField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraOrderField]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraOrderField](
	[ExtraOrderField_Id] [bigint] NOT NULL,
	[Order_Id] [bigint] NULL,
	[Caption] [nvarchar](80) NULL,
	[Value] [ntext] NOT NULL,
	[CartTransaction_Id] [bigint] NULL,
	[Cost] [float] NULL,
	[ExtraProductField_Id] [bigint] NULL,
	[ExtraproductFieldoption_Id] [bigint] NULL,
	[ExtraInputField_Id] [bigint] NULL,
	[NexJobCaption] [varchar](80) NULL,
	[AlternativeScreenName] [varchar](50) NULL,
	[NexJobUpload_Id] [bigint] NULL,
	[NexJobType_Id] [bigint] NULL,
	[NJType] [varchar](10) NULL,
 CONSTRAINT [PKExtraOrderField] PRIMARY KEY CLUSTERED 
(
	[ExtraOrderField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraProductField]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraProductField](
	[ExtraProductField_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[Caption] [nvarchar](100) NULL,
	[ControlType] [varchar](50) NULL,
	[Required] [varchar](3) NOT NULL,
	[Length] [bigint] NULL,
	[LengthType] [varchar](50) NULL,
	[ErrorMessage] [nvarchar](200) NULL,
	[SortOrder] [bigint] NULL,
	[NexJobPage_Id] [bigint] NULL,
	[Caption2] [nvarchar](100) NULL,
	[HelpText] [ntext] NULL,
	[GroupName] [nvarchar](100) NULL,
	[Column] [int] NULL,
	[SpecialType] [varchar](100) NULL,
	[CentreField] [varchar](3) NULL,
	[NexJobGroup_Id] [bigint] NULL,
	[Cost] [float] NULL,
	[FieldType] [varchar](15) NULL,
	[DefaultText] [ntext] NULL,
 CONSTRAINT [PKExtraProductField] PRIMARY KEY CLUSTERED 
(
	[ExtraProductField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraProductFieldOption]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraProductFieldOption](
	[ExtraProductFieldOption_Id] [bigint] NOT NULL,
	[ExtraProductField_Id] [bigint] NOT NULL,
	[OptionName] [varchar](50) NOT NULL,
	[AlternativeScreenName] [varchar](50) NULL,
	[Cost] [float] NULL,
	[NullOption] [varchar](3) NULL,
	[DefaultOption] [varchar](3) NULL,
	[SortOrder] [int] NULL,
	[MultiplyCostQuantity] [varchar](10) NULL,
	[MasterNo] [varchar](50) NULL,
 CONSTRAINT [PKExtraProductFieldOption] PRIMARY KEY CLUSTERED 
(
	[ExtraProductFieldOption_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite](
	[LoginAccount_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[ListName] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Field]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Field](
	[Field_Id] [bigint] NOT NULL,
	[FieldCaption] [nvarchar](50) NULL,
	[InternalName] [varchar](50) NOT NULL,
	[DefaultOrder] [bigint] NOT NULL,
	[DefaultTest] [nvarchar](100) NULL,
	[DefaultSize] [bigint] NOT NULL,
	[DefaultText] [nvarchar](50) NULL,
 CONSTRAINT [PKField] PRIMARY KEY CLUSTERED 
(
	[Field_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldLayout]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldLayout](
	[FieldLayout_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[Field_Id] [bigint] NOT NULL,
	[Required] [varchar](3) NULL,
	[ReadOnly] [varchar](3) NULL,
	[Hidden] [varchar](3) NULL,
	[JavaScriptFunction_Id] [bigint] NULL,
	[TestData] [ntext] NULL,
	[CaptionDisplayCaption] [nvarchar](200) NULL,
	[CaptionDisplayDispaly] [varchar](3) NULL,
	[CaptionDisplayAlternative] [ntext] NULL,
	[CaptionDisplayFieldTip] [varchar](100) NULL,
	[DefaultText] [ntext] NULL,
	[DefaultRemoveIfUnchanged] [varchar](3) NOT NULL,
	[DefaultLength] [bigint] NOT NULL,
	[DefaultOptions] [ntext] NULL,
	[DefaultWidth] [float] NULL,
	[DefaultHeight] [float] NULL,
	[DefaultDefaultOrder] [bigint] NOT NULL,
	[FontName] [varchar](50) NULL,
	[FontSize] [float] NULL,
	[ScalingPercentage] [float] NULL,
	[CharacterSpacing] [float] NULL,
	[Align] [varchar](50) NULL,
	[VerticalAlign] [varchar](10) NULL,
	[CMYKC] [float] NULL,
	[CMYKM] [float] NULL,
	[CMYKY] [float] NULL,
	[CMYKK] [float] NULL,
	[ColourPredefined] [varchar](50) NULL,
	[WrapMaxWidth] [float] NULL,
	[WrapMaxHeight] [float] NULL,
	[WrapWrapAtCharacter] [varchar](5) NULL,
	[ActionDirection] [varchar](50) NULL,
	[ActionLeading] [float] NULL,
	[UnitOfMeasurement_Id] [bigint] NULL,
	[MultiLine] [varchar](3) NULL,
	[AutoKern] [varchar](5) NULL,
	[FontName1] [varchar](50) NULL,
	[FontSize1] [float] NULL,
	[ScalingPercentage1] [float] NULL,
	[CharacterSpacing1] [float] NULL,
	[Align1] [varchar](50) NULL,
	[CMYKC1] [float] NULL,
	[CMYKM1] [float] NULL,
	[CMYKY1] [float] NULL,
	[CMYKK1] [float] NULL,
	[ColourPredefined1] [varchar](50) NULL,
	[AutoKern1] [varchar](5) NULL,
	[AbsoluteLeft] [float] NULL,
	[AbsoluteTop] [float] NULL,
	[AbsoluteOrientation] [bigint] NULL,
	[RelativeToAnotherField_Id] [bigint] NULL,
	[RelativeToCaption] [varchar](3) NULL,
	[SeparatorPlacement] [varchar](50) NULL,
	[SeparatorSize] [float] NULL,
	[SeparatorCharacters] [varchar](10) NULL,
	[AbsoluteLeft1] [float] NULL,
	[AbsoluteTop1] [float] NULL,
	[AbsoluteOrientation1] [bigint] NULL,
	[RelativeToAnotherField1_Id] [bigint] NULL,
	[RelativeToField] [varchar](3) NULL,
	[SeparatorPlacement1] [varchar](50) NULL,
	[SeparatorSize1] [float] NULL,
	[SeparatorCharacters1] [varchar](10) NULL,
	[InheritCondition] [varchar](50) NULL,
	[InheritWhat] [varchar](50) NULL,
	[InheritFromField_Id] [bigint] NULL,
	[PDFs_Id] [bigint] NULL,
	[LibraryImage_Id] [bigint] NULL,
	[Upload] [varchar](3) NULL,
	[ActionFieldLayout_Id] [bigint] NULL,
	[DefaultResetOnUpdate] [varchar](3) NULL,
	[GroupName] [varchar](100) NULL,
	[SmallCapsNumbers] [varchar](3) NULL,
	[SmallCaps] [float] NULL,
	[SmallCaps1] [float] NULL,
	[RetailAllow] [varchar](300) NULL,
	[Strock] [float] NULL,
	[Strock1] [float] NULL,
	[LinkedToFieldLayout_Id] [bigint] NULL,
	[AlignBlockLeft] [varchar](10) NULL,
	[AlignBlockLeft1] [varchar](10) NULL,
	[OptionPopUp] [ntext] NULL,
	[MaxLength] [int] NULL,
	[DatePickerFormat] [varchar](20) NULL,
	[SpellCheckLanguage] [ntext] NULL,
	[FieldName] [varchar](50) NULL,
	[OptionPopUpFields] [varchar](200) NULL,
	[URLImageImport] [varchar](200) NULL,
	[ImageXScale] [float] NULL,
	[ImageYScale] [float] NULL,
	[ImageXPosition] [float] NULL,
	[ImageYPosition] [float] NULL,
	[RGBR] [float] NULL,
	[RGBG] [float] NULL,
	[RGBB] [float] NULL,
	[FontSizes] [varchar](500) NULL,
	[DuplicateFieldName] [varchar](50) NULL,
	[DisableAutoResize] [varchar](3) NULL,
	[FitText] [varchar](3) NULL,
	[FitTextMinFontSize] [float] NULL,
	[FitTextMaxFontSize] [float] NULL,
	[PerformFieldReplace] [varchar](3) NULL,
	[ControlName] [varchar](50) NULL,
	[IsVariable] [varchar](3) NULL,
	[EditableOptionCaption] [varchar](100) NULL,
	[VariableImageSourceType] [varchar](200) NULL,
	[VariableImageSource] [varchar](500) NULL,
	[VariableImageRemoveDefault] [varchar](3) NULL,
	[ImageFit] [varchar](50) NULL,
	[ControlHeight] [int] NULL,
	[DatePickerOffset] [varchar](50) NULL,
	[ReplaceSpecialFields] [varchar](3) NULL,
	[DoNotPrint] [varchar](3) NULL,
	[DeleteEmptyVariableLines] [varchar](3) NULL,
	[CurveInformation] [ntext] NULL,
	[ColourPreDefinedPercent] [float] NULL,
	[ColourPreDefinedPercent1] [float] NULL,
	[ProfileMapping] [varchar](50) NULL,
	[ProfileCaption] [varchar](100) NULL,
	[PointInformation] [ntext] NULL,
	[FontJustified] [varchar](3) NULL,
	[ImageLibraryActualSizeVector] [varchar](3) NULL,
	[WebPortal_Id] [bigint] NULL,
	[Editor] [varchar](3) NULL,
	[FontSizeRange_Id] [bigint] NULL,
	[EditorBkgColour] [varchar](50) NULL,
 CONSTRAINT [PKFieldLayout] PRIMARY KEY CLUSTERED 
(
	[FieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldReplace]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldReplace](
	[TableName] [varchar](50) NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ReplaceTag] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Font]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Font](
	[Font_Id] [bigint] NOT NULL,
	[FontName] [varchar](200) NULL,
	[SWFFile] [varchar](200) NULL,
	[FontBaseName] [varchar](200) NULL,
	[LeadingFactor] [float] NULL,
	[CharacterSpacingFactor] [float] NULL,
	[LibraryFont] [varchar](3) NULL,
	[LibraryLoaderSWFFont] [varchar](200) NULL,
	[LibrarySWFFont] [varchar](200) NULL,
	[AlternateBaseFontNames] [varchar](200) NULL,
	[HaveLicenseInitials] [varchar](200) NULL,
 CONSTRAINT [PKFont] PRIMARY KEY CLUSTERED 
(
	[Font_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FontSizeRange]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FontSizeRange](
	[FontSizeRange_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FontRangeName] [nvarchar](200) NULL,
	[FontSizes] [varchar](500) NULL,
	[Min] [float] NOT NULL,
	[Max] [float] NOT NULL,
	[Step] [float] NOT NULL,
	[FontExclusions] [varchar](200) NULL,
	[FontInclusions] [varchar](200) NULL,
 CONSTRAINT [PK_FontSizeRange] PRIMARY KEY CLUSTERED 
(
	[FontSizeRange_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FreightAccount]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FreightAccount](
	[FreightAccount_id] [bigint] NOT NULL,
	[DefaultAccount] [varchar](3) NULL,
	[Name] [varchar](100) NULL,
	[FromZip] [varchar](100) NULL,
	[FromState] [varchar](100) NULL,
	[FromCountry] [varchar](100) NULL,
	[Type] [varchar](100) NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[AccountNumber] [varchar](100) NULL,
	[AccountType] [varchar](100) NULL,
	[CustomerClassification] [varchar](100) NULL,
	[MaxPackageWeight] [varchar](100) NULL,
	[DropOffType] [varchar](100) NULL,
	[CurrencyCode] [varchar](100) NULL,
	[FromSuburb] [varchar](100) NULL,
	[ContactName] [varchar](100) NULL,
	[CompanyName] [varchar](100) NULL,
	[FromAddress1] [varchar](100) NULL,
	[FromAddress2] [varchar](100) NULL,
	[ContactPhone] [varchar](100) NULL,
	[ContactEmail] [varchar](100) NULL,
	[ShipperNumber] [varchar](100) NULL,
	[MeterNumber] [varchar](50) NULL,
	[DropOffTypeSelected] [varchar](50) NULL,
	[PickupTypeSelected] [varchar](50) NULL,
	[CustomerClassificationSelected] [varchar](50) NULL,
	[LogTransactions] [varchar](3) NULL,
 CONSTRAINT [PK_FreightAccount] PRIMARY KEY CLUSTERED 
(
	[FreightAccount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FreightMethod]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FreightMethod](
	[FreightMethod_Id] [bigint] NOT NULL,
	[FreightCompany] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ExternalId] [varchar](50) NOT NULL,
	[HelpText] [ntext] NULL,
	[ExternalIdXML] [nvarchar](100) NULL,
 CONSTRAINT [PK_FreightMethod] PRIMARY KEY CLUSTERED 
(
	[FreightMethod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FreightType]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FreightType](
	[FreightType_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[FreightMethod_Id] [bigint] NULL,
	[Discount] [float] NULL,
	[FlatRate] [float] NULL,
	[UnitWeightCost] [float] NULL,
	[Name] [varchar](50) NULL,
	[ExternalId] [nvarchar](100) NULL,
 CONSTRAINT [PK_FreightType] PRIMARY KEY CLUSTERED 
(
	[FreightType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneratedReport]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneratedReport](
	[GeneratedReport_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReportName] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OutputFile] [varchar](100) NULL,
	[SQL] [ntext] NULL,
	[Customer_Id] [bigint] NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[VWebCampaign_Id] [bigint] NULL,
	[TimeStamp] [datetime] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[RenameListCols] [ntext] NULL,
	[ErrorDesc] [ntext] NULL,
	[ReportType] [varchar](200) NULL,
	[ParentGeneratedReport_Id] [bigint] NULL,
 CONSTRAINT [PK_GeneratedReport] PRIMARY KEY CLUSTERED 
(
	[GeneratedReport_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupBy]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupBy](
	[GroupBy_Id] [bigint] NOT NULL,
	[Caption] [varchar](200) NOT NULL,
	[Fields] [varchar](100) NOT NULL,
	[SelectFields] [nchar](100) NOT NULL,
 CONSTRAINT [PKGroupBy] PRIMARY KEY CLUSTERED 
(
	[GroupBy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Image_Id] [bigint] NOT NULL,
	[Branding_Id] [bigint] NOT NULL,
	[File] [varchar](100) NOT NULL,
 CONSTRAINT [PKImage] PRIMARY KEY CLUSTERED 
(
	[Image_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageCategory]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageCategory](
	[ImageCategory_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[ParentImageCategory_Id] [bigint] NULL,
	[LoginAccount_Id] [bigint] NULL,
	[DefaultOrder] [int] NULL,
	[AvailableToTemplates] [varchar](3) NULL,
	[GuestKey] [varchar](100) NULL,
	[DisableDelete] [varchar](3) NULL,
	[ExternalId] [varchar](100) NULL,
 CONSTRAINT [PKImageCategory] PRIMARY KEY CLUSTERED 
(
	[ImageCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageCategoryFieldLayout]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageCategoryFieldLayout](
	[ImageCategoryFieldLayout_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImageCategory_Id] [bigint] NOT NULL,
	[FieldLayout_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_ImageCategoryFieldLayout] PRIMARY KEY CLUSTERED 
(
	[ImageCategoryFieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageLibraryCharts]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageLibraryCharts](
	[ImageLibraryCharts_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Chart_ID] [bigint] NULL,
	[Line] [int] NULL,
	[ChartType] [varchar](50) NULL,
	[ElementCaption] [varchar](50) NULL,
	[ElementValue] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Explode] [int] NULL,
	[Depth] [int] NULL,
 CONSTRAINT [PK_ImageLibraryCharts] PRIMARY KEY CLUSTERED 
(
	[ImageLibraryCharts_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportTemplate]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportTemplate](
	[ImportTemplate_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[File] [nvarchar](200) NOT NULL,
	[Date] [datetime] NULL,
	[Template_Id] [bigint] NULL,
 CONSTRAINT [PK_ImportTemplate] PRIMARY KEY CLUSTERED 
(
	[ImportTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imposition]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imposition](
	[Imposition_Id] [bigint] NOT NULL,
	[Status_Id] [bigint] NOT NULL,
	[SignatureMarking_Id] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[StationeryDescription] [varchar](50) NOT NULL,
	[File] [varchar](100) NULL,
	[Quantity] [bigint] NOT NULL,
	[Closed] [varchar](3) NOT NULL,
	[SignatureStyle_Id] [bigint] NULL,
	[JobTicketNumber] [varchar](50) NULL,
	[Supplier_Id] [bigint] NULL,
 CONSTRAINT [PKImposition] PRIMARY KEY CLUSTERED 
(
	[Imposition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpositionAddition]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpositionAddition](
	[ImpositionAddition_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SignatureStyle_Id] [bigint] NOT NULL,
	[Text] [ntext] NULL,
	[Font] [nvarchar](200) NULL,
	[FontSize] [float] NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[Rotation] [float] NULL,
	[Alignment] [varchar](10) NULL,
	[ColorC] [float] NULL,
	[ColorM] [float] NULL,
	[ColorY] [float] NULL,
	[ColorK] [float] NULL,
 CONSTRAINT [PK_ImpositionAddition] PRIMARY KEY CLUSTERED 
(
	[ImpositionAddition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncludeSummary]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncludeSummary](
	[IncludeSummary_Id] [bigint] NOT NULL,
	[SummaryType] [varchar](50) NOT NULL,
 CONSTRAINT [PKIncludeSummary] PRIMARY KEY CLUSTERED 
(
	[IncludeSummary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Integration]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integration](
	[Integration_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[File] [nvarchar](100) NULL,
	[Method] [nvarchar](20) NOT NULL,
	[Action] [nvarchar](250) NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Subject] [nvarchar](50) NULL,
	[DefaultOrder] [int] NULL,
	[Default] [nvarchar](3) NOT NULL,
	[RemoveItemPlaceholder] [nvarchar](3) NOT NULL,
	[VariableName] [nvarchar](50) NULL,
	[DateTimeFormat] [varchar](50) NULL,
	[Encoding] [varchar](50) NULL,
	[XMLSource] [varchar](10) NULL,
	[ScheduledPost] [varchar](10) NULL,
	[ErrorNotifyEmail] [nvarchar](100) NULL,
	[SendOnlyMappedExtraInputFields] [nvarchar](3) NULL,
 CONSTRAINT [PK_Integration] PRIMARY KEY CLUSTERED 
(
	[Integration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntegrationLog]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntegrationLog](
	[IntegrationLog_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OutputContent] [ntext] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[OrderInfo] [ntext] NULL,
	[CartTransaction_Id] [bigint] NULL,
	[Order_Id] [bigint] NULL,
	[HiResFile] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[FailedDate] [datetime] NULL,
	[SuccessDate] [datetime] NULL,
	[ReturnDetails] [ntext] NULL,
	[ReturnCode] [nvarchar](50) NULL,
	[RetryAttempts] [int] NULL,
	[Integration_Id] [bigint] NULL,
	[VWebCampaignArtwork_Id] [bigint] NULL,
	[ExternalOrderId] [ntext] NULL,
 CONSTRAINT [PK_IntegrationLog] PRIMARY KEY CLUSTERED 
(
	[IntegrationLog_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPAddressRange]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPAddressRange](
	[IPAddressRange_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[FromIP] [varchar](20) NOT NULL,
	[ToIP] [varchar](50) NULL,
	[Comments] [varchar](100) NULL,
 CONSTRAINT [PKIPAddressRange] PRIMARY KEY CLUSTERED 
(
	[IPAddressRange_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JavaScriptFunction]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JavaScriptFunction](
	[JavaScriptFunction_Id] [bigint] NOT NULL,
	[FunctionName] [varchar](50) NOT NULL,
	[JavaScriptHTML] [ntext] NULL,
	[JavaScriptPDF] [ntext] NULL,
 CONSTRAINT [PKJavaScriptFunction] PRIMARY KEY CLUSTERED 
(
	[JavaScriptFunction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTicket]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTicket](
	[JobTicket_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobTicketNumber] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[OrderIds] [ntext] NULL,
	[DateRequired] [varchar](30) NULL,
	[JobTicketInfo] [ntext] NULL,
	[TimeStamp] [datetime] NOT NULL,
 CONSTRAINT [PKJobTicket] PRIMARY KEY CLUSTERED 
(
	[JobTicket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kerning]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kerning](
	[Kerning_Id] [bigint] NOT NULL,
	[Chars] [varchar](2) NOT NULL,
	[CharacterSpacing] [float] NULL,
	[Font] [varchar](100) NULL,
 CONSTRAINT [PKKerning] PRIMARY KEY CLUSTERED 
(
	[Kerning_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibraryImage]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryImage](
	[LibraryImage_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NULL,
	[Caption] [nvarchar](200) NULL,
	[File] [varchar](100) NOT NULL,
	[Thumbnail] [varchar](100) NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[AddedBy_Id] [bigint] NOT NULL,
	[AllowReuse] [varchar](50) NOT NULL,
	[LowResFile] [varchar](100) NULL,
	[DateDeleted] [datetime] NULL,
	[DPI] [bigint] NULL,
	[ThumbnailFlash] [varchar](100) NULL,
	[RegistrationImage] [varchar](3) NULL,
	[GuestKey] [varchar](100) NULL,
	[ImageCategory_Id] [bigint] NULL,
	[LibraryThumbnail] [varchar](100) NULL,
	[ExternalId] [varchar](100) NULL,
	[SpotColour] [varchar](50) NULL,
	[Colour] [varchar](20) NULL,
	[ParentLibraryImage_Id] [bigint] NULL,
	[MasterJPG] [varchar](100) NULL,
	[SessionIdentifier] [varchar](50) NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[Keywords] [varchar](300) NULL,
 CONSTRAINT [PKLibraryImage] PRIMARY KEY CLUSTERED 
(
	[LibraryImage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibraryImageKeyword]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryImageKeyword](
	[LibraryImageKeyword_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LibraryImage_Id] [bigint] NOT NULL,
	[Keyword] [varchar](255) NULL,
 CONSTRAINT [PK__LibraryImageKeyw__2CC890AD] PRIMARY KEY CLUSTERED 
(
	[LibraryImageKeyword_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedToOption]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedToOption](
	[LinkedToOption_Id] [bigint] NOT NULL,
	[ExtraProductFieldOption_Id] [bigint] NOT NULL,
	[ExtraProductFieldOption1_Id] [bigint] NOT NULL,
	[Grouping] [bigint] NOT NULL,
 CONSTRAINT [PKLinkedToOption] PRIMARY KEY CLUSTERED 
(
	[LinkedToOption_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List](
	[List_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[CostCentre_Id] [bigint] NULL,
	[Employee_Id] [bigint] NULL,
	[TimeStamp] [datetime] NOT NULL,
	[File] [varchar](100) NULL,
	[ColumnCount] [int] NULL,
	[Columns] [ntext] NULL,
	[ListName] [varchar](100) NOT NULL,
	[IdColumn] [varchar](100) NULL,
	[Reuse] [varchar](50) NULL,
	[DeletedDate] [datetime] NULL,
	[RecordCount] [bigint] NULL,
	[ExternalListId] [varchar](50) NULL,
	[ExternalOrderId] [varchar](50) NULL,
	[ListType] [varchar](20) NULL,
	[ListStatus] [varchar](50) NULL,
	[CASSStatus] [varchar](3) NULL,
	[UnsubscribeCheck] [datetime] NULL,
	[Criteria] [ntext] NULL,
	[PurchaseListGroup_Id] [bigint] NULL,
	[PurchaseListProduct_Id] [bigint] NULL,
	[PurchaseListPrice] [float] NULL,
	[PurchaseListReUsePrice] [float] NULL,
	[IsSeedList] [varchar](3) NULL,
	[NCOAStatus] [varchar](8) NULL,
	[NCOAReport] [varchar](255) NULL,
	[DoNotMailCheck] [datetime] NULL,
	[ZIPFile] [varchar](100) NULL,
	[HasMailTable] [varchar](3) NULL,
	[NoHeader] [varchar](3) NULL,
	[NCOADate] [datetime] NULL,
	[CASSReport] [varchar](200) NULL,
	[CASSDate] [datetime] NULL,
	[ReGenerateColumns] [ntext] NULL,
 CONSTRAINT [PKList] PRIMARY KEY CLUSTERED 
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListAddition]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListAddition](
	[ListAddition_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[List_Id] [bigint] NOT NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[UnsubscribeCheck] [datetime] NULL,
 CONSTRAINT [PK_ListAddition] PRIMARY KEY CLUSTERED 
(
	[ListAddition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListEntry]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListEntry](
	[ListEntry_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[List_Id] [bigint] NULL,
	[Email] [varchar](100) NULL,
	[EmailUnsubscribe] [varchar](3) NULL,
	[NameFirstName] [nvarchar](200) NULL,
	[NameSurname] [nvarchar](200) NULL,
	[CompanyName] [nvarchar](500) NULL,
	[Qualifications] [nvarchar](200) NULL,
	[JobTitleTitle1] [nvarchar](500) NULL,
	[JobTitleTitle2] [nvarchar](500) NULL,
	[JobTitleTitle3] [nvarchar](500) NULL,
	[Division] [nvarchar](500) NULL,
	[Email2] [nvarchar](500) NULL,
	[Web] [nvarchar](500) NULL,
	[ContactPhone1] [nvarchar](200) NULL,
	[ContactPhone2] [nvarchar](200) NULL,
	[ContactPhone3] [nvarchar](200) NULL,
	[ContactPhone4] [nvarchar](200) NULL,
	[ContactMobile] [nvarchar](200) NULL,
	[ContactAfterHours] [nvarchar](200) NULL,
	[ContactFax] [nvarchar](200) NULL,
	[ContactPager] [nvarchar](200) NULL,
	[ContactPhoneDirect] [nvarchar](200) NULL,
	[AddressAddress1] [nvarchar](500) NULL,
	[AddressAddress2] [nvarchar](500) NULL,
	[AddressAddress3] [nvarchar](500) NULL,
	[AddressSuburb] [nvarchar](500) NULL,
	[AddressState] [nvarchar](500) NULL,
	[AddressPostcode] [nvarchar](500) NULL,
	[AddressCountry] [nvarchar](500) NULL,
	[PostalAddressAddress1] [nvarchar](500) NULL,
	[PostalAddressAddress2] [nvarchar](500) NULL,
	[PostalAddressAddress3] [nvarchar](500) NULL,
	[PostalAddressSuburb] [nvarchar](500) NULL,
	[PostalAddressState] [nvarchar](500) NULL,
	[PostalAddressPostcode] [nvarchar](500) NULL,
	[PostalAddressCountry] [nvarchar](500) NULL,
	[ExtraText1] [ntext] NULL,
	[ExtraText2] [ntext] NULL,
	[ExtraText3] [ntext] NULL,
	[ExtraText4] [ntext] NULL,
	[ExtraText5] [ntext] NULL,
	[ExtraText6] [ntext] NULL,
	[ExtraText7] [ntext] NULL,
	[ExtraText8] [ntext] NULL,
	[ExtraText9] [ntext] NULL,
	[ExtraText10] [ntext] NULL,
	[ExtraText11] [ntext] NULL,
	[ExtraText12] [ntext] NULL,
	[ExtraText13] [ntext] NULL,
	[ExtraText14] [ntext] NULL,
	[ExtraText15] [ntext] NULL,
	[Prefix] [nvarchar](20) NULL,
	[MiddleInitial] [nvarchar](20) NULL,
	[Suffix] [nvarchar](20) NULL,
	[EntryType] [nvarchar](4) NULL,
	[ExtraText16] [ntext] NULL,
	[ExtraText17] [ntext] NULL,
	[ExtraText18] [ntext] NULL,
	[ExtraText19] [ntext] NULL,
	[ExtraText20] [ntext] NULL,
	[ExtraText21] [ntext] NULL,
	[ExtraText22] [ntext] NULL,
	[ExtraText23] [ntext] NULL,
	[ExtraText24] [ntext] NULL,
	[ExtraText25] [ntext] NULL,
	[ExtraText26] [ntext] NULL,
	[ExtraText27] [ntext] NULL,
	[ExtraText28] [ntext] NULL,
	[ExtraText29] [ntext] NULL,
	[ExtraText30] [ntext] NULL,
	[ListAddition_Id] [bigint] NULL,
	[Unsubscribed] [varchar](3) NULL,
	[CarrierRoute] [nvarchar](50) NULL,
	[LotNumber] [nvarchar](50) NULL,
	[ErrorCode] [varchar](50) NULL,
	[DPC] [nvarchar](50) NULL,
	[MatchFlag] [varchar](50) NULL,
	[CountyName] [nvarchar](50) NULL,
	[CountyCode] [nvarchar](50) NULL,
	[DPBarCode] [nvarchar](50) NULL,
	[RecordType] [nvarchar](50) NULL,
	[CASSDate] [nvarchar](50) NULL,
	[ErrorFlag] [int] NULL,
	[MailingAddressAddress1] [nvarchar](500) NULL,
	[MailingAddressAddress2] [nvarchar](500) NULL,
	[MailingAddressAddress3] [nvarchar](500) NULL,
	[MailingAddressSuburb] [nvarchar](500) NULL,
	[MailingAddressState] [nvarchar](500) NULL,
	[MailingAddressPostcode] [nvarchar](500) NULL,
	[MailingAddressCountry] [nvarchar](500) NULL,
	[AddressUnsubscribe] [varchar](3) NULL,
	[RowId] [bigint] NULL,
	[PresortId] [bigint] NULL,
	[BundleNumber] [nvarchar](30) NULL,
	[ContainerNumber] [nvarchar](30) NULL,
	[EndorsementLine] [nvarchar](100) NULL,
	[IMBarcode] [nvarchar](100) NULL,
	[IMFields] [nvarchar](500) NULL,
	[Updated] [varchar](1) NULL,
 CONSTRAINT [PKListEntry] PRIMARY KEY CLUSTERED 
(
	[ListEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListEntryTemp]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListEntryTemp](
	[ListEntry_Id] [bigint] NULL,
	[List_Id] [bigint] NULL,
	[SubmitNumber] [varchar](36) NULL,
	[Email] [varchar](100) NULL,
	[EmailUnsubscribe] [varchar](3) NULL,
	[NameFirstName] [nvarchar](200) NULL,
	[NameSurname] [nvarchar](200) NULL,
	[CompanyName] [nvarchar](500) NULL,
	[Qualifications] [nvarchar](200) NULL,
	[JobTitleTitle1] [nvarchar](500) NULL,
	[JobTitleTitle2] [nvarchar](500) NULL,
	[JobTitleTitle3] [nvarchar](500) NULL,
	[Division] [nvarchar](500) NULL,
	[Email2] [nvarchar](500) NULL,
	[Web] [nvarchar](500) NULL,
	[ContactPhone1] [nvarchar](200) NULL,
	[ContactPhone2] [nvarchar](200) NULL,
	[ContactPhone3] [nvarchar](200) NULL,
	[ContactPhone4] [nvarchar](200) NULL,
	[ContactMobile] [nvarchar](200) NULL,
	[ContactAfterHours] [nvarchar](200) NULL,
	[ContactFax] [nvarchar](200) NULL,
	[ContactPager] [nvarchar](200) NULL,
	[ContactPhoneDirect] [nvarchar](200) NULL,
	[AddressAddress1] [nvarchar](500) NULL,
	[AddressAddress2] [nvarchar](500) NULL,
	[AddressAddress3] [nvarchar](500) NULL,
	[AddressSuburb] [nvarchar](500) NULL,
	[AddressState] [nvarchar](500) NULL,
	[AddressPostcode] [nvarchar](500) NULL,
	[AddressCountry] [nvarchar](500) NULL,
	[PostalAddressAddress1] [nvarchar](500) NULL,
	[PostalAddressAddress2] [nvarchar](500) NULL,
	[PostalAddressAddress3] [nvarchar](500) NULL,
	[PostalAddressSuburb] [nvarchar](500) NULL,
	[PostalAddressState] [nvarchar](500) NULL,
	[PostalAddressPostcode] [nvarchar](500) NULL,
	[PostalAddressCountry] [nvarchar](500) NULL,
	[ExtraText1] [ntext] NULL,
	[ExtraText2] [ntext] NULL,
	[ExtraText3] [ntext] NULL,
	[ExtraText4] [ntext] NULL,
	[ExtraText5] [ntext] NULL,
	[ExtraText6] [ntext] NULL,
	[ExtraText7] [ntext] NULL,
	[ExtraText8] [ntext] NULL,
	[ExtraText9] [ntext] NULL,
	[ExtraText10] [ntext] NULL,
	[ExtraText11] [ntext] NULL,
	[ExtraText12] [ntext] NULL,
	[ExtraText13] [ntext] NULL,
	[ExtraText14] [ntext] NULL,
	[ExtraText15] [ntext] NULL,
	[Prefix] [nvarchar](20) NULL,
	[MiddleInitial] [nvarchar](20) NULL,
	[Suffix] [nvarchar](20) NULL,
	[EntryType] [nvarchar](4) NULL,
	[ExtraText16] [ntext] NULL,
	[ExtraText17] [ntext] NULL,
	[ExtraText18] [ntext] NULL,
	[ExtraText19] [ntext] NULL,
	[ExtraText20] [ntext] NULL,
	[ExtraText21] [ntext] NULL,
	[ExtraText22] [ntext] NULL,
	[ExtraText23] [ntext] NULL,
	[ExtraText24] [ntext] NULL,
	[ExtraText25] [ntext] NULL,
	[ExtraText26] [ntext] NULL,
	[ExtraText27] [ntext] NULL,
	[ExtraText28] [ntext] NULL,
	[ExtraText29] [ntext] NULL,
	[ExtraText30] [ntext] NULL,
	[ListAddition_Id] [bigint] NULL,
	[Unsubscribed] [varchar](3) NULL,
	[CarrierRoute] [nvarchar](50) NULL,
	[LotNumber] [nvarchar](50) NULL,
	[ErrorCode] [varchar](50) NULL,
	[DPC] [nvarchar](50) NULL,
	[MatchFlag] [varchar](50) NULL,
	[CountyName] [nvarchar](50) NULL,
	[CountyCode] [nvarchar](50) NULL,
	[DPBarCode] [nvarchar](50) NULL,
	[RecordType] [nvarchar](50) NULL,
	[CASSDate] [nvarchar](50) NULL,
	[ErrorFlag] [int] NULL,
	[MailingAddressAddress1] [nvarchar](500) NULL,
	[MailingAddressAddress2] [nvarchar](500) NULL,
	[MailingAddressAddress3] [nvarchar](500) NULL,
	[MailingAddressSuburb] [nvarchar](500) NULL,
	[MailingAddressState] [nvarchar](500) NULL,
	[MailingAddressPostcode] [nvarchar](500) NULL,
	[MailingAddressCountry] [nvarchar](500) NULL,
	[AddressUnsubscribe] [varchar](3) NULL,
	[RowId] [bigint] NULL,
	[PresortId] [bigint] NULL,
	[BundleNumber] [nvarchar](30) NULL,
	[ContainerNumber] [nvarchar](30) NULL,
	[EndorsementLine] [nvarchar](100) NULL,
	[IMBarcode] [nvarchar](100) NULL,
	[IMFields] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logging]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logging](
	[Logging_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Host] [varchar](150) NULL,
	[URL] [varchar](150) NULL,
	[IP] [varchar](20) NULL,
	[Timestamp] [datetime] NULL,
	[Sessions] [ntext] NULL,
	[Requests] [ntext] NULL,
	[Extra] [ntext] NULL,
	[browser] [varchar](300) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginAccount]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginAccount](
	[LoginAccount_Id] [bigint] NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](500) NOT NULL,
	[UserType_Id] [bigint] NOT NULL,
	[Encrypted] [varchar](3) NULL,
 CONSTRAINT [PKLoginAccount] PRIMARY KEY CLUSTERED 
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[LoginHistory_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[IPAddress] [varchar](30) NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[LoginHistory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoyaltyPointsEarned]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoyaltyPointsEarned](
	[LoyaltyPointsEarned_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LoyaltyPointsProfile_Id] [bigint] NOT NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[Order_Id] [bigint] NOT NULL,
	[OrderCost] [float] NOT NULL,
	[PointsEarned] [bigint] NOT NULL,
	[Voucher_Id] [bigint] NULL,
	[ExpiryDate] [datetime] NULL,
	[Timestamp] [datetime] NULL,
 CONSTRAINT [PK_LoyaltyPointsEarned] PRIMARY KEY CLUSTERED 
(
	[LoyaltyPointsEarned_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoyaltyPointsProfile]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoyaltyPointsProfile](
	[LoyaltyPointsProfile_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProfileName] [nvarchar](100) NOT NULL,
	[EarnPointValue] [float] NOT NULL,
	[ExpiryValue] [int] NULL,
	[ExpiryPeriod] [nvarchar](30) NULL,
	[RedeemNumberPoints] [float] NOT NULL,
	[RedeemMiniumPoints] [int] NULL,
	[RedeemVoucherExpiryPeriod] [nvarchar](30) NULL,
	[RedeemVoucherExpiryValue] [int] NULL,
 CONSTRAINT [PK_LoyaltyPointsProfile] PRIMARY KEY CLUSTERED 
(
	[LoyaltyPointsProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Margin]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Margin](
	[Margin_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Top] [float] NULL,
	[Left] [float] NULL,
 CONSTRAINT [PKMargin] PRIMARY KEY CLUSTERED 
(
	[Margin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobCustomerInformation]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobCustomerInformation](
	[NexJobCustomerInformation_Id] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [varchar](50) NULL,
	[Length] [int] NULL,
	[SortOrder] [int] NULL,
	[ColumnNumber] [int] NULL,
 CONSTRAINT [PK_NexJobCustomerInformation] PRIMARY KEY CLUSTERED 
(
	[NexJobCustomerInformation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobExtra]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobExtra](
	[NexJobExtra_Id] [bigint] NULL,
	[Name] [varchar](100) NULL,
	[GroupName] [varchar](100) NULL,
	[CostType] [char](1) NULL,
	[Cost] [float] NULL,
	[CostAppliesTo] [varchar](5) NULL,
	[Quantity] [float] NULL,
	[NexJobType_Id] [bigint] NULL,
	[BuyCost] [float] NULL,
	[Weight] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobFieldTip]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobFieldTip](
	[NexJobFieldTip_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NOT NULL,
	[Field] [varchar](50) NULL,
	[Caption] [varchar](50) NULL,
	[Content] [ntext] NULL,
 CONSTRAINT [PK_NexJobFieldTip] PRIMARY KEY CLUSTERED 
(
	[NexJobFieldTip_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobGroup]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobGroup](
	[NexJobGroup_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Sort] [int] NULL,
	[Step2] [varchar](3) NULL,
 CONSTRAINT [PK_NexJobGroup] PRIMARY KEY CLUSTERED 
(
	[NexJobGroup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobLoaderUpload]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobLoaderUpload](
	[NexJobLoaderUpload_Id] [bigint] NOT NULL,
	[UploadFile] [varchar](255) NULL,
	[TimeStamp] [datetime] NULL,
	[TimeStampUpdate] [datetime] NULL,
 CONSTRAINT [PK_NexJobLoaderUpload] PRIMARY KEY CLUSTERED 
(
	[NexJobLoaderUpload_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobOption]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobOption](
	[NexJobOption_Id] [bigint] NULL,
	[Caption] [varchar](150) NULL,
	[Name] [varchar](150) NULL,
	[TypeTimestamp] [varchar](50) NULL,
	[NexJobType_Id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobPage]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobPage](
	[NexJobPage_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[LinkCaption] [varchar](200) NOT NULL,
	[PageTitle] [varchar](200) NOT NULL,
	[HelpText] [ntext] NULL,
	[ConvertPDF] [varchar](3) NULL,
	[Step2Button] [varchar](25) NULL,
	[Pricing] [varchar](3) NULL,
	[CreateOrder] [varchar](3) NULL,
	[ShowBuyPrice] [varchar](3) NULL,
	[EnableQuotes] [varchar](3) NULL,
	[UploadID] [varchar](100) NULL,
	[Description] [ntext] NULL,
	[VariableQuantity] [varchar](3) NULL,
	[MultiplyPriceByPages] [varchar](3) NULL,
	[MultiplyBasePriceOnly] [varchar](3) NULL,
	[PriceOnTotalQuantity] [varchar](3) NULL,
	[SheetCalculationKeyWord] [varchar](50) NULL,
	[FileName] [varchar](255) NULL,
	[SeoDescription] [ntext] NULL,
	[SeoKeywords] [ntext] NULL,
	[PreflightProfileDefault_Id] [bigint] NULL,
	[PreflightProfileFallback_Id] [bigint] NULL,
	[FreightEstimator] [varchar](3) NULL,
	[FreightEstimatorLinkCaption] [varchar](100) NULL,
	[DispatchProfile_Id] [bigint] NULL,
	[DoNotTax] [varchar](3) NULL,
	[ExcludeHandling] [varchar](3) NULL,
	[Thumbnail] [varchar](100) NULL,
	[StationeryType_Id] [bigint] NULL,
	[CatalogDescription] [ntext] NULL,
	[ApproveArtwork] [varchar](3) NULL,
	[ApproveArtworkText] [ntext] NULL,
	[DefaultOrder] [bigint] NULL,
	[SkipApproval] [varchar](3) NULL,
	[FileUpload] [varchar](30) NULL,
	[ExcludeFromMarkUp] [varchar](3) NULL,
	[SplitShip] [varchar](3) NULL,
	[ExcludeLoyaltyPoints] [varchar](3) NULL,
	[ProductionTicket_Id] [bigint] NULL,
	[TaxRate] [float] NULL,
	[Supplier_Id] [bigint] NULL,
	[SilentPreflightProfile_Id] [bigint] NULL,
	[CachedHTML] [ntext] NULL,
 CONSTRAINT [PKNexJobPage] PRIMARY KEY CLUSTERED 
(
	[NexJobPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobPageControl]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobPageControl](
	[NexJobPageControl_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NOT NULL,
	[ControlType] [varchar](20) NOT NULL,
	[Caption] [text] NOT NULL,
	[Required] [varchar](50) NOT NULL,
	[Length] [decimal](18, 0) NULL,
	[LengthType] [varchar](15) NULL,
	[Options] [ntext] NULL,
	[ErrorMessage] [ntext] NULL,
	[Order] [int] NULL,
	[NexJobPageControlType_Id] [bigint] NOT NULL,
	[DefaultText] [varchar](100) NULL,
	[Column] [int] NULL,
 CONSTRAINT [PKNexJobPageControl] PRIMARY KEY CLUSTERED 
(
	[NexJobPageControl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobPageControlType]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobPageControlType](
	[NexJobPageControlType_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_NexJobPageControlType] PRIMARY KEY CLUSTERED 
(
	[NexJobPageControlType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobPageStationeryType]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobPageStationeryType](
	[NexJobPageStationeryType_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NOT NULL,
	[StationeryType_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_NexJobPageStationeryType] PRIMARY KEY CLUSTERED 
(
	[NexJobPageStationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobPrice]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobPrice](
	[NexJobPrice_Id] [bigint] NULL,
	[Quantity] [bigint] NULL,
	[Cost] [float] NULL,
	[Base] [varchar](50) NULL,
	[CostAppliesTo] [varchar](5) NULL,
	[NexJobType_Id] [bigint] NULL,
	[BuyCost] [float] NULL,
	[Weight] [float] NULL,
	[Handling] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobType]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobType](
	[NexJobType_Id] [bigint] NULL,
	[Name] [varchar](100) NULL,
	[CaptionBase] [varchar](100) NULL,
	[CaptionQuantity] [varchar](100) NULL,
	[NexJobPage_Id] [bigint] NULL,
	[Options] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobUpload]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobUpload](
	[NexJobUpload_Id] [bigint] NOT NULL,
	[JobTitle] [varchar](100) NULL,
	[UserEntry] [text] NULL,
	[OrderedBy_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NULL,
	[EmailJob] [varchar](100) NULL,
	[Converted] [varchar](3) NULL,
	[HiddenFields] [ntext] NULL,
 CONSTRAINT [PK_NexJobUpload] PRIMARY KEY CLUSTERED 
(
	[NexJobUpload_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobUploadField]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobUploadField](
	[NexJobUploadField_Id] [bigint] NOT NULL,
	[NexJobUpload_Id] [bigint] NOT NULL,
	[Caption] [text] NULL,
	[Value] [text] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_NexJobUploadField] PRIMARY KEY CLUSTERED 
(
	[NexJobUploadField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NexJobUploadFile]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NexJobUploadFile](
	[NexJobUploadFile_Id] [bigint] NULL,
	[File] [varchar](200) NULL,
	[NexJobUpload_Id] [bigint] NULL,
	[Type] [varchar](10) NULL,
	[NumberOfPages] [float] NULL,
	[NumberOfSheets] [float] NULL,
	[DoubleSided] [varchar](3) NULL,
	[OriginalFile] [varchar](200) NULL,
	[SilentPreFlightFile] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumberUp]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberUp](
	[NumberUp_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[NumberAccross] [bigint] NOT NULL,
	[NumberDown] [bigint] NOT NULL,
	[Method] [varchar](30) NULL,
 CONSTRAINT [PKNumberUp] PRIMARY KEY CLUSTERED 
(
	[NumberUp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OMZ_DETAIL_BACKUP]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMZ_DETAIL_BACKUP](
	[ID] [decimal](19, 0) NOT NULL,
	[LINE_NO] [int] NULL,
	[ITEM] [varchar](20) NULL,
	[ITEM_DESC] [varchar](80) NULL,
	[QTY_ORDERED] [int] NULL,
	[QTY_SHIPPED] [int] NULL,
	[U_SELL_PRICE] [decimal](18, 4) NULL,
	[ETD_SELL_PRICE] [decimal](18, 2) NULL,
	[U_COST] [decimal](18, 4) NULL,
	[UNIT_MEASURE] [varchar](10) NULL,
	[ETD_COST] [decimal](18, 2) NULL,
	[MERCH_CODE] [varchar](10) NULL,
	[DROP_SHIP_PO] [varchar](10) NULL,
	[CUSTOM_REQ_NO] [varchar](20) NULL,
	[CB] [varchar](1) NULL,
	[PRICING_METHOD] [varchar](10) NULL,
	[REQE_SHIP_DATE] [datetime2](7) NULL,
	[ACTUAL_SHIP_DATE] [datetime2](7) NULL,
	[CO_PRODUCT_CODE] [varchar](50) NULL,
	[CO_EST_CODE] [varchar](50) NULL,
	[RUN_CODE] [varchar](10) NULL,
	[VENDOR_KEY] [varchar](10) NULL,
	[P_OUT_DATE] [datetime2](7) NULL,
	[P_IN_DATE] [datetime2](7) NULL,
	[DELIVERY_DATE] [datetime2](7) NULL,
	[REPRINT] [varchar](1) NULL,
	[RP_REASON] [varchar](50) NULL,
	[PACKAGE_COUNT] [varchar](10) NULL,
	[INET_QTY] [int] NULL,
	[BINLOCATION] [varchar](20) NULL,
	[CLASSIFICATION] [varchar](20) NULL,
	[FSC] [varchar](80) NULL,
	[ESTIMATE] [varchar](80) NULL,
	[INET_GRAPHICS] [varchar](120) NULL,
	[BOM_Y] [varchar](1) NULL,
	[OI_SEQ_NUMBER] [int] NULL,
	[COPY2] [varchar](150) NULL,
	[COPY3] [varchar](150) NULL,
	[COPY4] [varchar](150) NULL,
	[COPY5] [varchar](150) NULL,
	[COPY6] [varchar](150) NULL,
	[COPY7] [varchar](150) NULL,
	[COPY8] [varchar](150) NULL,
	[COPY9] [varchar](150) NULL,
	[PROOF_REQUIRED] [varchar](1) NULL,
	[TIMES_P_REQ] [int] NULL,
	[VENDOR_NO] [varchar](20) NULL,
	[VENDOR_PART_NO] [varchar](50) NULL,
	[COMMENT] [varchar](80) NULL,
	[P_REQUIRED_DATE] [datetime2](7) NULL,
	[P_REQUESTED_DATE] [datetime2](7) NULL,
	[P_C_DATE] [datetime2](7) NULL,
	[ORDER_NO] [varchar](20) NULL,
	[ORI_ORDER_NO] [varchar](20) NULL,
	[FORM_WIDTH] [varchar](20) NULL,
	[FORM_LENGTH] [varchar](20) NULL,
	[NO_PARTS] [varchar](10) NULL,
	[SEQ_PARTS] [varchar](20) NULL,
	[NO_COLORS] [varchar](20) NULL,
	[BACK_PRINTING] [varchar](1) NULL,
	[NUMBERED_FORMS] [varchar](1) NULL,
	[ORDER_NUMBER] [varchar](20) NULL,
 CONSTRAINT [PK__OMZ_DETA__3214EC2776028BDE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OMZ_HEADER_BACKUP]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OMZ_HEADER_BACKUP](
	[ID] [decimal](19, 0) NOT NULL,
	[ORDER_NUMBER] [varchar](20) NULL,
	[OT] [varchar](2) NULL,
	[PREPAID] [varchar](1) NULL,
	[BTC_NO] [varchar](10) NULL,
	[STC_NO] [varchar](10) NULL,
	[SV_CODE] [varchar](50) NULL,
	[FREIGHT_AMT] [decimal](18, 2) NULL,
	[CARRIER] [varchar](50) NULL,
	[BO_LADING] [varchar](50) NULL,
	[SHIP_DATE] [datetime2](7) NULL,
	[EF_AMT] [decimal](18, 2) NULL,
	[SALESP_CODE] [varchar](50) NULL,
	[ORDERED_BY] [varchar](50) NULL,
	[PO_NO] [varchar](50) NULL,
	[ORDER_DATE] [datetime2](7) NULL,
	[STATUS_CODE] [varchar](50) NULL,
	[STATUS_DATE] [datetime2](7) NULL,
	[OC_DATE] [datetime2](7) NULL,
	[TAX_CODE] [varchar](50) NULL,
	[TAX_AMT] [decimal](18, 2) NULL,
	[TAXABLE_AMT] [decimal](18, 2) NULL,
	[TOTAL_TAXES] [decimal](18, 2) NULL,
	[TOTAL_MERCH] [decimal](18, 2) NULL,
	[TOTAL_COST] [decimal](18, 2) NULL,
	[TOTAL_ORDER] [decimal](18, 2) NULL,
	[TIMES_PRINTED] [int] NULL,
	[EB_CODE] [varchar](50) NULL,
	[FT_CODE] [varchar](50) NULL,
	[ST_NAME] [varchar](80) NULL,
	[ST_ADDR1] [varchar](80) NULL,
	[ST_ADDR2] [varchar](80) NULL,
	[ST_ADDR3] [varchar](80) NULL,
	[ST_CITY] [varchar](50) NULL,
	[ST_STATE] [varchar](50) NULL,
	[ST_ZIP] [varchar](50) NULL,
	[ST_CONTACT] [varchar](80) NULL,
	[ST_COUNTRY] [varchar](50) NULL,
	[ST_ATTENTION] [varchar](80) NULL,
	[O_COMMENT1] [varchar](80) NULL,
	[O_COMMENT2] [varchar](80) NULL,
	[O_COMMENT3] [varchar](80) NULL,
	[BT_NAME] [varchar](80) NULL,
	[BT_ADDR1] [varchar](80) NULL,
	[BT_ADDR2] [varchar](80) NULL,
	[BT_ADDR3] [varchar](80) NULL,
	[BT_CITY] [varchar](50) NULL,
	[BT_STATE] [varchar](50) NULL,
	[BT_ZIP] [varchar](50) NULL,
	[BT_PHONE] [varchar](50) NULL,
	[BT_CONTACT] [varchar](50) NULL,
	[SHIP_BY_CODE] [varchar](50) NULL,
	[JOB_NO] [varchar](50) NULL,
	[INVOICE_NO] [varchar](20) NULL,
	[COMMI_AMT] [decimal](18, 2) NULL,
	[RELEASE_HOLD] [varchar](1) NULL,
	[CH_REASON] [varchar](80) NULL,
	[EXPORT_FLAG] [varchar](1) NULL,
	[RUSH_FLAG] [varchar](1) NULL,
	[PROMO_CODE] [varchar](50) NULL,
	[BTB_CODE] [varchar](50) NULL,
	[STB_CODE] [varchar](50) NULL,
	[BTP_CODE] [varchar](50) NULL,
	[STP_CODE] [varchar](50) NULL,
	[BTT_CODE] [varchar](50) NULL,
	[STT_CODE] [varchar](50) NULL,
	[SESSION_NO] [varchar](20) NULL,
	[MOTS_NO] [varchar](20) NULL,
	[BFOD_OTS] [varchar](1) NULL,
	[OBT_NO] [varchar](10) NULL,
	[BILLING_EDIT] [varchar](1) NULL,
	[BTMGMTG_CODE] [varchar](50) NULL,
	[SHIPPINGM_NO] [varchar](50) NULL,
	[RERUN_CODE] [varchar](20) NULL,
	[COLD_LETTER] [varchar](1) NULL,
	[CH_RELEASE] [varchar](50) NULL,
	[CBATCH_NO] [varchar](10) NULL,
	[CSEQUENCE_NO] [varchar](50) NULL,
	[ICS_COMMENTS] [varchar](80) NULL,
	[SPRO_NO] [varchar](50) NULL,
	[OPER_DEPT] [varchar](50) NULL,
	[INETORDER_NO] [varchar](120) NULL,
	[SHIPEMAIL] [varchar](80) NULL,
	[ORDER_TIME] [varchar](8) NULL,
	[PREBILL] [varchar](1) NULL,
	[EMAIL_SENT] [varchar](1) NULL,
	[BUYERSG_CODE] [varchar](50) NULL,
	[FREE_FREI_Y] [varchar](1) NULL,
	[COST_CENTER] [varchar](20) NULL,
	[BUYERS_AGENT_CODE] [varchar](50) NULL,
	[ROUTING_CODE] [varchar](50) NULL,
	[PROCESSED] [varchar](1) NULL,
	[CREATED_D] [datetime2](7) NULL,
	[STP_FOLDER] [varchar](1) NULL,
	[STP_DATE] [datetime2](7) NULL,
	[ORD_SOURCE] [varchar](50) NULL,
	[ORD_TYPE] [varchar](1) NULL,
	[BC_ORD] [varchar](1) NULL,
	[BC_DV] [varchar](50) NULL,
	[BC_UN] [varchar](10) NULL,
	[BC_DP] [varchar](10) NULL,
	[BC_REQ_NAME] [varchar](50) NULL,
	[BC_REQ_PH] [varchar](50) NULL,
	[CS_FRG_AMT] [decimal](18, 2) NULL,
	[CS_FRG_MARKUP] [decimal](18, 2) NULL,
	[VN_INV_NO] [varchar](50) NULL,
	[DEFERRED_SHIP] [datetime2](7) NULL,
	[CR_FAULT] [varchar](50) NULL,
	[FGU] [varchar](10) NULL,
	[BASE_OTS] [int] NULL,
	[BASE_OTS_SEQ] [int] NULL,
 CONSTRAINT [PK__OMZ_HEAD__3214EC27C7AADF79] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ops_5StarData]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ops_5StarData](
	[Record_Number] [bigint] IDENTITY(1,1) NOT NULL,
	[Batch_Number] [varchar](255) NULL,
	[TempRecord] [bigint] NULL,
	[Job_Number] [varchar](255) NULL,
	[Invoice_Key] [varchar](255) NULL,
	[Type] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[School] [varchar](255) NULL,
	[Client] [varchar](255) NULL,
	[Contact] [varchar](255) NULL,
	[Address_1] [varchar](255) NULL,
	[Address_2] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip] [varchar](255) NULL,
	[Qty_Shipped] [bigint] NULL,
	[Qty_Produced] [bigint] NULL,
	[Carrier] [varchar](255) NULL,
	[Date_Shipped] [datetime] NULL,
	[Tracking] [varchar](255) NULL,
	[Shipping_Weight] [varchar](255) NULL,
	[Total_Shipping] [float] NULL,
	[Product_Cost] [float] NULL,
	[Fulfillment_Price] [float] NULL,
 CONSTRAINT [PK__ops_5StarData__1A3FCC1E] PRIMARY KEY CLUSTERED 
(
	[Record_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ops_costCenterExtras]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ops_costCenterExtras](
	[costCenter_Id] [bigint] NOT NULL,
	[storeType] [varchar](100) NULL,
 CONSTRAINT [PK__ops_costCenterEx__77809FC6] PRIMARY KEY CLUSTERED 
(
	[costCenter_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ops_jmcorp_stores]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ops_jmcorp_stores](
	[costcenterId] [varchar](50) NOT NULL,
	[storeName] [varchar](100) NULL,
	[usage] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ops_LoginAccountCostCentre]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ops_LoginAccountCostCentre](
	[LoginAccount_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
 CONSTRAINT [PK__ops_LoginAccount__0E990F48] PRIMARY KEY CLUSTERED 
(
	[LoginAccount_Id] ASC,
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ops_OrderExtras]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ops_OrderExtras](
	[Order_Id] [bigint] NOT NULL,
	[PickInvoice] [varchar](255) NULL,
	[OrderNumber] [varchar](255) NULL,
	[CartTransaction_Id] [varchar](255) NULL,
	[InvDate] [datetime] NULL,
	[Invoiced] [varchar](255) NULL,
	[Status_Id] [bigint] NULL,
	[Order_Date] [datetime] NULL,
	[Payment_Type] [varchar](255) NULL,
	[CorpStore] [varchar](50) NULL,
	[OrderedBy_Id] [bigint] NULL,
	[CostCentre_Id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ops_pages]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ops_pages](
	[pageId] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [varchar](256) NOT NULL,
	[url] [varchar](256) NOT NULL,
	[content] [text] NOT NULL,
	[helpText] [text] NULL,
	[theme] [varchar](256) NOT NULL,
	[customerId] [bigint] NOT NULL,
	[layout] [varchar](100) NULL,
	[screenDefinitionId] [bigint] NULL,
 CONSTRAINT [PK__ops_pages__30641767] PRIMARY KEY CLUSTERED 
(
	[pageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[Template_Id] [bigint] NULL,
	[Status_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[OrderNumber] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Stationery_Id] [bigint] NULL,
	[ClientProject_Id] [bigint] NULL,
	[Quantity] [bigint] NOT NULL,
	[QuantityPrinted] [bigint] NULL,
	[AddressAddress1] [nvarchar](200) NULL,
	[AddressAddress2] [nvarchar](80) NULL,
	[AddressAddress3] [nvarchar](80) NULL,
	[AddressAddress4] [nvarchar](80) NULL,
	[AddressSuburb] [nvarchar](50) NULL,
	[AddressState] [nvarchar](50) NULL,
	[AddressPostcode] [nvarchar](15) NULL,
	[AddressCountry] [nvarchar](50) NULL,
	[ApprovalApproved] [varchar](3) NULL,
	[ApprovalApproverEmail] [varchar](100) NULL,
	[ApprovalDateApproved] [datetime] NULL,
	[ApprovalApproverComments] [ntext] NULL,
	[ApprovalApproverCode] [varchar](20) NULL,
	[OrderContactDetailsContac] [varchar](50) NULL,
	[OrderContactDetailsEmail] [varchar](100) NULL,
	[ContactNumbersPhone] [varchar](50) NULL,
	[ContactNumbersFax] [varchar](50) NULL,
	[TypeSettingInfo] [ntext] NULL,
	[CostCentreNumber] [varchar](50) NULL,
	[PONumber] [varchar](50) NULL,
	[Urgent] [varchar](3) NULL,
	[IndividualEmail] [varchar](100) NULL,
	[IndividualComments] [ntext] NULL,
	[ExtraInfo1] [varchar](50) NULL,
	[ExtraInfo2] [varchar](50) NULL,
	[DownloadStatus] [float] NULL,
	[DownloadDate] [datetime] NULL,
	[DownloadComments] [ntext] NULL,
	[TimesaverNo] [float] NULL,
	[UrgentCode] [varchar](10) NULL,
	[CartTransaction_Id] [bigint] NULL,
	[OrderedBy_Id] [bigint] NULL,
	[DebtorCode] [varchar](50) NULL,
	[DispatchDate] [datetime] NULL,
	[ApprovedBy_Id] [bigint] NULL,
	[TotalQuantity] [bigint] NULL,
	[NexJobUpload_Id] [bigint] NULL,
	[VariablePrint_Id] [bigint] NULL,
	[SubmitDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[PrepressDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShippedWith] [varchar](20) NULL,
	[TrackingNumber] [varchar](50) NULL,
	[CurrentApproverLevel] [float] NULL,
	[PreApprovalEmail] [varchar](200) NULL,
	[PreApprovalKey] [varchar](50) NULL,
	[Cost] [float] NULL,
	[Tax] [float] NULL,
	[Freight] [float] NULL,
	[AddressAttention] [nvarchar](150) NULL,
	[JobTicketNumber] [varchar](50) NULL,
	[FreightType] [varchar](50) NULL,
	[VWeb_Id] [bigint] NULL,
	[UniqueSession] [varchar](30) NULL,
	[GuestKey] [varchar](255) NULL,
	[Postage] [float] NULL,
	[Weight] [float] NULL,
	[Handling] [float] NULL,
	[PromoInfo] [varchar](150) NULL,
	[VWebMultiTouchCampaign_Id] [bigint] NULL,
	[OrderName] [nvarchar](200) NULL,
	[Supplier_Id] [bigint] NULL,
	[FileUpload] [varchar](100) NULL,
	[FileUploadName] [varchar](100) NULL,
	[TouchNumber] [int] NULL,
	[VWebMultiTouchAddition_Id] [bigint] NULL,
	[ProductName] [nvarchar](1500) NULL,
	[DeliveryOptions] [varchar](100) NULL,
	[AddressBillingAddress1] [nvarchar](80) NULL,
	[AddressBillingAddress2] [nvarchar](80) NULL,
	[AddressBillingAddress3] [nvarchar](80) NULL,
	[AddressBillingAddress4] [nvarchar](80) NULL,
	[AddressBillingSuburb] [nvarchar](50) NULL,
	[AddressBillingState] [nvarchar](50) NULL,
	[AddressBillingPostcode] [nvarchar](15) NULL,
	[AddressBillingCountry] [nvarchar](50) NULL,
	[SpecialOrderField] [nvarchar](100) NULL,
	[PurchaseListPrice] [float] NULL,
	[AllocatedToBudget] [float] NULL,
	[StockHistory_Id] [bigint] NULL,
	[UnitQtysQtyPerUnit] [bigint] NULL,
	[BuyPrice] [float] NULL,
	[JobTicket_Id] [bigint] NULL,
	[AddressExternalId] [varchar](50) NULL,
	[AddressBillingExternalId] [varchar](50) NULL,
	[DispatchProfile_Id] [bigint] NULL,
	[ExcludeHandling] [varchar](3) NULL,
	[AddressCompany] [nvarchar](150) NULL,
	[AddressPhoneNumber] [varchar](150) NULL,
	[Downloadable] [varchar](20) NULL,
	[DownloadOnly] [varchar](3) NULL,
	[ApprovalType] [varchar](20) NULL,
	[PromoDiscountCost] [float] NULL,
	[WaitingScheduler] [varchar](3) NULL,
	[DeliveryDetails] [ntext] NULL,
	[AccessCode] [varchar](36) NULL,
	[ExternalPO] [varchar](255) NULL,
	[ProductionTicket_Id] [bigint] NULL,
	[MasterNo] [varchar](50) NULL,
	[AutoImposition_Id] [bigint] NULL,
	[ShipmentId] [varchar](200) NULL,
 CONSTRAINT [PKOrder] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderAddress]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderAddress](
	[OrderAddress_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Attention] [varchar](150) NULL,
	[Company] [varchar](150) NULL,
	[PhoneNumber] [varchar](150) NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](80) NULL,
	[Address3] [varchar](80) NULL,
	[Address4] [varchar](80) NULL,
	[Suburb] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Postcode] [varchar](15) NULL,
	[Country] [varchar](50) NULL,
	[FreightType] [varchar](150) NULL,
	[Freight] [float] NULL,
	[Tax] [float] NULL,
	[FreightType_Id] [bigint] NULL,
 CONSTRAINT [PK_OrderAddress] PRIMARY KEY CLUSTERED 
(
	[OrderAddress_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderAddressItem]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderAddressItem](
	[OrderAddressItem_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderAddress_Id] [bigint] NULL,
	[Order_Id] [bigint] NULL,
	[Quantity] [bigint] NULL,
	[ShippedDate] [datetime] NULL,
	[TrackingNumber] [varchar](50) NULL,
	[ShippedWith] [varchar](20) NULL,
	[DefaultDelivery] [varchar](3) NULL,
 CONSTRAINT [PK_OrderAddressItem] PRIMARY KEY CLUSTERED 
(
	[OrderAddressItem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderApprove]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderApprove](
	[OrderApprove_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_id] [bigint] NOT NULL,
	[Employee_Id] [bigint] NOT NULL,
	[Approved] [varchar](3) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Comments] [ntext] NULL,
	[Reset] [varchar](3) NULL,
 CONSTRAINT [PK_OrderApprove] PRIMARY KEY CLUSTERED 
(
	[OrderApprove_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDescription]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDescription](
	[OrderDescription_Id] [bigint] NOT NULL,
	[Order_Id] [bigint] NULL,
	[Imposition_Id] [bigint] NOT NULL,
	[Description] [ntext] NOT NULL,
 CONSTRAINT [PKOrderDescription] PRIMARY KEY CLUSTERED 
(
	[OrderDescription_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDownload]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDownload](
	[OrderDownload_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_Id] [bigint] NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[IPAddress] [varchar](30) NULL,
	[TimeStamp] [datetime] NULL,
	[Template_Id] [bigint] NULL,
 CONSTRAINT [PK_OrderDownload] PRIMARY KEY CLUSTERED 
(
	[OrderDownload_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDrop]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDrop](
	[OrderDrop_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_Id] [bigint] NOT NULL,
	[DropDate] [datetime] NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[DropStatus] [varchar](50) NULL,
 CONSTRAINT [PK_OrderDrop] PRIMARY KEY CLUSTERED 
(
	[OrderDrop_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderList](
	[OrderList_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_Id] [bigint] NOT NULL,
	[List_Id] [bigint] NOT NULL,
	[Rules] [ntext] NULL,
	[PHMapping] [ntext] NULL,
	[ExternalOrderId] [varchar](50) NULL,
	[IsSeedList] [varchar](3) NULL,
 CONSTRAINT [PKOrderList] PRIMARY KEY CLUSTERED 
(
	[OrderList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutputFormat]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutputFormat](
	[OutputFormat_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[FileTemplate] [varchar](100) NULL,
 CONSTRAINT [PKOutputFormat] PRIMARY KEY CLUSTERED 
(
	[OutputFormat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PackageType]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackageType](
	[PackageType_ID] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[MaxWeight] [float] NULL,
	[HandlingCharge] [float] NULL,
	[Length] [bigint] NULL,
	[Width] [bigint] NULL,
	[Height] [bigint] NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[PackageType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[Page_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[PageNumber] [float] NULL,
	[Plate] [varchar](50) NOT NULL,
	[PDFs_Id] [bigint] NULL,
 CONSTRAINT [PKPage] PRIMARY KEY CLUSTERED 
(
	[Page_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaperSize]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaperSize](
	[PaperSize_Id] [bigint] NOT NULL,
	[PaperName] [varchar](50) NOT NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[UnitOfMeasurement_Id] [bigint] NOT NULL,
 CONSTRAINT [PKPaperSize] PRIMARY KEY CLUSTERED 
(
	[PaperSize_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parameter]    Script Date: 11/27/2017 3:04:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parameter](
	[Parameter_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Value] [varchar](500) NULL,
	[GroupName] [varchar](50) NOT NULL,
	[Visible] [varchar](3) NULL,
	[HelpText] [varchar](200) NULL,
	[Options] [varchar](200) NULL,
 CONSTRAINT [PK_Parameter] PRIMARY KEY CLUSTERED 
(
	[Parameter_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartialShipment]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartialShipment](
	[PartialShipment_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ShippedDate] [datetime] NULL,
	[TrackingNumber] [varchar](50) NULL,
	[ShippedWith] [varchar](20) NULL,
	[ShippedQty] [int] NULL,
	[Order_Id] [bigint] NULL,
	[OrderAddressItem_Id] [bigint] NULL,
 CONSTRAINT [PK_PartialShipment] PRIMARY KEY CLUSTERED 
(
	[PartialShipment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentGateway]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentGateway](
	[PaymentGateway_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Provider] [varchar](30) NOT NULL,
	[MerchantId] [varchar](100) NULL,
	[Partner] [varchar](100) NULL,
	[Other1] [ntext] NULL,
	[Other2] [ntext] NULL,
	[Other3] [ntext] NULL,
	[CurrencyCode] [varchar](30) NULL,
	[Default] [varchar](3) NULL,
	[InvoiceNumberFormat] [varchar](100) NULL,
	[SendEmailToCustomer] [varchar](5) NULL,
	[MerchantEmail] [varchar](100) NULL,
	[TestMode] [varchar](5) NULL,
	[SplitPaymentInfo] [varchar](3) NULL,
 CONSTRAINT [PK_PaymentGateway] PRIMARY KEY CLUSTERED 
(
	[PaymentGateway_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDFReferance]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFReferance](
	[PDFReferance_Id] [bigint] NOT NULL,
	[Field_Id] [bigint] NOT NULL,
	[PDFRef] [varchar](50) NOT NULL,
 CONSTRAINT [PKPDFReferance] PRIMARY KEY CLUSTERED 
(
	[PDFReferance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDFs]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFs](
	[PDFs_Id] [bigint] NOT NULL,
	[File] [varchar](100) NOT NULL,
	[LowResFile] [varchar](100) NULL,
	[Thumbnail] [varchar](100) NULL,
	[Customer_Id] [bigint] NULL,
	[Caption] [nvarchar](200) NULL,
	[JPGFile] [varchar](100) NULL,
	[Cost] [float] NULL,
	[BuyCost] [float] NULL,
	[AddedBy_Id] [bigint] NULL,
	[ExternalId] [varchar](100) NULL,
	[AllCostCentre] [varchar](3) NULL,
 CONSTRAINT [PKAssociatedFiles] PRIMARY KEY CLUSTERED 
(
	[PDFs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDFsFieldLayout]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFsFieldLayout](
	[PDFs_Id] [bigint] NOT NULL,
	[FieldLayout_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDFUsed]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFUsed](
	[PDFUsed_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Stationery_Id] [bigint] NOT NULL,
	[PDFs_Id] [bigint] NULL,
	[LibraryImage_Id] [bigint] NULL,
	[RetailFieldLayout_Id] [bigint] NULL,
	[DefaultOrder] [bigint] NULL,
	[CropTop] [float] NULL,
	[CropBottom] [float] NULL,
	[CropLeft] [float] NULL,
	[CropRight] [float] NULL,
	[Height] [float] NULL,
	[Width] [float] NULL,
	[ScaleWidth] [float] NULL,
	[ScaleHeight] [float] NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[Rotation] [float] NULL,
	[Template_Id] [bigint] NULL,
	[Layer] [float] NULL,
	[Thumbnail] [varchar](100) NULL,
	[IsVariable] [varchar](3) NULL,
	[Caption] [nvarchar](100) NULL,
	[PH] [varchar](50) NULL,
	[GroupCanvasX] [float] NULL,
	[GroupCanvasY] [float] NULL,
 CONSTRAINT [PKPDFUsed] PRIMARY KEY CLUSTERED 
(
	[PDFUsed_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Photo_Id] [bigint] NOT NULL,
	[Employee_Id] [bigint] NOT NULL,
	[Caption] [varchar](200) NOT NULL,
	[File] [varchar](100) NOT NULL,
	[Approved] [varchar](3) NOT NULL,
 CONSTRAINT [PKPhoto] PRIMARY KEY CLUSTERED 
(
	[Photo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PMPageControl]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PMPageControl](
	[PMPageControl_Id] [bigint] NOT NULL,
	[PMTable_Id] [bigint] NOT NULL,
	[HTMLPlaceHoler] [varchar](50) NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ControlType] [varchar](50) NULL,
	[ControlWidth] [float] NULL,
	[Table] [varchar](50) NOT NULL,
	[ReQuired] [bigint] NOT NULL,
	[Caption] [varchar](200) NOT NULL,
	[Datatype] [varchar](50) NOT NULL,
	[FieldSize] [varchar](50) NOT NULL,
	[Link] [bigint] NOT NULL,
	[ControlName] [varchar](50) NOT NULL,
	[OnForm] [bigint] NOT NULL,
	[Value] [varchar](50) NULL,
	[SearchSQL] [ntext] NULL,
	[DeFault] [varchar](100) NULL,
	[Description] [ntext] NULL,
	[Tag] [varchar](50) NULL,
	[Searchable] [bigint] NOT NULL,
	[Options] [ntext] NULL,
	[PTable] [varchar](50) NOT NULL,
	[DefaultOrder] [bigint] NOT NULL,
 CONSTRAINT [PKPMPageControl] PRIMARY KEY CLUSTERED 
(
	[PMPageControl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PMTable]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PMTable](
	[PMTable_Id] [bigint] NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[CaptionSingular] [varchar](50) NOT NULL,
	[CaptionPlural] [varchar](50) NOT NULL,
	[SQL] [ntext] NOT NULL,
	[ComboSQL] [ntext] NOT NULL,
	[SearchType] [bigint] NOT NULL,
	[HelpText] [ntext] NULL,
 CONSTRAINT [PKPMTable] PRIMARY KEY CLUSTERED 
(
	[PMTable_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postage]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postage](
	[Postage_Id] [bigint] NOT NULL,
	[QuantityBreak] [bigint] NULL,
	[StandardCost] [float] NULL,
	[UrgentCost] [float] NULL,
	[ProjectTemplate_Id] [bigint] NULL,
 CONSTRAINT [PK_Postage] PRIMARY KEY CLUSTERED 
(
	[Postage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreFlightMessage]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreFlightMessage](
	[PreFlightMessage_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NULL,
	[ExternalCode] [varchar](50) NULL,
	[Message] [varchar](500) NULL,
	[Customer_Id] [bigint] NULL,
 CONSTRAINT [PK_PreFlightMessage] PRIMARY KEY CLUSTERED 
(
	[PreFlightMessage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreFlightProfile]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreFlightProfile](
	[PreFlightProfile_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NULL,
	[File] [varchar](200) NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_PreFlightProfile] PRIMARY KEY CLUSTERED 
(
	[PreFlightProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreFlightProfileNexJob]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreFlightProfileNexJob](
	[PreFlightProfileNexJob_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NOT NULL,
	[PreFlightProfile_Id] [bigint] NOT NULL,
	[Options] [varchar](500) NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_PreFlightProfileNexJob] PRIMARY KEY CLUSTERED 
(
	[PreFlightProfileNexJob_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PresortFormat]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresortFormat](
	[PresortFormat_Id] [bigint] NOT NULL,
	[Name] [varchar](255) NULL,
	[Type] [varchar](50) NULL,
	[ExternalId] [varchar](50) NULL,
 CONSTRAINT [PK_PresortFormat] PRIMARY KEY CLUSTERED 
(
	[PresortFormat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrintBroker]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintBroker](
	[PrintBroker_Id] [bigint] NOT NULL,
	[HTMLFile] [varchar](100) NULL,
	[HomeDirectory] [varchar](50) NOT NULL,
	[PrintBrokerName] [varchar](100) NOT NULL,
	[ContactNumbersPhone] [varchar](50) NULL,
	[ContactNumbersFax] [varchar](50) NULL,
	[AddressAddress1] [varchar](80) NULL,
	[AddressAddress2] [varchar](80) NULL,
	[AddressAddress3] [varchar](80) NULL,
	[AddressAddress4] [varchar](80) NULL,
	[AddressSuburb] [varchar](50) NULL,
	[AddressState] [varchar](50) NULL,
	[AddressPostcode] [varchar](15) NULL,
	[AddressCountry] [varchar](50) NULL,
	[FooterFile] [varchar](100) NULL,
	[SidebarFile] [varchar](100) NULL,
	[Default] [varchar](3) NULL,
	[HideTabs] [varchar](3) NULL,
	[RSLandingPage] [varchar](100) NULL,
	[CPProductCategories] [varchar](100) NULL,
	[CPCart] [varchar](100) NULL,
	[CPStep1New] [varchar](100) NULL,
	[CPEnterDetails] [varchar](100) NULL,
	[CPProofStationery] [varchar](100) NULL,
	[CPProofRHS] [varchar](100) NULL,
 CONSTRAINT [PKBranding] PRIMARY KEY CLUSTERED 
(
	[PrintBroker_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionTicket]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTicket](
	[ProductionTicket_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Default] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_ProductionTicket] PRIMARY KEY CLUSTERED 
(
	[ProductionTicket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionTicketMapping]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTicketMapping](
	[ProductionTicketMapping_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductionTicket_Id] [bigint] NOT NULL,
	[AdditionalProperty] [nvarchar](3) NOT NULL,
	[Caption] [nvarchar](150) NULL,
	[Value] [nvarchar](500) NULL,
	[ProductionTicketSetting_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductionTicketMapping] PRIMARY KEY CLUSTERED 
(
	[ProductionTicketMapping_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionTicketSetting]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTicketSetting](
	[ProductionTicketSetting_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ExternalId] [nvarchar](150) NULL,
	[ProductionTicketSettingType_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductionTicketSetting] PRIMARY KEY CLUSTERED 
(
	[ProductionTicketSetting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionTicketSettingType]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTicketSettingType](
	[ProductionTicketSettingType_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ExternalId] [nvarchar](150) NULL,
 CONSTRAINT [PK_ProductionTicketSettingType] PRIMARY KEY CLUSTERED 
(
	[ProductionTicketSettingType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectPage]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectPage](
	[ProjectPage_Id] [bigint] NOT NULL,
	[ProjectTemplate_Id] [bigint] NOT NULL,
	[PageType] [varchar](50) NOT NULL,
	[PageNumbers] [varchar](50) NULL,
	[ScreenTip] [ntext] NULL,
	[URLDownload] [varchar](100) NULL,
	[ShowNextPageOnProof] [varchar](3) NULL,
	[ProofPageCaption] [varchar](100) NULL,
	[UserSelectionType] [varchar](200) NULL,
	[SeparateStep] [varchar](3) NULL,
	[Optional] [varchar](20) NULL,
	[StepName] [varchar](100) NULL,
	[GroupPages] [varchar](3) NULL,
	[GroupName] [varchar](50) NULL,
	[MaxPerProduct] [int] NULL,
	[HideThumb] [varchar](3) NULL,
	[DescriptionLinkText] [varchar](100) NULL,
	[HideThumbOnProof] [varchar](3) NULL,
	[DisplayDataEntryOnProof] [varchar](3) NULL,
	[SelectThumbnailWidth] [int] NULL,
	[SelectThumbnailHeight] [int] NULL,
	[OptionalCaption] [varchar](30) NULL,
	[EditableQuantity] [varchar](3) NULL,
 CONSTRAINT [PKProjectPage] PRIMARY KEY CLUSTERED 
(
	[ProjectPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectPageTemplate]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectPageTemplate](
	[ProjectPageTemplate_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[ProjectPage_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NULL,
 CONSTRAINT [PKProjectPageTemplate] PRIMARY KEY CLUSTERED 
(
	[ProjectPageTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTemplate]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTemplate](
	[ProjectTemplate_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
	[ProjectType] [varchar](100) NOT NULL,
	[ScreenTip] [ntext] NULL,
	[PageCountMinimum] [bigint] NOT NULL,
	[PageCountMinType] [varchar](10) NULL,
	[PageCountMaximum] [bigint] NOT NULL,
	[PageCountMaxType] [varchar](10) NULL,
	[Thumbnail] [varchar](100) NULL,
	[UnitQtysMaxUnits] [bigint] NOT NULL,
	[UnitQtysQtyPerUnit] [bigint] NOT NULL,
	[StationeryType_Id] [bigint] NULL,
	[Online] [varchar](3) NULL,
	[MasterNo] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[VariableQuantity] [varchar](3) NULL,
	[DataEntryType] [varchar](200) NULL,
	[HasVPrintList] [varchar](3) NULL,
	[PostageCaption] [varchar](50) NULL,
	[PostageUrgentCaption] [varchar](50) NULL,
	[DisplayCostOnProof] [varchar](3) NULL,
	[AlternateNamePageNumber] [int] NULL,
	[ApproveArtwork] [varchar](3) NULL,
	[ApproveArtworkText] [ntext] NULL,
	[EmailHiResPDF] [varchar](3) NULL,
	[HideMappings] [varchar](3) NULL,
	[VPrintHideUploadMappings] [varchar](3) NULL,
	[EnableListPurchase] [varchar](3) NULL,
	[HideExistingList] [varchar](3) NULL,
	[MainMenuTab] [varchar](3) NULL,
	[MainMenuCaption] [varchar](100) NULL,
	[MainMenuHelpText] [ntext] NULL,
	[MainMenuUserSelectionType] [varchar](200) NULL,
	[ProofMenuCaption] [varchar](100) NULL,
	[ProofMenuHelpText] [ntext] NULL,
	[AllowFileUpload] [varchar](3) NULL,
	[AllowFileUploadCaption] [varchar](50) NULL,
	[AllowFileUploadHelpText] [ntext] NULL,
	[QtyFromUpload] [varchar](3) NULL,
	[PurchaseListGroup_Id] [bigint] NULL,
	[NexJobPage_Id] [bigint] NULL,
	[ProofType] [varchar](50) NULL,
	[MainMenuSortOrder] [int] NULL,
	[PostageMatrixType] [varchar](50) NULL,
	[QuantityExceptions] [ntext] NULL,
	[QuantityInclusions] [ntext] NULL,
	[ThumbnailAlt] [varchar](100) NULL,
	[SeoDescription] [ntext] NULL,
	[SeoKeywords] [ntext] NULL,
	[DispatchProfile_Id] [bigint] NULL,
	[ExcludeHandling] [varchar](3) NULL,
	[DefaultOrder] [bigint] NULL,
	[SkipApproval] [varchar](3) NULL,
	[ExcludeFromMarkUp] [varchar](3) NULL,
	[SplitShip] [varchar](3) NULL,
	[OnlineFrom] [datetime] NULL,
	[OnlineTo] [datetime] NULL,
	[Supplier_Id] [bigint] NULL,
	[UseStock] [varchar](3) NULL,
	[ExcludeLoyaltyPoints] [varchar](3) NULL,
	[ShowFlipperOnProof] [varchar](3) NULL,
	[HideIndividualPageProof] [varchar](3) NULL,
	[CustomizedFlipperSize] [varchar](3) NULL,
	[FlipperWidth] [int] NULL,
	[FlipperHeight] [int] NULL,
	[TaxRate] [float] NULL,
	[DoNotTax] [varchar](3) NULL,
 CONSTRAINT [PKProjectTemplate] PRIMARY KEY CLUSTERED 
(
	[ProjectTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTemplateCostCentre]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTemplateCostCentre](
	[ProjectTemplateCostCentre_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[ProjectTemplate_Id] [bigint] NOT NULL,
 CONSTRAINT [PKProjectTemplateCostCentre] PRIMARY KEY CLUSTERED 
(
	[ProjectTemplateCostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTemplateExternalList]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTemplateExternalList](
	[ProjectTemplateExternalList_Id] [bigint] NOT NULL,
	[ProjectTemplate_Id] [bigint] NOT NULL,
	[ExternalList_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_ProjectTemplateExternalList] PRIMARY KEY CLUSTERED 
(
	[ProjectTemplateExternalList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Promotion_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[PromotionType] [varchar](20) NULL,
	[Amount] [float] NULL,
	[GroupPricing] [varchar](3) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[Promotion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionCostCentre]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionCostCentre](
	[Promotion_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionNexJobPage]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionNexJobPage](
	[Promotion_Id] [bigint] NOT NULL,
	[NexJobPage_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionProjectTemplate]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionProjectTemplate](
	[Promotion_Id] [bigint] NOT NULL,
	[ProjectTemplate_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionTemplate]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionTemplate](
	[Promotion_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseListField]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseListField](
	[PurchaseListField_Id] [bigint] NOT NULL,
	[PurchaseListProduct_Id] [bigint] NULL,
	[InternalFieldName] [varchar](50) NULL,
	[Name] [varchar](255) NULL,
	[GroupName] [varchar](255) NULL,
	[HelpText] [ntext] NULL,
	[DataType] [varchar](30) NULL,
	[Options] [ntext] NULL,
	[FieldLength] [int] NULL,
 CONSTRAINT [PKPurchaseListField] PRIMARY KEY CLUSTERED 
(
	[PurchaseListField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseListGroup]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseListGroup](
	[PurchaseListGroup_Id] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[ExternalId] [varchar](100) NULL,
	[Type] [varchar](30) NULL,
	[AllowReuse] [varchar](3) NULL,
 CONSTRAINT [PK_PurchaseListGroup] PRIMARY KEY CLUSTERED 
(
	[PurchaseListGroup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseListGroupProduct]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseListGroupProduct](
	[PurchaseListGroupProduct_Id] [bigint] NOT NULL,
	[PurchaseListGroup_Id] [bigint] NULL,
	[PurchaseListProduct_Id] [bigint] NULL,
	[AllowReuse] [varchar](3) NULL,
	[Price] [float] NULL,
	[ReUsePrice] [float] NULL,
 CONSTRAINT [PK_PurchaseListGroupProduct] PRIMARY KEY CLUSTERED 
(
	[PurchaseListGroupProduct_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseListGroupProductField]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseListGroupProductField](
	[PurchaseListGroupProductField_Id] [bigint] NOT NULL,
	[PurchaseListGroup_Id] [bigint] NULL,
	[PurchaseListProduct_Id] [bigint] NULL,
	[PurchaseListField_Id] [bigint] NULL,
	[FieldType] [varchar](10) NULL,
	[DefaultValue] [varchar](50) NULL,
 CONSTRAINT [PK_PurchaseListGroupProductField] PRIMARY KEY CLUSTERED 
(
	[PurchaseListGroupProductField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseListProduct]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseListProduct](
	[PurchaseListProduct_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ListType] [varchar](50) NULL,
	[ProductCode] [varchar](30) NULL,
	[GroupName] [varchar](15) NULL,
	[ProductName] [varchar](30) NULL,
	[Description] [ntext] NULL,
	[ShowOrder] [int] NULL,
 CONSTRAINT [PKPurchaseListProduct] PRIMARY KEY CLUSTERED 
(
	[PurchaseListProduct_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseListProductField]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseListProductField](
	[PurchaseListProductField_Id] [bigint] NOT NULL,
	[PurchaseListProduct_Id] [bigint] NOT NULL,
	[PurchaseListField_Id] [bigint] NOT NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PKPurchaseListProductField] PRIMARY KEY CLUSTERED 
(
	[PurchaseListProductField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Report_Id] [bigint] NOT NULL,
	[ReportName] [varchar](50) NOT NULL,
	[ForPeriodDate1] [datetime] NULL,
	[ForPeriodDate2] [datetime] NULL,
	[OutputFormat_Id] [bigint] NOT NULL,
	[EmailTo] [ntext] NULL,
	[PublishOnClientSide] [varchar](3) NULL,
	[ReportSQL] [ntext] NULL,
	[CostCentreScope] [varchar](50) NULL,
	[CoreReport] [varchar](3) NULL,
 CONSTRAINT [PKReport] PRIMARY KEY CLUSTERED 
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportCustomer]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportCustomer](
	[ReportCustomer_Id] [bigint] NOT NULL,
	[Report_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
 CONSTRAINT [PKReportCustomer] PRIMARY KEY CLUSTERED 
(
	[ReportCustomer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportGroupBy]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportGroupBy](
	[ReportGroupBy_Id] [bigint] NULL,
	[Report_Id] [bigint] NOT NULL,
	[GroupBy_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportIncludeSummary]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportIncludeSummary](
	[ReportIncludeSummary_Id] [bigint] NULL,
	[Report_Id] [bigint] NOT NULL,
	[IncludeSummary_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportShowField]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportShowField](
	[ReportShowField_Id] [bigint] NULL,
	[Report_Id] [bigint] NOT NULL,
	[ShowField_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Result_Id] [bigint] NOT NULL,
	[Report_Id] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Time] [datetime] NOT NULL,
	[File] [varchar](100) NOT NULL,
 CONSTRAINT [PKResult] PRIMARY KEY CLUSTERED 
(
	[Result_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SavedTemplate]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SavedTemplate](
	[SavedTemplate_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[Stationery_Id] [bigint] NULL,
	[Reuse] [varchar](20) NULL,
	[LoginAccount_Id] [bigint] NULL,
	[EmptyFields] [ntext] NULL,
 CONSTRAINT [PK_SavedTemplate] PRIMARY KEY CLUSTERED 
(
	[SavedTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SavedTemplateData]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SavedTemplateData](
	[SavedTemplateData_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SavedTemplate_Id] [bigint] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[FieldType] [varchar](15) NOT NULL,
	[Caption] [ntext] NULL,
	[Value] [ntext] NULL,
 CONSTRAINT [PK_SavedTemplateData] PRIMARY KEY CLUSTERED 
(
	[SavedTemplateData_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Schedule_Id] [bigint] NOT NULL,
	[Report_Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Online] [varchar](3) NULL,
	[Frequency] [varchar](50) NULL,
	[ExtraFrequencyValue] [varchar](3) NULL,
	[Hour] [varchar](2) NULL,
	[DayOfWeek] [varchar](10) NULL,
	[InitialDate] [datetime] NULL,
	[Day] [int] NULL,
 CONSTRAINT [PKSchedule] PRIMARY KEY CLUSTERED 
(
	[Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleLog]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleLog](
	[ScheduleLog_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Schedule_Id] [bigint] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[InitialDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[File] [varchar](250) NULL,
 CONSTRAINT [PK_ScheduleLog] PRIMARY KEY CLUSTERED 
(
	[ScheduleLog_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[Screen_Id] [bigint] NOT NULL,
	[ScreenName] [varchar](50) NOT NULL,
	[ScreenCaption] [varchar](50) NOT NULL,
	[DescriptionView] [ntext] NULL,
	[DescriptionUpdate] [ntext] NULL,
	[DescriptionNew] [ntext] NULL,
	[DescriptionList] [ntext] NULL,
 CONSTRAINT [PKScreen] PRIMARY KEY CLUSTERED 
(
	[Screen_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenArea]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenArea](
	[ScreenArea_Id] [bigint] NOT NULL,
	[ScreenAreaName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ScreenArea] PRIMARY KEY CLUSTERED 
(
	[ScreenArea_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenDefinition]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenDefinition](
	[ScreenDefinition_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentScreenDefinition_Id] [bigint] NULL,
	[Name] [varchar](100) NOT NULL,
	[Language] [varchar](20) NOT NULL,
	[ZipFile] [varchar](150) NULL,
	[Path] [varchar](150) NULL,
	[ReadOnly] [varchar](3) NULL,
 CONSTRAINT [PK__ScreenDefinition__4D35603F] PRIMARY KEY CLUSTERED 
(
	[ScreenDefinition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenDefinitionCustomer]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenDefinitionCustomer](
	[ScreenDefinition_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenTip]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenTip](
	[ScreenTip_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[CustomerScreen] [varchar](50) NOT NULL,
	[ScreenTitle] [varchar](150) NULL,
	[HelpText] [ntext] NULL,
	[ScreenArea_Id] [bigint] NULL,
	[SeoDescription] [ntext] NULL,
	[SeoKeywords] [ntext] NULL,
	[SeoTitle] [nvarchar](500) NULL,
 CONSTRAINT [PKScreenTip] PRIMARY KEY CLUSTERED 
(
	[ScreenTip_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionState]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionState](
	[SessionState_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Header] [ntext] NULL,
	[ExternalPunchoutProductId] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartAbandonmentEmailsLog]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartAbandonmentEmailsLog](
	[ShoppingCartAbandonmentEmailsLog_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_Id] [bigint] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
 CONSTRAINT [PK_ShoppingCartAbandonmentEmailsLog] PRIMARY KEY CLUSTERED 
(
	[ShoppingCartAbandonmentEmailsLog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShowField]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowField](
	[ShowField_Id] [bigint] NOT NULL,
	[FieldCaption] [varchar](50) NOT NULL,
	[Table] [varchar](50) NOT NULL,
	[FieldName] [varchar](1024) NULL,
	[ShowWhere] [varchar](50) NOT NULL,
 CONSTRAINT [PKShowField] PRIMARY KEY CLUSTERED 
(
	[ShowField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignatureMarking]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignatureMarking](
	[SignatureMarking_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Position] [varchar](50) NOT NULL,
	[DoubleCut_Id] [bigint] NOT NULL,
	[Margin_Id] [bigint] NOT NULL,
	[TrimMarkType_Id] [bigint] NOT NULL,
	[RegistrationMarks] [varchar](3) NOT NULL,
	[VerticalAlign] [varchar](10) NOT NULL,
	[HorizontalAlign] [varchar](50) NOT NULL,
	[Supplier_Id] [bigint] NULL,
 CONSTRAINT [PKSignatureMarking] PRIMARY KEY CLUSTERED 
(
	[SignatureMarking_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignatureStyle]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignatureStyle](
	[SignatureStyle_Id] [bigint] NOT NULL,
	[NumberUp_Id] [bigint] NOT NULL,
	[PaperSize_Id] [bigint] NOT NULL,
	[Supplier_Id] [bigint] NULL,
	[MergePDF] [varchar](100) NULL,
	[MergeX] [float] NULL,
	[MergeY] [float] NULL,
 CONSTRAINT [PKSignatureStyle] PRIMARY KEY CLUSTERED 
(
	[SignatureStyle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SilentPreflightProfile]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SilentPreflightProfile](
	[SilentPreflightProfile_Id] [bigint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[Input] [nvarchar](500) NULL,
	[Output] [varchar](500) NULL,
	[Pattern] [varchar](500) NULL,
 CONSTRAINT [PK_SilentPreflightProfile] PRIMARY KEY CLUSTERED 
(
	[SilentPreflightProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSPhoneNumber]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSPhoneNumber](
	[SMSPhoneNumber_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Default] [nvarchar](3) NOT NULL,
	[FromPhoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SMSPhoneNumber] PRIMARY KEY CLUSTERED 
(
	[SMSPhoneNumber_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSTemplate]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSTemplate](
	[SMSTemplate_Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[SMSText] [nvarchar](250) NULL,
 CONSTRAINT [PKSMSTemplate] PRIMARY KEY CLUSTERED 
(
	[SMSTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialPricing]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialPricing](
	[SpecialPricing_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SessionKey] [varchar](50) NULL,
	[Collection] [ntext] NULL,
	[NexJobPage_Id] [bigint] NULL,
	[NexJobType_Id] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[State_Id] [bigint] NOT NULL,
	[StateName] [varchar](100) NOT NULL,
	[StateTax] [float] NOT NULL,
	[DefaultTotalTax] [float] NULL,
	[TaxFreight] [varchar](3) NOT NULL,
	[TaxPostage] [varchar](3) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stationery]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stationery](
	[Stationery_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [bigint] NULL,
	[CostCentre_Id] [bigint] NULL,
	[FrontTemplate_Id] [bigint] NULL,
	[BackTemplate_Id] [bigint] NULL,
	[Date] [datetime] NOT NULL,
	[Photo_Id] [bigint] NULL,
	[File] [varchar](100) NULL,
	[ImpFile] [varchar](100) NULL,
	[BackFile] [varchar](100) NULL,
	[BackImpFile] [varchar](100) NULL,
	[NameFirstName] [nvarchar](50) NULL,
	[NameSurname] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](100) NULL,
	[Qualifications] [nvarchar](500) NULL,
	[JobTitleTitle1] [nvarchar](100) NULL,
	[JobTitleTitle2] [nvarchar](100) NULL,
	[JobTitleTitle3] [nvarchar](100) NULL,
	[Division] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[Email2] [nvarchar](150) NULL,
	[Web] [nvarchar](100) NULL,
	[ContactPhone1] [nvarchar](50) NULL,
	[ContactPhone2] [nvarchar](50) NULL,
	[ContactPhone3] [nvarchar](50) NULL,
	[ContactPhone4] [nvarchar](50) NULL,
	[ContactTollFree] [nvarchar](50) NULL,
	[ContactMobile] [nvarchar](50) NULL,
	[ContactAfterHours] [nvarchar](50) NULL,
	[ContactFax] [nvarchar](50) NULL,
	[ContactPager] [nvarchar](50) NULL,
	[ContactPhoneDirect] [nvarchar](50) NULL,
	[AddressAddress1] [nvarchar](200) NULL,
	[AddressAddress2] [nvarchar](80) NULL,
	[AddressAddress3] [nvarchar](80) NULL,
	[AddressSuburb] [nvarchar](50) NULL,
	[AddressState] [nvarchar](50) NULL,
	[AddressPostcode] [nvarchar](50) NULL,
	[AddressCountry] [nvarchar](50) NULL,
	[PostalAddressAddress1] [nvarchar](80) NULL,
	[PostalAddressAddress2] [nvarchar](80) NULL,
	[PostalAddressAddress3] [nvarchar](80) NULL,
	[PostalAddressSuburb] [nvarchar](50) NULL,
	[PostalAddressState] [nvarchar](50) NULL,
	[PostalAddressPostcode] [nvarchar](15) NULL,
	[PostalAddressCountry] [nvarchar](50) NULL,
	[ExtraCaption1] [nvarchar](50) NULL,
	[ExtraText1] [ntext] NULL,
	[ExtraCaption2] [nvarchar](50) NULL,
	[ExtraText2] [ntext] NULL,
	[ExtraCaption3] [nvarchar](50) NULL,
	[ExtraText3] [ntext] NULL,
	[ExtraCaption4] [nvarchar](50) NULL,
	[ExtraText4] [ntext] NULL,
	[bNameFirstName] [nvarchar](50) NULL,
	[bNameSurname] [nvarchar](50) NULL,
	[bCompanyName] [nvarchar](100) NULL,
	[bQualifications] [nvarchar](50) NULL,
	[bJobTitleTitle1] [nvarchar](100) NULL,
	[bJobTitleTitle2] [nvarchar](100) NULL,
	[bJobTitleTitle3] [nvarchar](100) NULL,
	[bDivision] [nvarchar](100) NULL,
	[bEmail] [nvarchar](150) NULL,
	[bEmail2] [nvarchar](150) NULL,
	[bWeb] [nvarchar](100) NULL,
	[bContactPhone1] [nvarchar](50) NULL,
	[bContactPhone2] [nvarchar](50) NULL,
	[bContactPhone3] [nvarchar](50) NULL,
	[bContactPhone4] [nvarchar](50) NULL,
	[bContactTollFree] [nvarchar](50) NULL,
	[bContactMobile] [nvarchar](50) NULL,
	[bContactAfterHours] [nvarchar](50) NULL,
	[bContactFax] [nvarchar](50) NULL,
	[bContactPager] [nvarchar](50) NULL,
	[bContactPhoneDirect] [nvarchar](50) NULL,
	[bAddressAddress1] [nvarchar](80) NULL,
	[bAddressAddress2] [nvarchar](80) NULL,
	[bAddressAddress3] [nvarchar](80) NULL,
	[bAddressSuburb] [nvarchar](50) NULL,
	[bAddressState] [nvarchar](50) NULL,
	[bAddressPostcode] [nvarchar](15) NULL,
	[bAddressCountry] [nvarchar](50) NULL,
	[bPostalAddressAddress1] [nvarchar](80) NULL,
	[bPostalAddressAddress2] [nvarchar](80) NULL,
	[bPostalAddressAddress3] [nvarchar](80) NULL,
	[bPostalAddressSuburb] [nvarchar](50) NULL,
	[bPostalAddressState] [nvarchar](50) NULL,
	[bPostalAddressPostcode] [nvarchar](15) NULL,
	[bPostalAddressCountry] [nvarchar](50) NULL,
	[bExtraCaption1] [nvarchar](50) NULL,
	[bExtraText1] [ntext] NULL,
	[bExtraCaption2] [nvarchar](50) NULL,
	[bExtraText2] [ntext] NULL,
	[Language] [nvarchar](30) NULL,
	[bLanguage] [nvarchar](30) NULL,
	[DX] [nvarchar](100) NULL,
	[Home] [nvarchar](100) NULL,
	[DirectFax] [nvarchar](100) NULL,
	[AddressAddress4] [nvarchar](100) NULL,
	[bAddressAddress4] [nvarchar](100) NULL,
	[ABN] [nvarchar](50) NULL,
	[ExtraText5] [ntext] NULL,
	[ExtraText6] [ntext] NULL,
	[ExtraText7] [ntext] NULL,
	[ExtraText8] [ntext] NULL,
	[ExtraText9] [ntext] NULL,
	[ExtraText10] [ntext] NULL,
	[ExtraText11] [ntext] NULL,
	[ExtraText12] [ntext] NULL,
	[bExtraText5] [ntext] NULL,
	[bExtraText6] [ntext] NULL,
	[bExtraText7] [ntext] NULL,
	[bExtraText8] [ntext] NULL,
	[bExtraText9] [ntext] NULL,
	[bExtraText10] [ntext] NULL,
	[bExtraText11] [ntext] NULL,
	[bExtraText12] [ntext] NULL,
	[VariablePrint_Id] [bigint] NULL,
	[VPrintData_Id] [bigint] NULL,
	[Layers] [ntext] NULL,
	[BackNotEdited] [varchar](3) NULL,
	[BackLayers] [ntext] NULL,
	[Salutation] [nvarchar](20) NULL,
	[MiddleInitial] [nvarchar](5) NULL,
	[Suffix] [nvarchar](20) NULL,
	[PostalNameFirstName] [nvarchar](50) NULL,
	[PostalNameSurname] [nvarchar](50) NULL,
	[bExtraText3] [ntext] NULL,
	[bExtraText4] [ntext] NULL,
	[ExtraText13] [ntext] NULL,
	[ExtraText14] [ntext] NULL,
	[ExtraText15] [ntext] NULL,
	[ExtraText16] [ntext] NULL,
	[ExtraText17] [ntext] NULL,
	[ExtraText18] [ntext] NULL,
	[ExtraText19] [ntext] NULL,
	[ExtraText20] [ntext] NULL,
	[ExtraText21] [ntext] NULL,
	[ExtraText22] [ntext] NULL,
	[ExtraText23] [ntext] NULL,
	[ExtraText24] [ntext] NULL,
	[ExtraText25] [ntext] NULL,
	[bExtraText13] [ntext] NULL,
	[bExtraText14] [ntext] NULL,
	[bExtraText15] [ntext] NULL,
	[bExtraText16] [ntext] NULL,
	[bExtraText17] [ntext] NULL,
	[bExtraText18] [ntext] NULL,
	[bExtraText19] [ntext] NULL,
	[bExtraText20] [ntext] NULL,
	[bExtraText21] [ntext] NULL,
	[bExtraText22] [ntext] NULL,
	[bExtraText23] [ntext] NULL,
	[bExtraText24] [ntext] NULL,
	[bExtraText25] [ntext] NULL,
	[Theme_Id] [bigint] NULL,
	[sticker_pricing] [ntext] NULL,
	[import_propery_name_1] [ntext] NULL,
	[import_propery_name_2] [ntext] NULL,
	[Location] [ntext] NULL,
	[bLocation] [ntext] NULL,
	[import_propery_name_3] [ntext] NULL,
	[import_proper_address_1] [ntext] NULL,
	[import_proper_address_2] [ntext] NULL,
	[import_proper_address_3] [ntext] NULL,
	[import_country] [ntext] NULL,
	[import_proper_city] [ntext] NULL,
	[import_proper_fax] [ntext] NULL,
	[import_proper_phone_1] [ntext] NULL,
	[import_proper_state] [ntext] NULL,
	[import_region] [ntext] NULL,
	[import_proper_zip] [ntext] NULL,
	[import_property_code] [ntext] NULL,
	[property_name_1] [ntext] NULL,
	[property_name_2] [ntext] NULL,
	[property_name_3] [ntext] NULL,
	[full_property_name_no_brand] [ntext] NULL,
	[full_property_name_with_brand] [ntext] NULL,
	[property_identifier] [ntext] NULL,
 CONSTRAINT [PKStationery] PRIMARY KEY CLUSTERED 
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StationeryClientProject]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationeryClientProject](
	[StationeryClientProject_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Stationery_Id] [bigint] NULL,
	[ClientProject_Id] [bigint] NOT NULL,
	[PageNumber] [bigint] NOT NULL,
	[PageName] [nvarchar](50) NULL,
	[URLDownload] [varchar](100) NULL,
	[Template_Id] [bigint] NULL,
	[File] [varchar](150) NULL,
	[ImpFile] [varchar](150) NULL,
	[VariableCols] [ntext] NULL,
	[NexJobPage_Id] [bigint] NULL,
	[NexJobUpload_Id] [bigint] NULL,
	[NoPages] [bigint] NULL,
	[Quantity] [bigint] NULL,
	[TotalQuantity] [bigint] NULL,
	[UnitQuantity] [bigint] NULL,
	[TypeSettingInfo] [ntext] NULL,
	[NoImpositionPages] [int] NULL,
 CONSTRAINT [PK_StationeryClientProject] PRIMARY KEY CLUSTERED 
(
	[StationeryClientProject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StationeryControl]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationeryControl](
	[StationeryControl_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](500) NULL,
	[ControlType] [varchar](50) NOT NULL,
	[Options] [ntext] NULL,
	[Required] [varchar](3) NULL,
	[ErrorMessage] [varchar](100) NULL,
	[Link] [varchar](400) NULL,
	[ControlSize] [numeric](18, 0) NULL,
	[SizeType] [varchar](20) NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[DefaultValue] [varchar](100) NULL,
	[Stationery_Id] [bigint] NULL,
	[Template_Id] [bigint] NOT NULL,
	[Thumbnail] [varchar](50) NULL,
	[Layer] [float] NULL,
 CONSTRAINT [PK_StationeryControl] PRIMARY KEY CLUSTERED 
(
	[StationeryControl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StationeryType]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationeryType](
	[StationeryType_Id] [bigint] NOT NULL,
	[Type] [nvarchar](100) NULL,
	[FrontBack] [varchar](10) NOT NULL,
	[UnitOfOrder] [varchar](25) NULL,
	[UnitOfOrderDescription] [varchar](25) NULL,
	[ParentStationeryType_Id] [bigint] NULL,
	[Thumbnail] [varchar](100) NULL,
	[ExternalId] [varchar](50) NULL,
	[HelpText] [ntext] NULL,
	[ThumbnailAlt] [varchar](100) NULL,
	[SeoDescription] [ntext] NULL,
	[SeoKeywords] [ntext] NULL,
	[SeoTitle] [nvarchar](500) NULL,
	[SortOrder] [bigint] NULL,
 CONSTRAINT [PKStationeryType] PRIMARY KEY CLUSTERED 
(
	[StationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StationeryValue]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationeryValue](
	[StationeryValue_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Field_Id] [bigint] NULL,
	[FieldLayout_Id] [bigint] NULL,
	[Stationery_Id] [bigint] NOT NULL,
	[Caption] [varchar](200) NULL,
	[Value] [ntext] NOT NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[FontName] [varchar](100) NULL,
	[Formatted] [varchar](3) NULL,
	[Rotation] [float] NULL,
	[Template_Id] [bigint] NULL,
	[BackgroundColour] [varchar](10) NULL,
	[Type] [varchar](10) NULL,
	[EndX] [float] NULL,
	[EndY] [float] NULL,
	[Layer] [float] NULL,
	[FontBaseName] [varchar](100) NULL,
	[LeadingFactor] [float] NULL,
	[LinkedToStationeryValue_Id] [bigint] NULL,
	[FullHeight] [float] NULL,
	[ColourCMYK] [varchar](25) NULL,
	[ColourRGB] [varchar](25) NULL,
	[ColourSpot] [varchar](50) NULL,
	[CharacterSpacingFactor] [float] NULL,
	[AdditionalFontNames] [varchar](200) NULL,
	[VisualTargetLibrary_Id] [bigint] NULL,
	[EditorBkgColour] [varchar](50) NULL,
 CONSTRAINT [PKStationeryValue] PRIMARY KEY CLUSTERED 
(
	[StationeryValue_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Status_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Order] [int] NULL,
	[AllowDispatch] [varchar](3) NULL,
	[ImportOrder] [varchar](3) NULL,
	[SendDispatchEmail] [varchar](3) NULL,
	[ShowInDownloadList] [varchar](3) NULL,
	[ExternalId] [nvarchar](100) NULL,
	[DispatchEmailOnlyWithTracking] [varchar](3) NULL,
 CONSTRAINT [PKStatus] PRIMARY KEY CLUSTERED 
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockHistory]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockHistory](
	[StockHistory_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[Order_Id] [bigint] NULL,
	[OldStockLevel] [bigint] NOT NULL,
	[NewStockLevel] [bigint] NOT NULL,
	[Description] [varchar](200) NULL,
	[Action] [varchar](200) NOT NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_StockHistory] PRIMARY KEY CLUSTERED 
(
	[StockHistory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Supplier_Id] [bigint] NOT NULL,
	[SupplierCode] [varchar](50) NOT NULL,
	[SupplierName] [varchar](100) NOT NULL,
	[LoginAccount_Id] [bigint] NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PKSupplier] PRIMARY KEY CLUSTERED 
(
	[Supplier_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskDaily]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskDaily](
	[TaskDaily_Id] [bigint] NOT NULL,
	[Days] [varchar](50) NOT NULL,
 CONSTRAINT [PKTaskDaily] PRIMARY KEY CLUSTERED 
(
	[TaskDaily_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskDailySchedule]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskDailySchedule](
	[TaskDailySchedule_Id] [bigint] NOT NULL,
	[TaskDaily_Id] [bigint] NOT NULL,
	[Schedule_Id] [bigint] NOT NULL,
 CONSTRAINT [PKTaskDailySchedule] PRIMARY KEY CLUSTERED 
(
	[TaskDailySchedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskMonthly]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskMonthly](
	[TaskMonthly_Id] [bigint] NOT NULL,
	[Months] [varchar](50) NOT NULL,
 CONSTRAINT [PKTaskMonthly] PRIMARY KEY CLUSTERED 
(
	[TaskMonthly_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskMonthlySchedule]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskMonthlySchedule](
	[TaskMonthlySchedule_Id] [bigint] NOT NULL,
	[TaskMonthly_Id] [bigint] NOT NULL,
	[Schedule_Id] [bigint] NOT NULL,
 CONSTRAINT [PKTaskMonthlySchedule] PRIMARY KEY CLUSTERED 
(
	[TaskMonthlySchedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Template]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[Template_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
	[TemplateName] [nvarchar](150) NULL,
	[StationeryType_Id] [bigint] NOT NULL,
	[TemplatePDFFile] [varchar](100) NULL,
	[PDFResourceFile] [varchar](100) NULL,
	[MergeFile] [varchar](100) NULL,
	[LowResMergeFile] [varchar](100) NULL,
	[ShellInternalName] [varchar](50) NULL,
	[ShellFile] [varchar](100) NULL,
	[EditablePDF] [varchar](100) NULL,
	[Thumbnail] [varchar](100) NULL,
	[DataEntryMode] [varchar](50) NOT NULL,
	[ShowUrgent] [varchar](500) NULL,
	[OnLine] [varchar](3) NOT NULL,
	[UseColourSpacesInPreview] [varchar](3) NOT NULL,
	[EnforceReversePrinting] [varchar](3) NOT NULL,
	[CopyAddress] [varchar](50) NULL,
	[UnitQtysMaxUnits] [bigint] NOT NULL,
	[UnitQtysQtyPerUnit] [bigint] NOT NULL,
	[PartOfProject] [varchar](3) NULL,
	[HelpText] [ntext] NULL,
	[SignatureMarking_Id] [bigint] NOT NULL,
	[UnitOfMeasurement_Id] [bigint] NOT NULL,
	[Width] [float] NULL,
	[Height] [float] NULL,
	[SeparateCMYK] [varchar](3) NOT NULL,
	[BleedLeft] [float] NULL,
	[BleedRight] [float] NULL,
	[BleedTop] [float] NULL,
	[BleedBottom] [float] NULL,
	[MasterNo] [varchar](50) NULL,
	[Supplier_Id] [bigint] NULL,
	[ProofType] [varchar](20) NULL,
	[ProofResolution] [float] NULL,
	[WeightPerUnit] [float] NULL,
	[StockItem] [varchar](3) NULL,
	[FlashMergeJPG] [varchar](100) NULL,
	[StockQTY] [bigint] NULL,
	[EmailStockLevel] [bigint] NULL,
	[JavaScriptFunction_Id] [bigint] NULL,
	[RegistrationColours] [ntext] NULL,
	[QuantityExceptions] [ntext] NULL,
	[QuantityInclusions] [ntext] NULL,
	[MinDPI] [int] NULL,
	[GoodDPI] [int] NULL,
	[Retail] [varchar](3) NULL,
	[RetailAllow] [varchar](50) NULL,
	[ThumbOnDetails] [varchar](10) NULL,
	[ThumbOnDetailsWidth] [float] NULL,
	[OtherInformation] [ntext] NULL,
	[CatalogDescription] [ntext] NULL,
	[JPGType] [varchar](10) NULL,
	[CreatedBy_Id] [bigint] NULL,
	[VPrint] [varchar](10) NULL,
	[VWeb] [varchar](25) NULL,
	[VariableQuantity] [varchar](3) NULL,
	[PackageType_Id] [bigint] NULL,
	[DoNotTax] [varchar](3) NULL,
	[EmailHiResPDF] [varchar](3) NULL,
	[VariablePrintOptions] [varchar](200) NULL,
	[AllCostCentre] [varchar](3) NULL,
	[AllowFileUpload] [varchar](3) NULL,
	[AllowFileUploadCaption] [varchar](50) NULL,
	[AllowFileUploadHelpText] [ntext] NULL,
	[HideMappings] [varchar](3) NULL,
	[ExcludeFreight] [varchar](3) NULL,
	[VPrintEnableListPurchase] [varchar](3) NULL,
	[VPrintHideExistingList] [varchar](3) NULL,
	[VPrintHideUploadMappings] [varchar](3) NULL,
	[SignatureStyle_Id] [bigint] NULL,
	[ShowStandardDelivery] [varchar](500) NULL,
	[NexJobPage_Id] [bigint] NULL,
	[NoPages] [bigint] NULL,
	[EmpQtyCap] [bigint] NULL,
	[EmpQtyCapPeriod] [varchar](25) NULL,
	[ImageLibraryHideLibrary] [varchar](3) NULL,
	[ImageLibraryDisableModify] [varchar](3) NULL,
	[ImageLibraryAutoSelectImage] [varchar](3) NULL,
	[ImageLibraryHideCategories] [varchar](3) NULL,
	[ImageLibraryDefaultLibrary] [varchar](3) NULL,
	[ImageLibraryHideCaption] [varchar](3) NULL,
	[ImageLibraryHideUpload] [varchar](3) NULL,
	[DefaultZoomType] [varchar](20) NULL,
	[DefaultZoomSize] [int] NULL,
	[ApproveArtwork] [varchar](3) NULL,
	[ApproveArtworkText] [ntext] NULL,
	[QtyFromUpload] [varchar](3) NULL,
	[ReOrderEditDetails] [varchar](3) NULL,
	[DownloadOptions] [varchar](100) NULL,
	[DownloadList] [varchar](3) NULL,
	[VWebCampaignReport_Id] [bigint] NULL,
	[AutoScheduleJobs] [varchar](3) NULL,
	[VPrintDownloadOriginalImp] [varchar](3) NULL,
	[VPrintDownloadGeneratedImp] [varchar](3) NULL,
	[PurchaseListGroup_Id] [bigint] NULL,
	[AllowSeeds] [varchar](200) NULL,
	[VPrintMultiDrop] [varchar](3) NULL,
	[VPrintDropMax] [bigint] NULL,
	[VPrintDropMinQty] [bigint] NULL,
	[VPrintDropMaxQty] [bigint] NULL,
	[VPrintDropMinDays] [int] NULL,
	[VPrintDropMaxDays] [int] NULL,
	[AllowRules] [varchar](3) NULL,
	[VPrintMinDaysSequence] [varchar](200) NULL,
	[CostGroup_Id] [bigint] NULL,
	[PresortID] [varchar](20) NULL,
	[ScaleFactor] [float] NULL,
	[AutoCreateCSV] [varchar](3) NULL,
	[ImageLibraryEnableImageColor] [varchar](3) NULL,
	[RiskStockQty] [bigint] NULL,
	[RecordStockHistory] [varchar](3) NULL,
	[MinimumStockLevel] [bigint] NULL,
	[PreSortFormat_Id] [bigint] NULL,
	[ThumbnailAlt] [varchar](100) NULL,
	[SeoDescription] [ntext] NULL,
	[SeoKeywords] [ntext] NULL,
	[FlashOverlay] [varchar](100) NULL,
	[ColorPickerType] [varchar](100) NULL,
	[LiveProof] [varchar](3) NULL,
	[DispatchProfile_Id] [bigint] NULL,
	[ExcludeHandling] [varchar](3) NULL,
	[DefaultOrder] [bigint] NULL,
	[ProofZoomResolution] [bigint] NULL,
	[AllowDownloadStatus_Id] [bigint] NULL,
	[SkipApproval] [varchar](3) NULL,
	[CASS] [varchar](20) NULL,
	[NCOA] [varchar](20) NULL,
	[ExcludeFromMarkUp] [varchar](3) NULL,
	[ImageLibraryEnableCostCentreShare] [varchar](3) NULL,
	[FLXML] [ntext] NULL,
	[SplitShip] [varchar](3) NULL,
	[OnlineFrom] [datetime] NULL,
	[OnlineTo] [datetime] NULL,
	[StockWithinProject] [varchar](3) NULL,
	[ExcludeLoyaltyPoints] [varchar](3) NULL,
	[PrintedItem] [nvarchar](3) NULL,
	[ProductionTicket_Id] [bigint] NULL,
	[ShowFlipperOnProof] [varchar](3) NULL,
	[HideIndividualPageProof] [varchar](3) NULL,
	[CustomizedFlipperSize] [varchar](3) NULL,
	[FlipperWidth] [int] NULL,
	[FlipperHeight] [int] NULL,
	[WeighingSource] [varchar](10) NULL,
	[DoNotAllowDataSaving] [varchar](3) NULL,
	[TaxRate] [float] NULL,
	[NoOrderDownloadTrack] [varchar](3) NULL,
	[DownloadJPGPreview] [varchar](3) NULL,
	[AutomaticImposition] [varchar](3) NULL,
 CONSTRAINT [PKTemplate] PRIMARY KEY CLUSTERED 
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateColour]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateColour](
	[TemplateColour_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[Colour_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_TemplateColour] PRIMARY KEY CLUSTERED 
(
	[TemplateColour_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateCostCentre]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateCostCentre](
	[TemplateCostCentre_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
 CONSTRAINT [PKTemplateCostCentre] PRIMARY KEY CLUSTERED 
(
	[TemplateCostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateCosting]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateCosting](
	[TemplateCosting_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[Unit] [int] NOT NULL,
	[Cost] [float] NOT NULL,
	[UrgentCost] [float] NULL,
	[BuyCost] [float] NULL,
	[UrgentBuyCost] [float] NULL,
	[Handling] [float] NULL,
	[Postage] [float] NULL,
	[CostCentreCostGroup_Id] [bigint] NULL,
	[TemplateCostGroup_Id] [bigint] NULL,
 CONSTRAINT [PKTemplateCosting] PRIMARY KEY CLUSTERED 
(
	[TemplateCosting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateCustomer]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateCustomer](
	[Template_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateExternalImageLibrary]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateExternalImageLibrary](
	[TemplateExternalImageLibrary_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[ExternalImageLibrary_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_TemplateExternalImageLibrary] PRIMARY KEY CLUSTERED 
(
	[TemplateExternalImageLibrary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateExternalList]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateExternalList](
	[TemplateExternalList_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[ExternalList_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_TemplateExternalList] PRIMARY KEY CLUSTERED 
(
	[TemplateExternalList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateFont]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateFont](
	[Template_Id] [bigint] NOT NULL,
	[Font_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateNexJobPageCostCentre]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateNexJobPageCostCentre](
	[TemplateNexJobPageCostCentre_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[NexJobPage_Id] [bigint] NULL,
	[CostCentre_Id] [bigint] NULL,
 CONSTRAINT [PK_TemplateNexJobPageCostCentre] PRIMARY KEY CLUSTERED 
(
	[TemplateNexJobPageCostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateRecommendation]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateRecommendation](
	[Template_Id] [bigint] NOT NULL,
	[TemplateInclude_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateSignatureStyle]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateSignatureStyle](
	[TemplateSignatureStyle_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[SignatureStyle_Id] [bigint] NOT NULL,
 CONSTRAINT [PKTemplateSignatureStyle] PRIMARY KEY CLUSTERED 
(
	[TemplateSignatureStyle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateStationeryType]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateStationeryType](
	[TemplateStationeryType_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[StationeryType_Id] [bigint] NOT NULL,
	[ProjectTemplate_Id] [bigint] NULL,
 CONSTRAINT [PK_TemplateStationeryType] PRIMARY KEY CLUSTERED 
(
	[TemplateStationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateSupplier]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateSupplier](
	[TemplateSupplier_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[Supplier_Id] [bigint] NOT NULL,
	[QuantityFrom] [float] NULL,
	[QuantityTo] [float] NULL,
 CONSTRAINT [PK_TemplateSupplier] PRIMARY KEY CLUSTERED 
(
	[TemplateSupplier_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateTemplate]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateTemplate](
	[TemplateTemplate_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NOT NULL,
	[Template1_Id] [bigint] NOT NULL,
 CONSTRAINT [PKTemplateTemplate] PRIMARY KEY CLUSTERED 
(
	[TemplateTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateTheme]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateTheme](
	[TemplateTheme_Id] [bigint] NOT NULL,
	[Template_Id] [bigint] NULL,
	[Theme_Id] [bigint] NULL,
 CONSTRAINT [PK_TemplateTheme] PRIMARY KEY CLUSTERED 
(
	[TemplateTheme_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theme](
	[Theme_Id] [bigint] NOT NULL,
	[ThemeName] [varchar](100) NULL,
	[ExternalId] [varchar](50) NULL,
	[Cost] [float] NULL,
	[MultiplyByQty] [varchar](3) NULL,
	[GroupName] [varchar](50) NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[Theme_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeField]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeField](
	[ThemeField_Id] [bigint] NOT NULL,
	[Theme_Id] [bigint] NULL,
	[LibraryImage_Id] [bigint] NULL,
	[Colour_Id] [bigint] NULL,
	[FieldName] [varchar](50) NULL,
	[DefaultText] [ntext] NULL,
 CONSTRAINT [PK_ThemeField] PRIMARY KEY CLUSTERED 
(
	[ThemeField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrimMarkType]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrimMarkType](
	[TrimMarkType_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[TrimMarkLength] [float] NULL,
	[TrimMarkOffset] [float] NULL,
	[LineWeight] [float] NULL,
	[UnitOfMeasurement_Id] [bigint] NOT NULL,
 CONSTRAINT [PKTrimMarkType] PRIMARY KEY CLUSTERED 
(
	[TrimMarkType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitOfMeasurement]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasurement](
	[UnitOfMeasurement_Id] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[InPoints] [float] NOT NULL,
 CONSTRAINT [PKUnitOfMeasurement] PRIMARY KEY CLUSTERED 
(
	[UnitOfMeasurement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSessions]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSessions](
	[SessionGuid] [char](36) NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
	[Customer_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL,
	[User_Id] [bigint] NOT NULL,
	[Employee_Id] [bigint] NULL,
	[CostCentreNumber] [varchar](50) NULL,
	[SelectCostCentre] [bigint] NULL,
	[AccessLevel] [varchar](30) NULL,
 CONSTRAINT [PK__UserSessions__129EAA56] PRIMARY KEY CLUSTERED 
(
	[SessionGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserType_Id] [bigint] NOT NULL,
	[UserTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PKUserType] PRIMARY KEY CLUSTERED 
(
	[UserType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserVariable]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserVariable](
	[UserVariable_Id] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[SessionId] [varchar](50) NOT NULL,
	[UserId] [float] NULL,
	[CustId] [float] NULL,
	[CostCentreId] [float] NULL,
	[EmployeeId] [float] NULL,
	[CostCentreNumber] [varchar](50) NULL,
	[SelectCostCentre] [float] NULL,
	[Quantity] [bigint] NULL,
	[PictureId] [float] NULL,
	[DefaultAddress] [float] NULL,
	[DeliveryAddressMode] [float] NULL,
	[DeliveryAddressAddress1] [varchar](200) NULL,
	[DeliveryAddressAddress2] [varchar](80) NULL,
	[DeliveryAddressAddress3] [varchar](80) NULL,
	[DeliveryAddressSuburb] [varchar](50) NULL,
	[DeliveryAddressState] [varchar](50) NULL,
	[DeliveryAddressPostcode] [varchar](15) NULL,
	[DeliveryAddressCountry] [varchar](50) NULL,
	[FrontId] [float] NULL,
	[BackId] [float] NULL,
	[PONumber] [varchar](50) NULL,
	[BrandingFile] [varchar](100) NULL,
	[HomeDirectory] [varchar](50) NULL,
	[ExtraInfo1] [varchar](50) NULL,
	[ExtraInfo2] [varchar](50) NULL,
 CONSTRAINT [PKUserVariable] PRIMARY KEY CLUSTERED 
(
	[UserVariable_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariablePrint]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariablePrint](
	[VariablePrint_Id] [bigint] NOT NULL,
	[File] [varchar](100) NOT NULL,
	[DeliminatorDeliminatorTyp] [varchar](20) NOT NULL,
	[DeliminatorOther] [varchar](5) NULL,
	[FirstRowContainsHeader] [varchar](3) NOT NULL,
	[Date] [datetime] NULL,
	[Customer_Id] [bigint] NULL,
	[Template_Id] [bigint] NULL,
	[CostCentre_Id] [bigint] NULL,
	[ColumnNumber] [varchar](50) NULL,
	[ColumnMatch] [varchar](50) NULL,
	[OutputType] [varchar](50) NULL,
	[OutputFolder] [varchar](100) NULL,
	[SignatureStyle_Id] [bigint] NULL,
	[SignatureMarking_Id] [bigint] NULL,
	[Summary] [ntext] NULL,
	[BackTemplate_Id] [bigint] NULL,
	[Stationery_Id] [bigint] NULL,
	[ImageFolder] [varchar](200) NULL,
	[LibraryImages] [varchar](3) NULL,
	[VariableFront] [varchar](3) NULL,
	[VariableBack] [varchar](3) NULL,
	[AddressCase] [varchar](20) NULL,
	[AddressDuplicate] [varchar](20) NULL,
	[CampaignName] [varchar](50) NULL,
	[CampaignURLColumn] [varchar](20) NULL,
	[HTMLFile] [varchar](100) NULL,
	[CampaignReplaces] [ntext] NULL,
	[CampaignURLDownload] [varchar](200) NULL,
	[VWeb_Id] [bigint] NULL,
	[Type] [varchar](15) NULL,
	[JobType] [varchar](20) NULL,
	[IdentifierCol] [int] NULL,
	[EmailSubject] [varchar](100) NULL,
	[EmailFromName] [varchar](50) NULL,
	[CASSStatus] [varchar](50) NULL,
	[CASSOutFile] [varchar](250) NULL,
	[ClientProject_Id] [bigint] NULL,
 CONSTRAINT [PKVariablePrint] PRIMARY KEY CLUSTERED 
(
	[VariablePrint_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Version]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[VersionNumber] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[CustomMods] [char](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisualTargetLibrary]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisualTargetLibrary](
	[VisualTargetLibrary_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LibraryName] [varchar](100) NOT NULL,
	[PDFFile] [varchar](100) NULL,
	[AverageHeight] [float] NULL,
	[AverageWidth] [float] NULL,
	[PageCharacters] [ntext] NULL,
 CONSTRAINT [PK_VisualTargetLibrary] PRIMARY KEY CLUSTERED 
(
	[VisualTargetLibrary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisualTargetLibraryFieldLayout]    Script Date: 11/27/2017 3:04:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisualTargetLibraryFieldLayout](
	[VisualTargetLibrary_Id] [bigint] NOT NULL,
	[FieldLayout_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Voucher_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Active] [varchar](3) NOT NULL,
	[Amount] [float] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[AmountUsed] [float] NULL,
	[LoginAccount_Id] [bigint] NULL,
	[GenericTrackingA] [nvarchar](200) NULL,
	[GenericTrackingB] [nvarchar](200) NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[Voucher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherCartTransaction]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherCartTransaction](
	[VoucherCartTransaction_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Voucher_Id] [bigint] NOT NULL,
	[CartTransaction_Id] [bigint] NOT NULL,
	[Amount] [float] NOT NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_VoucherCartTransaction] PRIMARY KEY CLUSTERED 
(
	[VoucherCartTransaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherCostCentre]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherCostCentre](
	[Voucher_Id] [bigint] NOT NULL,
	[CostCentre_Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VPrintData]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPrintData](
	[VPrintData_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VariablePrint_Id] [bigint] NOT NULL,
	[TemplateId] [bigint] NULL,
	[StationeryId] [bigint] NULL,
	[OrderId] [bigint] NULL,
	[Col1] [ntext] NULL,
	[Col2] [ntext] NULL,
	[Col3] [ntext] NULL,
	[Col4] [ntext] NULL,
	[Col5] [ntext] NULL,
	[Col6] [ntext] NULL,
	[Col7] [ntext] NULL,
	[Col8] [ntext] NULL,
	[Col9] [ntext] NULL,
	[Col10] [ntext] NULL,
	[Col11] [ntext] NULL,
	[Col12] [ntext] NULL,
	[Col13] [ntext] NULL,
	[Col14] [ntext] NULL,
	[Col15] [ntext] NULL,
	[Col16] [ntext] NULL,
	[Col17] [ntext] NULL,
	[Col18] [ntext] NULL,
	[Col19] [ntext] NULL,
	[Col20] [ntext] NULL,
	[Col21] [ntext] NULL,
	[Col22] [ntext] NULL,
	[Col23] [ntext] NULL,
	[Col24] [ntext] NULL,
	[Col25] [ntext] NULL,
	[Col26] [ntext] NULL,
	[Col27] [ntext] NULL,
	[Col28] [ntext] NULL,
	[Col29] [ntext] NULL,
	[Col30] [ntext] NULL,
	[Col31] [ntext] NULL,
	[Col32] [ntext] NULL,
	[Col33] [ntext] NULL,
	[Col34] [ntext] NULL,
	[Col35] [ntext] NULL,
	[Col36] [ntext] NULL,
	[Col37] [ntext] NULL,
	[Col38] [ntext] NULL,
	[Col39] [ntext] NULL,
	[Col40] [ntext] NULL,
	[Col41] [ntext] NULL,
	[Col42] [ntext] NULL,
	[Col43] [ntext] NULL,
	[Col44] [ntext] NULL,
	[Col45] [ntext] NULL,
	[Col46] [ntext] NULL,
	[Col47] [ntext] NULL,
	[Col48] [ntext] NULL,
	[Col50] [ntext] NULL,
	[Col51] [ntext] NULL,
	[Col52] [ntext] NULL,
	[Col53] [ntext] NULL,
	[Col54] [ntext] NULL,
	[Col55] [ntext] NULL,
	[Col56] [ntext] NULL,
	[Col57] [ntext] NULL,
	[Col58] [ntext] NULL,
	[Col59] [ntext] NULL,
	[Col60] [ntext] NULL,
	[Col61] [ntext] NULL,
	[Col62] [ntext] NULL,
	[Col63] [ntext] NULL,
	[Col64] [ntext] NULL,
	[Col65] [ntext] NULL,
	[Col66] [ntext] NULL,
	[Col67] [ntext] NULL,
	[Col68] [ntext] NULL,
	[Col69] [ntext] NULL,
	[Col70] [ntext] NULL,
	[Col71] [ntext] NULL,
	[Col72] [ntext] NULL,
	[Col73] [ntext] NULL,
	[Col74] [ntext] NULL,
	[Col75] [ntext] NULL,
	[Col76] [ntext] NULL,
	[Col77] [ntext] NULL,
	[Col78] [ntext] NULL,
	[Col79] [ntext] NULL,
	[Col80] [ntext] NULL,
	[url] [varchar](100) NULL,
 CONSTRAINT [PKVPrintData] PRIMARY KEY CLUSTERED 
(
	[VPrintData_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VPrintDataDefinition]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPrintDataDefinition](
	[VPrintDataDefinition_Id] [bigint] NOT NULL,
	[VariablePrint_Id] [bigint] NOT NULL,
	[ColumnNumber] [int] NULL,
	[Text] [ntext] NULL,
	[TemplateId] [bigint] NULL,
	[FieldLayoutId] [bigint] NULL,
	[TableName] [varchar](50) NULL,
	[FieldName] [varchar](50) NULL,
	[Display] [varchar](3) NULL,
 CONSTRAINT [PKVPrintDataDefinition] PRIMARY KEY CLUSTERED 
(
	[VPrintDataDefinition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VPrintFieldMapping]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPrintFieldMapping](
	[VPrintFieldMapping_Id] [bigint] NOT NULL,
	[Table] [varchar](100) NOT NULL,
	[FieldName] [varchar](100) NOT NULL,
	[ColumnHeader] [varchar](100) NOT NULL,
	[DefaultOrder] [float] NULL,
	[Customer_Id] [bigint] NULL,
	[AdminCaption] [varchar](100) NULL,
 CONSTRAINT [PKVPrintFieldMapping] PRIMARY KEY CLUSTERED 
(
	[VPrintFieldMapping_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VPrintImage]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPrintImage](
	[VPrintImage_Id] [bigint] NOT NULL,
	[FileName] [varchar](200) NULL,
	[RefName] [varchar](200) NULL,
	[LibraryImage_Id] [bigint] NULL,
	[PDFs_Id] [bigint] NULL,
	[VariablePrint_Id] [bigint] NOT NULL,
 CONSTRAINT [PKVPrintImage] PRIMARY KEY CLUSTERED 
(
	[VPrintImage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VPrintNoDropDate]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPrintNoDropDate](
	[VPrintNoDropDate_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_VPrintNoDropDate] PRIMARY KEY CLUSTERED 
(
	[VPrintNoDropDate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VPrintRule]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPrintRule](
	[VPrintRule_Id] [bigint] NOT NULL,
	[Col] [int] NOT NULL,
	[Operator] [varchar](15) NOT NULL,
	[Condition] [varchar](200) NOT NULL,
	[VariablePrint_Id] [bigint] NOT NULL,
	[ReplaceText] [varchar](200) NULL,
	[ReplaceCol] [int] NULL,
	[TextReplacer] [varchar](50) NULL,
	[GroupNumber] [int] NOT NULL,
 CONSTRAINT [PK_VPrintCondition] PRIMARY KEY CLUSTERED 
(
	[VPrintRule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWeb]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWeb](
	[VWeb_Id] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Artwork] [varchar](10) NULL,
	[Web] [varchar](10) NULL,
	[Email] [varchar](10) NULL,
	[LaunchDate] [datetime] NULL,
 CONSTRAINT [PK_VWeb] PRIMARY KEY CLUSTERED 
(
	[VWeb_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaign]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaign](
	[VWebCampaign_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebTemplate_Id] [bigint] NOT NULL,
	[VWebMultiTouchCampaign_Id] [bigint] NULL,
	[Name] [nvarchar](50) NULL,
	[LaunchDate] [datetime] NOT NULL,
	[Print] [varchar](3) NOT NULL,
	[Web] [varchar](3) NOT NULL,
	[Email] [varchar](3) NOT NULL,
	[SMS] [varchar](3) NOT NULL,
	[DomainName] [varchar](200) NULL,
	[PURL] [varchar](200) NULL,
	[PURLFormat] [varchar](50) NULL,
	[PURLType] [varchar](10) NULL,
	[FromEmailAddr] [varchar](200) NULL,
	[FromEmailName] [nvarchar](200) NULL,
	[IdColumn] [ntext] NULL,
	[TouchNumber] [int] NULL,
	[TouchStatus] [varchar](50) NULL,
	[List_Id] [bigint] NULL,
	[PURLId] [varchar](200) NULL,
	[UserEmailField] [varchar](200) NULL,
	[EmailSubject] [nvarchar](200) NULL,
	[SendToFriendURL] [ntext] NULL,
	[LaunchType] [varchar](50) NULL,
	[LaunchPeriod] [int] NULL,
	[LaunchPeriodType] [varchar](50) NULL,
	[PURLVWebCampaign_Id] [bigint] NULL,
	[DeletedDate] [datetime] NULL,
	[LaunchDatePrint] [datetime] NULL,
	[LaunchDateWeb] [datetime] NULL,
	[LaunchDateEmail] [datetime] NULL,
	[LaunchDateSMS] [datetime] NULL,
	[LaunchTypePrint] [varchar](50) NULL,
	[LaunchTypeWeb] [varchar](50) NULL,
	[LaunchTypeEmail] [varchar](50) NULL,
	[LaunchTypeSMS] [varchar](50) NULL,
	[LaunchPeriodPrint] [int] NULL,
	[LaunchPeriodWeb] [int] NULL,
	[LaunchPeriodEmail] [int] NULL,
	[LaunchPeriodSMS] [int] NULL,
	[LaunchPeriodTypePrint] [varchar](50) NULL,
	[LaunchPeriodTypeWeb] [varchar](50) NULL,
	[LaunchPeriodTypeEmail] [varchar](50) NULL,
	[LaunchPeriodTypeSMS] [varchar](50) NULL,
	[ListGeneratedDate] [datetime] NULL,
	[RefreshStats] [smallint] NULL,
	[SummaryTable] [varchar](3) NULL,
	[SummaryTableLastUpdated] [datetime] NULL,
 CONSTRAINT [PKVWebCampaign] PRIMARY KEY CLUSTERED 
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignArtwork]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignArtwork](
	[VWebCampaignArtwork_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebCampaign_Id] [bigint] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Type] [varchar](20) NOT NULL,
	[PageNo] [int] NOT NULL,
	[Template_Id] [bigint] NULL,
	[ProjectTemplate_Id] [bigint] NULL,
	[Stationery_Id] [bigint] NULL,
	[ClientProject_Id] [bigint] NULL,
	[SMSTemplate_Id] [bigint] NULL,
	[WebPortal_Id] [bigint] NULL,
	[SMSText] [ntext] NULL,
	[Created] [varchar](3) NULL,
	[VariableCols] [ntext] NULL,
	[UsesTemplateChoice] [varchar](100) NULL,
	[SampleNumber] [bigint] NULL,
	[Rules] [ntext] NULL,
	[Thumbnail] [varchar](200) NULL,
 CONSTRAINT [PK_VWebCampaignArtwork] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignArtwork_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignDataEntry]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignDataEntry](
	[VWebCampaignDataEntry_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ControlName] [varchar](50) NOT NULL,
	[ResponseText] [ntext] NOT NULL,
	[Caption] [varchar](300) NULL,
	[VWebCampaign_Id] [bigint] NULL,
	[ListEntry_Id] [bigint] NULL,
	[VWebWebPortalPage_Id] [bigint] NULL,
	[TimeStamp] [datetime] NULL,
	[SubmitNumber] [bigint] NULL,
	[SessionID] [varchar](200) NULL,
	[SubmitSequence] [bigint] NULL,
 CONSTRAINT [PKVWebCampaignDataEntry] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignDataEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignList]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignList](
	[VWebCampaignList_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebCampaign_Id] [bigint] NOT NULL,
	[List_Id] [bigint] NULL,
	[PH] [nvarchar](100) NULL,
	[StatCol] [nvarchar](50) NULL,
 CONSTRAINT [PK_VWebCampaignList] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignListEntry]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignListEntry](
	[VWebCampaign_Id] [bigint] NOT NULL,
	[ListEntry_Id] [bigint] NOT NULL,
	[PURLIdCol] [nvarchar](200) NULL,
	[FullPurl] [nvarchar](200) NULL,
	[FirstTimestamp] [datetime] NULL,
	[LastTimestamp] [datetime] NULL,
	[LastActivity] [varchar](100) NULL,
	[Unsubscribed] [varchar](3) NULL,
	[CurrentStatus] [varchar](300) NULL,
	[Visits] [int] NULL,
	[EntryType] [varchar](4) NULL,
	[TotalSubmits] [bigint] NULL,
	[PURLAppendedNumber] [int] NULL,
	[SMSMessageId] [varchar](50) NULL,
	[Completed] [varchar](3) NULL,
	[Active] [varchar](3) NULL,
	[EmailTimestamp] [datetime] NULL,
	[SMSTimestamp] [datetime] NULL,
	[EmailDeliveryStatus] [smallint] NULL,
	[EmailSMSStatus] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignLog]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignLog](
	[VWebCampaignLog_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebCampaign_Id] [bigint] NULL,
	[VWebWebPortalPage_Id] [bigint] NULL,
	[ListEntry_Id] [bigint] NULL,
	[IP] [varchar](20) NULL,
	[PageViewStart] [datetime] NULL,
	[PageViewEnd] [datetime] NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[LogTime] [datetime] NULL,
	[Action] [varchar](30) NULL,
	[Error] [ntext] NULL,
	[Status] [varchar](50) NULL,
	[RedirectURL] [ntext] NULL,
	[SessionID] [varchar](200) NULL,
	[State] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
 CONSTRAINT [PKVWebCampaignLog] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignLog_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignReport]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignReport](
	[VWebCampaignReport_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[ReportName] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[SQL] [ntext] NULL,
	[Print] [varchar](3) NULL,
	[Web] [varchar](3) NULL,
	[Email] [varchar](3) NULL,
	[SMS] [varchar](3) NULL,
 CONSTRAINT [PK_VWebCampaignReport] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignReport_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignRule]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignRule](
	[VWebCampaignRule_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebCampaign_Id] [bigint] NULL,
	[RuleName] [varchar](150) NULL,
	[GroupName] [varchar](150) NULL,
	[Rules] [ntext] NULL,
	[SortOrder] [int] NULL,
	[Order_Id] [bigint] NULL,
 CONSTRAINT [PK_VWebCampaignRule] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignRule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignRuleReplace]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignRuleReplace](
	[VWebCampaignRuleReplace_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebCampaignRule_Id] [bigint] NOT NULL,
	[PH] [varchar](100) NULL,
	[Text] [ntext] NULL,
	[PDFs_Id] [bigint] NULL,
	[LibraryImage_Id] [bigint] NULL,
	[CropTop] [float] NULL,
	[CropBottom] [float] NULL,
	[CropLeft] [float] NULL,
	[CropRight] [float] NULL,
	[Height] [float] NULL,
	[Width] [float] NULL,
	[ScaleWidth] [float] NULL,
	[ScaleHeight] [float] NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[Rotation] [float] NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_VWebCampaignRuleReplace] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignRuleReplace_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebCampaignSummary]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebCampaignSummary](
	[VWebCampaignSummary_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebCampaign_Id] [bigint] NOT NULL,
	[ActionType] [varchar](50) NOT NULL,
	[Count] [bigint] NULL,
	[Timestamp] [datetime] NULL,
 CONSTRAINT [PK_VWebCampaignSummary] PRIMARY KEY CLUSTERED 
(
	[VWebCampaignSummary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebIPBlocks]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebIPBlocks](
	[startIpNum] [bigint] NULL,
	[endIpNum] [bigint] NULL,
	[locId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebIPLocation]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebIPLocation](
	[locId] [bigint] NULL,
	[country] [varchar](8000) NULL,
	[region] [varchar](8000) NULL,
	[city] [varchar](8000) NULL,
	[postalCode] [varchar](8000) NULL,
	[latitude] [varchar](8000) NULL,
	[longitude] [varchar](8000) NULL,
	[dmaCode] [varchar](8000) NULL,
	[areaCode] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebJob]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebJob](
	[VWebJob_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ScheduleDate] [datetime] NULL,
	[JobName] [varchar](200) NULL,
	[LoginAccount_Id] [bigint] NOT NULL,
	[Customer_Id] [bigint] NULL,
	[VWebCampaignArtwork_Id] [bigint] NULL,
	[Order_Id] [bigint] NULL,
	[SignatureStyle_Id] [bigint] NULL,
	[SignatureMarking_Id] [bigint] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[OutputFile] [ntext] NULL,
	[OutputType] [varchar](20) NULL,
	[ErrorDesc] [ntext] NULL,
	[SCPIds] [ntext] NULL,
	[GenerateCSV] [varchar](3) NULL,
	[PresortStatus] [varchar](50) NULL,
	[PresortReport] [varchar](200) NULL,
	[PresortTemplateName] [varchar](100) NULL,
	[AddTimestemp] [datetime] NULL,
	[NCOAStatus] [varchar](8) NULL,
	[NCOAReport] [varchar](200) NULL,
	[CASSReport] [varchar](200) NULL,
	[NCOASeedReport] [varchar](200) NULL,
	[CASSSeedReport] [varchar](200) NULL,
	[PreSortFormatNCOA_Id] [bigint] NULL,
 CONSTRAINT [PKVWebJob] PRIMARY KEY CLUSTERED 
(
	[VWebJob_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebLog]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebLog](
	[VWebLog_Id] [bigint] NOT NULL,
	[IP] [varchar](20) NULL,
	[PageViewStart] [datetime] NULL,
	[PageViewEnd] [datetime] NULL,
	[VPrintData_Id] [bigint] NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[LogTime] [datetime] NULL,
	[VWeb_Id] [bigint] NULL,
	[ListEntry_Id] [bigint] NULL,
	[Sent] [int] NULL,
	[Delivered] [int] NULL,
	[Read] [int] NULL,
	[Opened] [int] NULL,
	[Error] [ntext] NULL,
	[Unsubscribe] [int] NULL,
	[Clicked] [int] NULL,
	[ClickedLink] [varchar](255) NULL,
	[State] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
 CONSTRAINT [PK_VWebLog] PRIMARY KEY CLUSTERED 
(
	[VWebLog_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebMapping]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebMapping](
	[VWebMapping_Id] [bigint] NOT NULL,
	[FieldName] [varchar](100) NOT NULL,
	[ReplaceText] [varchar](100) NOT NULL,
	[ProjectTemplate_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_VWebMapping] PRIMARY KEY CLUSTERED 
(
	[VWebMapping_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebMultiTouchAddition]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebMultiTouchAddition](
	[VWebMultiTouchAddition_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebMultiTouchCampaign_Id] [bigint] NOT NULL,
	[ListAddition_Id] [bigint] NOT NULL,
	[VWebCampaign_Id] [bigint] NOT NULL,
	[Print] [varchar](3) NULL,
	[Web] [varchar](3) NULL,
	[Email] [varchar](3) NULL,
	[SMS] [varchar](3) NULL,
	[LaunchDate] [datetime] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Complete] [varchar](3) NULL,
	[LaunchDatePrint] [datetime] NULL,
	[LaunchDateWeb] [datetime] NULL,
	[LaunchDateEmail] [datetime] NULL,
	[LaunchDateSMS] [datetime] NULL,
	[LaunchTypePrint] [varchar](50) NULL,
	[LaunchTypeWeb] [varchar](50) NULL,
	[LaunchTypeEmail] [varchar](50) NULL,
	[LaunchTypeSMS] [varchar](50) NULL,
	[LaunchPeriodPrint] [int] NULL,
	[LaunchPeriodWeb] [int] NULL,
	[LaunchPeriodEmail] [int] NULL,
	[LaunchPeriodSMS] [int] NULL,
	[LaunchPeriodTypePrint] [varchar](50) NULL,
	[LaunchPeriodTypeWeb] [varchar](50) NULL,
	[LaunchPeriodTypeEmail] [varchar](50) NULL,
	[LaunchPeriodTypeSMS] [varchar](50) NULL,
	[TouchNumber] [int] NULL,
	[ListGeneratedDate] [datetime] NULL,
 CONSTRAINT [PK_VWebMultiTouchAddition] PRIMARY KEY CLUSTERED 
(
	[VWebMultiTouchAddition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebMultiTouchCampaign]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebMultiTouchCampaign](
	[VWebMultiTouchCampaign_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LaunchDate] [datetime] NULL,
	[NoTouches] [int] NULL,
	[LoginAccount_Id] [bigint] NULL,
	[List_Id] [bigint] NULL,
	[Archive] [varchar](3) NULL,
	[DeletedDate] [datetime] NULL,
	[CampaignTemplate_Id] [bigint] NULL,
	[Active] [varchar](3) NULL,
	[ExternalPunchoutProductId] [nvarchar](100) NULL,
 CONSTRAINT [PKVWebMultiTouchCampaign] PRIMARY KEY CLUSTERED 
(
	[VWebMultiTouchCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebResponse]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebResponse](
	[VWebResponse_Id] [bigint] NOT NULL,
	[VWebIdentifier] [varchar](200) NULL,
	[TimeStamp] [datetime] NULL,
	[VWeb_Id] [bigint] NOT NULL,
 CONSTRAINT [PKVWebResponse] PRIMARY KEY CLUSTERED 
(
	[VWebResponse_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebResponseItem]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebResponseItem](
	[VWebResponseItem_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ControlName] [varchar](200) NULL,
	[ControlText] [varchar](200) NULL,
	[ResponseText] [ntext] NULL,
	[VWebResponse_Id] [bigint] NOT NULL,
 CONSTRAINT [PKVWebResponseItem] PRIMARY KEY CLUSTERED 
(
	[VWebResponseItem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebTemplate]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebTemplate](
	[VWebTemplate_Id] [bigint] NOT NULL,
	[Artwork] [varchar](3) NULL,
	[PURL] [varchar](3) NULL,
	[Email] [varchar](3) NULL,
	[SMS] [varchar](3) NULL,
	[CampaignTemplate_Id] [bigint] NULL,
	[TouchNumber] [int] NULL,
	[Condition] [varchar](20) NULL,
	[DefaultDomainName] [ntext] NULL,
	[DefaultPURL] [ntext] NULL,
	[DefaultFromEmailAddr] [ntext] NULL,
	[DefaultFromEmailName] [ntext] NULL,
	[PrintHelpText] [ntext] NULL,
	[WebHelpText] [ntext] NULL,
	[EmailHelpText] [ntext] NULL,
	[SMSHelpText] [ntext] NULL,
	[TouchStatus] [varchar](50) NULL,
	[CreateNowOptions] [varchar](50) NULL,
	[HelpText] [ntext] NULL,
	[DefaultEmailSubject] [nvarchar](200) NULL,
	[DefaultSendToFriendURL] [ntext] NULL,
	[PrintPricingOptions] [varchar](100) NULL,
	[WebPricingOptions] [varchar](100) NULL,
	[EmailPricingOptions] [varchar](100) NULL,
	[SMSPricingOptions] [varchar](100) NULL,
	[PrintPerRecordCost] [float] NULL,
	[WebPerRecordCost] [float] NULL,
	[EmailPerRecordCost] [float] NULL,
	[SMSPerRecordCost] [float] NULL,
 CONSTRAINT [PKVWebTemplate] PRIMARY KEY CLUSTERED 
(
	[VWebTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebTemplateArtwork]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebTemplateArtwork](
	[VWebTemplateArtwork_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebTemplate_Id] [bigint] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Type] [varchar](20) NOT NULL,
	[Template_Id] [bigint] NULL,
	[ProjectTemplate_Id] [bigint] NULL,
	[Stationery_Id] [bigint] NULL,
	[ClientProject_Id] [bigint] NULL,
	[SMSTemplate_Id] [bigint] NULL,
	[WebPortal_Id] [bigint] NULL,
 CONSTRAINT [PK_VWebTemplateArtwork] PRIMARY KEY CLUSTERED 
(
	[VWebTemplateArtwork_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebTemplateExternalList]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebTemplateExternalList](
	[VWebTemplateExternalList_Id] [bigint] NOT NULL,
	[VWebTemplate_Id] [bigint] NOT NULL,
	[ExternalList_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_VWebTemplateExternalList] PRIMARY KEY CLUSTERED 
(
	[VWebTemplateExternalList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VWebWebPortalPage]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VWebWebPortalPage](
	[VWebWebPortalPage_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VWebCampaignArtwork_Id] [bigint] NULL,
	[PageName] [varchar](100) NULL,
	[WebURL] [ntext] NULL,
	[PageNo] [int] NULL,
	[VariableCols] [ntext] NULL,
	[WebPageType] [varchar](20) NULL,
	[SampleNumber] [bigint] NULL,
	[WebFile] [varchar](200) NULL,
	[EmailOptions] [ntext] NULL,
	[Rules] [ntext] NULL,
	[SortOrder] [int] NULL,
	[StatusName] [varchar](20) NULL,
	[OriginalHTML] [varchar](255) NULL,
 CONSTRAINT [PKVWebWebPortalPage] PRIMARY KEY CLUSTERED 
(
	[VWebWebPortalPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebPortal]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebPortal](
	[WebPortal_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Thumbnail] [varchar](200) NULL,
	[Type] [varchar](20) NULL,
	[ImageLibraryHideLibrary] [varchar](3) NULL,
	[ImageLibraryDisableModify] [varchar](3) NULL,
	[ImageLibraryAutoSelectImage] [varchar](3) NULL,
	[ImageLibraryHideCategories] [varchar](3) NULL,
	[ImageLibraryDefaultLibrary] [varchar](3) NULL,
	[ImageLibraryHideUpload] [varchar](3) NULL,
	[ImageLibraryHideCaption] [varchar](3) NULL,
	[ImageLibraryEnableImageColor] [varchar](3) NULL,
 CONSTRAINT [PKWebPortal] PRIMARY KEY CLUSTERED 
(
	[WebPortal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebPortalPage]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebPortalPage](
	[WebPortalPage_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WebPortal_Id] [bigint] NULL,
	[PageName] [nvarchar](100) NULL,
	[WebURL] [ntext] NULL,
	[PageNo] [int] NULL,
	[VariableCols] [ntext] NULL,
	[WebPageType] [varchar](20) NULL,
	[SampleNumber] [bigint] NULL,
	[WebFile] [varchar](200) NULL,
	[EmailOptions] [ntext] NULL,
	[Rules] [ntext] NULL,
	[SortOrder] [int] NULL,
	[StatusName] [nvarchar](20) NULL,
	[VariableEditableCols] [ntext] NULL,
 CONSTRAINT [PKWebPortalPage] PRIMARY KEY CLUSTERED 
(
	[WebPortalPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebsitePage]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebsitePage](
	[WebsitePage_Id] [bigint] NOT NULL,
	[PageName] [varchar](50) NULL,
	[PageTitle] [varchar](200) NULL,
	[PageBody] [ntext] NULL,
	[ToolbarName] [varchar](50) NULL,
	[DefaultOrder] [float] NULL,
	[Customer_Id] [bigint] NULL,
 CONSTRAINT [PK_WebsitePage] PRIMARY KEY CLUSTERED 
(
	[WebsitePage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[ApproverTest]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE 
VIEW [dbo].[ApproverTest] AS SELECT     TOP 10 Status_Id AS Expr1, CurrentApproverLevel AS Expr2, ApprovalApproved AS Expr3, ApprovalApproverEmail AS Expr4, 
                      ApprovalDateApproved AS Expr5, ApprovedBy_Id AS Expr6, *
FROM         dbo.[Order]
ORDER BY Order_Id DESC

GO
/****** Object:  View [dbo].[TestSupplierEmails]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE 
VIEW [dbo].[TestSupplierEmails] AS SELECT     dbo.[Order].CartTransaction_Id, dbo.[Order].Order_Id, dbo.Template.Supplier_Id, dbo.Supplier.Email, dbo.Supplier.SupplierName, 
                      dbo.LoginAccount.Username, dbo.LoginAccount.Password, dbo.[Order].AddressAddress1, dbo.[Order].AddressAddress2, dbo.[Order].AddressAddress3, 
                      dbo.[Order].AddressSuburb, dbo.[Order].AddressState, dbo.[Order].AddressPostcode, dbo.Customer.CustomerName, dbo.[Order].Quantity, 
                      dbo.[Order].IndividualComments, dbo.[Order].ApprovalApproverComments, dbo.Template.TemplateName, dbo.Template.OtherInformation
FROM         dbo.LoginAccount RIGHT OUTER JOIN
                      dbo.Supplier ON dbo.LoginAccount.LoginAccount_Id = dbo.Supplier.LoginAccount_Id LEFT OUTER JOIN
                      dbo.Template ON dbo.Supplier.Supplier_Id = dbo.Template.Supplier_Id LEFT OUTER JOIN
                      dbo.[Order] INNER JOIN
                      dbo.Customer ON dbo.[Order].Customer_Id = dbo.Customer.Customer_Id ON dbo.Template.Template_Id = dbo.[Order].Template_Id
WHERE     (dbo.[Order].CartTransaction_Id = 275)

GO
/****** Object:  View [dbo].[ThemeFieldDetails]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE 
VIEW [dbo].[ThemeFieldDetails] AS SELECT     ThemeField.ThemeField_Id, Theme.ThemeName, ThemeField.Theme_Id, ThemeField.LibraryImage_Id, ThemeField.Colour_Id, 
                      ThemeField.FieldName, LibraryImage.Caption, LibraryImage.[File], LibraryImage.Thumbnail, Colour.Name AS ColourName, 
                      Colour.R, Colour.G, Colour.B, ThemeField.DefaultText
FROM         ThemeField INNER JOIN
                      Theme ON ThemeField.Theme_Id = Theme.Theme_Id LEFT OUTER JOIN
                      Colour ON ThemeField.Colour_Id = Colour.Colour_Id LEFT OUTER JOIN
                      LibraryImage ON ThemeField.LibraryImage_Id = LibraryImage.LibraryImage_Id



GO
/****** Object:  View [dbo].[VariablePrintEmails]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE 
VIEW [dbo].[VariablePrintEmails] AS SELECT     *
FROM         dbo.VariablePrint
WHERE     (Type LIKE 'email%')

GO
/****** Object:  View [dbo].[VWebReport_FirstLast]    Script Date: 11/27/2017 3:04:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE 
VIEW [dbo].[VWebReport_FirstLast] AS SELECT     rX.VPrintData_Id, rX.FirstAccess, rY.LastAccess, rX.Visits, rX.AverageTime
FROM         (SELECT     VPrintData_Id, COUNT(*) AS Visits, MIN(PageViewStart) AS FirstAccess, AVG(DATEDIFF(s, dbo.VWebLog.PageViewStart, 
                                              ISNULL(dbo.VWebLog.PageViewEnd, dbo.VWebLog.PageViewStart))) AS AverageTime
                       FROM          dbo.VWebLog
                       GROUP BY VPrintData_Id) rX INNER JOIN
                          (SELECT     VPrintData_Id, MAX(PageViewStart) AS LastAccess
                            FROM          dbo.VWebLog
                            GROUP BY VPrintData_Id) rY ON rX.VPrintData_Id = rY.VPrintData_Id

GO
INSERT [dbo].[CartTransaction] ([CartTransaction_Id], [ReturnedId], [ReturnedMessage], [BankRef], [DateTime], [CartAmountOriginal], [BankMessage], [Type], [Address1], [Address2], [Address3], [Address4], [Suburb], [State], [Postcode], [Country], [Comments], [OrderIds], [Freight], [GST], [CostCentre_Id], [FreightType], [City_Id], [County_Id], [State_Id], [Handling], [AddressAttention], [JobTicketNumber], [AdditionalEmailAddress], [GroupDiscount], [OrderSummary], [PaymentProcessStatus], [PaymentProcessTimeStamp], [BillingAddress1], [BillingAddress2], [BillingAddress3], [BillingAddress4], [BillingSuburb], [BillingState], [BillingPostcode], [BillingCountry], [OrderApproved], [AwaitingPayment], [AllocatedToBudget], [BudgetPaymentType], [XMLPostFile], [CartAmount], [BankLog], [CostCentreCostRuleCaption], [CostCentreCostRuleType], [AddressExternalId], [BillingExternalId], [AddressCompany], [AddressPhoneNumber], [SubmitStatus], [FreightType_Id], [PaymentGateway_Id], [ExtraShippingNotificationEmail]) VALUES (13323, N'', N'', N'', CAST(N'2015-10-07T17:42:34.700' AS DateTime), 0, N'None', N'invoice', N'Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'2160 Motel Drive', NULL, NULL, N'Bethlehem', N'PA', N'18018', N'USA', NULL, N'38382,38383,38384', 0, 0, 1721, NULL, NULL, NULL, NULL, 0, N'', NULL, NULL, 0, N'Order Number: PM38382 | Order Name: Rewarding Events Associate Pocket Guide | Quantity: 10
Order Number: PM38383 | Order Name: Enrollment Brochure, American English | Quantity: 25
Order Number: PM38384 | Order Name: Basic Member Enrollment Card | Quantity: 100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'<?xml version="1.0"?>
<!DOCTYPE cXML SYSTEM "http://xml.cxml.org/schemas/cXML/1.2.005/cXML.dtd">
<cXML version="1.2.005" xml:lang="en-US" payloadID="OPS_13323@OPS" timestamp="10-7-2015 5:42:35 PM">
	<Header>
		<From>
			<Credential domain="DUNS">
				<Identity>MRW</Identity>
			</Credential>
			<Credential domain="CompanyName">
				<Identity>Marriott Rewards</Identity>
			</Credential>
			<Credential domain="OPSInteropKey">
				<Identity></Identity>
			</Credential>
		</From>
		<To>
			<Credential domain="ASH">
				<Identity>OPS</Identity>
			</Credential>
		</To>
		<Sender>
			<Credential domain="DUNS">
				<Identity></Identity>
				<SharedSecret>ops9348</SharedSecret>
			</Credential>
			<UserAgent>OPSCXML</UserAgent>
		</Sender>
	</Header>
	<Request deploymentMode="production">
		<OrderRequest>
			<OrderRequestHeader type="new" orderID="OPS_13323" orderDate="10-7-2015 5:42:35 PM">
				<Total>
					<Money Currency="USD" CurrencySymbol="$">0</Money>
				</Total>
				<BillTo CostCenter="PCK_65317" CustomerPO="">
					<Address addressID="">
						<Name xml:lang="en-US"> PCK_65317</Name>
						<PostalAddress name="">
							<Name>Marriott Rewards</Name>
							<DeliverTo></DeliverTo>
							<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
							<Street>2160 Motel Drive</Street>
							<Street></Street>
							<City>Bethlehem</City>
							<State>PA</State>
							<PostalCode>18018</PostalCode>
							<Country isoCountryCode="">USA</Country>
						</PostalAddress>
						<Email>hsmith@dextersolutions.net</Email>
						<Phone>
							<TelephoneNumber>
								<CountryCode isoCountryCode=""/>
								<AreaOrCityCode/>
								<Number></Number>
							</TelephoneNumber>
						</Phone>
					</Address>
				</BillTo>
				<Shipping>
					<Money currency="USD">0</Money>
					<Description xml:lang="en-US"></Description>
				</Shipping>
				<Tax>
					<Money currency="USD">0</Money>
				</Tax>
				<Comments xml:lang="en-US" />
				<Extrinsic name="OPSUserName">hsmith66</Extrinsic>
				<Extrinsic name="OPSUserInterOpID"></Extrinsic>
				<Extrinsic name="OPSUserFirstName">Art</Extrinsic>
				<Extrinsic name="OPSUserLastName">Stockebrand</Extrinsic>
				<Extrinsic name="OPSUserPhone"></Extrinsic>
				<Extrinsic name="PaymentType">invoice</Extrinsic>
				<Extrinsic name="PaymentSource">
					<Extrinsic name="PaymentType">invoice</Extrinsic>
					<Extrinsic name="Amount">0</Extrinsic>
				</Extrinsic>
				<Extrinsic name="AddEmpInfo"></Extrinsic>
					<CostCentreName>[ABECY] Courtyard Allentown Bethlehem/Lehigh Valley Airport</CostCentreName>
					<!-- EmployeeExtraInputField -->
						<Extrinsic Type="{ExtraInputFieldExternalName}">{ExtraInputFieldValue}</Extrinsic>
					<!-- /EmployeeExtraInputField -->
				<SiteURL>https://rewards.ashospitality.com/</SiteURL>
				

			</OrderRequestHeader>
			

				<ItemOut lineNumber="" Rush="" quantity="1" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-9708</SupplierPartID>
						<SupplierPartAuxiliaryID>PM38382</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>RE MR PG</TemplateName>
					<Quantity>1</Quantity>
					<UnitSize>10</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Rewarding Events Associate Pocket Guide</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">10</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo></DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>hsmith@dextersolutions.net</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number></Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


				<ItemOut lineNumber="" Rush="" quantity="1" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-4718</SupplierPartID>
						<SupplierPartAuxiliaryID>PM38383</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>AE15</TemplateName>
					<Quantity>1</Quantity>
					<UnitSize>25</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Enrollment Brochure, American English</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">25</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo></DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>hsmith@dextersolutions.net</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number></Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


				<ItemOut lineNumber="" Rush="" quantity="4" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-9721</SupplierPartID>
						<SupplierPartAuxiliaryID>PM38384</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>MRP</TemplateName>
					<Quantity>4</Quantity>
					<UnitSize>25</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Basic Member Enrollment Card</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">25</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo></DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>hsmith@dextersolutions.net</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number></Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


		</OrderRequest>
	</Request>
</cXML>
', 0, NULL, NULL, NULL, N'ABECY-1', NULL, NULL, NULL, N'Success', NULL, NULL, NULL)
INSERT [dbo].[CartTransaction] ([CartTransaction_Id], [ReturnedId], [ReturnedMessage], [BankRef], [DateTime], [CartAmountOriginal], [BankMessage], [Type], [Address1], [Address2], [Address3], [Address4], [Suburb], [State], [Postcode], [Country], [Comments], [OrderIds], [Freight], [GST], [CostCentre_Id], [FreightType], [City_Id], [County_Id], [State_Id], [Handling], [AddressAttention], [JobTicketNumber], [AdditionalEmailAddress], [GroupDiscount], [OrderSummary], [PaymentProcessStatus], [PaymentProcessTimeStamp], [BillingAddress1], [BillingAddress2], [BillingAddress3], [BillingAddress4], [BillingSuburb], [BillingState], [BillingPostcode], [BillingCountry], [OrderApproved], [AwaitingPayment], [AllocatedToBudget], [BudgetPaymentType], [XMLPostFile], [CartAmount], [BankLog], [CostCentreCostRuleCaption], [CostCentreCostRuleType], [AddressExternalId], [BillingExternalId], [AddressCompany], [AddressPhoneNumber], [SubmitStatus], [FreightType_Id], [PaymentGateway_Id], [ExtraShippingNotificationEmail]) VALUES (34818, N'', N'', N'', CAST(N'2017-06-23T08:44:56.660' AS DateTime), 0, N'None', N'invoice', N'Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'2160 Motel Drive', NULL, NULL, N'Bethlehem', N'PA', N'18018', N'USA', NULL, N'90777,90779,90780,90781', 0, 0, 1721, NULL, NULL, NULL, NULL, 0, N'Eric Bonyun', NULL, NULL, 0, N'Order Number: PM90777 | Order Name: MR Enrollment Card Holder | Quantity: 1
Order Number: PM90779 | Order Name: Basic Member Enrollment Card | Quantity: 50
Order Number: PM90780 | Order Name: Enrollment Brochure, American English... | Quantity: 50
Order Number: PM90781 | Order Name: Associate Pocket Guide | Quantity: 10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'<?xml version="1.0"?>
<!DOCTYPE cXML SYSTEM "http://xml.cxml.org/schemas/cXML/1.2.005/cXML.dtd">
<cXML version="1.2.005" xml:lang="en-US" payloadID="OPS_34818@OPS2" timestamp="6-23-2017 8:44:57 AM">
	<Header>
		<From>
			<Credential domain="DUNS">
				<Identity>MRW</Identity>
			</Credential>
			<Credential domain="CompanyName">
				<Identity>Marriott Rewards</Identity>
			</Credential>
			<Credential domain="OPSInteropKey">
				<Identity></Identity>
			</Credential>
		</From>
		<To>
			<Credential domain="ASH">
				<Identity>OPS</Identity>
			</Credential>
		</To>
		<Sender>
			<Credential domain="DUNS">
				<Identity></Identity>
				<SharedSecret>ops9348</SharedSecret>
			</Credential>
			<UserAgent>OPSCXML</UserAgent>
		</Sender>
	</Header>
	<Request deploymentMode="production">
		<OrderRequest>
			<OrderRequestHeader type="new" orderID="OPS_34818" orderDate="6-23-2017 8:44:57 AM">
				<Total>
					<Money Currency="USD" CurrencySymbol="$">0</Money>
				</Total>
				<BillTo CostCenter="PCK_65317" CustomerPO="">
					<Address addressID="">
						<Name xml:lang="en-US"><![CDATA[ PCK_65317]]></Name>
						<PostalAddress name="">
							<Name><![CDATA[Marriott Rewards]]></Name>
							<DeliverTo>Eric Bonyun</DeliverTo>
							<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
							<Street>2160 Motel Drive</Street>
							<Street></Street>
							<City>Bethlehem</City>
							<State>PA</State>
							<PostalCode>18018</PostalCode>
							<Country isoCountryCode="">USA</Country>
						</PostalAddress>
						<Email>eric.bonyun@marriott.com</Email>
						<Phone>
							<TelephoneNumber>
								<CountryCode isoCountryCode=""/>
								<AreaOrCityCode/>
								<Number>610-317-6200 </Number>
							</TelephoneNumber>
						</Phone>
					</Address>
				</BillTo>
				<Shipping>
					<Money currency="USD">0</Money>
					<Description xml:lang="en-US"></Description>
				</Shipping>
				<Tax>
					<Money currency="USD">0</Money>
				</Tax>
				<Comments xml:lang="en-US" />
				<Extrinsic name="OPSUserName">ebony011</Extrinsic>
				<Extrinsic name="OPSUserInterOpID"></Extrinsic>
				<Extrinsic name="OPSUserFirstName">eric</Extrinsic>
				<Extrinsic name="OPSUserLastName">bonyun</Extrinsic>
				<Extrinsic name="OPSUserPhone">610-317-6200</Extrinsic>
				<Extrinsic name="PaymentType">invoice</Extrinsic>
				<Extrinsic name="PaymentSource">
					<Extrinsic name="PaymentType">invoice</Extrinsic>
					<Extrinsic name="Amount">0</Extrinsic>
				</Extrinsic>
				<Extrinsic name="AddEmpInfo"></Extrinsic>
					<CostCentreName>[ABECY] Courtyard Allentown Bethlehem/Lehigh Valley Airport</CostCentreName>
					<!-- EmployeeExtraInputField -->
						<Extrinsic Type="{ExtraInputFieldExternalName}">{ExtraInputFieldValue}</Extrinsic>
					<!-- /EmployeeExtraInputField -->
				<SiteURL>https://rewardscollateral.ashospitality.com/</SiteURL>
				

			</OrderRequestHeader>
			

				<ItemOut lineNumber="" Rush="" quantity="1" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-9702</SupplierPartID>
						<SupplierPartAuxiliaryID>PM90777</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>DIS MR CARD</TemplateName>
					<Quantity>1</Quantity>
					<UnitSize>1</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>MR Enrollment Card Holder</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">1</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo>Eric Bonyun</DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>eric.bonyun@marriott.com</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number>610-317-6200 </Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


				<ItemOut lineNumber="" Rush="" quantity="1" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-6721</SupplierPartID>
						<SupplierPartAuxiliaryID>PM90779</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>MRP16</TemplateName>
					<Quantity>1</Quantity>
					<UnitSize>50</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Basic Member Enrollment Card</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">50</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo>Eric Bonyun</DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>eric.bonyun@marriott.com</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number>610-317-6200 </Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


				<ItemOut lineNumber="" Rush="" quantity="1" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-4718</SupplierPartID>
						<SupplierPartAuxiliaryID>PM90780</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>AE15</TemplateName>
					<Quantity>1</Quantity>
					<UnitSize>50</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Enrollment Brochure, American English...</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">50</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo>Eric Bonyun</DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>eric.bonyun@marriott.com</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number>610-317-6200 </Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


				<ItemOut lineNumber="" Rush="" quantity="1" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-7712</SupplierPartID>
						<SupplierPartAuxiliaryID>PM90781</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>MRAPG1016</TemplateName>
					<Quantity>1</Quantity>
					<UnitSize>10</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Associate Pocket Guide</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">10</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo>Eric Bonyun</DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>eric.bonyun@marriott.com</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number>610-317-6200 </Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


		</OrderRequest>
	</Request>
</cXML>
', 0, NULL, NULL, NULL, N'ABECY-1', NULL, NULL, N'610-317-6200 ', N'Success', NULL, NULL, NULL)
INSERT [dbo].[CartTransaction] ([CartTransaction_Id], [ReturnedId], [ReturnedMessage], [BankRef], [DateTime], [CartAmountOriginal], [BankMessage], [Type], [Address1], [Address2], [Address3], [Address4], [Suburb], [State], [Postcode], [Country], [Comments], [OrderIds], [Freight], [GST], [CostCentre_Id], [FreightType], [City_Id], [County_Id], [State_Id], [Handling], [AddressAttention], [JobTicketNumber], [AdditionalEmailAddress], [GroupDiscount], [OrderSummary], [PaymentProcessStatus], [PaymentProcessTimeStamp], [BillingAddress1], [BillingAddress2], [BillingAddress3], [BillingAddress4], [BillingSuburb], [BillingState], [BillingPostcode], [BillingCountry], [OrderApproved], [AwaitingPayment], [AllocatedToBudget], [BudgetPaymentType], [XMLPostFile], [CartAmount], [BankLog], [CostCentreCostRuleCaption], [CostCentreCostRuleType], [AddressExternalId], [BillingExternalId], [AddressCompany], [AddressPhoneNumber], [SubmitStatus], [FreightType_Id], [PaymentGateway_Id], [ExtraShippingNotificationEmail]) VALUES (35219, N'', N'', N'', CAST(N'2017-07-09T14:28:12.743' AS DateTime), 0, N'None', N'invoice', N'Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'2160 Motel Drive', NULL, NULL, N'Bethlehem', N'PA', N'18018', N'USA', NULL, N'91879,91880', 0, 0, 1721, NULL, NULL, NULL, NULL, 0, N'sdfs', NULL, NULL, 0, N'Order Number: PM91879 | Order Name: Enrollment Brochure, American English | Quantity: 100
Order Number: PM91880 | Order Name: Enrollment Brochure, Czech | Quantity: 50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'<?xml version="1.0"?>
<!DOCTYPE cXML SYSTEM "http://xml.cxml.org/schemas/cXML/1.2.005/cXML.dtd">
<cXML version="1.2.005" xml:lang="en-US" payloadID="OPS_35219@OPS2" timestamp="7-9-2017 2:28:13 PM">
	<Header>
		<From>
			<Credential domain="DUNS">
				<Identity>MRW</Identity>
			</Credential>
			<Credential domain="CompanyName">
				<Identity>Marriott Rewards</Identity>
			</Credential>
			<Credential domain="OPSInteropKey">
				<Identity></Identity>
			</Credential>
		</From>
		<To>
			<Credential domain="ASH">
				<Identity>OPS</Identity>
			</Credential>
		</To>
		<Sender>
			<Credential domain="DUNS">
				<Identity></Identity>
				<SharedSecret>ops9348</SharedSecret>
			</Credential>
			<UserAgent>OPSCXML</UserAgent>
		</Sender>
	</Header>
	<Request deploymentMode="production">
		<OrderRequest>
			<OrderRequestHeader type="new" orderID="OPS_35219" orderDate="7-9-2017 2:28:13 PM">
				<Total>
					<Money Currency="USD" CurrencySymbol="$">0</Money>
				</Total>
				<BillTo CostCenter="PCK_65317" CustomerPO="">
					<Address addressID="">
						<Name xml:lang="en-US"><![CDATA[ PCK_65317]]></Name>
						<PostalAddress name="">
							<Name><![CDATA[Marriott Rewards]]></Name>
							<DeliverTo>sdfs</DeliverTo>
							<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
							<Street>2160 Motel Drive</Street>
							<Street></Street>
							<City>Bethlehem</City>
							<State>PA</State>
							<PostalCode>18018</PostalCode>
							<Country isoCountryCode="">USA</Country>
						</PostalAddress>
						<Email>csheldon@dextersolutions.net</Email>
						<Phone>
							<TelephoneNumber>
								<CountryCode isoCountryCode=""/>
								<AreaOrCityCode/>
								<Number>asdf</Number>
							</TelephoneNumber>
						</Phone>
					</Address>
				</BillTo>
				<Shipping>
					<Money currency="USD">0</Money>
					<Description xml:lang="en-US"></Description>
				</Shipping>
				<Tax>
					<Money currency="USD">0</Money>
				</Tax>
				<Comments xml:lang="en-US" />
				<Extrinsic name="OPSUserName">abecycls</Extrinsic>
				<Extrinsic name="OPSUserInterOpID"></Extrinsic>
				<Extrinsic name="OPSUserFirstName">Christopher</Extrinsic>
				<Extrinsic name="OPSUserLastName">Sheldon</Extrinsic>
				<Extrinsic name="OPSUserPhone"></Extrinsic>
				<Extrinsic name="PaymentType">invoice</Extrinsic>
				<Extrinsic name="PaymentSource">
					<Extrinsic name="PaymentType">invoice</Extrinsic>
					<Extrinsic name="Amount">0</Extrinsic>
				</Extrinsic>
				<Extrinsic name="AddEmpInfo"></Extrinsic>
					<CostCentreName>[ABECY] Courtyard Allentown Bethlehem/Lehigh Valley Airport</CostCentreName>
					<!-- EmployeeExtraInputField -->
						<Extrinsic Type="{ExtraInputFieldExternalName}">{ExtraInputFieldValue}</Extrinsic>
					<!-- /EmployeeExtraInputField -->
				<SiteURL>http://ops2.dextersolutions.net/</SiteURL>
				


				<Extrinsic Type="If shipment is refus">Yes</Extrinsic>
				
			</OrderRequestHeader>
			

				<ItemOut lineNumber="" Rush="" quantity="100" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-4000</SupplierPartID>
						<SupplierPartAuxiliaryID>PM91879</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>AE617</TemplateName>
					<Quantity>100</Quantity>
					<UnitSize>1</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Enrollment Brochure, American English</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">1</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo>sdfs</DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>csheldon@dextersolutions.net</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number>asdf</Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


				<ItemOut lineNumber="" Rush="" quantity="50" type="New" approved="NA" WaitingScheduler="No" requestedDeliveryDate="">
					<ItemID>
						<SupplierPartID>6-4030-S</SupplierPartID>
						<SupplierPartAuxiliaryID>PM91880</SupplierPartAuxiliaryID>
					</ItemID>
					<Supplier></Supplier>
					<SupplierPartID>MRW</SupplierPartID>
					<TemplateName>CZ617</TemplateName>
					<Quantity>50</Quantity>
					<UnitSize>1</UnitSize>
					<Image></Image>
					<ImpositionImage></ImpositionImage>
					<SchedulerFile></SchedulerFile>
					<FileUpload></FileUpload>
					<FileUploadName></FileUploadName>
					

					<TypeSettingInfo></TypeSettingInfo>
					<TemplateOtherInformation>Enrollment Brochure, Czech</TemplateOtherInformation>
					<ApproverComments></ApproverComments>
					<UserComments></UserComments>
					<Project>
						

						

					</Project>
					<Carrier></Carrier>
					<ShipVia></ShipVia>
					<Method></Method>
					

					<Extrinsic Type="NameOnStationery"></Extrinsic>
					

					<ItemDetail>
						<UnitPrice>
							
							<Item></Item>
							
							
							<Tax></Tax>
							
							

							
							<Money Currency="USD"></Money>
							
						</UnitPrice>
						<Description xml:lang="en-US"></Description>
						<UnitOfMeasure>EA</UnitOfMeasure>
						<Classification domain=""/>
						<URL></URL>
						<Extrinsic name="lineItemID"></Extrinsic>
						<Extrinsic name="productType"></Extrinsic>
						<Extrinsic name="quantityMultiplier">1</Extrinsic>
						<Extrinsic name="costCenter"/>
						<Extrinsic name="costCenterInteropID"/>
						<Extrinsic name="productInteropID"/>
						<Extrinsic name="variantInteropID"/>
						<Extrinsic name="shippingAddressInteropID"/>
						<Extrinsic name="shipWeight"/>
						<Extrinsic name="addressID"></Extrinsic>
					</ItemDetail>
					<ShipTo>
						<Address addressID="">
							<Name></Name>
							<PostalAddress>
								<DeliverTo>sdfs</DeliverTo>
								<Street>Courtyard Allentown Bethlehem/Lehigh Valley Airport</Street>
								<Street>2160 Motel Drive</Street>
								<Street></Street>
								<City>Bethlehem</City>
								<State>PA</State>
								<PostalCode>18018</PostalCode>
								<Country isoCountryCode="">USA</Country>
							</PostalAddress>
							<Email>csheldon@dextersolutions.net</Email>
							<Phone>
								<TelephoneNumber>
									<CountryCode isoCountryCode="" />
									<AreaOrCityCode />
									<Number>asdf</Number>
								</TelephoneNumber>
							</Phone>
						</Address>
					</ShipTo>
				</ItemOut>
			


		</OrderRequest>
	</Request>
</cXML>
', 0, NULL, NULL, NULL, N'ABECY-1', NULL, NULL, N'asdf', N'Success', NULL, NULL, NULL)
INSERT [dbo].[CostCentre] ([CostCentre_Id], [Customer_Id], [CostCentreName], [CostCentreNumber], [ParentCostCentre_Id], [CostCentreApprover_Id], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Registration], [UrgentOrdersCanBypassAppr], [ApproverOrdersCanBypassAp], [ReOrdersCanBypassApproval], [DeliveryAddressRetrievalA], [DeliveryAddressRetrievalA1], [DeliveryAddressRetrievalA2], [DisplayCost], [CostCentreNumberCaption], [CostCentreNumberLength], [CostCentreNumberRequired], [ExtraOrderInfo1Caption], [ExtraOrderInfo1Required], [ExtraOrderInfo1Length], [ExtraOrderInfo2Caption], [ExtraOrderInfo2Required], [ExtraOrderInfo2Length], [EmployeeUpdate], [UseDynamicCostCentres], [ShoppingCartType], [CostCentreAdministrator_Id], [AddDeliveryPerOrder], [CostCentreNumberShowWhere], [ExtraInfo1Type], [ExtraInfo2Type], [UserSideCaption], [FreightMinCost], [FreightCostPerKilo], [FileUpload], [Status_Id], [DisplayStock], [TaxPercent], [TaxLabel], [AllowRequiredDate], [UseDynamicCostCentresTabs], [FreightMethod], [State_Id], [County_Id], [City_Id], [CalculateTaxBy], [AllowReporting], [PreapprovalRequired], [PreapprovalAddresses], [ActivationType], [ActivationEmail], [AllowApproverEdit], [PreApprovalArea], [TaxFreight], [AddressAttention], [VWebDomains], [HideOrderHistory], [UniqueSessions], [RegistrationEnterAddress], [RegistrationUploadImage], [EmployeeAddressCreation], [Online], [DynamicSelect], [FreightCaption], [Country], [CurrencySymbol], [SendAdditionalEmail], [AdditionalEmailAddress], [CreditCardShowAsPopUp], [MergeShippingHandling], [CreditCardProcessInternally], [AdditionalHandlingCharge], [HandlingCaption], [Budget], [Period], [ShowEPFinRows], [RetailURLs], [DeliveryCaption], [DeliveryScreen], [PaymentGateway_Id], [EditQuantityInCart], [AdminAddToCarts], [AdminOrderFromUserCarts], [UPSShipperNumber], [DisplayTemplateExternalNumber], [AdditionalEmailRequired], [BillingAddressRetrievalA], [BillingAddressRetrievalA2], [SpecialOrderField], [CASS], [NCOA], [CostGroup_Id], [CreditCardApproval], [Logo], [AllowBudgetAllocation], [AlternatePaymentMethod], [AllowDoNotMail], [CommentReasons], [AvailableInProfiles], [SignOnKey], [AddressCompany], [AddressPhoneNumber], [TaxPostage], [MarkUpType], [MarkUpValue], [PrintBroker_Id], [ScreenDefinition_Id], [AccessImageLibrary], [PreSortFormatNCOA_Id], [AllowSplitShip], [ExternalListProcessor_Id], [DisplayTaxZero], [OpenIdLogin], [LoyaltyPointsProfile_Id], [ConsolidateApprovalEmails], [DisplayCostProductsAtQuantityDropDown], [DeliveryAddressRetrievalA3], [BillingAddressRetrievalA3], [CutOffAddressPopup], [DisplayTaxRatesAtCart], [InvoicePaymentMethod], [AlternateExternalCode], [ShoppingCartAbandonmentEmailDaysCount], [ShoppingCartAbandonmentEmailDaysCountRS], [AllowExtraShippingNotification], [WholeCartApprove], [ExternalTax_Id], [SeoDescription], [SeoKeywords]) VALUES (1721, 36, N'[ABECY] Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'PCK_65317', 1719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4134, N'Mandatory', N'No', N'No', N'No', N'Yes', N'Yes', N'Yes', N'No', NULL, NULL, N'No', NULL, N'No', NULL, NULL, N'No', NULL, N'Yes', N'Yes', N'Invoice', NULL, N'No', NULL, NULL, NULL, N'Property', NULL, NULL, N'Yes', 1, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Do not apply Tax', N'No', N'No', NULL, N'Self Activation', NULL, N'No', N'Per Cart', N'No', N'Mandatory', NULL, N'No', N'No', N'No', N'No', N'Yes', N'Yes', N'No', NULL, NULL, NULL, N'No', NULL, N'No', N'No', N'No', NULL, NULL, NULL, NULL, N'No', NULL, NULL, NULL, NULL, N'No', N'No', N'No', NULL, N'No', N'No', N'No', N'No', N'ABECY', N'No', N'No', NULL, NULL, NULL, N'No', NULL, N'Yes', NULL, N'No', NULL, N'Optional', N'Mandatory', N'No', NULL, NULL, 11, 6, N'No', NULL, N'Never', NULL, N'No', N'No', NULL, N'No', N'No', N'No', N'No', NULL, N'No', NULL, NULL, NULL, NULL, N'No', N'No', NULL, NULL, NULL)
INSERT [dbo].[CostCentre] ([CostCentre_Id], [Customer_Id], [CostCentreName], [CostCentreNumber], [ParentCostCentre_Id], [CostCentreApprover_Id], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Registration], [UrgentOrdersCanBypassAppr], [ApproverOrdersCanBypassAp], [ReOrdersCanBypassApproval], [DeliveryAddressRetrievalA], [DeliveryAddressRetrievalA1], [DeliveryAddressRetrievalA2], [DisplayCost], [CostCentreNumberCaption], [CostCentreNumberLength], [CostCentreNumberRequired], [ExtraOrderInfo1Caption], [ExtraOrderInfo1Required], [ExtraOrderInfo1Length], [ExtraOrderInfo2Caption], [ExtraOrderInfo2Required], [ExtraOrderInfo2Length], [EmployeeUpdate], [UseDynamicCostCentres], [ShoppingCartType], [CostCentreAdministrator_Id], [AddDeliveryPerOrder], [CostCentreNumberShowWhere], [ExtraInfo1Type], [ExtraInfo2Type], [UserSideCaption], [FreightMinCost], [FreightCostPerKilo], [FileUpload], [Status_Id], [DisplayStock], [TaxPercent], [TaxLabel], [AllowRequiredDate], [UseDynamicCostCentresTabs], [FreightMethod], [State_Id], [County_Id], [City_Id], [CalculateTaxBy], [AllowReporting], [PreapprovalRequired], [PreapprovalAddresses], [ActivationType], [ActivationEmail], [AllowApproverEdit], [PreApprovalArea], [TaxFreight], [AddressAttention], [VWebDomains], [HideOrderHistory], [UniqueSessions], [RegistrationEnterAddress], [RegistrationUploadImage], [EmployeeAddressCreation], [Online], [DynamicSelect], [FreightCaption], [Country], [CurrencySymbol], [SendAdditionalEmail], [AdditionalEmailAddress], [CreditCardShowAsPopUp], [MergeShippingHandling], [CreditCardProcessInternally], [AdditionalHandlingCharge], [HandlingCaption], [Budget], [Period], [ShowEPFinRows], [RetailURLs], [DeliveryCaption], [DeliveryScreen], [PaymentGateway_Id], [EditQuantityInCart], [AdminAddToCarts], [AdminOrderFromUserCarts], [UPSShipperNumber], [DisplayTemplateExternalNumber], [AdditionalEmailRequired], [BillingAddressRetrievalA], [BillingAddressRetrievalA2], [SpecialOrderField], [CASS], [NCOA], [CostGroup_Id], [CreditCardApproval], [Logo], [AllowBudgetAllocation], [AlternatePaymentMethod], [AllowDoNotMail], [CommentReasons], [AvailableInProfiles], [SignOnKey], [AddressCompany], [AddressPhoneNumber], [TaxPostage], [MarkUpType], [MarkUpValue], [PrintBroker_Id], [ScreenDefinition_Id], [AccessImageLibrary], [PreSortFormatNCOA_Id], [AllowSplitShip], [ExternalListProcessor_Id], [DisplayTaxZero], [OpenIdLogin], [LoyaltyPointsProfile_Id], [ConsolidateApprovalEmails], [DisplayCostProductsAtQuantityDropDown], [DeliveryAddressRetrievalA3], [BillingAddressRetrievalA3], [CutOffAddressPopup], [DisplayTaxRatesAtCart], [InvoicePaymentMethod], [AlternateExternalCode], [ShoppingCartAbandonmentEmailDaysCount], [ShoppingCartAbandonmentEmailDaysCountRS], [AllowExtraShippingNotification], [WholeCartApprove], [ExternalTax_Id], [SeoDescription], [SeoKeywords]) VALUES (7941, 47, N'[ABECY] Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'PCK_65317', 6909, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14095, N'Mandatory', N'No', N'No', N'No', N'Yes', N'No', N'Yes', N'Yes', NULL, NULL, N'No', NULL, N'No', NULL, NULL, N'No', NULL, N'Yes', N'Yes', N'Invoice', NULL, N'No', NULL, NULL, NULL, N'Property', NULL, NULL, N'Yes', NULL, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Do not apply Tax', N'Yes', N'Yes', NULL, N'Administrator Activation', NULL, N'No', N'Per Cart', N'No', N'Optional', NULL, N'No', N'No', N'Yes', N'Yes', N'Yes', N'Yes', N'No', NULL, NULL, NULL, N'No', NULL, N'No', N'No', N'No', NULL, NULL, NULL, NULL, N'No', NULL, NULL, NULL, NULL, N'No', N'No', N'No', NULL, N'Yes', N'No', N'Yes', N'No', N'ABECY', N'No', N'No', NULL, NULL, NULL, N'No', NULL, N'Yes', NULL, N'No', NULL, N'Optional', N'Optional', N'No', NULL, NULL, 20, NULL, N'No', NULL, NULL, NULL, N'No', N'No', NULL, N'No', N'No', N'No', N'No', NULL, N'No', NULL, NULL, NULL, NULL, N'No', N'Yes', NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (20, N'Online Print Solutions', N'jason.sloaf@efi.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', N'Never', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (21, N'Viceroy', N'wmcmillen@dexterhospitality.com', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout Invoice (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'AS Hospitality Customer Service', N'noreply@ashospitality.com', 1, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (33, N'Jersey Mikes', N'jerseymikesorders@tailormadeprinting.com', 2, NULL, N'00144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout Invoice (optional)', NULL, N'Yes', N'Yes', NULL, N'JM101', NULL, NULL, N'Yes', N'No', N'No', N'Yes', N'Jersey Mike Orders', N'jmorders@dexterhospitality.com', 3, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (34, N'GSSI', N'gssi@dexterhospitality.com', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'GSSI E-Store', N'noreply@gssigroup.com', 4, NULL, NULL, N'PROOF', NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (35, N'Dexter Press', NULL, NULL, NULL, N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Never', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (36, N'Marriott Rewards', N'RewardsCollateral@ashospitality.com', 11, NULL, N'MRW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Never', NULL, N'Yes', N'No', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'Rewards Collateral', N'RewardsCollateral@ashospitality.com', 6, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (38, N'Big Demos', N'demo@dextersolutions.net', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'Big Demo CS', N'demo.cs@dextersolutions.net', NULL, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (39, N'Online Print Solutions Kodak', N'leah.mcgill@kodak.com', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Always (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, NULL, 2, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (40, N'Kodak', N'leah.mcgill@kodak.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Always (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (41, N'Dexter Solutions', N'wmcmillen@dextersolutions.net', 9, NULL, N'Dexter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'Yes', N'Dexter Solutions', N'wmcmillen@dextersolutions.net', 8, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (42, N'Candlewood Suites ', N'candlewood@dextersolutions.net', 10, NULL, N'CDLW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout Invoice (mandatory)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'AS Hospitality IHG Team', N'ihg@ashospitality.com', 9, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (43, N'Edition Hotels', N'editionhotels@dextersolutions.net', 15, NULL, N'EDITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (mandatory)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'AS Hospitality Marriott Team', N'marriottbrands@ashospitality.com', 10, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (44, N'Autograph Collection Hotels', N'autographcollection@ashospitality.com', 17, NULL, N'autograph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (mandatory)', NULL, N'Yes', N'Yes', NULL, N'autograph', NULL, NULL, N'Yes', N'No', N'No', N'No', N'Autograph Collection ', N'autographcollection@ashospitality.com', 15, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (45, N'Baha Mar', N'bahamar@dextersolutions.net', 19, NULL, N'bahamar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Never', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'AS Hospitality Baha Mar Customer Care', N'bahamar@ashospitality.com', 17, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (46, N'Dexter Development', N'trhodes@dextersolutions.net', 35, NULL, N'DEXDEB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Always (optional)', NULL, N'Yes', N'Yes', NULL, N'INTDEB', N'h567e82adkl17990000d1062529u2100bb7547e2c5bf561ad7', NULL, N'Yes', N'No', N'No', N'No', N'Timothy Rhodes', N'trhodes@dextersolutions.net', 1, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (47, N'DS Business Cards', N'dsportal@dextersolutions.net', 20, NULL, N'ashbc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (mandatory)', NULL, N'Yes', N'Yes', NULL, N'ashbc', NULL, NULL, N'Yes', N'No', N'No', N'Yes', N'DS Business Card Portal', N'customerservice@ashospitality.com', 26, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (48, N'Destination Hotels', N'destinationhotels@ashospitality.com', 21, NULL, N'deshotel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'Destination Collateral', N'destinationhotels@ashospitality.com', 18, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (49, N'Aire-Master of America, Inc.', N'aire-master@dextersolutions.net', 27, NULL, N'am123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, NULL, 21, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (50, N'Marcus Hotels', N'ordernotification@ashospitality.com', 1, NULL, N'marcus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'Marcus Collateral', N'ordernotification@ashospitality.com', 23, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (51, N'Benchmark Hotels', N'benchmark@ashospitality.com', 28, NULL, N'brhhotels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Never', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'Benchmark Collateral', N'benchmark@ashospitality.com', 22, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (54, N'Standard Default', N'csheldon@dextersolutions.net', 30, NULL, N'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (mandatory)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'Christopher Sheldon', N'csheldon@dextersolutions.net', 25, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (55, N'The Woodlands', NULL, NULL, NULL, N'wdlnds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Always (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (56, N'Inns of Monterey', N'innsofmonterey@ashospitality.com', 31, NULL, N'innmnty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Always (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, NULL, 28, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (57, N'Marriott Vacation Club Pulse', N'MarriottVacationClub@ashospitality.com', 32, NULL, N'MVCP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (mandatory)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', N'Marriott Vacation Club', N'MarriottVacationClub@ashospitality.com', 27, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (58, N'Best Western', N'bestwestern@dextersolutions.net', 34, NULL, N'BW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, NULL, 30, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (59, N'Kimpton Hotel', N'kimpton@ashospitality.com', 33, NULL, N'KIMP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/customerlogo/KimptonCorpBanner.jpg', NULL, N'Only on Checkout Invoice (mandatory)', NULL, N'Yes', N'Yes', NULL, NULL, NULL, NULL, N'Yes', N'No', N'No', N'No', NULL, N'kimpton@ashospitality.com', NULL, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (60, N'AS Hospitality', N'thomas@dextersolutions.net', 36, NULL, N'indy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout (optional)', NULL, N'Yes', N'No', NULL, N'indy', N'6hFMDcmwv3cN', NULL, N'Yes', N'No', N'No', N'No', N'customerservice@ashospitality.com', NULL, 31, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[Customer] ([Customer_Id], [CustomerName], [PrinterNotificationEmail], [PrintBroker_Id], [IndexPageText], [DebtorCode], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [LoginAccount_Id], [Logo], [UseEditablePDF], [ShowPONumberBox], [AdditionalEmployeeInfo], [UseCart], [ShowSaveButton], [Comments], [DebtorCode2], [SharedSecret], [Supplier_Id], [Online], [ReplaceSiteLogo], [SeparateEmailPerOrder], [AllowSaveAs], [EmailFromName], [EmailFromAddress], [ScreenDefinition_Id], [ExternalUsername], [ExternalURL], [Watermark], [FacebookAppId], [CatalogSearchPartialMatch], [AllowTemplateDataSaving]) VALUES (61, N'Marriott Vacation Club', N'MarriottVacationClub@ashospitality.com', 37, NULL, N'MVC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Only on Checkout Invoice (optional)', NULL, N'Yes', N'No', NULL, N'MVC', N'6hFMDcmwv3cN', NULL, N'Yes', N'No', N'No', N'No', N'Marriott Vacation Club', N'MarriottVacationClub@ashospitality.com', 32, NULL, NULL, NULL, NULL, N'No', N'No')
INSERT [dbo].[DoubleCut] ([DoubleCut_Id], [GapName], [VerticalHeight], [HorizontalWidth], [Gutter], [UnitOfMeasurement_Id]) VALUES (1, N' No Double Cut', 0, 0, 0, 1)
INSERT [dbo].[DoubleCut] ([DoubleCut_Id], [GapName], [VerticalHeight], [HorizontalWidth], [Gutter], [UnitOfMeasurement_Id]) VALUES (2, N'1/4 inch', 0.25, 0.25, 0, 4)
INSERT [dbo].[ds_orderLimits] ([grouping], [limit], [type], [roundTo], [hiddenMatchAll]) VALUES (N'MAR-ABECY-EB', 230, N'grid', 50, NULL)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2166, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2194, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2195, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2196, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2197, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2198, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2199, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2200, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2201, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2202, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2203, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2204, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2205, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2206, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2207, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2209, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2210, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2211, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 2337, 1721, 0, 0)
INSERT [dbo].[ds_templateGrouping] ([grouping], [templateId], [costCenterId], [type], [useMax]) VALUES (N'MAR-ABECY-EB', 3843, 1721, 0, 0)
INSERT [dbo].[LoginAccount] ([LoginAccount_Id], [Username], [Password], [UserType_Id], [Encrypted]) VALUES (4134, N'MAR-ABECY', N'ABECY', 3, NULL)
INSERT [dbo].[LoginAccount] ([LoginAccount_Id], [Username], [Password], [UserType_Id], [Encrypted]) VALUES (11147, N'hsmith66', N'12345', 2, NULL)
INSERT [dbo].[LoginAccount] ([LoginAccount_Id], [Username], [Password], [UserType_Id], [Encrypted]) VALUES (14095, N'DSBC-ABECY', N'ABECY', 3, NULL)
INSERT [dbo].[Margin] ([Margin_Id], [Type], [Top], [Left]) VALUES (1, N'No Margin', 0, 0)
INSERT [dbo].[Margin] ([Margin_Id], [Type], [Top], [Left]) VALUES (2, N'1/2 Inch', 0, 36)
INSERT [dbo].[Margin] ([Margin_Id], [Type], [Top], [Left]) VALUES (3, N'1/4 Inch', 18, 18)
INSERT [dbo].[Margin] ([Margin_Id], [Type], [Top], [Left]) VALUES (4, N'.125', 0.125, 0.125)
INSERT [dbo].[Order] ([Order_Id], [Customer_Id], [Template_Id], [Status_Id], [CostCentre_Id], [OrderNumber], [Date], [Stationery_Id], [ClientProject_Id], [Quantity], [QuantityPrinted], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [ApprovalApproved], [ApprovalApproverEmail], [ApprovalDateApproved], [ApprovalApproverComments], [ApprovalApproverCode], [OrderContactDetailsContac], [OrderContactDetailsEmail], [ContactNumbersPhone], [ContactNumbersFax], [TypeSettingInfo], [CostCentreNumber], [PONumber], [Urgent], [IndividualEmail], [IndividualComments], [ExtraInfo1], [ExtraInfo2], [DownloadStatus], [DownloadDate], [DownloadComments], [TimesaverNo], [UrgentCode], [CartTransaction_Id], [OrderedBy_Id], [DebtorCode], [DispatchDate], [ApprovedBy_Id], [TotalQuantity], [NexJobUpload_Id], [VariablePrint_Id], [SubmitDate], [RequiredDate], [PrepressDate], [ShippedDate], [ShippedWith], [TrackingNumber], [CurrentApproverLevel], [PreApprovalEmail], [PreApprovalKey], [Cost], [Tax], [Freight], [AddressAttention], [JobTicketNumber], [FreightType], [VWeb_Id], [UniqueSession], [GuestKey], [Postage], [Weight], [Handling], [PromoInfo], [VWebMultiTouchCampaign_Id], [OrderName], [Supplier_Id], [FileUpload], [FileUploadName], [TouchNumber], [VWebMultiTouchAddition_Id], [ProductName], [DeliveryOptions], [AddressBillingAddress1], [AddressBillingAddress2], [AddressBillingAddress3], [AddressBillingAddress4], [AddressBillingSuburb], [AddressBillingState], [AddressBillingPostcode], [AddressBillingCountry], [SpecialOrderField], [PurchaseListPrice], [AllocatedToBudget], [StockHistory_Id], [UnitQtysQtyPerUnit], [BuyPrice], [JobTicket_Id], [AddressExternalId], [AddressBillingExternalId], [DispatchProfile_Id], [ExcludeHandling], [AddressCompany], [AddressPhoneNumber], [Downloadable], [DownloadOnly], [ApprovalType], [PromoDiscountCost], [WaitingScheduler], [DeliveryDetails], [AccessCode], [ExternalPO], [ProductionTicket_Id], [MasterNo], [AutoImposition_Id], [ShipmentId]) VALUES (38383, 36, 2166, 4, 1721, N'PM38383', CAST(N'2015-10-07T17:42:35.153' AS DateTime), NULL, NULL, 1, NULL, N'Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'2160 Motel Drive', NULL, NULL, N'Bethlehem', N'PA', N'18018', N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2015-10-07T17:42:38.937' AS DateTime), N'<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE cXML SYSTEM "http://xml.cXML.org/schemas/cXML/1.1.009/cXML.dtd">
<cXML payloadID="" xml:lang="en-US" timestamp="2015-10-07 17:39:45">
<Response>
    <Status code="200" text="success" />
</Response>
</cXML>', NULL, NULL, 13323, 11147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2015-10-08T00:00:00.000' AS DateTime), N'fedex', N'038174091243691', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Enrollment Brochure, American English', NULL, NULL, NULL, NULL, NULL, N'AE15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 251, 25, 0, NULL, N'ABECY-1', NULL, NULL, N'No', NULL, NULL, N'No', NULL, N'CostCentre', NULL, NULL, NULL, NULL, N'', NULL, N'6-4718', NULL, NULL)
INSERT [dbo].[Order] ([Order_Id], [Customer_Id], [Template_Id], [Status_Id], [CostCentre_Id], [OrderNumber], [Date], [Stationery_Id], [ClientProject_Id], [Quantity], [QuantityPrinted], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [ApprovalApproved], [ApprovalApproverEmail], [ApprovalDateApproved], [ApprovalApproverComments], [ApprovalApproverCode], [OrderContactDetailsContac], [OrderContactDetailsEmail], [ContactNumbersPhone], [ContactNumbersFax], [TypeSettingInfo], [CostCentreNumber], [PONumber], [Urgent], [IndividualEmail], [IndividualComments], [ExtraInfo1], [ExtraInfo2], [DownloadStatus], [DownloadDate], [DownloadComments], [TimesaverNo], [UrgentCode], [CartTransaction_Id], [OrderedBy_Id], [DebtorCode], [DispatchDate], [ApprovedBy_Id], [TotalQuantity], [NexJobUpload_Id], [VariablePrint_Id], [SubmitDate], [RequiredDate], [PrepressDate], [ShippedDate], [ShippedWith], [TrackingNumber], [CurrentApproverLevel], [PreApprovalEmail], [PreApprovalKey], [Cost], [Tax], [Freight], [AddressAttention], [JobTicketNumber], [FreightType], [VWeb_Id], [UniqueSession], [GuestKey], [Postage], [Weight], [Handling], [PromoInfo], [VWebMultiTouchCampaign_Id], [OrderName], [Supplier_Id], [FileUpload], [FileUploadName], [TouchNumber], [VWebMultiTouchAddition_Id], [ProductName], [DeliveryOptions], [AddressBillingAddress1], [AddressBillingAddress2], [AddressBillingAddress3], [AddressBillingAddress4], [AddressBillingSuburb], [AddressBillingState], [AddressBillingPostcode], [AddressBillingCountry], [SpecialOrderField], [PurchaseListPrice], [AllocatedToBudget], [StockHistory_Id], [UnitQtysQtyPerUnit], [BuyPrice], [JobTicket_Id], [AddressExternalId], [AddressBillingExternalId], [DispatchProfile_Id], [ExcludeHandling], [AddressCompany], [AddressPhoneNumber], [Downloadable], [DownloadOnly], [ApprovalType], [PromoDiscountCost], [WaitingScheduler], [DeliveryDetails], [AccessCode], [ExternalPO], [ProductionTicket_Id], [MasterNo], [AutoImposition_Id], [ShipmentId]) VALUES (90780, 36, 2166, 4, 1721, N'PM90780', CAST(N'2017-06-23T08:44:57.187' AS DateTime), NULL, NULL, 1, NULL, N'Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'2160 Motel Drive', NULL, NULL, N'Bethlehem', N'PA', N'18018', N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-06-23T08:45:01.460' AS DateTime), N'<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE cXML SYSTEM "http://xml.cXML.org/schemas/cXML/1.1.009/cXML.dtd">
<cXML payloadID="" xml:lang="en-US" timestamp="2017-06-23 08:44:10">
<Response>
    <Status code="200" text="success" />
</Response>
</cXML>', NULL, NULL, 34818, 33518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-06-26T00:00:00.000' AS DateTime), N'fedex', N'739993776093', NULL, NULL, NULL, 0, 0, NULL, N'Eric Bonyun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Enrollment Brochure, American English...', NULL, NULL, NULL, NULL, NULL, N'AE15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 0, NULL, N'ABECY-1', NULL, NULL, N'No', NULL, N'610-317-6200 ', N'No', NULL, N'CostCentre', NULL, NULL, NULL, N'B5F882CB-EAD0-4465-983E-42B35AA49A2C', NULL, NULL, N'6-4718', NULL, NULL)
INSERT [dbo].[Order] ([Order_Id], [Customer_Id], [Template_Id], [Status_Id], [CostCentre_Id], [OrderNumber], [Date], [Stationery_Id], [ClientProject_Id], [Quantity], [QuantityPrinted], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [ApprovalApproved], [ApprovalApproverEmail], [ApprovalDateApproved], [ApprovalApproverComments], [ApprovalApproverCode], [OrderContactDetailsContac], [OrderContactDetailsEmail], [ContactNumbersPhone], [ContactNumbersFax], [TypeSettingInfo], [CostCentreNumber], [PONumber], [Urgent], [IndividualEmail], [IndividualComments], [ExtraInfo1], [ExtraInfo2], [DownloadStatus], [DownloadDate], [DownloadComments], [TimesaverNo], [UrgentCode], [CartTransaction_Id], [OrderedBy_Id], [DebtorCode], [DispatchDate], [ApprovedBy_Id], [TotalQuantity], [NexJobUpload_Id], [VariablePrint_Id], [SubmitDate], [RequiredDate], [PrepressDate], [ShippedDate], [ShippedWith], [TrackingNumber], [CurrentApproverLevel], [PreApprovalEmail], [PreApprovalKey], [Cost], [Tax], [Freight], [AddressAttention], [JobTicketNumber], [FreightType], [VWeb_Id], [UniqueSession], [GuestKey], [Postage], [Weight], [Handling], [PromoInfo], [VWebMultiTouchCampaign_Id], [OrderName], [Supplier_Id], [FileUpload], [FileUploadName], [TouchNumber], [VWebMultiTouchAddition_Id], [ProductName], [DeliveryOptions], [AddressBillingAddress1], [AddressBillingAddress2], [AddressBillingAddress3], [AddressBillingAddress4], [AddressBillingSuburb], [AddressBillingState], [AddressBillingPostcode], [AddressBillingCountry], [SpecialOrderField], [PurchaseListPrice], [AllocatedToBudget], [StockHistory_Id], [UnitQtysQtyPerUnit], [BuyPrice], [JobTicket_Id], [AddressExternalId], [AddressBillingExternalId], [DispatchProfile_Id], [ExcludeHandling], [AddressCompany], [AddressPhoneNumber], [Downloadable], [DownloadOnly], [ApprovalType], [PromoDiscountCost], [WaitingScheduler], [DeliveryDetails], [AccessCode], [ExternalPO], [ProductionTicket_Id], [MasterNo], [AutoImposition_Id], [ShipmentId]) VALUES (91879, 36, 2166, 4, 1721, N'PM91879', CAST(N'2017-07-09T14:28:13.310' AS DateTime), NULL, NULL, 0, NULL, N'Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'2160 Motel Drive', NULL, NULL, N'Bethlehem', N'PA', N'18018', N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-07-09T14:28:17.760' AS DateTime), N'<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE cXML SYSTEM "http://xml.cXML.org/schemas/cXML/1.1.009/cXML.dtd">
<cXML payloadID="" xml:lang="en-US" timestamp="2017-07-09 14:27:44">
<Response>
    <Status code="200" text="success" />
</Response>
</cXML>', NULL, NULL, 35219, 23563, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-07-11T00:00:00.000' AS DateTime), N'fedex', N'739993903233', NULL, NULL, NULL, 0, 0, NULL, N'sdfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Enrollment Brochure, American English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, N'ABECY-1', NULL, NULL, N'No', NULL, N'asdf', N'No', NULL, N'CostCentre', NULL, NULL, NULL, N'92EF477D-E991-4C18-8729-D8D7EDA3D126', NULL, NULL, N'6-4000', NULL, NULL)
INSERT [dbo].[Order] ([Order_Id], [Customer_Id], [Template_Id], [Status_Id], [CostCentre_Id], [OrderNumber], [Date], [Stationery_Id], [ClientProject_Id], [Quantity], [QuantityPrinted], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [ApprovalApproved], [ApprovalApproverEmail], [ApprovalDateApproved], [ApprovalApproverComments], [ApprovalApproverCode], [OrderContactDetailsContac], [OrderContactDetailsEmail], [ContactNumbersPhone], [ContactNumbersFax], [TypeSettingInfo], [CostCentreNumber], [PONumber], [Urgent], [IndividualEmail], [IndividualComments], [ExtraInfo1], [ExtraInfo2], [DownloadStatus], [DownloadDate], [DownloadComments], [TimesaverNo], [UrgentCode], [CartTransaction_Id], [OrderedBy_Id], [DebtorCode], [DispatchDate], [ApprovedBy_Id], [TotalQuantity], [NexJobUpload_Id], [VariablePrint_Id], [SubmitDate], [RequiredDate], [PrepressDate], [ShippedDate], [ShippedWith], [TrackingNumber], [CurrentApproverLevel], [PreApprovalEmail], [PreApprovalKey], [Cost], [Tax], [Freight], [AddressAttention], [JobTicketNumber], [FreightType], [VWeb_Id], [UniqueSession], [GuestKey], [Postage], [Weight], [Handling], [PromoInfo], [VWebMultiTouchCampaign_Id], [OrderName], [Supplier_Id], [FileUpload], [FileUploadName], [TouchNumber], [VWebMultiTouchAddition_Id], [ProductName], [DeliveryOptions], [AddressBillingAddress1], [AddressBillingAddress2], [AddressBillingAddress3], [AddressBillingAddress4], [AddressBillingSuburb], [AddressBillingState], [AddressBillingPostcode], [AddressBillingCountry], [SpecialOrderField], [PurchaseListPrice], [AllocatedToBudget], [StockHistory_Id], [UnitQtysQtyPerUnit], [BuyPrice], [JobTicket_Id], [AddressExternalId], [AddressBillingExternalId], [DispatchProfile_Id], [ExcludeHandling], [AddressCompany], [AddressPhoneNumber], [Downloadable], [DownloadOnly], [ApprovalType], [PromoDiscountCost], [WaitingScheduler], [DeliveryDetails], [AccessCode], [ExternalPO], [ProductionTicket_Id], [MasterNo], [AutoImposition_Id], [ShipmentId]) VALUES (91880, 36, 2199, 4, 1721, N'PM91880', CAST(N'2017-07-09T14:28:13.310' AS DateTime), NULL, NULL, 0, NULL, N'Courtyard Allentown Bethlehem/Lehigh Valley Airport', N'2160 Motel Drive', NULL, NULL, N'Bethlehem', N'PA', N'18018', N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-07-09T14:28:17.760' AS DateTime), N'<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE cXML SYSTEM "http://xml.cXML.org/schemas/cXML/1.1.009/cXML.dtd">
<cXML payloadID="" xml:lang="en-US" timestamp="2017-07-09 14:27:44">
<Response>
    <Status code="200" text="success" />
</Response>
</cXML>', NULL, NULL, 35219, 23563, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-07-11T00:00:00.000' AS DateTime), N'fedex', N'739993903233', NULL, NULL, NULL, 0, 0, NULL, N'sdfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Enrollment Brochure, Czech', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, N'ABECY-1', NULL, NULL, N'No', NULL, N'asdf', N'No', NULL, N'CostCentre', NULL, NULL, NULL, N'5437F5A0-EB96-4BB4-A1DC-49BD14B11911', NULL, NULL, N'6-4030-S', NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (1, N'Files/BrokerBranding/default/cHeader2.htm', N'default', N'Default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/default/cFooter2.html', N'Files/BrokerBranding/default/side.htm', N'No', N'Yes', N'Files/BrokerBranding/default/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (2, N'Files/BrokerBranding/jersey/header16.htm', N'jersey', N'Jersey Mike', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/jersey/footer.htm', N'Files/BrokerBranding/jersey/side.htm', N'No', N'No', N'Files/BrokerBranding/jersey/jmhome5.htm', N'Files/BrokerBranding/jersey/jmcategoriespage2.htm', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (3, N'Files/BrokerBranding/gssi/cHeader.htm', N'gssi', N'GSSI Lux', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/gssi/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/gssi/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (5, N'Files/BrokerBranding/ashlux1/cHeader.htm', N'ashlux1', N'ASH Lux 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/ashlux1/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/ashlux1/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (7, N'Files/BrokerBranding/ritz/cHeader.htm', N'ritz', N'Ritz Carlton', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/ritz/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/ritz/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (8, N'Files/BrokerBranding/bigdemo/cHeader2.htm', N'bigdemo', N'Big Demos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/bigdemo/cFooter2.html', N'Files/BrokerBranding/bigdemo/side.htm', N'No', N'No', N'Files/BrokerBranding/bigdemo/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (9, N'Files/BrokerBranding/dextersolutions/cHeader.htm', N'dextersolutions', N'Dexter Solutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/dextersolutions/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/dextersolutions/cLanding.html', NULL, N'Files/BrokerBranding/dextersolutions/cart.htm', NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (10, N'Files/BrokerBranding/cwood/cHeader.htm', N'cwood', N'Candlewood', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/cwood/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/cwood/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (11, N'Files/BrokerBranding/mrus/cHeader.htm', N'mrus', N'Marriott Rewards', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/mrus/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/mrus/cLanding.html', N'Files/BrokerBranding/mrus/ProductCategories.htm', N'Files/BrokerBranding/mrus/cart.htm', NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (12, N'Files/BrokerBranding/mrritz/cHeader.htm', N'mrritz', N'Marriott Rewards Ritz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/mrritz/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/mrritz/cLanding.html', N'Files/BrokerBranding/mrritz/ProductCategories.htm', N'Files/BrokerBranding/mrritz/cart2.htm', NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (14, N'Files/BrokerBranding/editionhotels/cHeader.htm', N'editionhotels', N'Edition Hotels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/editionhotels/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/editionhotels/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (15, N'Files/BrokerBranding/editionhotelsmiami/cHeader.htm', N'editionhotelsmiami', N'EditionHotelsMiami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/editionhotelsmiami/cFooter.html', N'Files/BrokerBranding/editionhotelsmiami/sidebar.htm', N'No', N'No', N'Files/BrokerBranding/editionhotelsmiami/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (17, N'Files/BrokerBranding/autograph-general/cHeader.htm', N'autograph-general', N'Autograph Collection Hotels - General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/autograph-general/cFooter.html', N'Files/BrokerBranding/autograph-general/sidebar.htm', N'No', N'No', N'Files/BrokerBranding/autograph-general/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (18, N'Files/BrokerBranding/autograph-custom/cHeader.htm', N'autograph-custom', N'Autograph Collection Hotels - Custom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/autograph-custom/cFooter.html', N'Files/BrokerBranding/autograph-custom/sidebar.htm', N'No', N'No', N'Files/BrokerBranding/autograph-custom/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (19, N'Files/BrokerBranding/baha_mar/cHeader.htm', N'baha_mar', N'Baha Mar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/baha_mar/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/baha_mar/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (20, N'Files/BrokerBranding/ashbc/cHeader.htm', N'ashbc', N'ASH Business Cards', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/ashbc/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/ashbc/cLanding23.html', NULL, NULL, NULL, NULL, N'Files/BrokerBranding/ashbc/customProofStationery.htm', NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (21, N'Files/BrokerBranding/dest_hotel/cHeader.htm', N'dest_hotel', N'Destination Hotels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/dest_hotel/cFooter.html', N'Files/BrokerBranding/dest_hotel/sidebar.htm', N'No', N'No', N'Files/BrokerBranding/dest_hotel/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (22, N'Files/BrokerBranding/dest_hotel_lux/cHeader.htm', N'dest_hotel_lux', N'Destination Hotels Luxury', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/dest_hotel_lux/cFooter.html', N'Files/BrokerBranding/dest_hotel_lux/sidebar.htm', N'No', N'No', N'Files/BrokerBranding/dest_hotel_lux/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (23, N'Files/BrokerBranding/mrus-no-re/cHeader.htm', N'mrus-no-re', N'Marriott Rewards (No Rewarding Events)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/mrus-no-re/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/mrus-no-re/cLanding.html', N'Files/BrokerBranding/mrus-no-re/ProductCategories.htm', N'Files/BrokerBranding/mrus-no-re/cart.htm', NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (25, N'Files/BrokerBranding/mrtitz-no-rc/cHeader.htm', N'mrtitz-no-rc', N'Marriott Rewards Ritz-Carlton (No Key Cards)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/mrtitz-no-rc/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/mrtitz-no-rc/cLanding.html', N'Files/BrokerBranding/mrtitz-no-rc/ProductCategories.htm', N'Files/BrokerBranding/mrtitz-no-rc/cart2.htm', NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (27, N'Files/BrokerBranding/aire/Header2.htm', N'aire', N'Aire-Master', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/aire/Footer2.htm', N'Files/BrokerBranding/aire/Side2.htm', N'No', N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (28, N'Files/BrokerBranding/benchmark/cHeader.htm', N'benchmark', N'benchmark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/benchmark/cFooter.html', N'Files/BrokerBranding/benchmark/sidebar.htm', N'No', N'No', N'Files/BrokerBranding/benchmark/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (29, N'Files/BrokerBranding/safe_house/cHeader.htm', N'safe_house', N'Safe House', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/safe_house/cFooter.html', N'Files/BrokerBranding/safe_house/sidebar.htm', N'No', N'No', N'Files/BrokerBranding/safe_house/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (30, N'Files/BrokerBranding/sdf.dextersolutions.net/header.html', N'sdf.dextersolutions.net', N'Standard Default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/sdf.dextersolutions.net/footer.html', N'Files/BrokerBranding/sdf.dextersolutions.net/sidebar.html', N'No', N'No', N'Files/BrokerBranding/sdf.dextersolutions.net/landing.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (31, N'Files/BrokerBranding/Inn_of_Monterey/header.html', N'Inn_of_Monterey', N'Inns of Monterey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/Inn_of_Monterey/footer.html', N'Files/BrokerBranding/Inn_of_Monterey/sidebar.html', N'No', N'No', N'Files/BrokerBranding/Inn_of_Monterey/landing.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (32, N'Files/BrokerBranding/MVC_Pulse/header.html', N'MVC_Pulse', N'MVC Pulse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/MVC_Pulse/footer.html', N'Files/BrokerBranding/MVC_Pulse/sidebar.html', N'No', N'No', N'Files/BrokerBranding/MVC_Pulse/landing.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (33, N'Files/BrokerBranding/Kimpton/header.html', N'Kimpton', N'Kimpton Hotel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/Kimpton/footer.html', N'Files/BrokerBranding/Kimpton/sidebar.html', N'No', N'No', N'Files/BrokerBranding/Kimpton/landing.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (34, N'Files/BrokerBranding/bestwestern.ashospitality.com/header.html', N'bestwestern.ashospitality.com', N'Best Western', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/bestwestern.ashospitality.com/footer.html', N'Files/BrokerBranding/bestwestern.ashospitality.com/sidebar.html', N'No', N'No', N'Files/BrokerBranding/bestwestern.ashospitality.com/landing.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (35, N'Files/BrokerBranding/dexterdevelopment/cHeader.htm', N'dexterdevelopment', N'Dexter Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/dexterdevelopment/cFooter.html', NULL, N'No', N'No', N'Files/BrokerBranding/dexterdevelopment/cLanding.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (36, N'Files/BrokerBranding/shopmybrand.ashospitality.com/header.html', N'shopmybrand.ashospitality.com', N'AS Hospitality', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/shopmybrand.ashospitality.com/footer.html', N'Files/BrokerBranding/shopmybrand.ashospitality.com/sidebar.html', N'No', N'No', N'Files/BrokerBranding/shopmybrand.ashospitality.com/landing.html', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PrintBroker] ([PrintBroker_Id], [HTMLFile], [HomeDirectory], [PrintBrokerName], [ContactNumbersPhone], [ContactNumbersFax], [AddressAddress1], [AddressAddress2], [AddressAddress3], [AddressAddress4], [AddressSuburb], [AddressState], [AddressPostcode], [AddressCountry], [FooterFile], [SidebarFile], [Default], [HideTabs], [RSLandingPage], [CPProductCategories], [CPCart], [CPStep1New], [CPEnterDetails], [CPProofStationery], [CPProofRHS]) VALUES (37, N'Files/BrokerBranding/mvc.ashospitality.com/header.html', N'mvc.ashospitality.com', N'Marriott Vacation Club', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Files/BrokerBranding/mvc.ashospitality.com/footer.html', N'Files/BrokerBranding/mvc.ashospitality.com/sidebar.html', N'No', N'No', N'Files/BrokerBranding/mvc.ashospitality.com/landing.html', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ScreenDefinition] ON 

INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (1, NULL, N'Default', N'en', NULL, N'Files/ScreenDefinition/Default', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (2, NULL, N'Generic', N'en', NULL, N'Files/ScreenDefinition/Generic', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (3, 1, N'Jersey Mikes', N'en-US', N'Files/screendefinitionzipfile/ScreenDefinitionsTemplate.xlsx', N'Files/ScreenDefinition/JerseyMikes', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (4, NULL, N'GSSI-English', N'en-US', NULL, N'Files/ScreenDefinition/GSSIEnglish', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (5, NULL, N'GSSI-Spanish', N'es', N'Files/screendefinitionzipfile/gssispanishtest17.xls', N'Files/ScreenDefinition/GSSISpanish', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (6, NULL, N'MR-English', N'en-US', NULL, N'Files/ScreenDefinition/MREnglish', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (7, 1, N'Big Demos', N'en-US', NULL, N'Files/ScreenDefinition/BigDemos', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (8, 1, N'Dexter Solutions', N'en-US', N'Files/screendefinitionzipfile/Default.zip', N'Files/ScreenDefinition/DexterSolutions', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (9, NULL, N'Candlewood', N'en-US', NULL, N'Files/ScreenDefinition/Candlewood', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (10, NULL, N'Edition Hotels', N'en-US', NULL, N'Files/ScreenDefinition/EditionHotels', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (11, 10, N'Edition Hotels Miami', N'en-US', NULL, N'Files/ScreenDefinition/EditionHotelsMiami', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (13, NULL, N'MR-Ritz', N'en-US', NULL, N'Files/ScreenDefinition/MRRitz', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (15, NULL, N'Autograph-General', N'en-US', NULL, N'Files/ScreenDefinition/AutographGeneral', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (17, NULL, N'Baha Mar', N'en-US', NULL, N'Files/ScreenDefinition/BahaMar', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (18, 1, N'Destination Hotels', N'en-US', NULL, N'Files/ScreenDefinition/DestinationHotels', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (19, NULL, N'Autograph-Custom', N'en-US', NULL, N'Files/ScreenDefinition/AutographCustom', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (20, 1, N'Destination Hotels Luxury', N'en-US', NULL, N'Files/ScreenDefinition/DestinationHotelsLux', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (21, NULL, N'Aire-Master', N'en', NULL, N'Files/ScreenDefinition/AireMaster', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (22, 1, N'Benchmark', N'en-US', NULL, N'Files/ScreenDefinition/Benchmark', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (23, 1, N'Safe House', N'en-US', NULL, N'Files/ScreenDefinition/SafeHouse', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (24, 1, N'JMTest', N'en-us', N'Files/screendefinitionzipfile/JMTestDef.xlsx', N'Files/ScreenDefinition/JMTest', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (25, NULL, N'Standard Default', N'en-us', NULL, N'Files/ScreenDefinition/StandardDefault', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (26, NULL, N'DSBC', N'en-us', NULL, N'Files/ScreenDefinition/DSBC', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (27, NULL, N'MVC Pulse', N'en-us', NULL, N'Files/ScreenDefinition/MVCPulse', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (28, NULL, N'Inns_of_Monterey', N'en-us', NULL, N'Files/ScreenDefinition/InnsofMonterey', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (29, NULL, N'Kimpton', N'en-us', NULL, N'Files/ScreenDefinition/Kimpton', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (30, NULL, N'BestWestern', N'en-us', NULL, N'Files/ScreenDefinition/BestWestern', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (31, NULL, N'AS Hospitality', N'en-us', NULL, N'Files/ScreenDefinition/ASHospitality', N'No')
INSERT [dbo].[ScreenDefinition] ([ScreenDefinition_Id], [ParentScreenDefinition_Id], [Name], [Language], [ZipFile], [Path], [ReadOnly]) VALUES (32, NULL, N'Marriott Vacation Club', N'en-us', NULL, N'Files/ScreenDefinition/MarriottVacationClub', N'No')
SET IDENTITY_INSERT [dbo].[ScreenDefinition] OFF
INSERT [dbo].[SignatureMarking] ([SignatureMarking_Id], [Type], [Position], [DoubleCut_Id], [Margin_Id], [TrimMarkType_Id], [RegistrationMarks], [VerticalAlign], [HorizontalAlign], [Supplier_Id]) VALUES (1, N'Non Bleed - Head to Tail', N'Head to Tail', 1, 2, 2, N'Yes', N'Center', N'Center', NULL)
INSERT [dbo].[SignatureMarking] ([SignatureMarking_Id], [Type], [Position], [DoubleCut_Id], [Margin_Id], [TrimMarkType_Id], [RegistrationMarks], [VerticalAlign], [HorizontalAlign], [Supplier_Id]) VALUES (2, N'Non Bleed - Head to Tail', N'Head to Head', 1, 2, 2, N'Yes', N'Center', N'Left', NULL)
INSERT [dbo].[SignatureMarking] ([SignatureMarking_Id], [Type], [Position], [DoubleCut_Id], [Margin_Id], [TrimMarkType_Id], [RegistrationMarks], [VerticalAlign], [HorizontalAlign], [Supplier_Id]) VALUES (3, N' VPrint 1/4 inch Bleed - head to tail', N'Head to Tail', 2, 1, 2, N'Yes', N'Center', N'Center', NULL)
INSERT [dbo].[SignatureMarking] ([SignatureMarking_Id], [Type], [Position], [DoubleCut_Id], [Margin_Id], [TrimMarkType_Id], [RegistrationMarks], [VerticalAlign], [HorizontalAlign], [Supplier_Id]) VALUES (4, N'1 Up - No Marks', N'Head to Tail', 1, 1, 2, N'No', N'Top', N'Left', NULL)
INSERT [dbo].[SignatureMarking] ([SignatureMarking_Id], [Type], [Position], [DoubleCut_Id], [Margin_Id], [TrimMarkType_Id], [RegistrationMarks], [VerticalAlign], [HorizontalAlign], [Supplier_Id]) VALUES (5, N'1 up Business Card 1/16 Bleed', N'Head to Tail', 1, 1, 3, N'No', N'Top', N'Left', NULL)
INSERT [dbo].[SignatureMarking] ([SignatureMarking_Id], [Type], [Position], [DoubleCut_Id], [Margin_Id], [TrimMarkType_Id], [RegistrationMarks], [VerticalAlign], [HorizontalAlign], [Supplier_Id]) VALUES (6, N'2up no marks', N'Head to Tail', 2, 1, 3, N'No', N'Center', N'Center', NULL)
INSERT [dbo].[SignatureMarking] ([SignatureMarking_Id], [Type], [Position], [DoubleCut_Id], [Margin_Id], [TrimMarkType_Id], [RegistrationMarks], [VerticalAlign], [HorizontalAlign], [Supplier_Id]) VALUES (7, N'1up-.125bleed', N'Head to Tail', 1, 1, 3, N'No', N'Center', N'Center', NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (1, N'Product Catalog', N'Front', NULL, NULL, NULL, NULL, N'Product Catalog Front', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (2, N'Business Card', N'Front', NULL, NULL, 11, NULL, N'Business Card', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (3, N'Business Card', N'Back', NULL, NULL, 11, NULL, N'Business Card', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (5, N'Customizable Marketing Material', N'Front', NULL, NULL, 33, NULL, N'Customizable Marketing Material', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (7, N'Letterhead', N'Front', NULL, NULL, 11, NULL, N'Letterhead', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (11, N'Corporate Stationery', N'Front', NULL, NULL, 33, NULL, N'Corporate Stationery', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (12, N'On-Demand Sales Collateral', N'Front', NULL, NULL, 33, NULL, N'On-Demand Sales Collateral', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (14, N'Variable Data Marketing', N'Front', NULL, NULL, 33, NULL, N'Variable Data Marketing', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (16, N'Customizable Marketing Material', N'Back', NULL, NULL, 33, NULL, N'Customizable Marketing Material', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (29, N'V-Print and Image Builder Combo', N'Front', NULL, NULL, 33, NULL, N'V-Print and Image Builder Combo', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (30, N'Website Templates', N'Front', NULL, NULL, 33, NULL, N'Website Templates', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (31, N'Email Templates', N'Front', NULL, NULL, 33, NULL, N'Email Templates', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (32, N'Website Templates', N'Back', NULL, NULL, 33, NULL, N'Website Templates', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (33, N' Product Catalog', N'Front', NULL, NULL, 1, NULL, N' Product Catalog', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (34, N'Hospitality Catalog', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (35, N'Stationery', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (36, N'Stationery', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (37, N'Front Desk', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (38, N'Front Desk', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (39, N'Marketing & Sales', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (40, N'Marketing & Sales', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (41, N'In-Room', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (42, N'In-Room', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (43, N'Food & Beverage', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (44, N'Food & Beverage', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (45, N'Spa', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (46, N'Spa', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (47, N'Maintenance', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (48, N'Maintenance', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (49, N'Human Resources', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (50, N'Human Resources', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (510, N'JB Testing', N'Front', NULL, NULL, 517, NULL, NULL, N'Product Test Only - Do Not Order', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (511, N'JDRF Internal Items', N'Front', NULL, NULL, 517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (512, N'Tailormade Customer Service', N'Front', NULL, NULL, 517, NULL, N'Tailormade Customer Service', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (517, N'Walk to Cure Diabetes Catalog', N'Front', NULL, NULL, 1, NULL, NULL, N'<table border="0" cellpadding="2" cellspacing="1" width="75%">
	<tbody>
		<tr>
			<td>
				JDRF Product Catalog - Includes static and imprinted items associated with our Walk program.</td>
			<td>
				&nbsp;</td>
		</tr>
	</tbody>
</table>
<br />
<br />
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (518, N'FY11', N'Front', NULL, NULL, 517, NULL, NULL, N'<font color="#000000">Click here to order custom imprint Walk materials for FY11</br> (Walks taking place between July 1, 2010 and June 30, 2011)</font color>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (519, N'Walk Brochure & Associated Items', N'Front', NULL, NULL, 518, NULL, N'JDRF10-BROCH', N'<TABLE border=0 cellSpacing=0 cellPadding=0>

<TBODY>

<TR>

<TD width=105>Brochures</TD>

<TD width=135>Brochure Envelopes</TD>

<TD width=135>Collection Envelopes</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (520, N'Walk Brochure & Associated Items', N'Back', NULL, NULL, 518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (521, N'Invitations & Associated Items', N'Front', NULL, NULL, 518, NULL, N'JDRF10-INV', N'<TABLE border=0 cellSpacing=0 cellPadding=0>

<TBODY>

<TR>

<TD width=125>Kick Off Invitations</TD>

<TD width=105>RSVP Cards</TD>

<TD width=125>Award Invitations</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (522, N'Invitations & Associated Items', N'Back', NULL, NULL, 518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (523, N'Other Walk Collateral', N'Front', NULL, NULL, 518, NULL, N'JDRF10-OTHER', N'<TABLE border=0 cellSpacing=0 cellPadding >

<TBODY>

<TR>

<TD width=145>Save The Date Cards</TD>

<TD width=105>Large Poster</TD>

<TD width=145>Thank You Certificate</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (524, N'Other Walk Collateral', N'Back', NULL, NULL, 518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (533, N'Tailormade Customer Service', N'Front', NULL, NULL, 517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (544, N'Jersey Mikes Products', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (550, N'Previous / Discounted Materials', N'Front', NULL, NULL, 517, NULL, N'Discounted Materials', N'<font color="#000000">The items in this section are the previous design styles. They can<br>still be used for your walks and are available at a discounted price or at no cost. </font color>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (551, N'Invitations & Associated Items', N'Back', NULL, NULL, 550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (552, N'Invitations & Associated Items', N'Front', NULL, NULL, 550, NULL, NULL, N'<TABLE border=0 cellSpacing=0 cellPadding=0>

<TBODY>

<TR>

<TD width=125>Kick Off Invitations</TD>

<TD width=105>RSVP Cards</TD>

<TD width=125>Award Invitations</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (553, N'Other Walk Collateral', N'Front', NULL, NULL, 550, NULL, NULL, N'<TABLE border=0 cellSpacing=0 cellPadding >

<TBODY>

<TR>

<TD width=145>Save The Date Cards</TD>

<TD width=105></TD>

<TD width=145></TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (554, N'Other Walk Collateral', N'Back', NULL, NULL, 550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (555, N'Walk Brochure & Associated Items', N'Front', NULL, NULL, 550, NULL, NULL, N'<TABLE border=0 cellSpacing=0 cellPadding=0>

<TBODY>

<TR>

<TD width=105>Brochures</TD>

<TD width=135>Brochure Envelopes</TD>

<TD width=135>Collection Envelopes</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (556, N'Walk Brochure & Associated Items', N'Back', NULL, NULL, 550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (564, N'JM Grass Roots Cards', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (565, N'JM Grass Roots Cards', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (566, N'FY13', N'Front', NULL, NULL, 517, NULL, N'FY13', N'<font color="#000000">Click here to order custom imprint Walk materials for FY13</br> (Walks taking place between July 1, 2012 and June 30, 2013)</font color>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (567, N'Invitations & Associated Items', N'Front', NULL, NULL, 566, NULL, N'Invitations & Associated Items', N'<TABLE border=0 cellSpacing=0 cellPadding=0>

<TBODY>

<TR>

<TD width=125>Kick Off Invitations</TD>

<TD width=105>RSVP Cards</TD>

<TD width=125>Award Invitations</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (568, N'Invitations & Associated Items', N'Back', NULL, NULL, 566, NULL, N'Invitations & Associated Items', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (569, N'Other Walk Collateral', N'Front', NULL, NULL, 566, NULL, N'Other Walk Collateral', N'<TABLE border=0 cellSpacing=0 cellPadding >

<TBODY>

<TR>

<TD width=145>Save The Date Cards</TD>

<TD width=105>Large Poster</TD>

<TD width=145>Thank You Certificate</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (570, N'Other Walk Collateral', N'Back', NULL, NULL, 566, NULL, N'Other Walk Collateral', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (571, N'Walk Brochure & Associated Items', N'Front', NULL, NULL, 566, NULL, N'Walk Brochure & Associated Items', N'<TABLE border=0 cellSpacing=0 cellPadding=0>

<TBODY>

<TR>

<TD width=105>Brochures</TD>

<TD width=135>Brochure Envelopes</TD>

<TD width=135>Collection Envelopes</TD></TR>

</TBODY></TABLE>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (572, N'Walk Brochure & Associated Items', N'Back', NULL, NULL, 566, NULL, N'Walk Brochure & Associated Items', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (573, N'JM Aframe', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (574, N'JM Aframe', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (575, N'JM Vinyl Banners', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (576, N'JM Flyers', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (577, N'JM Flyers', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (578, N'JM Table Tent', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (579, N'JM Table Tent', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (580, N'JM Local Store Marketing', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (581, N'JM Local Store Marketing', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (582, N'JM Meat Case Banners', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (585, N'JM Gift Certificates', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (586, N'JM Thank You Materials', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (587, N'JM Thank You Materials', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (588, N'JM Window Clings', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (589, N'JM Bag Stuffers', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (590, N'JM Bag Stuffers', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (591, N'JM Big Checks', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (592, N'JM Big Checks', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (593, N'JM Napkin Inserts', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (594, N'JM Napkin Inserts', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (595, N'JM Billboards', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (596, N'JM Grass Roots Magnets', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (597, N'JM Counter Cards', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (598, N'JM Email Campaigns', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (599, N'JM Letter Head', N'Front', NULL, NULL, 544, NULL, NULL, N'<p style="text-align: center;">
	<span style="font-size:16px;"><span style="font-family:arial,helvetica,sans-serif;"><b><span style="color: rgb(0, 0, 0);">Letterhead available from the JMFS Marketing Department. Please submit a custom creative request and we will send you a proof.</span></b></span></span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (600, N'JM Logos', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (601, N'JM Menus & Pricing', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (602, N'JM Menus & Pricing', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (603, N'JM Monster Magnets', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (604, N'JM Promo Items', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (605, N'JM Sneeze Guard Clings', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (607, N'JM Vinyl Banners', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (608, N'JM Door Hangers', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (609, N'JM Door Hangers', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (610, N'JM Custom Products', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (613, N'JM Grass Roots Coupons', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (614, N'JM Grass Roots Coupons', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (615, N'JM Counter Cards', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (616, N'JM Test Category', N'Front', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (617, N'JM Test Category', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (618, N'Operational', N'Front', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (619, N'Operational Back', N'Back', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (620, N'Catalogo de Productos', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (621, N'Recepción', N'Front', NULL, NULL, 620, NULL, N'Recepción', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (622, N'Comida y Bebida', N'Front', NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (623, N'En Habitación', N'Front', NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (624, N'Operacional', N'Front', NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (625, N'Papelería', N'Front', NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (626, N'JM Sneeze Guard Clings (back)', N'Back', NULL, NULL, 636, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (627, N'Marriott Rewards Catalog', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (628, N'Property Enrollment Brochure & Membership Card', N'Front', NULL, NULL, 627, NULL, N'ENR', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (629, N'Holders', N'Front', NULL, NULL, 627, NULL, N'HLD', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (630, N'Associate Pocket Guide', N'Front', NULL, NULL, 627, NULL, N'PRG', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (631, N'Rewarding Events', N'Front', NULL, NULL, 627, NULL, N'REW', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (632, N'The Ritz-Carlton Invitation To Join & Membership Card', N'Front', NULL, NULL, 728, NULL, N'R-ENR', N'<b><span style="font-size:10pt;">You can order up to a 6-month supply.</span></b>', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (633, N'The Ritz-Carlton Rewards Pocket Guide', N'Front', NULL, NULL, 728, NULL, N'R-PRG', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (634, N'The Ritz-Carlton Rewarding Events', N'Front', NULL, NULL, 728, NULL, N'R-REW', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (635, N'Property Enrollment Brochure', N'Front', NULL, NULL, 627, NULL, N'I-ENR', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (636, N'Jersey Mikes Do Not Use', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (637, N'Big Demo''s Products', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (638, N'BD A-Frame Signs', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (639, N'BD Bag Stuffers', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (640, N'BD Big Checks', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (641, N'BD Business Cards', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (642, N'BD Gift Certificates', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (643, N'BD Counter Cards', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (644, N'BD Comment Cards', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (645, N'BD Door Hangers', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (646, N'BD Flyers', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (647, N'BD Letterhead', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (648, N'BD Menu & Pricing', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (649, N'BD Promotional Items', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (650, N'BD Table Tents', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (651, N'BD Thank You Items', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (652, N'BD Vinyl Banners', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (653, N'BD Window Clings', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (654, N'BD Custom Products', N'Front', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (655, N'BD Door Hangers', N'Back', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (656, N'BD Menu & Pricing', N'Back', NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (657, N'DS Resources', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (660, N'DS Stationery', N'Back', NULL, NULL, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (662, N'Candlewood Products', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (663, N'CW Candlewood Cupboard<sup>®</sup> Supplies', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (664, N'CW Front Office Supplies', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (665, N'CW In Suite Supplies', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (666, N'CW Sales & Marketing', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (667, N'CW Hotel Renovation Items', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (668, N'CW Guest Service Directories', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (669, N'CW Red Book', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (670, N'CW Lending Locker', N'Front', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (671, N'DS Digital Templates', N'Front', NULL, NULL, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (672, N'DS Images', N'Front', NULL, NULL, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (673, N'DS Content', N'Front', NULL, NULL, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (674, N'DS Style Guide', N'Front', NULL, NULL, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (685, N'DS Digital Letterhead', N'Front', NULL, NULL, 671, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (686, N'DS Digital Presentations', N'Front', NULL, NULL, 671, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (687, N'DS Leadership', N'Front', NULL, NULL, 672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (689, N'DS Leadership Bios', N'Front', NULL, NULL, 673, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (690, N'DS Case Study', N'Front', NULL, NULL, 673, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (691, N'DS Aurora Facility', N'Front', NULL, NULL, 672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (692, N'DS Kansas City Facility', N'Front', NULL, NULL, 672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (693, N'DS Memphis Facility', N'Front', NULL, NULL, 672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (694, N'DS Springfield Office', N'Front', NULL, NULL, 672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (695, N'Elite Brochures', N'Front', NULL, NULL, 627, NULL, N'EBRO', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (696, N'The Ritz-Carlton Elite Rewards Key Cards', N'Front', NULL, NULL, 728, NULL, N'R-EKC', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (697, N'JM Promo Items', N'Back', NULL, NULL, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (698, N'JM Tableclothes', N'Front', NULL, NULL, 604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (699, N'Edition Hotels', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (700, N'EH Front Office', N'Front', NULL, NULL, 706, NULL, N'EHFrontOffice', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (701, N'EH Sales & Marketing', N'Front', NULL, NULL, 706, NULL, N'EHSalesMarketing', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (702, N'EH Business Card', N'Front', NULL, NULL, 703, NULL, N'EHBusinessCard', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (703, N'EH Stationery', N'Front', NULL, NULL, 706, NULL, N'EHStationery', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (704, N'EH Food & Beverage', N'Front', NULL, NULL, 699, NULL, N'EHFoodBeverage', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (705, N'EH In Room Collateral', N'Front', NULL, NULL, 706, NULL, N'EHInRoomCollateral', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (706, N'EH Hotel Collateral', N'Front', NULL, NULL, 699, NULL, N'EH Hotel Collateral', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (707, N'EH Spa', N'Front', NULL, NULL, 699, NULL, N'EHSpa', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (708, N'EH Residences', N'Front', NULL, NULL, 699, NULL, N'EHResidences', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (709, N'EH Back of House', N'Front', NULL, NULL, 706, NULL, N'EHBackofHouse', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (710, N'EH Meetings & Events', N'Front', NULL, NULL, 706, NULL, N'EHMeetingsEvents', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (711, N'EH Business Card - Back', N'Back', NULL, NULL, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (712, N'EH Retail', N'Front', NULL, NULL, 706, NULL, N'EHRetail', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (713, N'EH Beach Club', N'Front', NULL, NULL, 706, NULL, N'EHBeachClub', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (714, N'EH Matador Room', N'Front', NULL, NULL, 704, NULL, N'EHMatadorRoom', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (715, N'EH Lobby Bar', N'Front', NULL, NULL, 704, NULL, N'EHLobbyBar', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (716, N'EH Basement', N'Front', NULL, NULL, 704, NULL, N'EHBasement', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (717, N'EH Tropicale', N'Front', NULL, NULL, 704, NULL, N'EHTropicale', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (718, N'EH The Market', N'Front', NULL, NULL, 704, NULL, N'EHTheMarket', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (719, N'EH Human Resources', N'Front', NULL, NULL, 709, NULL, N'EHHumanResources', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (720, N'EH Maintenance', N'Front', NULL, NULL, 709, NULL, N'EHMaintenance', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (721, N'CW Sales & Marketing', N'Back', NULL, NULL, 662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (722, N'EH In Room Dining', N'Front', NULL, NULL, 704, NULL, N'EHInRoomDining', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (723, N'EH Residence Stationery', N'Front', NULL, NULL, 708, NULL, N'EHResidenceStationery', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (724, N'Elite Keypacks', N'Front', NULL, NULL, 627, NULL, N'MRKeypack', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (725, N'Alternate Language - Property Enrollment Brochure & Membership Card', N'Front', NULL, NULL, 628, NULL, N'ENR-S', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (726, N'Alternate Language - Property Enrollment Brochure', N'Front', NULL, NULL, 635, NULL, N'I-ENR-S', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (727, N'Alternate Language - The Ritz-Carlton Invitation To Join & Membership Card', N'Front', NULL, NULL, 632, NULL, N'R-ENR-S', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (728, N'The Ritz-Carlton Rewards Catalog', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (729, N'EH Housekeeping', N'Front', NULL, NULL, 706, NULL, N'EHHousekeeping', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (730, N'Autograph Collection Hotels Products', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (731, N'AUT-03^Front Desk', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (732, N'AUT-02^In-Room', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (733, N'AUT-06^Sales & Marketing', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (734, N'AUT-01^Stationery', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (735, N'AUT-04^Back of House', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (736, N'AUT-07^Rewards', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (737, N'Springfield Development', N'Front', NULL, NULL, 33, NULL, N'springdev', N'<p>
	A sample category created ... by ...</p>
', N'alt', N'meta', N'keyword', NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (738, N'BM Business Cards', N'Front', NULL, NULL, 739, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (739, N'Baha Mar Products', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (740, N'BM Business Cards', N'Back', NULL, NULL, 739, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (741, N'ASH BC Products', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (742, N'ASH Courtyard BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (743, N'ASH Business Cards', N'Back', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (744, N'ASH Marriott Hotels & Resorts BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (745, N'ASH Marriott Vacation Club BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (746, N'ASH JW Marriott BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (747, N'ASH Fairfield Inn BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (748, N'ASH Fairfield Inn & Suites BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (749, N'ASH Springhill Suites BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (750, N'ASH Residence Inn BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (751, N'ASH TownePlace Suites BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (752, N'ASH Renaissance Hotels BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (753, N'ASH Ritz Carlton BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (754, N'ASH Crowne Plaza BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (755, N'ASH Staybridge Suites BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (756, N'ASH Holiday Inn BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (757, N'ASH Holiday Inn Express BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (758, N'ASH Hyatt Place BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (759, N'ASH Hyatt House BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (760, N'ASH Holiday Inn Resorts BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (761, N'ASH Best Western BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (762, N'Destination Hotels', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (763, N'DES Stationery', N'Front', NULL, NULL, 762, NULL, N'16228Stat', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (764, N'DES Front Office', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (765, N'DES Guest Room', N'Front', NULL, NULL, 762, NULL, N'16228GR', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (766, N'DES Food & Beverage', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (767, N'DES Meetings & Events', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (768, N'DES Sales & Marketing', N'Front', NULL, NULL, 762, NULL, N'16228SM', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (769, N'DES Corporate Brand Materials', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (770, N'DES Backs', N'Back', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (771, N'JM Internal Testing', N'Front', NULL, NULL, 616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (772, N'The Ritz-Carlton Rewards Housekeeping - Invitation To Join', N'Front', NULL, NULL, 728, NULL, N'R-PRG', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (773, N'DES DestinationLIFE', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (774, N'DES Recruitment and Training', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (775, N'DES Corporate Sales & Marketing', N'Front', NULL, NULL, 769, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (776, N'DES Human Resouces', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (777, N'Aire-Master Caps', N'Front', NULL, NULL, 779, NULL, N'Aire-Master Caps', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (778, N'Aire-Master Deodorant Bars', N'Front', NULL, NULL, 780, NULL, N'Aire-Master Deodorant Bars', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (779, N'Aire-Master Promotional Items', N'Front', NULL, NULL, NULL, NULL, N'Aire-Master Promotional Items', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (780, N'Aire-Master Odor Control', N'Front', NULL, NULL, 781, NULL, N'Aire-Master Odor Control', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (781, N'Aire-Master Products', N'Front', NULL, NULL, NULL, NULL, N'Aire-Master Products', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (782, N'Aire-Master Printed Products', N'Front', NULL, NULL, NULL, NULL, N'Aire-Master Printed Products', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (783, N'Aire-Master Business Cards', N'Front', NULL, NULL, 782, NULL, N'Aire-Master Business Cards', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (784, N'Aire-Master Business Cards', N'Back', NULL, NULL, 782, NULL, N'Aire-Master Business Cards', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (785, N'Marcus Hotels', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (786, N'MARC Miller Time Pub', N'Front', NULL, NULL, 785, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (787, N'MARC Platinum Las Vegas', N'Front', NULL, NULL, 785, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (788, N'MARC Chophouse', N'Front', NULL, NULL, 785, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (789, N'MARC Hotel Zamora', N'Front', NULL, NULL, 785, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (790, N'MARC The Pfister Hotel', N'Front', NULL, NULL, 785, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (791, N'MARC Safe House', N'Front', NULL, NULL, 785, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (792, N'MARC Gift Items', N'Front', NULL, NULL, 791, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (793, N'MARC Glassware', N'Front', NULL, NULL, 791, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (794, N'MARC Logowear', N'Front', NULL, NULL, 791, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (795, N'BRH Stationery', N'Front', NULL, NULL, 796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (796, N'Benchmark Hotels', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (797, N'BRH Guest Room', N'Front', NULL, NULL, 796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (798, N'BRH Sales & Marketing', N'Front', NULL, NULL, 796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (799, N'BRH Front Office', N'Front', NULL, NULL, 796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (800, N'BRH Food and Beverage', N'Front', NULL, NULL, 796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (801, N'BRH Backs', N'Back', NULL, NULL, 796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (802, N'Yug Yps - Youth Short Sleeve', N'Front', NULL, NULL, 819, N'Files/stationerytypethumbnail/29900YugYpsAdult15.jpg', NULL, N'<div>
	<span style="font-size:14px;">Intrigue and excite the younger spies with this<br />
	unisex, 100% cotton T-shirt that is imprinted<br />
	with the infamous Spy Guy.</span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Black<br />
	<b>Material:</b> 100% cotton; pre-shrunk&nbsp;<br />
	<b>Weight:</b> 5.3 oz.&nbsp;<br />
	<b>Garment:</b> Gildan<br />
	<b>Print:</b> 1 Color Screen Print; Front &amp; Back</span></div>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (803, N'MARC               Yug Yps - Unisex Short Sleeve', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29900YugYpsAdult152.jpg', NULL, N'<div>
	<span style="font-size:14px;">Intrigue and excite the younger spies with this unisex,<br />
	100% cotton T-shirt that is Intrigue and excite the<br />
	younger spies with this unisex, 100% cotton T-shirt<br />
	that is embroidered with YUG YPS. . </span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;"><b>Size:</b> Small - 3XL<br />
	<b>Color Availability:</b> Black<br />
	<b>Material:</b> 100% cotton; pre-shrunk&nbsp;<br />
	<b>Weight:</b> 4.2 oz.&nbsp;<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 1 Color Screen Print; Front &amp; Back</span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;">Turn Time:&nbsp;Ships within 48 hours</span></div>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (804, N'MARC             Briefcase Logo - Unisex Short Sleeve', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29910Briefcase15.jpg', NULL, N'<div>
	<span style="font-size:14px;">Our instincts tell us The Safe House should be hidden,<br />
	but there&#39;s no reason to keep this property a secret!<br />
	Your employees and patrons can show their dedication<br />
	with this 100% cotton, unisex, branded T-shirt.</span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;"><b>Size:</b> Small - 3XL<br />
	<b>Color Availability: </b>Black<br />
	<b>Material:</b> 100% combed and ringspun cotton<br />
	<b>Weight:</b> 4.2 oz.&nbsp;<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 1 Color Screen Print</span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;"><b>Turn Time:</b> Ships within 48 hours</span></div>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (805, N'MARC            SAFEHOUSE Wordmark - Unisex Short Sleeve', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29916HorizontalWordmark15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Our instincts tell us The Safe House should be hidden,<br />
	but there&#39;s no reason to keep this property a secret!<br />
	Your patrons can show their dedication with this 100%<br />
	cotton, unisex, branded T-shirt.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - 3XL<br />
	<b>Color Availability:</b> Black<br />
	<b>Material:</b> 100% combed and ringspun cotton<br />
	<b>Weight:</b> 4.2 oz.&nbsp;<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 1 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:&nbsp;</b>48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (806, N'MARC SAFEHOUSE Wordmark - Ladies Short Sleeve', N'Front', NULL, NULL, 818, N'Files/stationerytypethumbnail/29922HorizontalWordmarkVneck15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Our instincts tell us The Safe House should be hidden,<br />
	but there&#39;s no reason to keep this property a secret!<br />
	Your patrons can show their dedication with this 100%<br />
	cotton, unisex, branded T-shirt.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability: </b>Maroon<br />
	<b>Material:</b> 100% ringspun cotton<br />
	<b>Weight:</b> 4.5 oz.<br />
	<b>Garment:</b> Hanes<br />
	<b>Print:</b> 1 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b> 48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (807, N'MARC Briefcase Logo - Ladies Baby Rib Cap Sleeve', N'Front', NULL, NULL, 818, N'Files/stationerytypethumbnail/29926BriefcaseCapSleeve15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Our instincts tell us The Safe House should be hidden,<br />
	but there&#39;s no reason to keep this property a secret!<br />
	Ladies can show their dedication with this branded<br />
	contrast cap sleeve shirt.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability: </b>Black w/ Red Contrast<br />
	<b>Material:</b> 100% combed and ringspun cotton<br />
	<b>Weight:</b> 5.8 oz.<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 1 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b> 48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (808, N'MARC Handcuff Design  - Ladies Dolman Long Sleeve', N'Front', NULL, NULL, 818, N'Files/stationerytypethumbnail/29930DolmanLongSleeve15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Our instincts tell us The Safe House should be hidden,<br />
	but there&#39;s no reason to keep this property a secret!<br />
	Ladies can show their love for The Safe House in<br />
	style with this longsleeve, off-the-shoulder branded shirt.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability: </b>Black Marble<br />
	<b>Material:</b> 65/35 polyester/viscose<br />
	<b>Weight:</b> 3.7 oz.<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print: </b>1 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time: </b>48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (809, N'MARC        Deny Everything - Unisex Short Sleeve', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29934DenyEverything15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Bachelors can keep a secret just as well as a spy!<br />
	This playful Tee made with 100% cotton is perfect<br />
	for your guests celebrating their bachelor party.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Black<br />
	<b>Material: </b>100% combed and ringspun cotton<br />
	<b>Weight:</b> 4.2 oz.&nbsp;<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 3 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b>&nbsp;48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (810, N'MARC Fembot - Ladies Short Sleeve', N'Front', NULL, NULL, 818, N'Files/stationerytypethumbnail/29938Fembot15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Ladies can show off their smokin&#39; hot attraction<br />
	in this pink Fembot Tee.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Pink<br />
	<b>Material:</b> 100% combed and ringspun cotton<br />
	<b>Weight:</b> 4.2 oz.<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 4 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b>&nbsp;48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (811, N'MARC Mission Complete - Ladies Short Sleeve', N'Front', NULL, NULL, 818, N'Files/stationerytypethumbnail/29942MissionComplete15.jpg', NULL, N'<p>
	He liked it so much he put a ring on it - and she wants<br />
	everyone to know! For newlywed brides, this&nbsp;Tee<br />
	shows off her excitement and ties&nbsp;it to The Safe House.</p>
<p class="p1">
	<span class="s1"><b>Size: </b>Small - XL</span><br />
	<b>Color Availability:</b> Pink<br />
	<b>Material: </b>100% combed and ringspun cotton<br />
	<b>Weight:</b> 4.2 oz.<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 2 Color Screen Print</p>
<p>
	<b>Turn Time:</b> 48 Hours from order placement</p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (812, N'MARC Swallow - Ladies Deep V-Neck Short Sleeve', N'Front', NULL, NULL, 818, N'Files/stationerytypethumbnail/29946SwallowVneck15.jpg', NULL, N'<p>
	<span style="font-size:14px;">The power of seduction cannot be undervalued in the<br />
	world of spies, and this deep V-neck Jersey Tee will<br />
	attract the kind of attention a Swallow seeks.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Purple<br />
	<b>Material:</b> 100% combed and ringspun cotton<br />
	<b>Weight: </b>4.2 oz.<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print: </b>2 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b>&nbsp;48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (813, N'MARC    Missing Briefs - Unisex Short Sleeve', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29950MissingBrief15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Mixing work and play is essential, and for men, it&#39;s just<br />
	more likely.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Silver<br />
	<b>Material:</b> 100% combed and ringspun cotton<br />
	<b>Weight:</b> 4.2 oz.&nbsp;<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 2 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b> 48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (814, N'MARC   Target Acquired - Unisex Short Sleeve', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29966TargetAcquired15.jpg', NULL, N'<p>
	<span style="font-size:14px;">He wanted her, so he got her. For newlywed grooms,<br />
	this Tee shows his excitement for his<br />
	new bride and ties it to The Safe House.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Aqua<br />
	<b>Material:</b> 100% combed and ringspun cotton<br />
	<b>Weight:</b> 4.2 oz.&nbsp;<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 3 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b> 48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (815, N'MARC  SAFEHOUSE Wordmark - Pullover Hoodie', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29958HorizontalHoodie15.jpg', NULL, N'<p>
	<span style="font-size:14px;">This simple, cotton/polyester blend hoodie<br />
	is essential for any lover of The Safe House.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Black<br />
	<b>Material:</b> 60/40 combed and ringspun cotton/polyester<br />
	<b>Weight:</b> 6.5 oz.&nbsp;<br />
	<b>Garment:</b> Bella+Canvas<br />
	<b>Print:</b> 1 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b> 48 Hours from order placement</span><br />
	&nbsp;</p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (816, N'MARC Briefcase Logo - Silk Touch Performance Short Sleeve Polo', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/29962BriefcasePolo15.jpg', NULL, N'<p>
	<span style="font-size:14px;">Our instincts tell us The Safe House should be hidden,<br />
	but there&#39;s no reason to keep this property a secret!<br />
	Your employees and patrons can show their<br />
	dedication with this 100% cotton, unisex,<br />
	branded T-shirt.</span></p>
<p>
	<span style="font-size:14px;"><b>Size:</b> Small - XL<br />
	<b>Color Availability:</b> Black w/ Steel Grey Contrast<br />
	<b>Material:</b> 100% polyester double knit w/ PosiCharge technology<br />
	<b>Weight:</b> 3.9 oz.&nbsp;<br />
	<b>Garment:</b> Port Authority<br />
	<b>Print:</b> 1 Color Screen Print</span></p>
<p>
	<span style="font-size:14px;"><b>Turn Time:</b> 48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (817, N'MARC Unisex', N'Front', NULL, NULL, 794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (818, N'MARC Ladies', N'Front', NULL, NULL, 794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (819, N'MARC Youth', N'Front', NULL, NULL, 794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (820, N'MARC Swallow - Unisex Short Sleeve', N'Front', NULL, NULL, 817, N'Files/stationerytypethumbnail/SwallowSilverMens.jpg', NULL, N'<p style="line-height: 20.8px;"><span style="font-size: 14px;">Safe House Swallow T Shirt Silver</span></p>

<p style="line-height: 20.8px;"><span style="font-size: 14px;"><b>Size:</b>&nbsp;Small - XL<br />
<b>Color Availability:</b>&nbsp;Silver<br />
<b>Material:</b>&nbsp;100% combed and ringspun cotton<br />
<b>Weight:</b>&nbsp;4.2 oz.<br />
<b>Garment:</b>&nbsp;Bella+Canvas<br />
<b>Print:</b>&nbsp;2 Color Screen Print</span></p>

<p style="line-height: 20.8px;"><span style="font-size: 14px;"><b>Turn Time:</b>&nbsp;48 Hours from order placement</span></p>
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (821, N'ACE Products', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (822, N'ACE Pad Folio', N'Front', NULL, NULL, 821, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (823, N'ACE RSNC', N'Front', NULL, NULL, 821, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (824, N'AUT Back', N'Back', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (825, N'DS Dexter Solutions', N'Front', NULL, NULL, 827, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (826, N'DS AS Hospitality', N'Front', NULL, NULL, 827, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (827, N'DS Stationery', N'Front', NULL, NULL, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (828, N'Standard Default', N'Front', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (829, N'SDF Accounting', N'Front', NULL, NULL, 828, N'Files/stationerytypethumbnail/AccountingMVC.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (830, N'SDF Engineering', N'Front', NULL, NULL, 828, N'Files/stationerytypethumbnail/EngineeeringMVC.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (831, N'MARC Safehouse Printed Goods', N'Front', NULL, NULL, 791, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (832, N'ASH Edition', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (833, N'ASH Candlewood Suites', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (834, N'IOM Products', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (835, N'IOM Business Cards', N'Front', NULL, NULL, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (836, N'IOM Backs', N'Back', NULL, NULL, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (837, N'IOM Stationery', N'Front', NULL, NULL, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (838, N'IOM Resort Operations', N'Front', NULL, NULL, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (839, N'IOM Food and Beverage', N'Front', NULL, NULL, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (840, N'IOM Front Desk', N'Front', NULL, NULL, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (841, N'ASH Gaylord', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (842, N'ASH The Driskill', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (843, N'ASH InterContinental Hotels & Resorts', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (844, N'ASH IHG Corporate', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (845, N'ASH Autograph', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (846, N'Marriott Rewards Elite Benefit Enhancements', N'Front', NULL, NULL, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (847, N'Marriott Vacation Club', N'Front', NULL, NULL, NULL, NULL, N'MVCMain', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (848, N'MVCP Hotel Operations', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (849, N'MVCP Housekeeping', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (850, N'MVCP Engineering', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (851, N'MVCP Front Desk', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (852, N'MVCP Stationery/Admin', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (853, N'MVCP Back', N'Back', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (854, N'ASH AC Hotels', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (855, N'Best Western', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (856, N'BW Premier', N'Front', NULL, NULL, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (857, N'BW Core', N'Front', NULL, NULL, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (858, N'BW Plus', N'Front', NULL, NULL, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (859, N'BW Front Desk', N'Front', NULL, NULL, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (860, N'BW Guest Room', N'Front', NULL, NULL, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (861, N'BW Stationery', N'Front', NULL, NULL, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (862, N'BW Business Cards', N'Front', NULL, NULL, 855, NULL, N'BW Business Cards', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (864, N'BW Back', N'Back', NULL, NULL, 855, NULL, N'BW Back', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (865, N'ASH Hotel Indigo', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (866, N'Kimpton Hotel', N'Front', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (867, N'KH Business Cards', N'Front', NULL, NULL, 866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (868, N'KH Business Cards, Back', N'Back', NULL, NULL, 866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (869, N'BW Business Cards', N'Back', NULL, NULL, 855, NULL, N'BW Business Cards', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (870, N'DES Spa', N'Front', NULL, NULL, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (871, N'ASH 21c Brands', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (872, N'ASH 21c Brands', N'Back', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (873, N'Ameristar', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (874, N'AM Business Cards', N'Front', NULL, NULL, 873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (875, N'AM Backs', N'Back', NULL, NULL, 873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (876, N'AM Front Desk', N'Front', NULL, NULL, 873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (877, N'AM Guestroom', N'Front', NULL, NULL, 873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (878, N'AM Stationery', N'Front', NULL, NULL, 873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (879, N'KH Stationery', N'Front', NULL, NULL, 866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (880, N'DS Sales Kit', N'Front', NULL, NULL, 881, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (881, N'DS Sales Resources', N'Front', NULL, NULL, 657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (882, N'DS Presentations', N'Front', NULL, NULL, 881, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (883, N'DS Folder', N'Front', NULL, NULL, 880, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (884, N'DS Service Sheets', N'Front', NULL, NULL, 880, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (885, N'DS Case Studies', N'Front', NULL, NULL, 880, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (886, N'MVCP Creating Unforgettable Moments', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (887, N'MVCP Playbook - Front Office', N'Front', NULL, NULL, 893, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (888, N'MVCP Playbook - Housekeeping', N'Front', NULL, NULL, 893, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (889, N'MVCP Playbook - Engineering', N'Front', NULL, NULL, 893, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (890, N'MVCP Accounting', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (891, N'DS Lookbooks', N'Front', NULL, NULL, 880, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (892, N'ASH Avendra', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (893, N'MVCP Playbook', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (894, N'ASH Marriott International', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (895, N'ASH Hyatt Unbound BC', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (896, N'ASH Independent Brands', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (897, N'Dexter Development', N'Front', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (898, N'DSDev Portal ^ Cubes', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (899, N'DSDev Portal ^ Portal Test Chambers', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (900, N'DSDev Portal ^ Structures', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (901, N'DSDev Portal ^ Buttons', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (902, N'DSDev Portal ^ Devices', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (903, N'DSDev Portal ^ Gels', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (904, N'DSDev Portal ^ Hazards', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (905, N'DSDev Portal ^ Tubes', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (906, N'DSDev Portal | Robots', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (907, N'DSDev Portal ^ Achivements', N'Front', NULL, NULL, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (908, N'AS Hospitality', N'Front', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (909, N'INDY Stationery', N'Front', NULL, NULL, 908, NULL, N'indysta', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (910, N'INDY Front Desk', N'Front', NULL, NULL, 908, NULL, N'indyfd', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (911, N'INDY Housekeeping', N'Front', NULL, NULL, 908, NULL, N'indyhk', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (912, N'INDY Guest Room', N'Front', NULL, NULL, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (913, N'INDY Sales & Marketing', N'Front', NULL, NULL, 908, NULL, N'indysm', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (914, N'INDY Back of House', N'Front', NULL, NULL, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (915, N'INDY Promo Products', N'Front', NULL, NULL, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (916, N'INDY Backs', N'Back', NULL, NULL, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (917, N'INDY Food & Beverage', N'Front', NULL, NULL, 908, NULL, N'indyfb', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (918, N'ASH HMS Host', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (919, N'ASH Gemstone', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (920, N'MVCP Food and Beverage', N'Front', NULL, NULL, 940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (921, N'AUT-05^Human Resources', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (922, N'MVC clubTHRIVE', N'Front', NULL, NULL, 847, NULL, N'mvcpct', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (923, N'ASH Jewel Resorts', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (924, N'ASH Management Groups', N'Front', NULL, NULL, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (925, N'KH In-Room', N'Front', NULL, NULL, 866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (926, N'KH Front Desk', N'Front', NULL, NULL, 866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (927, N'MVC Stationery', N'Front', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (928, N'MVC-04^Sales & Marketing', N'Front', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (929, N'MVC Business Cards', N'Front', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (930, N'MVC Property Level', N'Front', NULL, NULL, 929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (931, N'MVC clubTHRIVE BC', N'Front', NULL, NULL, 929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (932, N'MVC Property Level', N'Front', NULL, NULL, 927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (933, N'MVC Corporate Level', N'Front', NULL, NULL, 929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (934, N'MVC Backs', N'Back', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (935, N'MVC Food & Beverage', N'Front', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (936, N'MVC Owner Benefit Level', N'Front', NULL, NULL, 927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (937, N'INDY Spa', N'Front', NULL, NULL, 908, NULL, N'indyspa', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (938, N'INDY Human Resources', N'Front', NULL, NULL, 908, NULL, N'indyhr', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (939, N'AUT-08^Specialty Items', N'Front', NULL, NULL, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (940, N'Marriott Vacation Club Pulse', N'Front', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (941, N'MVC Resort Operations', N'Front', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (942, N'MVC Front Desk', N'Front', NULL, NULL, 941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (943, N'MVC Accounting', N'Front', NULL, NULL, 941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (944, N'MVC Housekeeping', N'Front', NULL, NULL, 941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (945, N'MVC Loss Prevention', N'Front', NULL, NULL, 941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (946, N'MVC Guest Activities', N'Front', NULL, NULL, 941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (947, N'MVC Engineering', N'Front', NULL, NULL, 941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (948, N'MVC General / Miscellaneous', N'Front', NULL, NULL, 941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (949, N'MVC  Creating Unforgettable Moments', N'Front', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (950, N'MVC English Training Kit', N'Front', NULL, NULL, 949, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (951, N'MVC Spanish Training Kit', N'Front', NULL, NULL, 949, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (952, N'MVC Creole Training Kit', N'Front', NULL, NULL, 949, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (953, N'MVC Playbook Training', N'Front', NULL, NULL, 847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (954, N'MVC Food & Beverage', N'Front', NULL, NULL, 953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (955, N'MVC Front Desk PB', N'Front', NULL, NULL, 953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (956, N'MVC Housekeeping PB', N'Front', NULL, NULL, 953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (957, N'MVC Engineering PB', N'Front', NULL, NULL, 953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (958, N'SDF Housekeeping', N'Front', NULL, NULL, 828, N'Files/stationerytypethumbnail/HKPMVC2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StationeryType] ([StationeryType_Id], [Type], [FrontBack], [UnitOfOrder], [UnitOfOrderDescription], [ParentStationeryType_Id], [Thumbnail], [ExternalId], [HelpText], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [SeoTitle], [SortOrder]) VALUES (959, N'Ambassador Note Card & Envelope', N'Front', NULL, NULL, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (1, N'New', 7, N'No', N'Yes', N'No', N'Yes', NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (2, N'Impositioned', 8, N'Yes', N'Yes', N'No', NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (3, N'Printed', 9, N'No', NULL, N'Yes', NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (4, N'Delivered', 9, N'No', NULL, N'Yes', N'No', NULL, N'No')
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (5, N'On hold', 10, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (6, N'Completed', 11, N'No', NULL, N'Yes', NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (7, N'Cancelled', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (8, N'Awaiting Approval', 6, N'No', NULL, N'No', N'Yes', NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (9, N'Not Approved', 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (10, N'Shopping Cart', 5, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (11, N'Dispatched-DNU', 9, N'No', NULL, N'Yes', N'Yes', NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (12, N'Saved', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (13, N'Temp', 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (14, N'Awaiting Email Approval', 6, N'No', NULL, N'No', NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (15, N'Variable Print', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (16, N'CASS', 1, N'No', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (17, N'PreSort', 1, N'No', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (18, N'VWeb Launched', NULL, N'No', NULL, N'No', NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (19, N'Quotes', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (50, N'VPrint Compose', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (51, N'Awaiting Payment', 6, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (100, N'Processing List', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Status] ([Status_Id], [Type], [Order], [AllowDispatch], [ImportOrder], [SendDispatchEmail], [ShowInDownloadList], [ExternalId], [DispatchEmailOnlyWithTracking]) VALUES (101, N'Awaiting cXML Purchase', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Template] ([Template_Id], [Customer_Id], [TemplateName], [StationeryType_Id], [TemplatePDFFile], [PDFResourceFile], [MergeFile], [LowResMergeFile], [ShellInternalName], [ShellFile], [EditablePDF], [Thumbnail], [DataEntryMode], [ShowUrgent], [OnLine], [UseColourSpacesInPreview], [EnforceReversePrinting], [CopyAddress], [UnitQtysMaxUnits], [UnitQtysQtyPerUnit], [PartOfProject], [HelpText], [SignatureMarking_Id], [UnitOfMeasurement_Id], [Width], [Height], [SeparateCMYK], [BleedLeft], [BleedRight], [BleedTop], [BleedBottom], [MasterNo], [Supplier_Id], [ProofType], [ProofResolution], [WeightPerUnit], [StockItem], [FlashMergeJPG], [StockQTY], [EmailStockLevel], [JavaScriptFunction_Id], [RegistrationColours], [QuantityExceptions], [QuantityInclusions], [MinDPI], [GoodDPI], [Retail], [RetailAllow], [ThumbOnDetails], [ThumbOnDetailsWidth], [OtherInformation], [CatalogDescription], [JPGType], [CreatedBy_Id], [VPrint], [VWeb], [VariableQuantity], [PackageType_Id], [DoNotTax], [EmailHiResPDF], [VariablePrintOptions], [AllCostCentre], [AllowFileUpload], [AllowFileUploadCaption], [AllowFileUploadHelpText], [HideMappings], [ExcludeFreight], [VPrintEnableListPurchase], [VPrintHideExistingList], [VPrintHideUploadMappings], [SignatureStyle_Id], [ShowStandardDelivery], [NexJobPage_Id], [NoPages], [EmpQtyCap], [EmpQtyCapPeriod], [ImageLibraryHideLibrary], [ImageLibraryDisableModify], [ImageLibraryAutoSelectImage], [ImageLibraryHideCategories], [ImageLibraryDefaultLibrary], [ImageLibraryHideCaption], [ImageLibraryHideUpload], [DefaultZoomType], [DefaultZoomSize], [ApproveArtwork], [ApproveArtworkText], [QtyFromUpload], [ReOrderEditDetails], [DownloadOptions], [DownloadList], [VWebCampaignReport_Id], [AutoScheduleJobs], [VPrintDownloadOriginalImp], [VPrintDownloadGeneratedImp], [PurchaseListGroup_Id], [AllowSeeds], [VPrintMultiDrop], [VPrintDropMax], [VPrintDropMinQty], [VPrintDropMaxQty], [VPrintDropMinDays], [VPrintDropMaxDays], [AllowRules], [VPrintMinDaysSequence], [CostGroup_Id], [PresortID], [ScaleFactor], [AutoCreateCSV], [ImageLibraryEnableImageColor], [RiskStockQty], [RecordStockHistory], [MinimumStockLevel], [PreSortFormat_Id], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [FlashOverlay], [ColorPickerType], [LiveProof], [DispatchProfile_Id], [ExcludeHandling], [DefaultOrder], [ProofZoomResolution], [AllowDownloadStatus_Id], [SkipApproval], [CASS], [NCOA], [ExcludeFromMarkUp], [ImageLibraryEnableCostCentreShare], [FLXML], [SplitShip], [OnlineFrom], [OnlineTo], [StockWithinProject], [ExcludeLoyaltyPoints], [PrintedItem], [ProductionTicket_Id], [ShowFlipperOnProof], [HideIndividualPageProof], [CustomizedFlipperSize], [FlipperWidth], [FlipperHeight], [WeighingSource], [DoNotAllowDataSaving], [TaxRate], [NoOrderDownloadTrack], [DownloadJPGPreview], [AutomaticImposition]) VALUES (2166, 36, N'AE617', 628, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'files/templatethumbnail/64000tn.jpg', N'HTML', N'Do Not Allow', N'Yes', N'No', N'No', N'Do not display', 243, 50, N'No', N'Enrollment Brochure, American English', 1, 1, 0, 0, N'No', NULL, NULL, NULL, NULL, N'6-4000', NULL, N'JPEG', NULL, 0, N'Yes', NULL, 482475, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL, NULL, N'Enrollment Brochure, American English', N'<p>Enrollment Brochure, American English</p>', NULL, NULL, NULL, NULL, N'No', NULL, N'No', NULL, NULL, N'No', N'No', NULL, NULL, N'No', N'No', N'No', N'No', N'No', NULL, N'Do Not Display', NULL, NULL, NULL, NULL, N'No', N'No', N'No', N'No', N'No', N'No', N'No', NULL, NULL, N'No', NULL, N'No', N'No', NULL, N'No', NULL, N'No', N'No', N'No', NULL, NULL, N'No', NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL, NULL, NULL, N'No', N'No', NULL, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, N'No', 1, NULL, NULL, N'No', NULL, NULL, N'No', N'No', NULL, N'No', NULL, NULL, N'No', N'No', NULL, NULL, N'No', N'No', N'No', NULL, NULL, NULL, N'No', NULL, N'No', N'No', NULL)
INSERT [dbo].[Template] ([Template_Id], [Customer_Id], [TemplateName], [StationeryType_Id], [TemplatePDFFile], [PDFResourceFile], [MergeFile], [LowResMergeFile], [ShellInternalName], [ShellFile], [EditablePDF], [Thumbnail], [DataEntryMode], [ShowUrgent], [OnLine], [UseColourSpacesInPreview], [EnforceReversePrinting], [CopyAddress], [UnitQtysMaxUnits], [UnitQtysQtyPerUnit], [PartOfProject], [HelpText], [SignatureMarking_Id], [UnitOfMeasurement_Id], [Width], [Height], [SeparateCMYK], [BleedLeft], [BleedRight], [BleedTop], [BleedBottom], [MasterNo], [Supplier_Id], [ProofType], [ProofResolution], [WeightPerUnit], [StockItem], [FlashMergeJPG], [StockQTY], [EmailStockLevel], [JavaScriptFunction_Id], [RegistrationColours], [QuantityExceptions], [QuantityInclusions], [MinDPI], [GoodDPI], [Retail], [RetailAllow], [ThumbOnDetails], [ThumbOnDetailsWidth], [OtherInformation], [CatalogDescription], [JPGType], [CreatedBy_Id], [VPrint], [VWeb], [VariableQuantity], [PackageType_Id], [DoNotTax], [EmailHiResPDF], [VariablePrintOptions], [AllCostCentre], [AllowFileUpload], [AllowFileUploadCaption], [AllowFileUploadHelpText], [HideMappings], [ExcludeFreight], [VPrintEnableListPurchase], [VPrintHideExistingList], [VPrintHideUploadMappings], [SignatureStyle_Id], [ShowStandardDelivery], [NexJobPage_Id], [NoPages], [EmpQtyCap], [EmpQtyCapPeriod], [ImageLibraryHideLibrary], [ImageLibraryDisableModify], [ImageLibraryAutoSelectImage], [ImageLibraryHideCategories], [ImageLibraryDefaultLibrary], [ImageLibraryHideCaption], [ImageLibraryHideUpload], [DefaultZoomType], [DefaultZoomSize], [ApproveArtwork], [ApproveArtworkText], [QtyFromUpload], [ReOrderEditDetails], [DownloadOptions], [DownloadList], [VWebCampaignReport_Id], [AutoScheduleJobs], [VPrintDownloadOriginalImp], [VPrintDownloadGeneratedImp], [PurchaseListGroup_Id], [AllowSeeds], [VPrintMultiDrop], [VPrintDropMax], [VPrintDropMinQty], [VPrintDropMaxQty], [VPrintDropMinDays], [VPrintDropMaxDays], [AllowRules], [VPrintMinDaysSequence], [CostGroup_Id], [PresortID], [ScaleFactor], [AutoCreateCSV], [ImageLibraryEnableImageColor], [RiskStockQty], [RecordStockHistory], [MinimumStockLevel], [PreSortFormat_Id], [ThumbnailAlt], [SeoDescription], [SeoKeywords], [FlashOverlay], [ColorPickerType], [LiveProof], [DispatchProfile_Id], [ExcludeHandling], [DefaultOrder], [ProofZoomResolution], [AllowDownloadStatus_Id], [SkipApproval], [CASS], [NCOA], [ExcludeFromMarkUp], [ImageLibraryEnableCostCentreShare], [FLXML], [SplitShip], [OnlineFrom], [OnlineTo], [StockWithinProject], [ExcludeLoyaltyPoints], [PrintedItem], [ProductionTicket_Id], [ShowFlipperOnProof], [HideIndividualPageProof], [CustomizedFlipperSize], [FlipperWidth], [FlipperHeight], [WeighingSource], [DoNotAllowDataSaving], [TaxRate], [NoOrderDownloadTrack], [DownloadJPGPreview], [AutomaticImposition]) VALUES (2199, 36, N'CZ617', 726, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'files/templatethumbnail/64030tn.jpg', N'HTML', N'Do Not Allow', N'Yes', N'No', N'No', N'Do not display', 50, 50, N'No', N'Enrollment Brochure, Czech', 1, 1, 0, 0, N'No', NULL, NULL, NULL, NULL, N'6-4030-S', NULL, N'JPEG', NULL, 0, N'Yes', NULL, 12350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL, NULL, N'Enrollment Brochure, Czech', N'<p>Enrollment Brochure, Czech</p>', NULL, NULL, NULL, NULL, N'No', NULL, N'No', NULL, NULL, N'No', N'No', NULL, NULL, N'No', N'No', N'No', N'No', N'No', NULL, N'Do Not Display', NULL, NULL, NULL, NULL, N'No', N'No', N'No', N'No', N'No', N'No', N'No', NULL, NULL, N'No', NULL, N'No', N'No', NULL, N'No', NULL, N'No', N'No', N'No', NULL, NULL, N'No', NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL, NULL, NULL, N'No', N'No', NULL, N'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, N'No', NULL, NULL, NULL, N'No', NULL, NULL, N'No', N'No', NULL, N'No', NULL, NULL, N'No', N'No', NULL, NULL, N'No', N'No', N'No', NULL, NULL, NULL, N'No', NULL, N'No', N'No', NULL)
INSERT [dbo].[TrimMarkType] ([TrimMarkType_Id], [Type], [TrimMarkLength], [TrimMarkOffset], [LineWeight], [UnitOfMeasurement_Id]) VALUES (2, N'Standard Trim', 0.1, 0.1, 0.007, 4)
INSERT [dbo].[TrimMarkType] ([TrimMarkType_Id], [Type], [TrimMarkLength], [TrimMarkOffset], [LineWeight], [UnitOfMeasurement_Id]) VALUES (3, N'No Trims', 0, 0, 0, 2)
INSERT [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id], [Type], [InPoints]) VALUES (1, N'mm', 0.352778)
INSERT [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id], [Type], [InPoints]) VALUES (2, N'cm', 0.03528)
INSERT [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id], [Type], [InPoints]) VALUES (3, N'point', 1)
INSERT [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id], [Type], [InPoints]) VALUES (4, N'inch', 0.013889)
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (2, N'Client User')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (3, N'Client Generic')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (4, N'Supplier')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (5, N'CSR')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (6, N'Sales Rep')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (100, N'Supplier Admin')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (101, N'Artroom')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (102, N'ArtSupport')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (103, N'Template Admin')
INSERT [dbo].[UserType] ([UserType_Id], [UserTypeName]) VALUES (104, N'Account Services')
/****** Object:  Index [Idx21]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx21] ON [dbo].[AccessRight]
(
	[UserType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx22]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx22] ON [dbo].[AccessRight]
(
	[Screen_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxACCACC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxACCACC] ON [dbo].[AdditionalCostCentreApprover]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxACCAEmp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxACCAEmp] ON [dbo].[AdditionalCostCentreApprover]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxAFLFL]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxAFLFL] ON [dbo].[AdvancedFieldLayoutOption]
(
	[FieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxAFLSFL]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxAFLSFL] ON [dbo].[AdvancedFieldLayoutOption]
(
	[SetFieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [LoginAccount_Unique]    Script Date: 11/27/2017 3:04:32 PM ******/
ALTER TABLE [dbo].[Autologin] ADD  CONSTRAINT [LoginAccount_Unique] UNIQUE NONCLUSTERED 
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCampaignTemplateEmailServer]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCampaignTemplateEmailServer] ON [dbo].[CampaignTemplate]
(
	[EmailServer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCampaignTemplateSMSPhoneNumber]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCampaignTemplateSMSPhoneNumber] ON [dbo].[CampaignTemplate]
(
	[SMSPhoneNumber_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCTCust]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCTCust] ON [dbo].[CampaignTemplate]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCTPB]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCTPB] ON [dbo].[CampaignTemplate]
(
	[PrintBroker_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCTST]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCTST] ON [dbo].[CampaignTemplate]
(
	[StationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCTCCCC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCTCCCC] ON [dbo].[CampaignTemplateCostCentre]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCTCCCT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCTCCCT] ON [dbo].[CampaignTemplateCostCentre]
(
	[CampaignTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCartTransactionFreightType]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCartTransactionFreightType] ON [dbo].[CartTransaction]
(
	[FreightType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CartTransactionTaxesCartTransaction_Id]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [CartTransactionTaxesCartTransaction_Id] ON [dbo].[CartTransactionTaxes]
(
	[CartTransaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx82]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx82] ON [dbo].[ClientProject]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx83]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx83] ON [dbo].[ClientProject]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx84]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx84] ON [dbo].[ClientProject]
(
	[ProjectTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxClientProjectLA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxClientProjectLA] ON [dbo].[ClientProject]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx43]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx43] ON [dbo].[Condition]
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx44]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx44] ON [dbo].[Condition]
(
	[ConditionField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx16]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx16] ON [dbo].[CostCentre]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx17]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx17] ON [dbo].[CostCentre]
(
	[ParentCostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx18]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx18] ON [dbo].[CostCentre]
(
	[CostCentreApprover_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx19]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx19] ON [dbo].[CostCentre]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCCAEmp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCCAEmp] ON [dbo].[CostCentre]
(
	[CostCentreAdministrator_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCCPG]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCCPG] ON [dbo].[CostCentre]
(
	[PaymentGateway_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentre_ExternalListProcessor]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentre_ExternalListProcessor] ON [dbo].[CostCentre]
(
	[ExternalListProcessor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentre_LoyaltyPointsProfile]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentre_LoyaltyPointsProfile] ON [dbo].[CostCentre]
(
	[LoyaltyPointsProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentreExternalTax]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentreExternalTax] ON [dbo].[CostCentre]
(
	[ExternalTax_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentrePreSortFormatNCOA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentrePreSortFormatNCOA] ON [dbo].[CostCentre]
(
	[PreSortFormatNCOA_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentrePrintBroker]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentrePrintBroker] ON [dbo].[CostCentre]
(
	[PrintBroker_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx54]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx54] ON [dbo].[CostCentreAddress]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentreAdministratorCostCentre]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentreAdministratorCostCentre] ON [dbo].[CostCentreAdministrator]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentreAdministratorEmployee]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentreAdministratorEmployee] ON [dbo].[CostCentreAdministrator]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCCRFMCCRId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCCRFMCCRId] ON [dbo].[CostCentreCostRuleFreightMethod]
(
	[CostCentreCostRule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCCRFMFMId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCCRFMFMId] ON [dbo].[CostCentreCostRuleFreightMethod]
(
	[FreightMethod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx103]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx103] ON [dbo].[CostCentrePDFs]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx104]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx104] ON [dbo].[CostCentrePDFs]
(
	[PDFs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx1]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx1] ON [dbo].[Customer]
(
	[PrintBroker_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx2]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx2] ON [dbo].[Customer]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCustomerIntegrationCustomer]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCustomerIntegrationCustomer] ON [dbo].[CustomerIntegration]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCustomerIntegrationIntegration]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCustomerIntegrationIntegration] ON [dbo].[CustomerIntegration]
(
	[Integration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx55]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx55] ON [dbo].[DefaultCostCentreEntry]
(
	[Field_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx56]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx56] ON [dbo].[DefaultCostCentreEntry]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx57]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx57] ON [dbo].[DefaultEntry]
(
	[Field_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx58]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx58] ON [dbo].[DefaultEntry]
(
	[CostCentreAddress_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxDNMRCustomer]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxDNMRCustomer] ON [dbo].[DoNotMailEntry]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxDNMRLoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxDNMRLoginAccount] ON [dbo].[DoNotMailEntry]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx13]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx13] ON [dbo].[DoubleCut]
(
	[UnitOfMeasurement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ELMAH_Error_App_Time_Seq]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ELMAH_Error_App_Time_Seq] ON [dbo].[ELMAH_Error]
(
	[Application] ASC,
	[TimeUtc] DESC,
	[Sequence] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEmailServer]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEmailServer] ON [dbo].[EmailServer]
(
	[EmailServer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEmailServerParameter]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEmailServerParameter] ON [dbo].[EmailServerParameter]
(
	[EmailServer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEmailServerParameterEmailServer]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEmailServerParameterEmailServer] ON [dbo].[EmailServerParameter]
(
	[EmailServer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IdxEmailAddr]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEmailAddr] ON [dbo].[EmailUnsubscribe]
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEmailUnCust]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEmailUnCust] ON [dbo].[EmailUnsubscribe]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx3]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx3] ON [dbo].[Employee]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx4]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx4] ON [dbo].[Employee]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx5]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx5] ON [dbo].[Employee]
(
	[RegistrationLoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEmpAp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEmpAp] ON [dbo].[Employee]
(
	[Approver_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeExtraInputField]    Script Date: 11/27/2017 3:04:32 PM ******/
ALTER TABLE [dbo].[EmployeeExtraInputField] ADD  CONSTRAINT [IX_EmployeeExtraInputField] UNIQUE NONCLUSTERED 
(
	[EmployeeExtraInputField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEEIF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEEIF] ON [dbo].[EmployeeExtraInputField]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEEIFEIF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEEIFEIF] ON [dbo].[EmployeeExtraInputField]
(
	[ExtraInputField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEIF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEIF] ON [dbo].[ExtraInputField]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEOF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEOF] ON [dbo].[ExtraOrderField]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEOFCart]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEOFCart] ON [dbo].[ExtraOrderField]
(
	[CartTransaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEOINexJobUpload]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEOINexJobUpload] ON [dbo].[ExtraOrderField]
(
	[NexJobUpload_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEPFT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEPFT] ON [dbo].[ExtraProductField]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxEPFOEPF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxEPFOEPF] ON [dbo].[ExtraProductFieldOption]
(
	[ExtraProductField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_LoginAccount] ON [dbo].[Favourite]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Template]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_Template] ON [dbo].[Favourite]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx23]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx23] ON [dbo].[FieldLayout]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx24]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx24] ON [dbo].[FieldLayout]
(
	[Field_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx25]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx25] ON [dbo].[FieldLayout]
(
	[JavaScriptFunction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx26]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx26] ON [dbo].[FieldLayout]
(
	[UnitOfMeasurement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx27]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx27] ON [dbo].[FieldLayout]
(
	[RelativeToAnotherField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx28]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx28] ON [dbo].[FieldLayout]
(
	[RelativeToAnotherField1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx29]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx29] ON [dbo].[FieldLayout]
(
	[InheritFromField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxActionFL]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxActionFL] ON [dbo].[FieldLayout]
(
	[ActionFieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxFieldLayoutFontSizeRange]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxFieldLayoutFontSizeRange] ON [dbo].[FieldLayout]
(
	[FontSizeRange_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxFLWPId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxFLWPId] ON [dbo].[FieldLayout]
(
	[WebPortal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx61]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx61] ON [dbo].[Image]
(
	[Branding_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxImCatLA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxImCatLA] ON [dbo].[ImageCategory]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImageCategory]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImageCategory] ON [dbo].[ImageCategory]
(
	[ParentImageCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxImportTemplateTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxImportTemplateTemplate] ON [dbo].[ImportTemplate]
(
	[ImportTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx38]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx38] ON [dbo].[Imposition]
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx39]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx39] ON [dbo].[Imposition]
(
	[SignatureMarking_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxImpSS]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxImpSS] ON [dbo].[Imposition]
(
	[SignatureStyle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxIntegrationLogCartTransaction]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxIntegrationLogCartTransaction] ON [dbo].[IntegrationLog]
(
	[CartTransaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxIntegrationLogIntegration]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxIntegrationLogIntegration] ON [dbo].[IntegrationLog]
(
	[Integration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxIntegrationLogOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxIntegrationLogOrder] ON [dbo].[IntegrationLog]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxIntegrationLogVWebCampaignArtwork]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxIntegrationLogVWebCampaignArtwork] ON [dbo].[IntegrationLog]
(
	[VWebCampaignArtwork_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx63]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx63] ON [dbo].[IPAddressRange]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx71]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx71] ON [dbo].[LibraryImage]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx72]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx72] ON [dbo].[LibraryImage]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx73]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx73] ON [dbo].[LibraryImage]
(
	[AddedBy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLibImageImCat]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLibImageImCat] ON [dbo].[LibraryImage]
(
	[ImageCategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLibraryImageParentLibraryImage]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLibraryImageParentLibraryImage] ON [dbo].[LibraryImage]
(
	[ParentLibraryImage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LibraryImageKeyword]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_LibraryImageKeyword] ON [dbo].[LibraryImageKeyword]
(
	[Keyword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLTOEPF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLTOEPF] ON [dbo].[LinkedToOption]
(
	[ExtraProductFieldOption1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLTOEPFO]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLTOEPFO] ON [dbo].[LinkedToOption]
(
	[ExtraProductFieldOption_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxListCC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxListCC] ON [dbo].[List]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxListCust]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxListCust] ON [dbo].[List]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxListEmp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxListEmp] ON [dbo].[List]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxListLA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxListLA] ON [dbo].[List]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderListList]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderListList] ON [dbo].[List]
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCPList]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCPList] ON [dbo].[ListAddition]
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLAdLA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLAdLA] ON [dbo].[ListAddition]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLAdList]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLAdList] ON [dbo].[ListAddition]
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLAdListEntry]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLAdListEntry] ON [dbo].[ListEntry]
(
	[ListAddition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IdxLEEmail]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLEEmail] ON [dbo].[ListEntry]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLEL]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLEL] ON [dbo].[ListEntry]
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ListEC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ListEC] ON [dbo].[ListEntry]
(
	[List_Id] ASC,
	[ErrorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ListECF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ListECF] ON [dbo].[ListEntry]
(
	[List_Id] ASC,
	[ErrorCode] ASC,
	[ErrorFlag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ListEF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ListEF] ON [dbo].[ListEntry]
(
	[List_Id] ASC,
	[ErrorFlag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ListMatch]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ListMatch] ON [dbo].[ListEntry]
(
	[List_Id] ASC,
	[MatchFlag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx20]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx20] ON [dbo].[LoginAccount]
(
	[UserType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLoginHistoryLoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLoginHistoryLoginAccount] ON [dbo].[LoginHistory]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLoyaltyPointsEarned_LoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLoyaltyPointsEarned_LoginAccount] ON [dbo].[LoyaltyPointsEarned]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLoyaltyPointsEarned_LoyaltyPointsProfile]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLoyaltyPointsEarned_LoyaltyPointsProfile] ON [dbo].[LoyaltyPointsEarned]
(
	[LoyaltyPointsProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLoyaltyPointsEarned_Order]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLoyaltyPointsEarned_Order] ON [dbo].[LoyaltyPointsEarned]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLoyaltyPointsEarned_Voucher]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLoyaltyPointsEarned_Voucher] ON [dbo].[LoyaltyPointsEarned]
(
	[Voucher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NexJobExtraNexJobExtraId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [NexJobExtraNexJobExtraId] ON [dbo].[NexJobExtra]
(
	[NexJobExtra_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxNexJobPageDispatchProfile]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxNexJobPageDispatchProfile] ON [dbo].[NexJobPage]
(
	[DispatchProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxNexJobPageProductionTicket]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxNexJobPageProductionTicket] ON [dbo].[NexJobPage]
(
	[ProductionTicket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxNJP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxNJP] ON [dbo].[NexJobPage]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxNJPStationeryType]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxNJPStationeryType] ON [dbo].[NexJobPage]
(
	[StationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxJPC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxJPC] ON [dbo].[NexJobPageControl]
(
	[NexJobPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxNJP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxNJP] ON [dbo].[NexJobPageControl]
(
	[NexJobPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxNJPSTNJP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxNJPSTNJP] ON [dbo].[NexJobPageStationeryType]
(
	[NexJobPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxNJPSTST]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxNJPSTST] ON [dbo].[NexJobPageStationeryType]
(
	[StationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NexJobPriceNexJobPriceId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [NexJobPriceNexJobPriceId] ON [dbo].[NexJobPrice]
(
	[NexJobPrice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AccountId_CostCentreId]    Script Date: 11/27/2017 3:04:32 PM ******/
ALTER TABLE [dbo].[ops_LoginAccountCostCentre] ADD  CONSTRAINT [AccountId_CostCentreId] UNIQUE NONCLUSTERED 
(
	[LoginAccount_Id] ASC,
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx32]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx32] ON [dbo].[Order]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx33]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx33] ON [dbo].[Order]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx34]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx34] ON [dbo].[Order]
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx35]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx35] ON [dbo].[Order]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx36]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx36] ON [dbo].[Order]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx37]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx37] ON [dbo].[Order]
(
	[ClientProject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxDispatchProfileOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxDispatchProfileOrder] ON [dbo].[Order]
(
	[DispatchProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderEmp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderEmp] ON [dbo].[Order]
(
	[ApprovedBy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderImposition]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderImposition] ON [dbo].[Order]
(
	[AutoImposition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderProductionTicket]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderProductionTicket] ON [dbo].[Order]
(
	[ProductionTicket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderVWMTAdd]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderVWMTAdd] ON [dbo].[Order]
(
	[VWebMultiTouchAddition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderVWMTC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderVWMTC] ON [dbo].[Order]
(
	[VWebMultiTouchCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPO]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPO] ON [dbo].[Order]
(
	[VariablePrint_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderCartTrans]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderCartTrans] ON [dbo].[Order]
(
	[CartTransaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderedBy]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderedBy] ON [dbo].[Order]
(
	[OrderedBy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderAddress]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderAddress] ON [dbo].[OrderAddress]
(
	[OrderAddress_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderAddressFreightType]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderAddressFreightType] ON [dbo].[OrderAddress]
(
	[FreightType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderAddressItem]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderAddressItem] ON [dbo].[OrderAddressItem]
(
	[OrderAddressItem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Emp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_Emp] ON [dbo].[OrderApprove]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderApproveOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderApproveOrder] ON [dbo].[OrderApprove]
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx40]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx40] ON [dbo].[OrderDescription]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx41]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx41] ON [dbo].[OrderDescription]
(
	[Imposition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderDownloadLoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderDownloadLoginAccount] ON [dbo].[OrderDownload]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderDownloadOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderDownloadOrder] ON [dbo].[OrderDownload]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderDownloadTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderDownloadTemplate] ON [dbo].[OrderDownload]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderDropOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderDropOrder] ON [dbo].[OrderDrop]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxOrderListOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxOrderListOrder] ON [dbo].[OrderList]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx46]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx46] ON [dbo].[Page]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPDFsPage]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPDFsPage] ON [dbo].[Page]
(
	[PDFs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx15]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx15] ON [dbo].[PaperSize]
(
	[UnitOfMeasurement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPartialShipmentOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPartialShipmentOrder] ON [dbo].[PartialShipment]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPartialShipmentOrderAddressItem]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPartialShipmentOrderAddressItem] ON [dbo].[PartialShipment]
(
	[OrderAddressItem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx59]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx59] ON [dbo].[PDFReferance]
(
	[Field_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx74]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx74] ON [dbo].[PDFs]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPDFsLoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPDFsLoginAccount] ON [dbo].[PDFs]
(
	[AddedBy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx105]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx105] ON [dbo].[PDFsFieldLayout]
(
	[PDFs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx106]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx106] ON [dbo].[PDFsFieldLayout]
(
	[FieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx65]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx65] ON [dbo].[PDFUsed]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx66]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx66] ON [dbo].[PDFUsed]
(
	[PDFs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx67]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx67] ON [dbo].[PDFUsed]
(
	[LibraryImage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx45]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx45] ON [dbo].[Photo]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx62]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx62] ON [dbo].[PMPageControl]
(
	[PMTable_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPostageProjectTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPostageProjectTemplate] ON [dbo].[Postage]
(
	[ProjectTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxProductionTicketMappingProductionTicket]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxProductionTicketMappingProductionTicket] ON [dbo].[ProductionTicketMapping]
(
	[ProductionTicket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxProductionTicketMappingProductionTicketSetting]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxProductionTicketMappingProductionTicketSetting] ON [dbo].[ProductionTicketMapping]
(
	[ProductionTicketSetting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxProductionTicketSettingProductionTicketSettingType]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxProductionTicketSettingProductionTicketSettingType] ON [dbo].[ProductionTicketSetting]
(
	[ProductionTicketSettingType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx76]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx76] ON [dbo].[ProjectPage]
(
	[ProjectTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx77]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx77] ON [dbo].[ProjectPageTemplate]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx78]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx78] ON [dbo].[ProjectPageTemplate]
(
	[ProjectPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx75]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx75] ON [dbo].[ProjectTemplate]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxProjectTemplateDispatchProfile]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxProjectTemplateDispatchProfile] ON [dbo].[ProjectTemplate]
(
	[DispatchProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPTST]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPTST] ON [dbo].[ProjectTemplate]
(
	[StationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx79]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx79] ON [dbo].[ProjectTemplateCostCentre]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx80]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx80] ON [dbo].[ProjectTemplateCostCentre]
(
	[ProjectTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPLPFPLF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPLPFPLF] ON [dbo].[PurchaseListProductField]
(
	[PurchaseListField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPLPFPLP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPLPFPLP] ON [dbo].[PurchaseListProductField]
(
	[PurchaseListProduct_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx30]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx30] ON [dbo].[Report]
(
	[OutputFormat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx95]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx95] ON [dbo].[ReportCustomer]
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx96]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx96] ON [dbo].[ReportCustomer]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx93]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx93] ON [dbo].[ReportGroupBy]
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx94]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx94] ON [dbo].[ReportGroupBy]
(
	[GroupBy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx97]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx97] ON [dbo].[ReportIncludeSummary]
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx98]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx98] ON [dbo].[ReportIncludeSummary]
(
	[IncludeSummary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx91]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx91] ON [dbo].[ReportShowField]
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx92]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx92] ON [dbo].[ReportShowField]
(
	[ShowField_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx31]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx31] ON [dbo].[Result]
(
	[Report_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SavedTemplateLoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SavedTemplateLoginAccount] ON [dbo].[SavedTemplate]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SavedTemplateStationery]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SavedTemplateStationery] ON [dbo].[SavedTemplate]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SavedTemplateTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SavedTemplateTemplate] ON [dbo].[SavedTemplate]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SavedTemplateSavedTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SavedTemplateSavedTemplate] ON [dbo].[SavedTemplateData]
(
	[SavedTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ScheduleLogEndDate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [ScheduleLogEndDate] ON [dbo].[ScheduleLog]
(
	[Schedule_Id] ASC,
	[EndDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxSDCustCustId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxSDCustCustId] ON [dbo].[ScreenDefinitionCustomer]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxSDCustSDId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxSDCustSDId] ON [dbo].[ScreenDefinitionCustomer]
(
	[ScreenDefinition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx64]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx64] ON [dbo].[ScreenTip]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCartAbandonmentEmailsLog_OrderId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCartAbandonmentEmailsLog_OrderId] ON [dbo].[ShoppingCartAbandonmentEmailsLog]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx10]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx10] ON [dbo].[SignatureMarking]
(
	[DoubleCut_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx11]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx11] ON [dbo].[SignatureMarking]
(
	[Margin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx12]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx12] ON [dbo].[SignatureMarking]
(
	[TrimMarkType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx47]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx47] ON [dbo].[SignatureStyle]
(
	[NumberUp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx48]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx48] ON [dbo].[SignatureStyle]
(
	[PaperSize_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx49]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx49] ON [dbo].[Stationery]
(
	[Employee_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx50]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx50] ON [dbo].[Stationery]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx51]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx51] ON [dbo].[Stationery]
(
	[FrontTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx52]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx52] ON [dbo].[Stationery]
(
	[BackTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx53]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx53] ON [dbo].[Stationery]
(
	[Photo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPS]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPS] ON [dbo].[Stationery]
(
	[VariablePrint_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCPS]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCPS] ON [dbo].[StationeryClientProject]
(
	[ClientProject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxSCP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxSCP] ON [dbo].[StationeryClientProject]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCRRNexJobPage]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCRRNexJobPage] ON [dbo].[StationeryClientProject]
(
	[NexJobPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCRRNexJobUpload]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCRRNexJobUpload] ON [dbo].[StationeryClientProject]
(
	[NexJobUpload_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCRRTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCRRTemplate] ON [dbo].[StationeryClientProject]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StationeryType]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_StationeryType] ON [dbo].[StationeryType]
(
	[ParentStationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx68]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx68] ON [dbo].[StationeryValue]
(
	[Field_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx69]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx69] ON [dbo].[StationeryValue]
(
	[FieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx70]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx70] ON [dbo].[StationeryValue]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVTLFLId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVTLFLId] ON [dbo].[StationeryValue]
(
	[VisualTargetLibrary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxSHOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxSHOrder] ON [dbo].[StockHistory]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxSHTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxSHTemplate] ON [dbo].[StockHistory]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxSLA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxSLA] ON [dbo].[Supplier]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx100]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx100] ON [dbo].[TaskDailySchedule]
(
	[Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx99]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx99] ON [dbo].[TaskDailySchedule]
(
	[TaskDaily_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx101]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx101] ON [dbo].[TaskMonthlySchedule]
(
	[TaskMonthly_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx102]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx102] ON [dbo].[TaskMonthlySchedule]
(
	[Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx6]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx6] ON [dbo].[Template]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx7]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx7] ON [dbo].[Template]
(
	[StationeryType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx8]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx8] ON [dbo].[Template]
(
	[SignatureMarking_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx9]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx9] ON [dbo].[Template]
(
	[UnitOfMeasurement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxPresortFormatTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxPresortFormatTemplate] ON [dbo].[Template]
(
	[PreSortFormat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxSuplierTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxSuplierTemplate] ON [dbo].[Template]
(
	[Supplier_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTemplateDispatchProfile]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTemplateDispatchProfile] ON [dbo].[Template]
(
	[DispatchProfile_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTemplateProductionTicket]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTemplateProductionTicket] ON [dbo].[Template]
(
	[ProductionTicket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTemplateStatus]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTemplateStatus] ON [dbo].[Template]
(
	[AllowDownloadStatus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTempSS]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTempSS] ON [dbo].[Template]
(
	[SignatureStyle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTempVWReport]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTempVWReport] ON [dbo].[Template]
(
	[VWebCampaignReport_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx89]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx89] ON [dbo].[TemplateCostCentre]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx90]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx90] ON [dbo].[TemplateCostCentre]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx60]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx60] ON [dbo].[TemplateCosting]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTCC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTCC] ON [dbo].[TemplateCustomer]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTCT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTCT] ON [dbo].[TemplateCustomer]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTempFontFont]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTempFontFont] ON [dbo].[TemplateFont]
(
	[Font_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTempFontTemp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTempFontTemp] ON [dbo].[TemplateFont]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTemplateRecommendationTemplate]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTemplateRecommendationTemplate] ON [dbo].[TemplateRecommendation]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxTemplateRecommendationTemplateInclude]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxTemplateRecommendationTemplateInclude] ON [dbo].[TemplateRecommendation]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx85]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx85] ON [dbo].[TemplateSignatureStyle]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx86]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx86] ON [dbo].[TemplateSignatureStyle]
(
	[SignatureStyle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx87]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx87] ON [dbo].[TemplateTemplate]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx88]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx88] ON [dbo].[TemplateTemplate]
(
	[Template1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx14]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [Idx14] ON [dbo].[TrimMarkType]
(
	[UnitOfMeasurement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintCC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintCC] ON [dbo].[VariablePrint]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintCust]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintCust] ON [dbo].[VariablePrint]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintTemp]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintTemp] ON [dbo].[VariablePrint]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SigMarking]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SigMarking] ON [dbo].[VariablePrint]
(
	[SignatureMarking_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SignatureStype]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_SignatureStype] ON [dbo].[VariablePrint]
(
	[SignatureStyle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VariablePrint]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_VariablePrint] ON [dbo].[VariablePrint]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxFLId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxFLId] ON [dbo].[VisualTargetLibraryFieldLayout]
(
	[FieldLayout_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVTLFLId]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVTLFLId] ON [dbo].[VisualTargetLibraryFieldLayout]
(
	[VisualTargetLibrary_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVoucher_LoginAccount]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVoucher_LoginAccount] ON [dbo].[Voucher]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVoucherCustomer]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVoucherCustomer] ON [dbo].[Voucher]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCartTransactionVoucherCartTransaction]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCartTransactionVoucherCartTransaction] ON [dbo].[VoucherCartTransaction]
(
	[CartTransaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLoginAccountVoucherCartTransaction]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLoginAccountVoucherCartTransaction] ON [dbo].[VoucherCartTransaction]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVoucherVoucherCartTransaction]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVoucherVoucherCartTransaction] ON [dbo].[VoucherCartTransaction]
(
	[Voucher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxCostCentreVoucherCostCentre]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxCostCentreVoucherCostCentre] ON [dbo].[VoucherCostCentre]
(
	[CostCentre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVoucherVoucherCostCentre]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVoucherVoucherCostCentre] ON [dbo].[VoucherCostCentre]
(
	[Voucher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintVariablePrint]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintVariablePrint] ON [dbo].[VPrintData]
(
	[VariablePrint_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintDataDefVariablePrint]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintDataDefVariablePrint] ON [dbo].[VPrintDataDefinition]
(
	[VariablePrint_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPMCust]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPMCust] ON [dbo].[VPrintFieldMapping]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintImLibIm]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintImLibIm] ON [dbo].[VPrintImage]
(
	[LibraryImage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintImPDF]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintImPDF] ON [dbo].[VPrintImage]
(
	[PDFs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVPrintImVP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVPrintImVP] ON [dbo].[VPrintImage]
(
	[VariablePrint_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCL]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCL] ON [dbo].[VWebCampaign]
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCMTC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCMTC] ON [dbo].[VWebCampaign]
(
	[VWebMultiTouchCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCVWC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCVWC] ON [dbo].[VWebCampaign]
(
	[PURLVWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCVWT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCVWT] ON [dbo].[VWebCampaign]
(
	[VWebTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCACP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCACP] ON [dbo].[VWebCampaignArtwork]
(
	[ClientProject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCACT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCACT] ON [dbo].[VWebCampaignArtwork]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCACVWT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCACVWT] ON [dbo].[VWebCampaignArtwork]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCAPT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCAPT] ON [dbo].[VWebCampaignArtwork]
(
	[ProjectTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCASMS]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCASMS] ON [dbo].[VWebCampaignArtwork]
(
	[SMSTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCAStat]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCAStat] ON [dbo].[VWebCampaignArtwork]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCAWP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCAWP] ON [dbo].[VWebCampaignArtwork]
(
	[WebPortal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVVWCDELE]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVVWCDELE] ON [dbo].[VWebCampaignDataEntry]
(
	[ListEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVVWCDEVWC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVVWCDEVWC] ON [dbo].[VWebCampaignDataEntry]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVVWCDEVWWPP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVVWCDEVWWPP] ON [dbo].[VWebCampaignDataEntry]
(
	[VWebWebPortalPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCLL]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCLL] ON [dbo].[VWebCampaignList]
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCLVWC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCLVWC] ON [dbo].[VWebCampaignList]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCALE]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCALE] ON [dbo].[VWebCampaignListEntry]
(
	[ListEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCAVWC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCAVWC] ON [dbo].[VWebCampaignListEntry]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCLLE]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCLLE] ON [dbo].[VWebCampaignLog]
(
	[ListEntry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCLVWC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCLVWC] ON [dbo].[VWebCampaignLog]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCLVWWPP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCLVWWPP] ON [dbo].[VWebCampaignLog]
(
	[VWebWebPortalPage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IdxVWebCampaignLog_VWebCampaign_Id_Action]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebCampaignLog_VWebCampaign_Id_Action] ON [dbo].[VWebCampaignLog]
(
	[VWebCampaign_Id] ASC,
	[Action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxLAdCustomer]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxLAdCustomer] ON [dbo].[VWebCampaignReport]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCROrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCROrder] ON [dbo].[VWebCampaignRule]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCRVWebCampaign]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCRVWebCampaign] ON [dbo].[VWebCampaignRule]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCRRLI]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCRRLI] ON [dbo].[VWebCampaignRuleReplace]
(
	[LibraryImage_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCRRPDFs]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCRRPDFs] ON [dbo].[VWebCampaignRuleReplace]
(
	[PDFs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCRRVWebCampaignRule]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCRRVWebCampaignRule] ON [dbo].[VWebCampaignRuleReplace]
(
	[VWebCampaignRule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWCSumVWC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWCSumVWC] ON [dbo].[VWebCampaignSummary]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWebJobCust]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebJobCust] ON [dbo].[VWebJob]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWebJobLA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebJobLA] ON [dbo].[VWebJob]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWebJobOrder]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebJobOrder] ON [dbo].[VWebJob]
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWebJobPreSortFormatNCOA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebJobPreSortFormatNCOA] ON [dbo].[VWebJob]
(
	[PreSortFormatNCOA_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWebJobVWCA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebJobVWCA] ON [dbo].[VWebJob]
(
	[VWebCampaignArtwork_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWMTAddListAdd]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWMTAddListAdd] ON [dbo].[VWebMultiTouchAddition]
(
	[ListAddition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWMTAddVWC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWMTAddVWC] ON [dbo].[VWebMultiTouchAddition]
(
	[VWebCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWMTAddVWTC]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWMTAddVWTC] ON [dbo].[VWebMultiTouchAddition]
(
	[VWebMultiTouchCampaign_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWMTCCT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWMTCCT] ON [dbo].[VWebMultiTouchCampaign]
(
	[CampaignTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWMTCL]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWMTCL] ON [dbo].[VWebMultiTouchCampaign]
(
	[List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWMTCLA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWMTCLA] ON [dbo].[VWebMultiTouchCampaign]
(
	[LoginAccount_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWebResVWeb]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebResVWeb] ON [dbo].[VWebResponse]
(
	[VWebResponse_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWebResItemVWebRes]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWebResItemVWebRes] ON [dbo].[VWebResponseItem]
(
	[VWebResponseItem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWTACP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWTACP] ON [dbo].[VWebTemplateArtwork]
(
	[ClientProject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWTACT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWTACT] ON [dbo].[VWebTemplateArtwork]
(
	[Template_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWTACVWT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWTACVWT] ON [dbo].[VWebTemplateArtwork]
(
	[VWebTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWTAPT]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWTAPT] ON [dbo].[VWebTemplateArtwork]
(
	[ProjectTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWTASMS]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWTASMS] ON [dbo].[VWebTemplateArtwork]
(
	[SMSTemplate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWTAStat]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWTAStat] ON [dbo].[VWebTemplateArtwork]
(
	[Stationery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWTAWP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWTAWP] ON [dbo].[VWebTemplateArtwork]
(
	[WebPortal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxVWWPPVWCA]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxVWWPPVWCA] ON [dbo].[VWebWebPortalPage]
(
	[VWebCampaignArtwork_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IdxWPP]    Script Date: 11/27/2017 3:04:32 PM ******/
CREATE NONCLUSTERED INDEX [IdxWPP] ON [dbo].[WebPortalPage]
(
	[WebPortal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ds_orderLimits] ADD  DEFAULT ('limit') FOR [type]
GO
ALTER TABLE [dbo].[ds_orderLimits] ADD  DEFAULT ((50)) FOR [roundTo]
GO
ALTER TABLE [dbo].[ds_orderLimits] ADD  DEFAULT ((0)) FOR [hiddenMatchAll]
GO
ALTER TABLE [dbo].[ds_orderStatusLog] ADD  DEFAULT (getdate()) FOR [ChangeDate]
GO
ALTER TABLE [dbo].[ds_templateGrouping] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[ds_templateGrouping] ADD  DEFAULT ((0)) FOR [useMax]
GO
ALTER TABLE [dbo].[dtproperties] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[ELMAH_Error] ADD  DEFAULT (newid()) FOR [ErrorId]
GO
ALTER TABLE [dbo].[EmailLog] ADD  DEFAULT (getdate()) FOR [EmailSentDate]
GO
ALTER TABLE [dbo].[EmailUnsubscribe] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[JobTicket] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[List] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[List] ADD  DEFAULT ('No Name') FOR [ListName]
GO
ALTER TABLE [dbo].[ListAddition] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[VWebLog] ADD  DEFAULT ((0)) FOR [Sent]
GO
ALTER TABLE [dbo].[VWebLog] ADD  DEFAULT ((0)) FOR [Delivered]
GO
ALTER TABLE [dbo].[VWebLog] ADD  DEFAULT ((0)) FOR [Read]
GO
ALTER TABLE [dbo].[VWebLog] ADD  DEFAULT ((0)) FOR [Opened]
GO
ALTER TABLE [dbo].[VWebLog] ADD  DEFAULT ((0)) FOR [Unsubscribe]
GO
ALTER TABLE [dbo].[VWebLog] ADD  DEFAULT ((0)) FOR [Clicked]
GO
ALTER TABLE [dbo].[VWebMultiTouchAddition] ADD  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[AccessRight]  WITH CHECK ADD  CONSTRAINT [Rel21] FOREIGN KEY([UserType_Id])
REFERENCES [dbo].[UserType] ([UserType_Id])
GO
ALTER TABLE [dbo].[AccessRight] CHECK CONSTRAINT [Rel21]
GO
ALTER TABLE [dbo].[AccessRight]  WITH CHECK ADD  CONSTRAINT [Rel22] FOREIGN KEY([Screen_Id])
REFERENCES [dbo].[Screen] ([Screen_Id])
GO
ALTER TABLE [dbo].[AccessRight] CHECK CONSTRAINT [Rel22]
GO
ALTER TABLE [dbo].[AccudataPunchout]  WITH CHECK ADD  CONSTRAINT [FK_AccudataPunchout_PurchaseListGroup] FOREIGN KEY([PurchaseListGroup_Id])
REFERENCES [dbo].[PurchaseListGroup] ([PurchaseListGroup_Id])
GO
ALTER TABLE [dbo].[AccudataPunchout] CHECK CONSTRAINT [FK_AccudataPunchout_PurchaseListGroup]
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalCostCentreApprover_NexJobPage_Id] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover] CHECK CONSTRAINT [FK_AdditionalCostCentreApprover_NexJobPage_Id]
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalCostCentreApprover_ProjectTemplate_Id] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover] CHECK CONSTRAINT [FK_AdditionalCostCentreApprover_ProjectTemplate_Id]
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalCostCentreApprover_Template_Id] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover] CHECK CONSTRAINT [FK_AdditionalCostCentreApprover_Template_Id]
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover]  WITH CHECK ADD  CONSTRAINT [RelACCACC] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover] CHECK CONSTRAINT [RelACCACC]
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover]  WITH CHECK ADD  CONSTRAINT [RelACCAEmp] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[AdditionalCostCentreApprover] CHECK CONSTRAINT [RelACCAEmp]
GO
ALTER TABLE [dbo].[AddressState]  WITH CHECK ADD  CONSTRAINT [FK_AddressState_AddressCountry] FOREIGN KEY([AddressCountry_ID])
REFERENCES [dbo].[AddressCountry] ([AddressCountry_ID])
GO
ALTER TABLE [dbo].[AddressState] CHECK CONSTRAINT [FK_AddressState_AddressCountry]
GO
ALTER TABLE [dbo].[AdvancedFieldLayoutOption]  WITH CHECK ADD  CONSTRAINT [RelAFLFL] FOREIGN KEY([FieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[AdvancedFieldLayoutOption] CHECK CONSTRAINT [RelAFLFL]
GO
ALTER TABLE [dbo].[AdvancedFieldLayoutOption]  WITH CHECK ADD  CONSTRAINT [RelAFLSFL] FOREIGN KEY([SetFieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[AdvancedFieldLayoutOption] CHECK CONSTRAINT [RelAFLSFL]
GO
ALTER TABLE [dbo].[CampaignTemplate]  WITH CHECK ADD  CONSTRAINT [FK_CampaignTemplate_EmailServer] FOREIGN KEY([EmailServer_Id])
REFERENCES [dbo].[EmailServer] ([EmailServer_Id])
GO
ALTER TABLE [dbo].[CampaignTemplate] CHECK CONSTRAINT [FK_CampaignTemplate_EmailServer]
GO
ALTER TABLE [dbo].[CampaignTemplate]  WITH CHECK ADD  CONSTRAINT [FK_CampaignTemplate_SMSPhoneNumber] FOREIGN KEY([SMSPhoneNumber_Id])
REFERENCES [dbo].[SMSPhoneNumber] ([SMSPhoneNumber_Id])
GO
ALTER TABLE [dbo].[CampaignTemplate] CHECK CONSTRAINT [FK_CampaignTemplate_SMSPhoneNumber]
GO
ALTER TABLE [dbo].[CampaignTemplate]  WITH CHECK ADD  CONSTRAINT [RelCTCust] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[CampaignTemplate] CHECK CONSTRAINT [RelCTCust]
GO
ALTER TABLE [dbo].[CampaignTemplate]  WITH CHECK ADD  CONSTRAINT [RelCTPB] FOREIGN KEY([PrintBroker_Id])
REFERENCES [dbo].[PrintBroker] ([PrintBroker_Id])
GO
ALTER TABLE [dbo].[CampaignTemplate] CHECK CONSTRAINT [RelCTPB]
GO
ALTER TABLE [dbo].[CampaignTemplate]  WITH CHECK ADD  CONSTRAINT [RelCTST] FOREIGN KEY([StationeryType_Id])
REFERENCES [dbo].[StationeryType] ([StationeryType_Id])
GO
ALTER TABLE [dbo].[CampaignTemplate] CHECK CONSTRAINT [RelCTST]
GO
ALTER TABLE [dbo].[CampaignTemplateCostCentre]  WITH CHECK ADD  CONSTRAINT [RelCTCCCC] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CampaignTemplateCostCentre] CHECK CONSTRAINT [RelCTCCCC]
GO
ALTER TABLE [dbo].[CampaignTemplateCostCentre]  WITH CHECK ADD  CONSTRAINT [RelCTCCCT] FOREIGN KEY([CampaignTemplate_Id])
REFERENCES [dbo].[CampaignTemplate] ([CampaignTemplate_Id])
GO
ALTER TABLE [dbo].[CampaignTemplateCostCentre] CHECK CONSTRAINT [RelCTCCCT]
GO
ALTER TABLE [dbo].[CartTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CartTransaction_City] FOREIGN KEY([City_Id])
REFERENCES [dbo].[City] ([City_id])
GO
ALTER TABLE [dbo].[CartTransaction] CHECK CONSTRAINT [FK_CartTransaction_City]
GO
ALTER TABLE [dbo].[CartTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CartTransaction_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CartTransaction] CHECK CONSTRAINT [FK_CartTransaction_CostCentre]
GO
ALTER TABLE [dbo].[CartTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CartTransaction_County] FOREIGN KEY([County_Id])
REFERENCES [dbo].[County] ([County_Id])
GO
ALTER TABLE [dbo].[CartTransaction] CHECK CONSTRAINT [FK_CartTransaction_County]
GO
ALTER TABLE [dbo].[CartTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CartTransaction_State] FOREIGN KEY([State_Id])
REFERENCES [dbo].[State] ([State_Id])
GO
ALTER TABLE [dbo].[CartTransaction] CHECK CONSTRAINT [FK_CartTransaction_State]
GO
ALTER TABLE [dbo].[CartTransaction]  WITH CHECK ADD  CONSTRAINT [FKCartTransactionFreightType] FOREIGN KEY([FreightType_Id])
REFERENCES [dbo].[FreightType] ([FreightType_Id])
GO
ALTER TABLE [dbo].[CartTransaction] CHECK CONSTRAINT [FKCartTransactionFreightType]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_County] FOREIGN KEY([County_Id])
REFERENCES [dbo].[County] ([County_Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_County]
GO
ALTER TABLE [dbo].[ClientProject]  WITH CHECK ADD  CONSTRAINT [FK_ClientProject_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[ClientProject] CHECK CONSTRAINT [FK_ClientProject_LoginAccount]
GO
ALTER TABLE [dbo].[ClientProject]  WITH CHECK ADD  CONSTRAINT [Rel82] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[ClientProject] CHECK CONSTRAINT [Rel82]
GO
ALTER TABLE [dbo].[ClientProject]  WITH CHECK ADD  CONSTRAINT [Rel83] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[ClientProject] CHECK CONSTRAINT [Rel83]
GO
ALTER TABLE [dbo].[ClientProject]  WITH CHECK ADD  CONSTRAINT [Rel84] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[ClientProject] CHECK CONSTRAINT [Rel84]
GO
ALTER TABLE [dbo].[Condition]  WITH CHECK ADD  CONSTRAINT [Rel43] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[Condition] CHECK CONSTRAINT [Rel43]
GO
ALTER TABLE [dbo].[Condition]  WITH CHECK ADD  CONSTRAINT [Rel44] FOREIGN KEY([ConditionField_Id])
REFERENCES [dbo].[ShowField] ([ShowField_Id])
GO
ALTER TABLE [dbo].[Condition] CHECK CONSTRAINT [Rel44]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CCPG] FOREIGN KEY([PaymentGateway_Id])
REFERENCES [dbo].[PaymentGateway] ([PaymentGateway_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CCPG]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_City] FOREIGN KEY([City_Id])
REFERENCES [dbo].[City] ([City_id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_City]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_CostGroup] FOREIGN KEY([CostGroup_Id])
REFERENCES [dbo].[CostGroup] ([CostGroup_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_CostGroup]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_County] FOREIGN KEY([County_Id])
REFERENCES [dbo].[County] ([County_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_County]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_ExternalListProcessor] FOREIGN KEY([ExternalListProcessor_Id])
REFERENCES [dbo].[ExternalListProcessor] ([ExternalListProcessor_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_ExternalListProcessor]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_ExternalTax] FOREIGN KEY([ExternalTax_Id])
REFERENCES [dbo].[ExternalTax] ([ExternalTax_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_ExternalTax]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_LoyaltyPointsProfile] FOREIGN KEY([LoyaltyPointsProfile_Id])
REFERENCES [dbo].[LoyaltyPointsProfile] ([LoyaltyPointsProfile_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_LoyaltyPointsProfile]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_PreSortFormatNCOA] FOREIGN KEY([PreSortFormatNCOA_Id])
REFERENCES [dbo].[PresortFormat] ([PresortFormat_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_PreSortFormatNCOA]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_PrintBroker] FOREIGN KEY([PrintBroker_Id])
REFERENCES [dbo].[PrintBroker] ([PrintBroker_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_PrintBroker]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_State] FOREIGN KEY([State_Id])
REFERENCES [dbo].[State] ([State_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_State]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_Status] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Status] ([Status_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_CostCentre_Status]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [FK_ScreenDefinition_CostCentre] FOREIGN KEY([ScreenDefinition_Id])
REFERENCES [dbo].[ScreenDefinition] ([ScreenDefinition_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [FK_ScreenDefinition_CostCentre]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [Rel16] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [Rel16]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [Rel18] FOREIGN KEY([CostCentreApprover_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [Rel18]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [Rel19] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [Rel19]
GO
ALTER TABLE [dbo].[CostCentre]  WITH CHECK ADD  CONSTRAINT [RelCCAEmp] FOREIGN KEY([CostCentreAdministrator_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[CostCentre] CHECK CONSTRAINT [RelCCAEmp]
GO
ALTER TABLE [dbo].[CostCentreAddress]  WITH CHECK ADD  CONSTRAINT [Rel54] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentreAddress] CHECK CONSTRAINT [Rel54]
GO
ALTER TABLE [dbo].[CostCentreAdministrator]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreAdministrator_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentreAdministrator] CHECK CONSTRAINT [FK_CostCentreAdministrator_CostCentre]
GO
ALTER TABLE [dbo].[CostCentreAdministrator]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreAdministrator_Employee] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[CostCentreAdministrator] CHECK CONSTRAINT [FK_CostCentreAdministrator_Employee]
GO
ALTER TABLE [dbo].[CostCentreCostRule]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreCostRule_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentreCostRule] CHECK CONSTRAINT [FK_CostCentreCostRule_CostCentre]
GO
ALTER TABLE [dbo].[CostCentreCostRuleFreightMethod]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreCostRuleFreightMethod_CostCentreCostRule] FOREIGN KEY([CostCentreCostRule_Id])
REFERENCES [dbo].[CostCentreCostRule] ([CostCentreCostRule_Id])
GO
ALTER TABLE [dbo].[CostCentreCostRuleFreightMethod] CHECK CONSTRAINT [FK_CostCentreCostRuleFreightMethod_CostCentreCostRule]
GO
ALTER TABLE [dbo].[CostCentreCostRuleFreightMethod]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreCostRuleFreightMethod_FreightMethod] FOREIGN KEY([FreightMethod_Id])
REFERENCES [dbo].[FreightMethod] ([FreightMethod_Id])
GO
ALTER TABLE [dbo].[CostCentreCostRuleFreightMethod] CHECK CONSTRAINT [FK_CostCentreCostRuleFreightMethod_FreightMethod]
GO
ALTER TABLE [dbo].[CostCentreExternalList]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreExternalList_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentreExternalList] CHECK CONSTRAINT [FK_CostCentreExternalList_CostCentre]
GO
ALTER TABLE [dbo].[CostCentreExternalList]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreExternalList_ExternalList] FOREIGN KEY([ExternalList_Id])
REFERENCES [dbo].[ExternalList] ([ExternalList_Id])
GO
ALTER TABLE [dbo].[CostCentreExternalList] CHECK CONSTRAINT [FK_CostCentreExternalList_ExternalList]
GO
ALTER TABLE [dbo].[CostCentreFreightAccount]  WITH CHECK ADD  CONSTRAINT [FK_CCFA_CC] FOREIGN KEY([CostCentre_id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentreFreightAccount] CHECK CONSTRAINT [FK_CCFA_CC]
GO
ALTER TABLE [dbo].[CostCentreFreightAccount]  WITH CHECK ADD  CONSTRAINT [FK_CCFA_FA] FOREIGN KEY([FreightAccount_id])
REFERENCES [dbo].[FreightAccount] ([FreightAccount_id])
GO
ALTER TABLE [dbo].[CostCentreFreightAccount] CHECK CONSTRAINT [FK_CCFA_FA]
GO
ALTER TABLE [dbo].[CostCentreNexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreNexJobPage_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentreNexJobPage] CHECK CONSTRAINT [FK_CostCentreNexJobPage_CostCentre]
GO
ALTER TABLE [dbo].[CostCentreNexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreNexJobPage_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[CostCentreNexJobPage] CHECK CONSTRAINT [FK_CostCentreNexJobPage_NexJobPage]
GO
ALTER TABLE [dbo].[CostCentreNumber]  WITH CHECK ADD  CONSTRAINT [FK_CostCentreNumber_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentreNumber] CHECK CONSTRAINT [FK_CostCentreNumber_CostCentre]
GO
ALTER TABLE [dbo].[CostCentrePaymentGateway]  WITH CHECK ADD  CONSTRAINT [FK_CCPG_CC] FOREIGN KEY([CostCentre_id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentrePaymentGateway] CHECK CONSTRAINT [FK_CCPG_CC]
GO
ALTER TABLE [dbo].[CostCentrePaymentGateway]  WITH CHECK ADD  CONSTRAINT [FK_CCPG_PG] FOREIGN KEY([PaymentGateway_id])
REFERENCES [dbo].[PaymentGateway] ([PaymentGateway_Id])
GO
ALTER TABLE [dbo].[CostCentrePaymentGateway] CHECK CONSTRAINT [FK_CCPG_PG]
GO
ALTER TABLE [dbo].[CostCentrePDFs]  WITH CHECK ADD  CONSTRAINT [Rel103] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[CostCentrePDFs] CHECK CONSTRAINT [Rel103]
GO
ALTER TABLE [dbo].[CostCentrePDFs]  WITH CHECK ADD  CONSTRAINT [Rel104] FOREIGN KEY([PDFs_Id])
REFERENCES [dbo].[PDFs] ([PDFs_Id])
GO
ALTER TABLE [dbo].[CostCentrePDFs] CHECK CONSTRAINT [Rel104]
GO
ALTER TABLE [dbo].[CostGroup]  WITH CHECK ADD  CONSTRAINT [FK_CostGroup_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[CostGroup] CHECK CONSTRAINT [FK_CostGroup_Customer]
GO
ALTER TABLE [dbo].[County]  WITH CHECK ADD  CONSTRAINT [FK_County_State] FOREIGN KEY([State_Id])
REFERENCES [dbo].[State] ([State_Id])
GO
ALTER TABLE [dbo].[County] CHECK CONSTRAINT [FK_County_State]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_ScreenDefinition_Customer] FOREIGN KEY([ScreenDefinition_Id])
REFERENCES [dbo].[ScreenDefinition] ([ScreenDefinition_Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_ScreenDefinition_Customer]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [Rel1] FOREIGN KEY([PrintBroker_Id])
REFERENCES [dbo].[PrintBroker] ([PrintBroker_Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [Rel1]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [Rel2] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [Rel2]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [RelSuplierCustomer] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [RelSuplierCustomer]
GO
ALTER TABLE [dbo].[CustomerIntegration]  WITH CHECK ADD  CONSTRAINT [FK_CustomerIntegration_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[CustomerIntegration] CHECK CONSTRAINT [FK_CustomerIntegration_Customer]
GO
ALTER TABLE [dbo].[CustomHTML]  WITH CHECK ADD  CONSTRAINT [FK_CustomHTML_PrintBroker] FOREIGN KEY([PrintBroker_Id])
REFERENCES [dbo].[PrintBroker] ([PrintBroker_Id])
GO
ALTER TABLE [dbo].[CustomHTML] CHECK CONSTRAINT [FK_CustomHTML_PrintBroker]
GO
ALTER TABLE [dbo].[DefaultCostCentreEntry]  WITH CHECK ADD  CONSTRAINT [Rel55] FOREIGN KEY([Field_Id])
REFERENCES [dbo].[Field] ([Field_Id])
GO
ALTER TABLE [dbo].[DefaultCostCentreEntry] CHECK CONSTRAINT [Rel55]
GO
ALTER TABLE [dbo].[DefaultCostCentreEntry]  WITH CHECK ADD  CONSTRAINT [Rel56] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[DefaultCostCentreEntry] CHECK CONSTRAINT [Rel56]
GO
ALTER TABLE [dbo].[DefaultEntry]  WITH CHECK ADD  CONSTRAINT [Rel57] FOREIGN KEY([Field_Id])
REFERENCES [dbo].[Field] ([Field_Id])
GO
ALTER TABLE [dbo].[DefaultEntry] CHECK CONSTRAINT [Rel57]
GO
ALTER TABLE [dbo].[DefaultEntry]  WITH CHECK ADD  CONSTRAINT [Rel58] FOREIGN KEY([CostCentreAddress_Id])
REFERENCES [dbo].[CostCentreAddress] ([CostCentreAddress_Id])
GO
ALTER TABLE [dbo].[DefaultEntry] CHECK CONSTRAINT [Rel58]
GO
ALTER TABLE [dbo].[DoNotMailEntry]  WITH CHECK ADD  CONSTRAINT [FK_DoNotMailEntry_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[DoNotMailEntry] CHECK CONSTRAINT [FK_DoNotMailEntry_Customer]
GO
ALTER TABLE [dbo].[DoNotMailEntry]  WITH CHECK ADD  CONSTRAINT [FK_DoNotMailEntry_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[DoNotMailEntry] CHECK CONSTRAINT [FK_DoNotMailEntry_LoginAccount]
GO
ALTER TABLE [dbo].[DoubleCut]  WITH CHECK ADD  CONSTRAINT [Rel13] FOREIGN KEY([UnitOfMeasurement_Id])
REFERENCES [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id])
GO
ALTER TABLE [dbo].[DoubleCut] CHECK CONSTRAINT [Rel13]
GO
ALTER TABLE [dbo].[EmailServerParameter]  WITH CHECK ADD  CONSTRAINT [FK_EmailServerParameter_EmailServer] FOREIGN KEY([EmailServer_Id])
REFERENCES [dbo].[EmailServer] ([EmailServer_Id])
GO
ALTER TABLE [dbo].[EmailServerParameter] CHECK CONSTRAINT [FK_EmailServerParameter_EmailServer]
GO
ALTER TABLE [dbo].[EmailTemplate]  WITH CHECK ADD  CONSTRAINT [FK_EmailTemplate_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[EmailTemplate] CHECK CONSTRAINT [FK_EmailTemplate_Customer]
GO
ALTER TABLE [dbo].[EmailUnsubscribe]  WITH CHECK ADD  CONSTRAINT [FK_EmailUnsubscribeCustomer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[EmailUnsubscribe] CHECK CONSTRAINT [FK_EmailUnsubscribeCustomer]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_ScreenDefinition_Employee] FOREIGN KEY([ScreenDefinition_Id])
REFERENCES [dbo].[ScreenDefinition] ([ScreenDefinition_Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_ScreenDefinition_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [Rel3] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [Rel3]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [Rel4] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [Rel4]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [Rel5] FOREIGN KEY([RegistrationLoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [Rel5]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [RelEmpAp] FOREIGN KEY([Approver_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [RelEmpAp]
GO
ALTER TABLE [dbo].[EmployeeCostCentre]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeCostCentre_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[EmployeeCostCentre] CHECK CONSTRAINT [FK_EmployeeCostCentre_CostCentre]
GO
ALTER TABLE [dbo].[EmployeeCostCentre]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeCostCentre_Employee] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[EmployeeCostCentre] CHECK CONSTRAINT [FK_EmployeeCostCentre_Employee]
GO
ALTER TABLE [dbo].[EmployeeExtraInputField]  WITH CHECK ADD  CONSTRAINT [RelEEIF] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[EmployeeExtraInputField] CHECK CONSTRAINT [RelEEIF]
GO
ALTER TABLE [dbo].[EmployeeExtraInputField]  WITH CHECK ADD  CONSTRAINT [RelEEIFEIF] FOREIGN KEY([ExtraInputField_Id])
REFERENCES [dbo].[ExtraInputField] ([ExtraInputField_Id])
GO
ALTER TABLE [dbo].[EmployeeExtraInputField] CHECK CONSTRAINT [RelEEIFEIF]
GO
ALTER TABLE [dbo].[EmployeeTemplate]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTemplate_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[EmployeeTemplate] CHECK CONSTRAINT [FK_EmployeeTemplate_CostCentre]
GO
ALTER TABLE [dbo].[EmployeeTemplate]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTemplate_Employee] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[EmployeeTemplate] CHECK CONSTRAINT [FK_EmployeeTemplate_Employee]
GO
ALTER TABLE [dbo].[EmployeeTemplate]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTemplate_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[EmployeeTemplate] CHECK CONSTRAINT [FK_EmployeeTemplate_Template]
GO
ALTER TABLE [dbo].[ExternalList]  WITH CHECK ADD  CONSTRAINT [FK_ExternalList_ExternalListType] FOREIGN KEY([ExternalListType_Id])
REFERENCES [dbo].[ExternalListType] ([ExternalListType_Id])
GO
ALTER TABLE [dbo].[ExternalList] CHECK CONSTRAINT [FK_ExternalList_ExternalListType]
GO
ALTER TABLE [dbo].[ExternalListParameter]  WITH CHECK ADD  CONSTRAINT [FK_ExternalListParameter_ExternalList] FOREIGN KEY([ExternalList_Id])
REFERENCES [dbo].[ExternalList] ([ExternalList_Id])
GO
ALTER TABLE [dbo].[ExternalListParameter] CHECK CONSTRAINT [FK_ExternalListParameter_ExternalList]
GO
ALTER TABLE [dbo].[ExternalLookup]  WITH CHECK ADD  CONSTRAINT [FK_ExternalLookup_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[ExternalLookup] CHECK CONSTRAINT [FK_ExternalLookup_Customer]
GO
ALTER TABLE [dbo].[ExtraInputField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraInputField_JavaScriptFunction] FOREIGN KEY([JavaScriptFunction_Id])
REFERENCES [dbo].[JavaScriptFunction] ([JavaScriptFunction_Id])
GO
ALTER TABLE [dbo].[ExtraInputField] CHECK CONSTRAINT [FK_ExtraInputField_JavaScriptFunction]
GO
ALTER TABLE [dbo].[ExtraInputField]  WITH CHECK ADD  CONSTRAINT [RelEIF] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[ExtraInputField] CHECK CONSTRAINT [RelEIF]
GO
ALTER TABLE [dbo].[ExtraOrderField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraOrderField_ExtraInputField] FOREIGN KEY([ExtraInputField_Id])
REFERENCES [dbo].[ExtraInputField] ([ExtraInputField_Id])
GO
ALTER TABLE [dbo].[ExtraOrderField] CHECK CONSTRAINT [FK_ExtraOrderField_ExtraInputField]
GO
ALTER TABLE [dbo].[ExtraOrderField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraOrderField_ExtraProductField] FOREIGN KEY([ExtraProductField_Id])
REFERENCES [dbo].[ExtraProductField] ([ExtraProductField_Id])
GO
ALTER TABLE [dbo].[ExtraOrderField] CHECK CONSTRAINT [FK_ExtraOrderField_ExtraProductField]
GO
ALTER TABLE [dbo].[ExtraOrderField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraOrderField_ExtraProductFieldOption] FOREIGN KEY([ExtraproductFieldoption_Id])
REFERENCES [dbo].[ExtraProductFieldOption] ([ExtraProductFieldOption_Id])
GO
ALTER TABLE [dbo].[ExtraOrderField] CHECK CONSTRAINT [FK_ExtraOrderField_ExtraProductFieldOption]
GO
ALTER TABLE [dbo].[ExtraOrderField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraOrderField_NexJobUpload] FOREIGN KEY([NexJobUpload_Id])
REFERENCES [dbo].[NexJobUpload] ([NexJobUpload_Id])
GO
ALTER TABLE [dbo].[ExtraOrderField] CHECK CONSTRAINT [FK_ExtraOrderField_NexJobUpload]
GO
ALTER TABLE [dbo].[ExtraOrderField]  WITH CHECK ADD  CONSTRAINT [RelEOF] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[ExtraOrderField] CHECK CONSTRAINT [RelEOF]
GO
ALTER TABLE [dbo].[ExtraOrderField]  WITH CHECK ADD  CONSTRAINT [RelEOFCart] FOREIGN KEY([CartTransaction_Id])
REFERENCES [dbo].[CartTransaction] ([CartTransaction_Id])
GO
ALTER TABLE [dbo].[ExtraOrderField] CHECK CONSTRAINT [RelEOFCart]
GO
ALTER TABLE [dbo].[ExtraProductField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraProductField_NexJobGroup] FOREIGN KEY([NexJobGroup_Id])
REFERENCES [dbo].[NexJobGroup] ([NexJobGroup_Id])
GO
ALTER TABLE [dbo].[ExtraProductField] CHECK CONSTRAINT [FK_ExtraProductField_NexJobGroup]
GO
ALTER TABLE [dbo].[ExtraProductField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraProductField_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[ExtraProductField] CHECK CONSTRAINT [FK_ExtraProductField_NexJobPage]
GO
ALTER TABLE [dbo].[ExtraProductField]  WITH CHECK ADD  CONSTRAINT [FK_ExtraProductField_NexJobPage1] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[ExtraProductField] CHECK CONSTRAINT [FK_ExtraProductField_NexJobPage1]
GO
ALTER TABLE [dbo].[ExtraProductField]  WITH CHECK ADD  CONSTRAINT [RelEPFT] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[ExtraProductField] CHECK CONSTRAINT [RelEPFT]
GO
ALTER TABLE [dbo].[ExtraProductFieldOption]  WITH CHECK ADD  CONSTRAINT [RelEPFOEPF] FOREIGN KEY([ExtraProductField_Id])
REFERENCES [dbo].[ExtraProductField] ([ExtraProductField_Id])
GO
ALTER TABLE [dbo].[ExtraProductFieldOption] CHECK CONSTRAINT [RelEPFOEPF]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_LoginAccount]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_Template]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_FieldLayout_FieldLayout1] FOREIGN KEY([LinkedToFieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [FK_FieldLayout_FieldLayout1]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_FieldLayout_FontSizeRange] FOREIGN KEY([FontSizeRange_Id])
REFERENCES [dbo].[FontSizeRange] ([FontSizeRange_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [FK_FieldLayout_FontSizeRange]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_FieldLayout_LibraryImage] FOREIGN KEY([LibraryImage_Id])
REFERENCES [dbo].[LibraryImage] ([LibraryImage_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [FK_FieldLayout_LibraryImage]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_FieldLayout_PDFs] FOREIGN KEY([PDFs_Id])
REFERENCES [dbo].[PDFs] ([PDFs_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [FK_FieldLayout_PDFs]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_FieldLayout_WebPortal] FOREIGN KEY([WebPortal_Id])
REFERENCES [dbo].[WebPortal] ([WebPortal_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [FK_FieldLayout_WebPortal]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel23] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [Rel23]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel24] FOREIGN KEY([Field_Id])
REFERENCES [dbo].[Field] ([Field_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [Rel24]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel25] FOREIGN KEY([JavaScriptFunction_Id])
REFERENCES [dbo].[JavaScriptFunction] ([JavaScriptFunction_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [Rel25]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel26] FOREIGN KEY([UnitOfMeasurement_Id])
REFERENCES [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [Rel26]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel27] FOREIGN KEY([RelativeToAnotherField_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [Rel27]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel28] FOREIGN KEY([RelativeToAnotherField1_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [Rel28]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel29] FOREIGN KEY([InheritFromField_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [Rel29]
GO
ALTER TABLE [dbo].[FieldLayout]  WITH CHECK ADD  CONSTRAINT [RelActionFL] FOREIGN KEY([ActionFieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[FieldLayout] CHECK CONSTRAINT [RelActionFL]
GO
ALTER TABLE [dbo].[FreightType]  WITH CHECK ADD  CONSTRAINT [FK_FreightType_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[FreightType] CHECK CONSTRAINT [FK_FreightType_Customer]
GO
ALTER TABLE [dbo].[FreightType]  WITH CHECK ADD  CONSTRAINT [FK_FreightType_FreightMethod] FOREIGN KEY([FreightMethod_Id])
REFERENCES [dbo].[FreightMethod] ([FreightMethod_Id])
GO
ALTER TABLE [dbo].[FreightType] CHECK CONSTRAINT [FK_FreightType_FreightMethod]
GO
ALTER TABLE [dbo].[GeneratedReport]  WITH CHECK ADD  CONSTRAINT [FK_GeneratedReport_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[GeneratedReport] CHECK CONSTRAINT [FK_GeneratedReport_Customer]
GO
ALTER TABLE [dbo].[GeneratedReport]  WITH CHECK ADD  CONSTRAINT [FK_GeneratedReport_GeneratedReport] FOREIGN KEY([ParentGeneratedReport_Id])
REFERENCES [dbo].[GeneratedReport] ([GeneratedReport_Id])
GO
ALTER TABLE [dbo].[GeneratedReport] CHECK CONSTRAINT [FK_GeneratedReport_GeneratedReport]
GO
ALTER TABLE [dbo].[GeneratedReport]  WITH CHECK ADD  CONSTRAINT [FK_GeneratedReport_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[GeneratedReport] CHECK CONSTRAINT [FK_GeneratedReport_LoginAccount]
GO
ALTER TABLE [dbo].[GeneratedReport]  WITH CHECK ADD  CONSTRAINT [FK_GeneratedReport_VWebCampaign] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[GeneratedReport] CHECK CONSTRAINT [FK_GeneratedReport_VWebCampaign]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [Rel61] FOREIGN KEY([Branding_Id])
REFERENCES [dbo].[PrintBroker] ([PrintBroker_Id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [Rel61]
GO
ALTER TABLE [dbo].[ImageCategory]  WITH CHECK ADD  CONSTRAINT [FK_ImageCategory_ImageCategory] FOREIGN KEY([ParentImageCategory_Id])
REFERENCES [dbo].[ImageCategory] ([ImageCategory_Id])
GO
ALTER TABLE [dbo].[ImageCategory] CHECK CONSTRAINT [FK_ImageCategory_ImageCategory]
GO
ALTER TABLE [dbo].[ImageCategory]  WITH CHECK ADD  CONSTRAINT [RelImCatLA] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[ImageCategory] CHECK CONSTRAINT [RelImCatLA]
GO
ALTER TABLE [dbo].[ImageCategoryFieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_ImageCategoryFieldLayout_FieldLayout] FOREIGN KEY([FieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[ImageCategoryFieldLayout] CHECK CONSTRAINT [FK_ImageCategoryFieldLayout_FieldLayout]
GO
ALTER TABLE [dbo].[ImageCategoryFieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_ImageCategoryFieldLayout_ImageCategory] FOREIGN KEY([ImageCategory_Id])
REFERENCES [dbo].[ImageCategory] ([ImageCategory_Id])
GO
ALTER TABLE [dbo].[ImageCategoryFieldLayout] CHECK CONSTRAINT [FK_ImageCategoryFieldLayout_ImageCategory]
GO
ALTER TABLE [dbo].[ImportTemplate]  WITH CHECK ADD  CONSTRAINT [FK_ImportTemplate_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[ImportTemplate] CHECK CONSTRAINT [FK_ImportTemplate_Template]
GO
ALTER TABLE [dbo].[Imposition]  WITH CHECK ADD  CONSTRAINT [Rel38] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Status] ([Status_Id])
GO
ALTER TABLE [dbo].[Imposition] CHECK CONSTRAINT [Rel38]
GO
ALTER TABLE [dbo].[Imposition]  WITH CHECK ADD  CONSTRAINT [Rel39] FOREIGN KEY([SignatureMarking_Id])
REFERENCES [dbo].[SignatureMarking] ([SignatureMarking_Id])
GO
ALTER TABLE [dbo].[Imposition] CHECK CONSTRAINT [Rel39]
GO
ALTER TABLE [dbo].[Imposition]  WITH CHECK ADD  CONSTRAINT [RelImpSS] FOREIGN KEY([SignatureStyle_Id])
REFERENCES [dbo].[SignatureStyle] ([SignatureStyle_Id])
GO
ALTER TABLE [dbo].[Imposition] CHECK CONSTRAINT [RelImpSS]
GO
ALTER TABLE [dbo].[Imposition]  WITH CHECK ADD  CONSTRAINT [RelSuplierImposition] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[Imposition] CHECK CONSTRAINT [RelSuplierImposition]
GO
ALTER TABLE [dbo].[ImpositionAddition]  WITH CHECK ADD  CONSTRAINT [FK_ImpositionAddition_SignatureStyle] FOREIGN KEY([SignatureStyle_Id])
REFERENCES [dbo].[SignatureStyle] ([SignatureStyle_Id])
GO
ALTER TABLE [dbo].[ImpositionAddition] CHECK CONSTRAINT [FK_ImpositionAddition_SignatureStyle]
GO
ALTER TABLE [dbo].[IntegrationLog]  WITH CHECK ADD  CONSTRAINT [FK_IntegrationLog_CartTransaction] FOREIGN KEY([CartTransaction_Id])
REFERENCES [dbo].[CartTransaction] ([CartTransaction_Id])
GO
ALTER TABLE [dbo].[IntegrationLog] CHECK CONSTRAINT [FK_IntegrationLog_CartTransaction]
GO
ALTER TABLE [dbo].[IntegrationLog]  WITH CHECK ADD  CONSTRAINT [FK_IntegrationLog_Integration] FOREIGN KEY([Integration_Id])
REFERENCES [dbo].[Integration] ([Integration_Id])
GO
ALTER TABLE [dbo].[IntegrationLog] CHECK CONSTRAINT [FK_IntegrationLog_Integration]
GO
ALTER TABLE [dbo].[IntegrationLog]  WITH CHECK ADD  CONSTRAINT [FK_IntegrationLog_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[IntegrationLog] CHECK CONSTRAINT [FK_IntegrationLog_Order]
GO
ALTER TABLE [dbo].[IntegrationLog]  WITH CHECK ADD  CONSTRAINT [FK_IntegrationLog_VWebCampaignArtwork] FOREIGN KEY([VWebCampaignArtwork_Id])
REFERENCES [dbo].[VWebCampaignArtwork] ([VWebCampaignArtwork_Id])
GO
ALTER TABLE [dbo].[IntegrationLog] CHECK CONSTRAINT [FK_IntegrationLog_VWebCampaignArtwork]
GO
ALTER TABLE [dbo].[IPAddressRange]  WITH CHECK ADD  CONSTRAINT [Rel63] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[IPAddressRange] CHECK CONSTRAINT [Rel63]
GO
ALTER TABLE [dbo].[LibraryImage]  WITH CHECK ADD  CONSTRAINT [FK_LibraryImage_LibraryImage] FOREIGN KEY([ParentLibraryImage_Id])
REFERENCES [dbo].[LibraryImage] ([LibraryImage_Id])
GO
ALTER TABLE [dbo].[LibraryImage] CHECK CONSTRAINT [FK_LibraryImage_LibraryImage]
GO
ALTER TABLE [dbo].[LibraryImage]  WITH CHECK ADD  CONSTRAINT [Rel71] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[LibraryImage] CHECK CONSTRAINT [Rel71]
GO
ALTER TABLE [dbo].[LibraryImage]  WITH CHECK ADD  CONSTRAINT [Rel72] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[LibraryImage] CHECK CONSTRAINT [Rel72]
GO
ALTER TABLE [dbo].[LibraryImage]  WITH CHECK ADD  CONSTRAINT [Rel73] FOREIGN KEY([AddedBy_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[LibraryImage] CHECK CONSTRAINT [Rel73]
GO
ALTER TABLE [dbo].[LibraryImage]  WITH CHECK ADD  CONSTRAINT [RelLibImageImCat] FOREIGN KEY([ImageCategory_Id])
REFERENCES [dbo].[ImageCategory] ([ImageCategory_Id])
GO
ALTER TABLE [dbo].[LibraryImage] CHECK CONSTRAINT [RelLibImageImCat]
GO
ALTER TABLE [dbo].[LibraryImageKeyword]  WITH CHECK ADD  CONSTRAINT [FK_LibraryImageKeyword_LibraryImage] FOREIGN KEY([LibraryImage_Id])
REFERENCES [dbo].[LibraryImage] ([LibraryImage_Id])
GO
ALTER TABLE [dbo].[LibraryImageKeyword] CHECK CONSTRAINT [FK_LibraryImageKeyword_LibraryImage]
GO
ALTER TABLE [dbo].[LinkedToOption]  WITH CHECK ADD  CONSTRAINT [FK_LinkedToOption_ExtraProductFieldOption] FOREIGN KEY([ExtraProductFieldOption_Id])
REFERENCES [dbo].[ExtraProductFieldOption] ([ExtraProductFieldOption_Id])
GO
ALTER TABLE [dbo].[LinkedToOption] CHECK CONSTRAINT [FK_LinkedToOption_ExtraProductFieldOption]
GO
ALTER TABLE [dbo].[LinkedToOption]  WITH CHECK ADD  CONSTRAINT [FK_LinkedToOption_ExtraProductFieldOption1] FOREIGN KEY([ExtraProductFieldOption1_Id])
REFERENCES [dbo].[ExtraProductFieldOption] ([ExtraProductFieldOption_Id])
GO
ALTER TABLE [dbo].[LinkedToOption] CHECK CONSTRAINT [FK_LinkedToOption_ExtraProductFieldOption1]
GO
ALTER TABLE [dbo].[List]  WITH CHECK ADD  CONSTRAINT [RelListCC] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[List] CHECK CONSTRAINT [RelListCC]
GO
ALTER TABLE [dbo].[List]  WITH CHECK ADD  CONSTRAINT [RelListCust] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[List] CHECK CONSTRAINT [RelListCust]
GO
ALTER TABLE [dbo].[List]  WITH CHECK ADD  CONSTRAINT [RelListEmp] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[List] CHECK CONSTRAINT [RelListEmp]
GO
ALTER TABLE [dbo].[List]  WITH CHECK ADD  CONSTRAINT [RelListLA] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[List] CHECK CONSTRAINT [RelListLA]
GO
ALTER TABLE [dbo].[ListAddition]  WITH CHECK ADD  CONSTRAINT [FK_ClientProject_List] FOREIGN KEY([List_Id])
REFERENCES [dbo].[List] ([List_Id])
GO
ALTER TABLE [dbo].[ListAddition] CHECK CONSTRAINT [FK_ClientProject_List]
GO
ALTER TABLE [dbo].[ListAddition]  WITH CHECK ADD  CONSTRAINT [FK_ListAddition_List] FOREIGN KEY([List_Id])
REFERENCES [dbo].[List] ([List_Id])
GO
ALTER TABLE [dbo].[ListAddition] CHECK CONSTRAINT [FK_ListAddition_List]
GO
ALTER TABLE [dbo].[ListAddition]  WITH CHECK ADD  CONSTRAINT [FK_ListAddition_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[ListAddition] CHECK CONSTRAINT [FK_ListAddition_LoginAccount]
GO
ALTER TABLE [dbo].[ListEntry]  WITH CHECK ADD  CONSTRAINT [FK_ListEntry_ListAdd] FOREIGN KEY([ListAddition_Id])
REFERENCES [dbo].[ListAddition] ([ListAddition_Id])
GO
ALTER TABLE [dbo].[ListEntry] CHECK CONSTRAINT [FK_ListEntry_ListAdd]
GO
ALTER TABLE [dbo].[ListEntry]  WITH CHECK ADD  CONSTRAINT [RelLEL] FOREIGN KEY([List_Id])
REFERENCES [dbo].[List] ([List_Id])
GO
ALTER TABLE [dbo].[ListEntry] CHECK CONSTRAINT [RelLEL]
GO
ALTER TABLE [dbo].[LoginAccount]  WITH CHECK ADD  CONSTRAINT [Rel20] FOREIGN KEY([UserType_Id])
REFERENCES [dbo].[UserType] ([UserType_Id])
GO
ALTER TABLE [dbo].[LoginAccount] CHECK CONSTRAINT [Rel20]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_LoginAccount]
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned]  WITH CHECK ADD  CONSTRAINT [FK_LoyaltyPointsEarned_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned] CHECK CONSTRAINT [FK_LoyaltyPointsEarned_LoginAccount]
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned]  WITH CHECK ADD  CONSTRAINT [FK_LoyaltyPointsEarned_LoyaltyPointsProfile] FOREIGN KEY([LoyaltyPointsProfile_Id])
REFERENCES [dbo].[LoyaltyPointsProfile] ([LoyaltyPointsProfile_Id])
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned] CHECK CONSTRAINT [FK_LoyaltyPointsEarned_LoyaltyPointsProfile]
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned]  WITH CHECK ADD  CONSTRAINT [FK_LoyaltyPointsEarned_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned] CHECK CONSTRAINT [FK_LoyaltyPointsEarned_Order]
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned]  WITH CHECK ADD  CONSTRAINT [FK_LoyaltyPointsEarned_Voucher] FOREIGN KEY([Voucher_Id])
REFERENCES [dbo].[Voucher] ([Voucher_Id])
GO
ALTER TABLE [dbo].[LoyaltyPointsEarned] CHECK CONSTRAINT [FK_LoyaltyPointsEarned_Voucher]
GO
ALTER TABLE [dbo].[NexJobFieldTip]  WITH CHECK ADD  CONSTRAINT [FK_NexJobFieldTip_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[NexJobFieldTip] CHECK CONSTRAINT [FK_NexJobFieldTip_NexJobPage]
GO
ALTER TABLE [dbo].[NexJobGroup]  WITH CHECK ADD  CONSTRAINT [FK_NexJobGroup_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[NexJobGroup] CHECK CONSTRAINT [FK_NexJobGroup_NexJobPage]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_NexJobPage_DispatchProfile] FOREIGN KEY([DispatchProfile_Id])
REFERENCES [dbo].[DispatchProfile] ([DispatchProfile_id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [FK_NexJobPage_DispatchProfile]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_NexJobPage_ProductionTicket] FOREIGN KEY([ProductionTicket_Id])
REFERENCES [dbo].[ProductionTicket] ([ProductionTicket_Id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [FK_NexJobPage_ProductionTicket]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_NexJobPage_StationeryType] FOREIGN KEY([StationeryType_Id])
REFERENCES [dbo].[StationeryType] ([StationeryType_Id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [FK_NexJobPage_StationeryType]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_NexJobPage_Supplier] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [FK_NexJobPage_Supplier]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_PreflightProfileDefault_NexJobPage] FOREIGN KEY([PreflightProfileDefault_Id])
REFERENCES [dbo].[PreFlightProfile] ([PreFlightProfile_Id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [FK_PreflightProfileDefault_NexJobPage]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_PreflightProfileFallback_NexJobPage] FOREIGN KEY([PreflightProfileFallback_Id])
REFERENCES [dbo].[PreFlightProfile] ([PreFlightProfile_Id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [FK_PreflightProfileFallback_NexJobPage]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_SilentPreflightProfile_NexJobPage] FOREIGN KEY([SilentPreflightProfile_Id])
REFERENCES [dbo].[SilentPreflightProfile] ([SilentPreflightProfile_Id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [FK_SilentPreflightProfile_NexJobPage]
GO
ALTER TABLE [dbo].[NexJobPage]  WITH CHECK ADD  CONSTRAINT [RelNJP] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[NexJobPage] CHECK CONSTRAINT [RelNJP]
GO
ALTER TABLE [dbo].[NexJobPageControl]  WITH CHECK ADD  CONSTRAINT [FK_NexJobPageControl_NexJobPageControlType] FOREIGN KEY([NexJobPageControlType_Id])
REFERENCES [dbo].[NexJobPageControlType] ([NexJobPageControlType_Id])
GO
ALTER TABLE [dbo].[NexJobPageControl] CHECK CONSTRAINT [FK_NexJobPageControl_NexJobPageControlType]
GO
ALTER TABLE [dbo].[NexJobPageControl]  WITH CHECK ADD  CONSTRAINT [RelNJPC] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[NexJobPageControl] CHECK CONSTRAINT [RelNJPC]
GO
ALTER TABLE [dbo].[NexJobPageStationeryType]  WITH CHECK ADD  CONSTRAINT [FK_NexJobPageStationeryType_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[NexJobPageStationeryType] CHECK CONSTRAINT [FK_NexJobPageStationeryType_NexJobPage]
GO
ALTER TABLE [dbo].[NexJobPageStationeryType]  WITH CHECK ADD  CONSTRAINT [FK_NexJobPageStationeryType_StationeryType] FOREIGN KEY([StationeryType_Id])
REFERENCES [dbo].[StationeryType] ([StationeryType_Id])
GO
ALTER TABLE [dbo].[NexJobPageStationeryType] CHECK CONSTRAINT [FK_NexJobPageStationeryType_StationeryType]
GO
ALTER TABLE [dbo].[NexJobUpload]  WITH CHECK ADD  CONSTRAINT [FK_NexJobUpload_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[NexJobUpload] CHECK CONSTRAINT [FK_NexJobUpload_CostCentre]
GO
ALTER TABLE [dbo].[NexJobUpload]  WITH CHECK ADD  CONSTRAINT [FK_NexJobUpload_LoginAccount] FOREIGN KEY([OrderedBy_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[NexJobUpload] CHECK CONSTRAINT [FK_NexJobUpload_LoginAccount]
GO
ALTER TABLE [dbo].[NexJobUpload]  WITH CHECK ADD  CONSTRAINT [FK_NexJobUpload_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[NexJobUpload] CHECK CONSTRAINT [FK_NexJobUpload_NexJobPage]
GO
ALTER TABLE [dbo].[NexJobUploadField]  WITH CHECK ADD  CONSTRAINT [FK_NexJobUploadField_NexJobUpload] FOREIGN KEY([NexJobUpload_Id])
REFERENCES [dbo].[NexJobUpload] ([NexJobUpload_Id])
GO
ALTER TABLE [dbo].[NexJobUploadField] CHECK CONSTRAINT [FK_NexJobUploadField_NexJobUpload]
GO
ALTER TABLE [dbo].[NexJobUploadFile]  WITH CHECK ADD  CONSTRAINT [FK_NexJobUploadFile_NexJobUpload] FOREIGN KEY([NexJobUpload_Id])
REFERENCES [dbo].[NexJobUpload] ([NexJobUpload_Id])
GO
ALTER TABLE [dbo].[NexJobUploadFile] CHECK CONSTRAINT [FK_NexJobUploadFile_NexJobUpload]
GO
ALTER TABLE [dbo].[ops_LoginAccountCostCentre]  WITH CHECK ADD  CONSTRAINT [costcenter_id_access] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ops_LoginAccountCostCentre] CHECK CONSTRAINT [costcenter_id_access]
GO
ALTER TABLE [dbo].[ops_LoginAccountCostCentre]  WITH CHECK ADD  CONSTRAINT [loginaccount_id_access] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ops_LoginAccountCostCentre] CHECK CONSTRAINT [loginaccount_id_access]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_CartTransaction] FOREIGN KEY([CartTransaction_Id])
REFERENCES [dbo].[CartTransaction] ([CartTransaction_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_CartTransaction]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_order_Imposition] FOREIGN KEY([AutoImposition_Id])
REFERENCES [dbo].[Imposition] ([Imposition_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_order_Imposition]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_JobTicket] FOREIGN KEY([JobTicket_Id])
REFERENCES [dbo].[JobTicket] ([JobTicket_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_JobTicket]
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_LoginAccount] FOREIGN KEY([OrderedBy_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Order] NOCHECK CONSTRAINT [FK_Order_LoginAccount]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_NexJobUpload] FOREIGN KEY([NexJobUpload_Id])
REFERENCES [dbo].[NexJobUpload] ([NexJobUpload_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_NexJobUpload]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ProductionTicket] FOREIGN KEY([ProductionTicket_Id])
REFERENCES [dbo].[ProductionTicket] ([ProductionTicket_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ProductionTicket]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_VariablePrint] FOREIGN KEY([VariablePrint_Id])
REFERENCES [dbo].[VariablePrint] ([VariablePrint_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_VariablePrint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_VWeb] FOREIGN KEY([VWeb_Id])
REFERENCES [dbo].[VWeb] ([VWeb_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_VWeb]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_OrderVWMTAdd] FOREIGN KEY([VWebMultiTouchAddition_Id])
REFERENCES [dbo].[VWebMultiTouchAddition] ([VWebMultiTouchAddition_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_OrderVWMTAdd]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Rel32] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Rel32]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Rel33] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Rel33]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Rel34] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Status] ([Status_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Rel34]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Rel35] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Rel35]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Rel36] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Rel36]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Rel37] FOREIGN KEY([ClientProject_Id])
REFERENCES [dbo].[ClientProject] ([ClientProject_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Rel37]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [RelOrderEmp] FOREIGN KEY([ApprovedBy_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [RelOrderEmp]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [RelVWMTC] FOREIGN KEY([VWebMultiTouchCampaign_Id])
REFERENCES [dbo].[VWebMultiTouchCampaign] ([VWebMultiTouchCampaign_Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [RelVWMTC]
GO
ALTER TABLE [dbo].[OrderAddress]  WITH CHECK ADD  CONSTRAINT [FKOrderAddressFreightType] FOREIGN KEY([FreightType_Id])
REFERENCES [dbo].[FreightType] ([FreightType_Id])
GO
ALTER TABLE [dbo].[OrderAddress] CHECK CONSTRAINT [FKOrderAddressFreightType]
GO
ALTER TABLE [dbo].[OrderAddressItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderAddressItem_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[OrderAddressItem] CHECK CONSTRAINT [FK_OrderAddressItem_Order]
GO
ALTER TABLE [dbo].[OrderAddressItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderAddressItem_OrderAddress] FOREIGN KEY([OrderAddress_Id])
REFERENCES [dbo].[OrderAddress] ([OrderAddress_Id])
GO
ALTER TABLE [dbo].[OrderAddressItem] CHECK CONSTRAINT [FK_OrderAddressItem_OrderAddress]
GO
ALTER TABLE [dbo].[OrderApprove]  WITH CHECK ADD  CONSTRAINT [FK_OrderApprove_Employee] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[OrderApprove] CHECK CONSTRAINT [FK_OrderApprove_Employee]
GO
ALTER TABLE [dbo].[OrderApprove]  WITH CHECK ADD  CONSTRAINT [FK_OrderApprove_Order] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[OrderApprove] CHECK CONSTRAINT [FK_OrderApprove_Order]
GO
ALTER TABLE [dbo].[OrderDescription]  WITH CHECK ADD  CONSTRAINT [Rel40] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[OrderDescription] CHECK CONSTRAINT [Rel40]
GO
ALTER TABLE [dbo].[OrderDescription]  WITH CHECK ADD  CONSTRAINT [Rel41] FOREIGN KEY([Imposition_Id])
REFERENCES [dbo].[Imposition] ([Imposition_Id])
GO
ALTER TABLE [dbo].[OrderDescription] CHECK CONSTRAINT [Rel41]
GO
ALTER TABLE [dbo].[OrderDownload]  WITH CHECK ADD  CONSTRAINT [FK_OrderDownload_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[OrderDownload] CHECK CONSTRAINT [FK_OrderDownload_LoginAccount]
GO
ALTER TABLE [dbo].[OrderDownload]  WITH CHECK ADD  CONSTRAINT [FK_OrderDownload_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[OrderDownload] CHECK CONSTRAINT [FK_OrderDownload_Order]
GO
ALTER TABLE [dbo].[OrderDownload]  WITH CHECK ADD  CONSTRAINT [FK_OrderDownload_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[OrderDownload] CHECK CONSTRAINT [FK_OrderDownload_Template]
GO
ALTER TABLE [dbo].[OrderDrop]  WITH CHECK ADD  CONSTRAINT [RelOrderDropOrder] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[OrderDrop] CHECK CONSTRAINT [RelOrderDropOrder]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [RelOrderListList] FOREIGN KEY([List_Id])
REFERENCES [dbo].[List] ([List_Id])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [RelOrderListList]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [RelOrderListOrder] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [RelOrderListOrder]
GO
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [Rel46] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [Rel46]
GO
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [RelPDFsPage] FOREIGN KEY([PDFs_Id])
REFERENCES [dbo].[PDFs] ([PDFs_Id])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [RelPDFsPage]
GO
ALTER TABLE [dbo].[PaperSize]  WITH CHECK ADD  CONSTRAINT [Rel15] FOREIGN KEY([UnitOfMeasurement_Id])
REFERENCES [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id])
GO
ALTER TABLE [dbo].[PaperSize] CHECK CONSTRAINT [Rel15]
GO
ALTER TABLE [dbo].[PartialShipment]  WITH CHECK ADD  CONSTRAINT [FK_PartialShipment_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[PartialShipment] CHECK CONSTRAINT [FK_PartialShipment_Order]
GO
ALTER TABLE [dbo].[PartialShipment]  WITH CHECK ADD  CONSTRAINT [FK_PartialShipment_OrderAddressItem] FOREIGN KEY([OrderAddressItem_Id])
REFERENCES [dbo].[OrderAddressItem] ([OrderAddressItem_Id])
GO
ALTER TABLE [dbo].[PartialShipment] CHECK CONSTRAINT [FK_PartialShipment_OrderAddressItem]
GO
ALTER TABLE [dbo].[PDFReferance]  WITH CHECK ADD  CONSTRAINT [Rel59] FOREIGN KEY([Field_Id])
REFERENCES [dbo].[Field] ([Field_Id])
GO
ALTER TABLE [dbo].[PDFReferance] CHECK CONSTRAINT [Rel59]
GO
ALTER TABLE [dbo].[PDFs]  WITH CHECK ADD  CONSTRAINT [Rel74] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[PDFs] CHECK CONSTRAINT [Rel74]
GO
ALTER TABLE [dbo].[PDFs]  WITH CHECK ADD  CONSTRAINT [RelPDFsLoginAccount] FOREIGN KEY([AddedBy_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[PDFs] CHECK CONSTRAINT [RelPDFsLoginAccount]
GO
ALTER TABLE [dbo].[PDFsFieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel105] FOREIGN KEY([PDFs_Id])
REFERENCES [dbo].[PDFs] ([PDFs_Id])
GO
ALTER TABLE [dbo].[PDFsFieldLayout] CHECK CONSTRAINT [Rel105]
GO
ALTER TABLE [dbo].[PDFsFieldLayout]  WITH CHECK ADD  CONSTRAINT [Rel106] FOREIGN KEY([FieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[PDFsFieldLayout] CHECK CONSTRAINT [Rel106]
GO
ALTER TABLE [dbo].[PDFUsed]  WITH CHECK ADD  CONSTRAINT [FK_PDFUsed_FieldLayout] FOREIGN KEY([RetailFieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[PDFUsed] CHECK CONSTRAINT [FK_PDFUsed_FieldLayout]
GO
ALTER TABLE [dbo].[PDFUsed]  WITH CHECK ADD  CONSTRAINT [Rel65] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[PDFUsed] CHECK CONSTRAINT [Rel65]
GO
ALTER TABLE [dbo].[PDFUsed]  WITH CHECK ADD  CONSTRAINT [Rel66] FOREIGN KEY([PDFs_Id])
REFERENCES [dbo].[PDFs] ([PDFs_Id])
GO
ALTER TABLE [dbo].[PDFUsed] CHECK CONSTRAINT [Rel66]
GO
ALTER TABLE [dbo].[PDFUsed]  WITH CHECK ADD  CONSTRAINT [Rel67] FOREIGN KEY([LibraryImage_Id])
REFERENCES [dbo].[LibraryImage] ([LibraryImage_Id])
GO
ALTER TABLE [dbo].[PDFUsed] CHECK CONSTRAINT [Rel67]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [Rel45] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [Rel45]
GO
ALTER TABLE [dbo].[PMPageControl]  WITH CHECK ADD  CONSTRAINT [Rel62] FOREIGN KEY([PMTable_Id])
REFERENCES [dbo].[PMTable] ([PMTable_Id])
GO
ALTER TABLE [dbo].[PMPageControl] CHECK CONSTRAINT [Rel62]
GO
ALTER TABLE [dbo].[Postage]  WITH CHECK ADD  CONSTRAINT [FK_Postage_ProjectTemplate] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[Postage] CHECK CONSTRAINT [FK_Postage_ProjectTemplate]
GO
ALTER TABLE [dbo].[PreFlightMessage]  WITH CHECK ADD  CONSTRAINT [FK_PreFlightMessage_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[PreFlightMessage] CHECK CONSTRAINT [FK_PreFlightMessage_Customer]
GO
ALTER TABLE [dbo].[PreFlightProfileNexJob]  WITH CHECK ADD  CONSTRAINT [FK_PreFlightProfileNexJob_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[PreFlightProfileNexJob] CHECK CONSTRAINT [FK_PreFlightProfileNexJob_NexJobPage]
GO
ALTER TABLE [dbo].[PreFlightProfileNexJob]  WITH CHECK ADD  CONSTRAINT [FK_PreFlightProfileNexJob_PreFlightProfile] FOREIGN KEY([PreFlightProfile_Id])
REFERENCES [dbo].[PreFlightProfile] ([PreFlightProfile_Id])
GO
ALTER TABLE [dbo].[PreFlightProfileNexJob] CHECK CONSTRAINT [FK_PreFlightProfileNexJob_PreFlightProfile]
GO
ALTER TABLE [dbo].[ProductionTicketMapping]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTicketMapping_ProductionTicket] FOREIGN KEY([ProductionTicket_Id])
REFERENCES [dbo].[ProductionTicket] ([ProductionTicket_Id])
GO
ALTER TABLE [dbo].[ProductionTicketMapping] CHECK CONSTRAINT [FK_ProductionTicketMapping_ProductionTicket]
GO
ALTER TABLE [dbo].[ProductionTicketMapping]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTicketMapping_ProductionTicketSetting] FOREIGN KEY([ProductionTicketSetting_Id])
REFERENCES [dbo].[ProductionTicketSetting] ([ProductionTicketSetting_Id])
GO
ALTER TABLE [dbo].[ProductionTicketMapping] CHECK CONSTRAINT [FK_ProductionTicketMapping_ProductionTicketSetting]
GO
ALTER TABLE [dbo].[ProductionTicketSetting]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTicketSetting_ProductionTicketSettingType] FOREIGN KEY([ProductionTicketSettingType_Id])
REFERENCES [dbo].[ProductionTicketSettingType] ([ProductionTicketSettingType_Id])
GO
ALTER TABLE [dbo].[ProductionTicketSetting] CHECK CONSTRAINT [FK_ProductionTicketSetting_ProductionTicketSettingType]
GO
ALTER TABLE [dbo].[ProjectPage]  WITH CHECK ADD  CONSTRAINT [Rel76] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[ProjectPage] CHECK CONSTRAINT [Rel76]
GO
ALTER TABLE [dbo].[ProjectPageTemplate]  WITH CHECK ADD  CONSTRAINT [Rel77] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[ProjectPageTemplate] CHECK CONSTRAINT [Rel77]
GO
ALTER TABLE [dbo].[ProjectPageTemplate]  WITH CHECK ADD  CONSTRAINT [Rel78] FOREIGN KEY([ProjectPage_Id])
REFERENCES [dbo].[ProjectPage] ([ProjectPage_Id])
GO
ALTER TABLE [dbo].[ProjectPageTemplate] CHECK CONSTRAINT [Rel78]
GO
ALTER TABLE [dbo].[ProjectTemplate]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTemplate_DispatchProfile] FOREIGN KEY([DispatchProfile_Id])
REFERENCES [dbo].[DispatchProfile] ([DispatchProfile_id])
GO
ALTER TABLE [dbo].[ProjectTemplate] CHECK CONSTRAINT [FK_ProjectTemplate_DispatchProfile]
GO
ALTER TABLE [dbo].[ProjectTemplate]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTemplate_Supplier] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[ProjectTemplate] CHECK CONSTRAINT [FK_ProjectTemplate_Supplier]
GO
ALTER TABLE [dbo].[ProjectTemplate]  WITH CHECK ADD  CONSTRAINT [Rel75] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[ProjectTemplate] CHECK CONSTRAINT [Rel75]
GO
ALTER TABLE [dbo].[ProjectTemplate]  WITH CHECK ADD  CONSTRAINT [RelPTST] FOREIGN KEY([StationeryType_Id])
REFERENCES [dbo].[StationeryType] ([StationeryType_Id])
GO
ALTER TABLE [dbo].[ProjectTemplate] CHECK CONSTRAINT [RelPTST]
GO
ALTER TABLE [dbo].[ProjectTemplateCostCentre]  WITH CHECK ADD  CONSTRAINT [Rel79] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[ProjectTemplateCostCentre] CHECK CONSTRAINT [Rel79]
GO
ALTER TABLE [dbo].[ProjectTemplateCostCentre]  WITH CHECK ADD  CONSTRAINT [Rel80] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[ProjectTemplateCostCentre] CHECK CONSTRAINT [Rel80]
GO
ALTER TABLE [dbo].[ProjectTemplateExternalList]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTemplateExternalList_ExternalList] FOREIGN KEY([ExternalList_Id])
REFERENCES [dbo].[ExternalList] ([ExternalList_Id])
GO
ALTER TABLE [dbo].[ProjectTemplateExternalList] CHECK CONSTRAINT [FK_ProjectTemplateExternalList_ExternalList]
GO
ALTER TABLE [dbo].[ProjectTemplateExternalList]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTemplateExternalList_Project] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[ProjectTemplateExternalList] CHECK CONSTRAINT [FK_ProjectTemplateExternalList_Project]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Customer]
GO
ALTER TABLE [dbo].[PromotionCostCentre]  WITH CHECK ADD  CONSTRAINT [FK_PromotionCostCentre_CostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[PromotionCostCentre] CHECK CONSTRAINT [FK_PromotionCostCentre_CostCentre]
GO
ALTER TABLE [dbo].[PromotionCostCentre]  WITH CHECK ADD  CONSTRAINT [FK_PromotionCostCentre_Promotion] FOREIGN KEY([Promotion_Id])
REFERENCES [dbo].[Promotion] ([Promotion_Id])
GO
ALTER TABLE [dbo].[PromotionCostCentre] CHECK CONSTRAINT [FK_PromotionCostCentre_Promotion]
GO
ALTER TABLE [dbo].[PromotionNexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_PromotionNexJobPage_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[PromotionNexJobPage] CHECK CONSTRAINT [FK_PromotionNexJobPage_NexJobPage]
GO
ALTER TABLE [dbo].[PromotionNexJobPage]  WITH CHECK ADD  CONSTRAINT [FK_PromotionNexJobPage_Promotion] FOREIGN KEY([Promotion_Id])
REFERENCES [dbo].[Promotion] ([Promotion_Id])
GO
ALTER TABLE [dbo].[PromotionNexJobPage] CHECK CONSTRAINT [FK_PromotionNexJobPage_Promotion]
GO
ALTER TABLE [dbo].[PromotionProjectTemplate]  WITH CHECK ADD  CONSTRAINT [FK_PromotionProjectTemplate_ProjectTemplate] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[PromotionProjectTemplate] CHECK CONSTRAINT [FK_PromotionProjectTemplate_ProjectTemplate]
GO
ALTER TABLE [dbo].[PromotionProjectTemplate]  WITH CHECK ADD  CONSTRAINT [FK_PromotionProjectTemplate_Promotion] FOREIGN KEY([Promotion_Id])
REFERENCES [dbo].[Promotion] ([Promotion_Id])
GO
ALTER TABLE [dbo].[PromotionProjectTemplate] CHECK CONSTRAINT [FK_PromotionProjectTemplate_Promotion]
GO
ALTER TABLE [dbo].[PromotionTemplate]  WITH CHECK ADD  CONSTRAINT [FK_PromotionTemplate_Promotion] FOREIGN KEY([Promotion_Id])
REFERENCES [dbo].[Promotion] ([Promotion_Id])
GO
ALTER TABLE [dbo].[PromotionTemplate] CHECK CONSTRAINT [FK_PromotionTemplate_Promotion]
GO
ALTER TABLE [dbo].[PromotionTemplate]  WITH CHECK ADD  CONSTRAINT [FK_PromotionTemplate_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[PromotionTemplate] CHECK CONSTRAINT [FK_PromotionTemplate_Template]
GO
ALTER TABLE [dbo].[PurchaseListProductField]  WITH CHECK ADD  CONSTRAINT [RelPLPFPLP] FOREIGN KEY([PurchaseListProduct_Id])
REFERENCES [dbo].[PurchaseListProduct] ([PurchaseListProduct_Id])
GO
ALTER TABLE [dbo].[PurchaseListProductField] CHECK CONSTRAINT [RelPLPFPLP]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [Rel30] FOREIGN KEY([OutputFormat_Id])
REFERENCES [dbo].[OutputFormat] ([OutputFormat_Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [Rel30]
GO
ALTER TABLE [dbo].[ReportCustomer]  WITH CHECK ADD  CONSTRAINT [Rel95] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[ReportCustomer] CHECK CONSTRAINT [Rel95]
GO
ALTER TABLE [dbo].[ReportCustomer]  WITH CHECK ADD  CONSTRAINT [Rel96] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[ReportCustomer] CHECK CONSTRAINT [Rel96]
GO
ALTER TABLE [dbo].[ReportGroupBy]  WITH CHECK ADD  CONSTRAINT [Rel93] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[ReportGroupBy] CHECK CONSTRAINT [Rel93]
GO
ALTER TABLE [dbo].[ReportGroupBy]  WITH CHECK ADD  CONSTRAINT [Rel94] FOREIGN KEY([GroupBy_Id])
REFERENCES [dbo].[GroupBy] ([GroupBy_Id])
GO
ALTER TABLE [dbo].[ReportGroupBy] CHECK CONSTRAINT [Rel94]
GO
ALTER TABLE [dbo].[ReportIncludeSummary]  WITH CHECK ADD  CONSTRAINT [Rel97] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[ReportIncludeSummary] CHECK CONSTRAINT [Rel97]
GO
ALTER TABLE [dbo].[ReportIncludeSummary]  WITH CHECK ADD  CONSTRAINT [Rel98] FOREIGN KEY([IncludeSummary_Id])
REFERENCES [dbo].[IncludeSummary] ([IncludeSummary_Id])
GO
ALTER TABLE [dbo].[ReportIncludeSummary] CHECK CONSTRAINT [Rel98]
GO
ALTER TABLE [dbo].[ReportShowField]  WITH CHECK ADD  CONSTRAINT [Rel91] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[ReportShowField] CHECK CONSTRAINT [Rel91]
GO
ALTER TABLE [dbo].[ReportShowField]  WITH CHECK ADD  CONSTRAINT [Rel92] FOREIGN KEY([ShowField_Id])
REFERENCES [dbo].[ShowField] ([ShowField_Id])
GO
ALTER TABLE [dbo].[ReportShowField] CHECK CONSTRAINT [Rel92]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [Rel31] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [Rel31]
GO
ALTER TABLE [dbo].[SavedTemplate]  WITH CHECK ADD  CONSTRAINT [FK_SavedTemplateLoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[SavedTemplate] CHECK CONSTRAINT [FK_SavedTemplateLoginAccount]
GO
ALTER TABLE [dbo].[SavedTemplate]  WITH CHECK ADD  CONSTRAINT [FK_SavedTemplateStationery] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[SavedTemplate] CHECK CONSTRAINT [FK_SavedTemplateStationery]
GO
ALTER TABLE [dbo].[SavedTemplate]  WITH CHECK ADD  CONSTRAINT [FK_SavedTemplateTemplate] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[SavedTemplate] CHECK CONSTRAINT [FK_SavedTemplateTemplate]
GO
ALTER TABLE [dbo].[SavedTemplateData]  WITH CHECK ADD  CONSTRAINT [FK_SavedTemplateData_SavedTemplate] FOREIGN KEY([SavedTemplate_Id])
REFERENCES [dbo].[SavedTemplate] ([SavedTemplate_Id])
GO
ALTER TABLE [dbo].[SavedTemplateData] CHECK CONSTRAINT [FK_SavedTemplateData_SavedTemplate]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Report] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Report]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [Rel42] FOREIGN KEY([Report_Id])
REFERENCES [dbo].[Report] ([Report_Id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [Rel42]
GO
ALTER TABLE [dbo].[ScheduleLog]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleLog_Schedule] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedule] ([Schedule_Id])
GO
ALTER TABLE [dbo].[ScheduleLog] CHECK CONSTRAINT [FK_ScheduleLog_Schedule]
GO
ALTER TABLE [dbo].[ScreenDefinition]  WITH CHECK ADD  CONSTRAINT [FK_ScreenDefinition_ScreenDefinition] FOREIGN KEY([ParentScreenDefinition_Id])
REFERENCES [dbo].[ScreenDefinition] ([ScreenDefinition_Id])
GO
ALTER TABLE [dbo].[ScreenDefinition] CHECK CONSTRAINT [FK_ScreenDefinition_ScreenDefinition]
GO
ALTER TABLE [dbo].[ScreenDefinitionCustomer]  WITH CHECK ADD  CONSTRAINT [FKSDCustCustId] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[ScreenDefinitionCustomer] CHECK CONSTRAINT [FKSDCustCustId]
GO
ALTER TABLE [dbo].[ScreenDefinitionCustomer]  WITH CHECK ADD  CONSTRAINT [FKSDCustSDId] FOREIGN KEY([ScreenDefinition_Id])
REFERENCES [dbo].[ScreenDefinition] ([ScreenDefinition_Id])
GO
ALTER TABLE [dbo].[ScreenDefinitionCustomer] CHECK CONSTRAINT [FKSDCustSDId]
GO
ALTER TABLE [dbo].[ScreenTip]  WITH CHECK ADD  CONSTRAINT [FK_ScreenTipScreenArea] FOREIGN KEY([ScreenArea_Id])
REFERENCES [dbo].[ScreenArea] ([ScreenArea_Id])
GO
ALTER TABLE [dbo].[ScreenTip] CHECK CONSTRAINT [FK_ScreenTipScreenArea]
GO
ALTER TABLE [dbo].[ScreenTip]  WITH CHECK ADD  CONSTRAINT [Rel64] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[ScreenTip] CHECK CONSTRAINT [Rel64]
GO
ALTER TABLE [dbo].[ShoppingCartAbandonmentEmailsLog]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartAbandonmentEmailsLog_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[ShoppingCartAbandonmentEmailsLog] CHECK CONSTRAINT [FK_ShoppingCartAbandonmentEmailsLog_Order]
GO
ALTER TABLE [dbo].[SignatureMarking]  WITH CHECK ADD  CONSTRAINT [Rel10] FOREIGN KEY([DoubleCut_Id])
REFERENCES [dbo].[DoubleCut] ([DoubleCut_Id])
GO
ALTER TABLE [dbo].[SignatureMarking] CHECK CONSTRAINT [Rel10]
GO
ALTER TABLE [dbo].[SignatureMarking]  WITH CHECK ADD  CONSTRAINT [Rel11] FOREIGN KEY([Margin_Id])
REFERENCES [dbo].[Margin] ([Margin_Id])
GO
ALTER TABLE [dbo].[SignatureMarking] CHECK CONSTRAINT [Rel11]
GO
ALTER TABLE [dbo].[SignatureMarking]  WITH CHECK ADD  CONSTRAINT [Rel12] FOREIGN KEY([TrimMarkType_Id])
REFERENCES [dbo].[TrimMarkType] ([TrimMarkType_Id])
GO
ALTER TABLE [dbo].[SignatureMarking] CHECK CONSTRAINT [Rel12]
GO
ALTER TABLE [dbo].[SignatureMarking]  WITH CHECK ADD  CONSTRAINT [RelSuplierSignatureMarking] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[SignatureMarking] CHECK CONSTRAINT [RelSuplierSignatureMarking]
GO
ALTER TABLE [dbo].[SignatureStyle]  WITH CHECK ADD  CONSTRAINT [Rel47] FOREIGN KEY([NumberUp_Id])
REFERENCES [dbo].[NumberUp] ([NumberUp_Id])
GO
ALTER TABLE [dbo].[SignatureStyle] CHECK CONSTRAINT [Rel47]
GO
ALTER TABLE [dbo].[SignatureStyle]  WITH CHECK ADD  CONSTRAINT [Rel48] FOREIGN KEY([PaperSize_Id])
REFERENCES [dbo].[PaperSize] ([PaperSize_Id])
GO
ALTER TABLE [dbo].[SignatureStyle] CHECK CONSTRAINT [Rel48]
GO
ALTER TABLE [dbo].[SignatureStyle]  WITH CHECK ADD  CONSTRAINT [RelSuplierSignatureStyle] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[SignatureStyle] CHECK CONSTRAINT [RelSuplierSignatureStyle]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [FK_Stationery_Theme] FOREIGN KEY([Theme_Id])
REFERENCES [dbo].[Theme] ([Theme_Id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [FK_Stationery_Theme]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [FK_Stationery_VariablePrint] FOREIGN KEY([VariablePrint_Id])
REFERENCES [dbo].[VariablePrint] ([VariablePrint_Id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [FK_Stationery_VariablePrint]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [Rel49] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [Rel49]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [Rel50] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [Rel50]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [Rel51] FOREIGN KEY([FrontTemplate_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [Rel51]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [Rel52] FOREIGN KEY([BackTemplate_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [Rel52]
GO
ALTER TABLE [dbo].[Stationery]  WITH CHECK ADD  CONSTRAINT [Rel53] FOREIGN KEY([Photo_Id])
REFERENCES [dbo].[Photo] ([Photo_Id])
GO
ALTER TABLE [dbo].[Stationery] CHECK CONSTRAINT [Rel53]
GO
ALTER TABLE [dbo].[StationeryClientProject]  WITH CHECK ADD  CONSTRAINT [FK_StationeryClientProject_ClientProject] FOREIGN KEY([ClientProject_Id])
REFERENCES [dbo].[ClientProject] ([ClientProject_Id])
GO
ALTER TABLE [dbo].[StationeryClientProject] CHECK CONSTRAINT [FK_StationeryClientProject_ClientProject]
GO
ALTER TABLE [dbo].[StationeryClientProject]  WITH CHECK ADD  CONSTRAINT [FK_StationeryClientProject_NexJobPage] FOREIGN KEY([NexJobPage_Id])
REFERENCES [dbo].[NexJobPage] ([NexJobPage_Id])
GO
ALTER TABLE [dbo].[StationeryClientProject] CHECK CONSTRAINT [FK_StationeryClientProject_NexJobPage]
GO
ALTER TABLE [dbo].[StationeryClientProject]  WITH CHECK ADD  CONSTRAINT [FK_StationeryClientProject_NexJobUpload] FOREIGN KEY([NexJobUpload_Id])
REFERENCES [dbo].[NexJobUpload] ([NexJobUpload_Id])
GO
ALTER TABLE [dbo].[StationeryClientProject] CHECK CONSTRAINT [FK_StationeryClientProject_NexJobUpload]
GO
ALTER TABLE [dbo].[StationeryClientProject]  WITH CHECK ADD  CONSTRAINT [FK_StationeryClientProject_Stationery] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[StationeryClientProject] CHECK CONSTRAINT [FK_StationeryClientProject_Stationery]
GO
ALTER TABLE [dbo].[StationeryClientProject]  WITH CHECK ADD  CONSTRAINT [FK_StationeryClientProject_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[StationeryClientProject] CHECK CONSTRAINT [FK_StationeryClientProject_Template]
GO
ALTER TABLE [dbo].[StationeryControl]  WITH CHECK ADD  CONSTRAINT [FK_StationeryControl_Stationery] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[StationeryControl] CHECK CONSTRAINT [FK_StationeryControl_Stationery]
GO
ALTER TABLE [dbo].[StationeryControl]  WITH CHECK ADD  CONSTRAINT [FK_StationeryControl_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[StationeryControl] CHECK CONSTRAINT [FK_StationeryControl_Template]
GO
ALTER TABLE [dbo].[StationeryValue]  WITH CHECK ADD  CONSTRAINT [FK_StationeryValue_StationeryValue] FOREIGN KEY([LinkedToStationeryValue_Id])
REFERENCES [dbo].[StationeryValue] ([StationeryValue_Id])
GO
ALTER TABLE [dbo].[StationeryValue] CHECK CONSTRAINT [FK_StationeryValue_StationeryValue]
GO
ALTER TABLE [dbo].[StationeryValue]  WITH CHECK ADD  CONSTRAINT [FK_VTLId] FOREIGN KEY([VisualTargetLibrary_Id])
REFERENCES [dbo].[VisualTargetLibrary] ([VisualTargetLibrary_Id])
GO
ALTER TABLE [dbo].[StationeryValue] CHECK CONSTRAINT [FK_VTLId]
GO
ALTER TABLE [dbo].[StationeryValue]  WITH CHECK ADD  CONSTRAINT [Rel68] FOREIGN KEY([Field_Id])
REFERENCES [dbo].[Field] ([Field_Id])
GO
ALTER TABLE [dbo].[StationeryValue] CHECK CONSTRAINT [Rel68]
GO
ALTER TABLE [dbo].[StationeryValue]  WITH CHECK ADD  CONSTRAINT [Rel69] FOREIGN KEY([FieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[StationeryValue] CHECK CONSTRAINT [Rel69]
GO
ALTER TABLE [dbo].[StationeryValue]  WITH CHECK ADD  CONSTRAINT [Rel70] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[StationeryValue] CHECK CONSTRAINT [Rel70]
GO
ALTER TABLE [dbo].[StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_StockHistory_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[StockHistory] CHECK CONSTRAINT [FK_StockHistory_Order]
GO
ALTER TABLE [dbo].[StockHistory]  WITH CHECK ADD  CONSTRAINT [FK_StockHistory_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[StockHistory] CHECK CONSTRAINT [FK_StockHistory_Template]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [RelSLA] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [RelSLA]
GO
ALTER TABLE [dbo].[TaskDailySchedule]  WITH CHECK ADD  CONSTRAINT [Rel100] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedule] ([Schedule_Id])
GO
ALTER TABLE [dbo].[TaskDailySchedule] CHECK CONSTRAINT [Rel100]
GO
ALTER TABLE [dbo].[TaskDailySchedule]  WITH CHECK ADD  CONSTRAINT [Rel99] FOREIGN KEY([TaskDaily_Id])
REFERENCES [dbo].[TaskDaily] ([TaskDaily_Id])
GO
ALTER TABLE [dbo].[TaskDailySchedule] CHECK CONSTRAINT [Rel99]
GO
ALTER TABLE [dbo].[TaskMonthlySchedule]  WITH CHECK ADD  CONSTRAINT [Rel101] FOREIGN KEY([TaskMonthly_Id])
REFERENCES [dbo].[TaskMonthly] ([TaskMonthly_Id])
GO
ALTER TABLE [dbo].[TaskMonthlySchedule] CHECK CONSTRAINT [Rel101]
GO
ALTER TABLE [dbo].[TaskMonthlySchedule]  WITH CHECK ADD  CONSTRAINT [Rel102] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedule] ([Schedule_Id])
GO
ALTER TABLE [dbo].[TaskMonthlySchedule] CHECK CONSTRAINT [Rel102]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_CostGroup] FOREIGN KEY([CostGroup_Id])
REFERENCES [dbo].[CostGroup] ([CostGroup_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_CostGroup]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_DispatchProfile] FOREIGN KEY([DispatchProfile_Id])
REFERENCES [dbo].[DispatchProfile] ([DispatchProfile_id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_DispatchProfile]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_JavaScriptFunction] FOREIGN KEY([JavaScriptFunction_Id])
REFERENCES [dbo].[JavaScriptFunction] ([JavaScriptFunction_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_JavaScriptFunction]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_LoginAccount] FOREIGN KEY([CreatedBy_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_LoginAccount]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_PreSortFormat] FOREIGN KEY([PreSortFormat_Id])
REFERENCES [dbo].[PresortFormat] ([PresortFormat_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_PreSortFormat]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_ProductionTicket] FOREIGN KEY([ProductionTicket_Id])
REFERENCES [dbo].[ProductionTicket] ([ProductionTicket_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_ProductionTicket]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_Status] FOREIGN KEY([AllowDownloadStatus_Id])
REFERENCES [dbo].[Status] ([Status_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_Status]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [Rel6] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [Rel6]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [Rel7] FOREIGN KEY([StationeryType_Id])
REFERENCES [dbo].[StationeryType] ([StationeryType_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [Rel7]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [Rel8] FOREIGN KEY([SignatureMarking_Id])
REFERENCES [dbo].[SignatureMarking] ([SignatureMarking_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [Rel8]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [Rel9] FOREIGN KEY([UnitOfMeasurement_Id])
REFERENCES [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [Rel9]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [RelSuplierTemplate] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [RelSuplierTemplate]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [RelTempSS] FOREIGN KEY([SignatureStyle_Id])
REFERENCES [dbo].[SignatureStyle] ([SignatureStyle_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [RelTempSS]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [RelVWReport] FOREIGN KEY([VWebCampaignReport_Id])
REFERENCES [dbo].[VWebCampaignReport] ([VWebCampaignReport_Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [RelVWReport]
GO
ALTER TABLE [dbo].[TemplateColour]  WITH CHECK ADD  CONSTRAINT [FK_TemplateColour_Colour] FOREIGN KEY([Colour_Id])
REFERENCES [dbo].[Colour] ([Colour_Id])
GO
ALTER TABLE [dbo].[TemplateColour] CHECK CONSTRAINT [FK_TemplateColour_Colour]
GO
ALTER TABLE [dbo].[TemplateColour]  WITH CHECK ADD  CONSTRAINT [FK_TemplateColour_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateColour] CHECK CONSTRAINT [FK_TemplateColour_Template]
GO
ALTER TABLE [dbo].[TemplateCostCentre]  WITH CHECK ADD  CONSTRAINT [Rel89] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateCostCentre] CHECK CONSTRAINT [Rel89]
GO
ALTER TABLE [dbo].[TemplateCostCentre]  WITH CHECK ADD  CONSTRAINT [Rel90] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[TemplateCostCentre] CHECK CONSTRAINT [Rel90]
GO
ALTER TABLE [dbo].[TemplateCosting]  WITH CHECK ADD  CONSTRAINT [FK_TemplateCostingCostCentre_CostGroup] FOREIGN KEY([CostCentreCostGroup_Id])
REFERENCES [dbo].[CostGroup] ([CostGroup_Id])
GO
ALTER TABLE [dbo].[TemplateCosting] CHECK CONSTRAINT [FK_TemplateCostingCostCentre_CostGroup]
GO
ALTER TABLE [dbo].[TemplateCosting]  WITH CHECK ADD  CONSTRAINT [FK_TemplateCostingTemplate_CostGroup] FOREIGN KEY([TemplateCostGroup_Id])
REFERENCES [dbo].[CostGroup] ([CostGroup_Id])
GO
ALTER TABLE [dbo].[TemplateCosting] CHECK CONSTRAINT [FK_TemplateCostingTemplate_CostGroup]
GO
ALTER TABLE [dbo].[TemplateCosting]  WITH CHECK ADD  CONSTRAINT [Rel60] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateCosting] CHECK CONSTRAINT [Rel60]
GO
ALTER TABLE [dbo].[TemplateCustomer]  WITH CHECK ADD  CONSTRAINT [RelTCC] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[TemplateCustomer] CHECK CONSTRAINT [RelTCC]
GO
ALTER TABLE [dbo].[TemplateCustomer]  WITH CHECK ADD  CONSTRAINT [RelTCT] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateCustomer] CHECK CONSTRAINT [RelTCT]
GO
ALTER TABLE [dbo].[TemplateExternalImageLibrary]  WITH CHECK ADD  CONSTRAINT [FK_TemplateExternalImageLibrary_ExternalImageLibrary] FOREIGN KEY([ExternalImageLibrary_Id])
REFERENCES [dbo].[ExternalImageLibrary] ([ExternalImageLibrary_Id])
GO
ALTER TABLE [dbo].[TemplateExternalImageLibrary] CHECK CONSTRAINT [FK_TemplateExternalImageLibrary_ExternalImageLibrary]
GO
ALTER TABLE [dbo].[TemplateExternalImageLibrary]  WITH CHECK ADD  CONSTRAINT [FK_TemplateExternalImageLibrary_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateExternalImageLibrary] CHECK CONSTRAINT [FK_TemplateExternalImageLibrary_Template]
GO
ALTER TABLE [dbo].[TemplateExternalList]  WITH CHECK ADD  CONSTRAINT [FK_TemplateExternalList_ExternalList] FOREIGN KEY([ExternalList_Id])
REFERENCES [dbo].[ExternalList] ([ExternalList_Id])
GO
ALTER TABLE [dbo].[TemplateExternalList] CHECK CONSTRAINT [FK_TemplateExternalList_ExternalList]
GO
ALTER TABLE [dbo].[TemplateExternalList]  WITH CHECK ADD  CONSTRAINT [FK_TemplateExternalList_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateExternalList] CHECK CONSTRAINT [FK_TemplateExternalList_Template]
GO
ALTER TABLE [dbo].[TemplateFont]  WITH CHECK ADD  CONSTRAINT [RelTempFontFont] FOREIGN KEY([Font_Id])
REFERENCES [dbo].[Font] ([Font_Id])
GO
ALTER TABLE [dbo].[TemplateFont] CHECK CONSTRAINT [RelTempFontFont]
GO
ALTER TABLE [dbo].[TemplateFont]  WITH CHECK ADD  CONSTRAINT [RelTempFontTemp] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateFont] CHECK CONSTRAINT [RelTempFontTemp]
GO
ALTER TABLE [dbo].[TemplateRecommendation]  WITH CHECK ADD  CONSTRAINT [FK_TemplateRecommendation_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateRecommendation] CHECK CONSTRAINT [FK_TemplateRecommendation_Template]
GO
ALTER TABLE [dbo].[TemplateRecommendation]  WITH CHECK ADD  CONSTRAINT [FK_TemplateRecommendation_TemplateInclude] FOREIGN KEY([TemplateInclude_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateRecommendation] CHECK CONSTRAINT [FK_TemplateRecommendation_TemplateInclude]
GO
ALTER TABLE [dbo].[TemplateSignatureStyle]  WITH CHECK ADD  CONSTRAINT [Rel85] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateSignatureStyle] CHECK CONSTRAINT [Rel85]
GO
ALTER TABLE [dbo].[TemplateSignatureStyle]  WITH CHECK ADD  CONSTRAINT [Rel86] FOREIGN KEY([SignatureStyle_Id])
REFERENCES [dbo].[SignatureStyle] ([SignatureStyle_Id])
GO
ALTER TABLE [dbo].[TemplateSignatureStyle] CHECK CONSTRAINT [Rel86]
GO
ALTER TABLE [dbo].[TemplateStationeryType]  WITH CHECK ADD  CONSTRAINT [FK_TemplateStationeryType_ProjectTemplate] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[TemplateStationeryType] CHECK CONSTRAINT [FK_TemplateStationeryType_ProjectTemplate]
GO
ALTER TABLE [dbo].[TemplateStationeryType]  WITH CHECK ADD  CONSTRAINT [FK_TemplateStationeryType_StationeryType] FOREIGN KEY([StationeryType_Id])
REFERENCES [dbo].[StationeryType] ([StationeryType_Id])
GO
ALTER TABLE [dbo].[TemplateStationeryType] CHECK CONSTRAINT [FK_TemplateStationeryType_StationeryType]
GO
ALTER TABLE [dbo].[TemplateStationeryType]  WITH CHECK ADD  CONSTRAINT [FK_TemplateStationeryType_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateStationeryType] CHECK CONSTRAINT [FK_TemplateStationeryType_Template]
GO
ALTER TABLE [dbo].[TemplateSupplier]  WITH CHECK ADD  CONSTRAINT [FK_TemplateSupplier_Supplier] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Supplier] ([Supplier_Id])
GO
ALTER TABLE [dbo].[TemplateSupplier] CHECK CONSTRAINT [FK_TemplateSupplier_Supplier]
GO
ALTER TABLE [dbo].[TemplateTemplate]  WITH CHECK ADD  CONSTRAINT [FK_TemplateSupplier_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateTemplate] CHECK CONSTRAINT [FK_TemplateSupplier_Template]
GO
ALTER TABLE [dbo].[TemplateTemplate]  WITH CHECK ADD  CONSTRAINT [Rel87] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateTemplate] CHECK CONSTRAINT [Rel87]
GO
ALTER TABLE [dbo].[TemplateTemplate]  WITH CHECK ADD  CONSTRAINT [Rel88] FOREIGN KEY([Template1_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateTemplate] CHECK CONSTRAINT [Rel88]
GO
ALTER TABLE [dbo].[TemplateTheme]  WITH CHECK ADD  CONSTRAINT [FK_TemplateTheme_Template] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[TemplateTheme] CHECK CONSTRAINT [FK_TemplateTheme_Template]
GO
ALTER TABLE [dbo].[TemplateTheme]  WITH CHECK ADD  CONSTRAINT [FK_TemplateTheme_Theme] FOREIGN KEY([Theme_Id])
REFERENCES [dbo].[Theme] ([Theme_Id])
GO
ALTER TABLE [dbo].[TemplateTheme] CHECK CONSTRAINT [FK_TemplateTheme_Theme]
GO
ALTER TABLE [dbo].[ThemeField]  WITH CHECK ADD  CONSTRAINT [FK_ThemeField_Colour] FOREIGN KEY([Colour_Id])
REFERENCES [dbo].[Colour] ([Colour_Id])
GO
ALTER TABLE [dbo].[ThemeField] CHECK CONSTRAINT [FK_ThemeField_Colour]
GO
ALTER TABLE [dbo].[ThemeField]  WITH CHECK ADD  CONSTRAINT [FK_ThemeField_LibraryImage] FOREIGN KEY([LibraryImage_Id])
REFERENCES [dbo].[LibraryImage] ([LibraryImage_Id])
GO
ALTER TABLE [dbo].[ThemeField] CHECK CONSTRAINT [FK_ThemeField_LibraryImage]
GO
ALTER TABLE [dbo].[ThemeField]  WITH CHECK ADD  CONSTRAINT [FK_ThemeField_Theme] FOREIGN KEY([Theme_Id])
REFERENCES [dbo].[Theme] ([Theme_Id])
GO
ALTER TABLE [dbo].[ThemeField] CHECK CONSTRAINT [FK_ThemeField_Theme]
GO
ALTER TABLE [dbo].[TrimMarkType]  WITH CHECK ADD  CONSTRAINT [Rel14] FOREIGN KEY([UnitOfMeasurement_Id])
REFERENCES [dbo].[UnitOfMeasurement] ([UnitOfMeasurement_Id])
GO
ALTER TABLE [dbo].[TrimMarkType] CHECK CONSTRAINT [Rel14]
GO
ALTER TABLE [dbo].[VariablePrint]  WITH CHECK ADD  CONSTRAINT [FK_VariablePrint_ClientProject] FOREIGN KEY([ClientProject_Id])
REFERENCES [dbo].[ClientProject] ([ClientProject_Id])
GO
ALTER TABLE [dbo].[VariablePrint] CHECK CONSTRAINT [FK_VariablePrint_ClientProject]
GO
ALTER TABLE [dbo].[VariablePrint]  WITH CHECK ADD  CONSTRAINT [FK_VariablePrint_VWeb] FOREIGN KEY([VWeb_Id])
REFERENCES [dbo].[VWeb] ([VWeb_Id])
GO
ALTER TABLE [dbo].[VariablePrint] CHECK CONSTRAINT [FK_VariablePrint_VWeb]
GO
ALTER TABLE [dbo].[VisualTargetLibraryFieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_FLId] FOREIGN KEY([FieldLayout_Id])
REFERENCES [dbo].[FieldLayout] ([FieldLayout_Id])
GO
ALTER TABLE [dbo].[VisualTargetLibraryFieldLayout] CHECK CONSTRAINT [FK_FLId]
GO
ALTER TABLE [dbo].[VisualTargetLibraryFieldLayout]  WITH CHECK ADD  CONSTRAINT [FK_VTLFLId] FOREIGN KEY([VisualTargetLibrary_Id])
REFERENCES [dbo].[VisualTargetLibrary] ([VisualTargetLibrary_Id])
GO
ALTER TABLE [dbo].[VisualTargetLibraryFieldLayout] CHECK CONSTRAINT [FK_VTLFLId]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_Customer]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_LoginAccount] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_LoginAccount]
GO
ALTER TABLE [dbo].[VoucherCartTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CartTransaction_VoucherCartTransaction] FOREIGN KEY([CartTransaction_Id])
REFERENCES [dbo].[CartTransaction] ([CartTransaction_Id])
GO
ALTER TABLE [dbo].[VoucherCartTransaction] CHECK CONSTRAINT [FK_CartTransaction_VoucherCartTransaction]
GO
ALTER TABLE [dbo].[VoucherCartTransaction]  WITH CHECK ADD  CONSTRAINT [FK_LoginAccount_VoucherCartTransaction] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[VoucherCartTransaction] CHECK CONSTRAINT [FK_LoginAccount_VoucherCartTransaction]
GO
ALTER TABLE [dbo].[VoucherCartTransaction]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_VoucherCartTransaction] FOREIGN KEY([Voucher_Id])
REFERENCES [dbo].[Voucher] ([Voucher_Id])
GO
ALTER TABLE [dbo].[VoucherCartTransaction] CHECK CONSTRAINT [FK_Voucher_VoucherCartTransaction]
GO
ALTER TABLE [dbo].[VoucherCostCentre]  WITH CHECK ADD  CONSTRAINT [FK_CostCentre_VoucherCostCentre] FOREIGN KEY([CostCentre_Id])
REFERENCES [dbo].[CostCentre] ([CostCentre_Id])
GO
ALTER TABLE [dbo].[VoucherCostCentre] CHECK CONSTRAINT [FK_CostCentre_VoucherCostCentre]
GO
ALTER TABLE [dbo].[VoucherCostCentre]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_VoucherCostCentre] FOREIGN KEY([Voucher_Id])
REFERENCES [dbo].[Voucher] ([Voucher_Id])
GO
ALTER TABLE [dbo].[VoucherCostCentre] CHECK CONSTRAINT [FK_Voucher_VoucherCostCentre]
GO
ALTER TABLE [dbo].[VPrintData]  WITH CHECK ADD  CONSTRAINT [RelVPrintDVariablePrint] FOREIGN KEY([VariablePrint_Id])
REFERENCES [dbo].[VariablePrint] ([VariablePrint_Id])
GO
ALTER TABLE [dbo].[VPrintData] CHECK CONSTRAINT [RelVPrintDVariablePrint]
GO
ALTER TABLE [dbo].[VPrintDataDefinition]  WITH CHECK ADD  CONSTRAINT [RelVPrintDataDefVariablePrint] FOREIGN KEY([VariablePrint_Id])
REFERENCES [dbo].[VariablePrint] ([VariablePrint_Id])
GO
ALTER TABLE [dbo].[VPrintDataDefinition] CHECK CONSTRAINT [RelVPrintDataDefVariablePrint]
GO
ALTER TABLE [dbo].[VPrintFieldMapping]  WITH CHECK ADD  CONSTRAINT [RelVPMCust] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[VPrintFieldMapping] CHECK CONSTRAINT [RelVPMCust]
GO
ALTER TABLE [dbo].[VPrintImage]  WITH CHECK ADD  CONSTRAINT [FK_VPrintImage_LibraryImage] FOREIGN KEY([LibraryImage_Id])
REFERENCES [dbo].[LibraryImage] ([LibraryImage_Id])
GO
ALTER TABLE [dbo].[VPrintImage] CHECK CONSTRAINT [FK_VPrintImage_LibraryImage]
GO
ALTER TABLE [dbo].[VPrintImage]  WITH CHECK ADD  CONSTRAINT [FK_VPrintImage_PDFs] FOREIGN KEY([PDFs_Id])
REFERENCES [dbo].[PDFs] ([PDFs_Id])
GO
ALTER TABLE [dbo].[VPrintImage] CHECK CONSTRAINT [FK_VPrintImage_PDFs]
GO
ALTER TABLE [dbo].[VPrintImage]  WITH CHECK ADD  CONSTRAINT [FK_VPrintImage_VariablePrint] FOREIGN KEY([VariablePrint_Id])
REFERENCES [dbo].[VariablePrint] ([VariablePrint_Id])
GO
ALTER TABLE [dbo].[VPrintImage] CHECK CONSTRAINT [FK_VPrintImage_VariablePrint]
GO
ALTER TABLE [dbo].[VPrintRule]  WITH CHECK ADD  CONSTRAINT [FK_VPrintCondition_VariablePrint] FOREIGN KEY([VariablePrint_Id])
REFERENCES [dbo].[VariablePrint] ([VariablePrint_Id])
GO
ALTER TABLE [dbo].[VPrintRule] CHECK CONSTRAINT [FK_VPrintCondition_VariablePrint]
GO
ALTER TABLE [dbo].[VWebCampaign]  WITH CHECK ADD  CONSTRAINT [FK_VWCVWC] FOREIGN KEY([PURLVWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaign] CHECK CONSTRAINT [FK_VWCVWC]
GO
ALTER TABLE [dbo].[VWebCampaign]  WITH CHECK ADD  CONSTRAINT [RelVWC] FOREIGN KEY([List_Id])
REFERENCES [dbo].[List] ([List_Id])
GO
ALTER TABLE [dbo].[VWebCampaign] CHECK CONSTRAINT [RelVWC]
GO
ALTER TABLE [dbo].[VWebCampaign]  WITH CHECK ADD  CONSTRAINT [RelVWCMTC] FOREIGN KEY([VWebMultiTouchCampaign_Id])
REFERENCES [dbo].[VWebMultiTouchCampaign] ([VWebMultiTouchCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaign] CHECK CONSTRAINT [RelVWCMTC]
GO
ALTER TABLE [dbo].[VWebCampaign]  WITH CHECK ADD  CONSTRAINT [RelVWCVWT] FOREIGN KEY([VWebTemplate_Id])
REFERENCES [dbo].[VWebTemplate] ([VWebTemplate_Id])
GO
ALTER TABLE [dbo].[VWebCampaign] CHECK CONSTRAINT [RelVWCVWT]
GO
ALTER TABLE [dbo].[VWebCampaignArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWCACTCP] FOREIGN KEY([ClientProject_Id])
REFERENCES [dbo].[ClientProject] ([ClientProject_Id])
GO
ALTER TABLE [dbo].[VWebCampaignArtwork] CHECK CONSTRAINT [RelVWCACTCP]
GO
ALTER TABLE [dbo].[VWebCampaignArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWCACTPT] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[VWebCampaignArtwork] CHECK CONSTRAINT [RelVWCACTPT]
GO
ALTER TABLE [dbo].[VWebCampaignArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWCACTSMS] FOREIGN KEY([SMSTemplate_Id])
REFERENCES [dbo].[SMSTemplate] ([SMSTemplate_Id])
GO
ALTER TABLE [dbo].[VWebCampaignArtwork] CHECK CONSTRAINT [RelVWCACTSMS]
GO
ALTER TABLE [dbo].[VWebCampaignArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWCACTStat] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[VWebCampaignArtwork] CHECK CONSTRAINT [RelVWCACTStat]
GO
ALTER TABLE [dbo].[VWebCampaignArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWCACTT] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[VWebCampaignArtwork] CHECK CONSTRAINT [RelVWCACTT]
GO
ALTER TABLE [dbo].[VWebCampaignArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWCACTVWT] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaignArtwork] CHECK CONSTRAINT [RelVWCACTVWT]
GO
ALTER TABLE [dbo].[VWebCampaignArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWCAWP] FOREIGN KEY([WebPortal_Id])
REFERENCES [dbo].[WebPortal] ([WebPortal_Id])
GO
ALTER TABLE [dbo].[VWebCampaignArtwork] CHECK CONSTRAINT [RelVWCAWP]
GO
ALTER TABLE [dbo].[VWebCampaignDataEntry]  WITH CHECK ADD  CONSTRAINT [RelVVWCDELE] FOREIGN KEY([ListEntry_Id])
REFERENCES [dbo].[ListEntry] ([ListEntry_Id])
GO
ALTER TABLE [dbo].[VWebCampaignDataEntry] CHECK CONSTRAINT [RelVVWCDELE]
GO
ALTER TABLE [dbo].[VWebCampaignDataEntry]  WITH CHECK ADD  CONSTRAINT [RelVVWCDEVWC] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaignDataEntry] CHECK CONSTRAINT [RelVVWCDEVWC]
GO
ALTER TABLE [dbo].[VWebCampaignDataEntry]  WITH CHECK ADD  CONSTRAINT [RelVVWCDEVWWPP] FOREIGN KEY([VWebWebPortalPage_Id])
REFERENCES [dbo].[VWebWebPortalPage] ([VWebWebPortalPage_Id])
GO
ALTER TABLE [dbo].[VWebCampaignDataEntry] CHECK CONSTRAINT [RelVVWCDEVWWPP]
GO
ALTER TABLE [dbo].[VWebCampaignList]  WITH CHECK ADD  CONSTRAINT [RelVWCLL] FOREIGN KEY([List_Id])
REFERENCES [dbo].[List] ([List_Id])
GO
ALTER TABLE [dbo].[VWebCampaignList] CHECK CONSTRAINT [RelVWCLL]
GO
ALTER TABLE [dbo].[VWebCampaignList]  WITH CHECK ADD  CONSTRAINT [RelVWCVWC] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaignList] CHECK CONSTRAINT [RelVWCVWC]
GO
ALTER TABLE [dbo].[VWebCampaignListEntry]  WITH CHECK ADD  CONSTRAINT [RelVWCALE] FOREIGN KEY([ListEntry_Id])
REFERENCES [dbo].[ListEntry] ([ListEntry_Id])
GO
ALTER TABLE [dbo].[VWebCampaignListEntry] CHECK CONSTRAINT [RelVWCALE]
GO
ALTER TABLE [dbo].[VWebCampaignListEntry]  WITH CHECK ADD  CONSTRAINT [RelVWCAVWC] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaignListEntry] CHECK CONSTRAINT [RelVWCAVWC]
GO
ALTER TABLE [dbo].[VWebCampaignLog]  WITH CHECK ADD  CONSTRAINT [RelVWCLLE] FOREIGN KEY([ListEntry_Id])
REFERENCES [dbo].[ListEntry] ([ListEntry_Id])
GO
ALTER TABLE [dbo].[VWebCampaignLog] CHECK CONSTRAINT [RelVWCLLE]
GO
ALTER TABLE [dbo].[VWebCampaignLog]  WITH CHECK ADD  CONSTRAINT [RelVWCLVWC] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaignLog] CHECK CONSTRAINT [RelVWCLVWC]
GO
ALTER TABLE [dbo].[VWebCampaignLog]  WITH CHECK ADD  CONSTRAINT [RelVWCLVWWPP] FOREIGN KEY([VWebWebPortalPage_Id])
REFERENCES [dbo].[VWebWebPortalPage] ([VWebWebPortalPage_Id])
GO
ALTER TABLE [dbo].[VWebCampaignLog] CHECK CONSTRAINT [RelVWCLVWWPP]
GO
ALTER TABLE [dbo].[VWebCampaignReport]  WITH CHECK ADD  CONSTRAINT [FK_VWebCampaignReport_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[VWebCampaignReport] CHECK CONSTRAINT [FK_VWebCampaignReport_Customer]
GO
ALTER TABLE [dbo].[VWebCampaignRule]  WITH CHECK ADD  CONSTRAINT [FK_VWebCampaignRule_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[VWebCampaignRule] CHECK CONSTRAINT [FK_VWebCampaignRule_Order]
GO
ALTER TABLE [dbo].[VWebCampaignRule]  WITH CHECK ADD  CONSTRAINT [FK_VWebCampaignRule_VWebCampaign] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaignRule] CHECK CONSTRAINT [FK_VWebCampaignRule_VWebCampaign]
GO
ALTER TABLE [dbo].[VWebCampaignRuleReplace]  WITH CHECK ADD  CONSTRAINT [FK_VWebCampaignRuleReplace_LibraryImage] FOREIGN KEY([LibraryImage_Id])
REFERENCES [dbo].[LibraryImage] ([LibraryImage_Id])
GO
ALTER TABLE [dbo].[VWebCampaignRuleReplace] CHECK CONSTRAINT [FK_VWebCampaignRuleReplace_LibraryImage]
GO
ALTER TABLE [dbo].[VWebCampaignRuleReplace]  WITH CHECK ADD  CONSTRAINT [FK_VWebCampaignRuleReplace_PDFs] FOREIGN KEY([PDFs_Id])
REFERENCES [dbo].[PDFs] ([PDFs_Id])
GO
ALTER TABLE [dbo].[VWebCampaignRuleReplace] CHECK CONSTRAINT [FK_VWebCampaignRuleReplace_PDFs]
GO
ALTER TABLE [dbo].[VWebCampaignRuleReplace]  WITH CHECK ADD  CONSTRAINT [FK_VWebCampaignRuleReplace_VWebCampaignRule] FOREIGN KEY([VWebCampaignRule_Id])
REFERENCES [dbo].[VWebCampaignRule] ([VWebCampaignRule_Id])
GO
ALTER TABLE [dbo].[VWebCampaignRuleReplace] CHECK CONSTRAINT [FK_VWebCampaignRuleReplace_VWebCampaignRule]
GO
ALTER TABLE [dbo].[VWebCampaignSummary]  WITH CHECK ADD  CONSTRAINT [RelVWCSumVWC] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebCampaignSummary] CHECK CONSTRAINT [RelVWCSumVWC]
GO
ALTER TABLE [dbo].[VWebJob]  WITH CHECK ADD  CONSTRAINT [FK_VWebJob_PreSortFormatNCOA] FOREIGN KEY([PreSortFormatNCOA_Id])
REFERENCES [dbo].[PresortFormat] ([PresortFormat_Id])
GO
ALTER TABLE [dbo].[VWebJob] CHECK CONSTRAINT [FK_VWebJob_PreSortFormatNCOA]
GO
ALTER TABLE [dbo].[VWebJob]  WITH CHECK ADD  CONSTRAINT [RelVWebJobCust] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[VWebJob] CHECK CONSTRAINT [RelVWebJobCust]
GO
ALTER TABLE [dbo].[VWebJob]  WITH CHECK ADD  CONSTRAINT [RelVWebJobLA] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[VWebJob] CHECK CONSTRAINT [RelVWebJobLA]
GO
ALTER TABLE [dbo].[VWebJob]  WITH CHECK ADD  CONSTRAINT [RelVWebJobOrder] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Order_Id])
GO
ALTER TABLE [dbo].[VWebJob] CHECK CONSTRAINT [RelVWebJobOrder]
GO
ALTER TABLE [dbo].[VWebJob]  WITH CHECK ADD  CONSTRAINT [RelVWebJobVWCA] FOREIGN KEY([VWebCampaignArtwork_Id])
REFERENCES [dbo].[VWebCampaignArtwork] ([VWebCampaignArtwork_Id])
GO
ALTER TABLE [dbo].[VWebJob] CHECK CONSTRAINT [RelVWebJobVWCA]
GO
ALTER TABLE [dbo].[VWebLog]  WITH CHECK ADD  CONSTRAINT [FK_VWebLog_VPrintData] FOREIGN KEY([VPrintData_Id])
REFERENCES [dbo].[VPrintData] ([VPrintData_Id])
GO
ALTER TABLE [dbo].[VWebLog] CHECK CONSTRAINT [FK_VWebLog_VPrintData]
GO
ALTER TABLE [dbo].[VWebLog]  WITH CHECK ADD  CONSTRAINT [FK_VWebLog_VWeb] FOREIGN KEY([VWeb_Id])
REFERENCES [dbo].[VWeb] ([VWeb_Id])
GO
ALTER TABLE [dbo].[VWebLog] CHECK CONSTRAINT [FK_VWebLog_VWeb]
GO
ALTER TABLE [dbo].[VWebMapping]  WITH CHECK ADD  CONSTRAINT [FK_VWebMapping_ProjectTemplate] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[VWebMapping] CHECK CONSTRAINT [FK_VWebMapping_ProjectTemplate]
GO
ALTER TABLE [dbo].[VWebMultiTouchAddition]  WITH CHECK ADD  CONSTRAINT [FK_VWebMultiTouchAddition_ListAdd] FOREIGN KEY([ListAddition_Id])
REFERENCES [dbo].[ListAddition] ([ListAddition_Id])
GO
ALTER TABLE [dbo].[VWebMultiTouchAddition] CHECK CONSTRAINT [FK_VWebMultiTouchAddition_ListAdd]
GO
ALTER TABLE [dbo].[VWebMultiTouchAddition]  WITH CHECK ADD  CONSTRAINT [FK_VWebMultiTouchAddition_VWC] FOREIGN KEY([VWebCampaign_Id])
REFERENCES [dbo].[VWebCampaign] ([VWebCampaign_Id])
GO
ALTER TABLE [dbo].[VWebMultiTouchAddition] CHECK CONSTRAINT [FK_VWebMultiTouchAddition_VWC]
GO
ALTER TABLE [dbo].[VWebMultiTouchAddition]  WITH CHECK ADD  CONSTRAINT [FK_VWebMultiTouchAddition_VWMTC] FOREIGN KEY([VWebMultiTouchCampaign_Id])
REFERENCES [dbo].[VWebMultiTouchCampaign] ([VWebMultiTouchCampaign_Id])
GO
ALTER TABLE [dbo].[VWebMultiTouchAddition] CHECK CONSTRAINT [FK_VWebMultiTouchAddition_VWMTC]
GO
ALTER TABLE [dbo].[VWebMultiTouchCampaign]  WITH CHECK ADD  CONSTRAINT [RelVWMTCCT] FOREIGN KEY([CampaignTemplate_Id])
REFERENCES [dbo].[CampaignTemplate] ([CampaignTemplate_Id])
GO
ALTER TABLE [dbo].[VWebMultiTouchCampaign] CHECK CONSTRAINT [RelVWMTCCT]
GO
ALTER TABLE [dbo].[VWebMultiTouchCampaign]  WITH CHECK ADD  CONSTRAINT [RelVWMTCL] FOREIGN KEY([List_Id])
REFERENCES [dbo].[List] ([List_Id])
GO
ALTER TABLE [dbo].[VWebMultiTouchCampaign] CHECK CONSTRAINT [RelVWMTCL]
GO
ALTER TABLE [dbo].[VWebMultiTouchCampaign]  WITH CHECK ADD  CONSTRAINT [RelVWMTCLA] FOREIGN KEY([LoginAccount_Id])
REFERENCES [dbo].[LoginAccount] ([LoginAccount_Id])
GO
ALTER TABLE [dbo].[VWebMultiTouchCampaign] CHECK CONSTRAINT [RelVWMTCLA]
GO
ALTER TABLE [dbo].[VWebResponse]  WITH CHECK ADD  CONSTRAINT [RelVWebResVWeb] FOREIGN KEY([VWeb_Id])
REFERENCES [dbo].[VWeb] ([VWeb_Id])
GO
ALTER TABLE [dbo].[VWebResponse] CHECK CONSTRAINT [RelVWebResVWeb]
GO
ALTER TABLE [dbo].[VWebResponseItem]  WITH CHECK ADD  CONSTRAINT [RelVWebResItemVWebRes] FOREIGN KEY([VWebResponse_Id])
REFERENCES [dbo].[VWebResponse] ([VWebResponse_Id])
GO
ALTER TABLE [dbo].[VWebResponseItem] CHECK CONSTRAINT [RelVWebResItemVWebRes]
GO
ALTER TABLE [dbo].[VWebTemplate]  WITH CHECK ADD  CONSTRAINT [FK_VWebTemplate_CampaignTemplate] FOREIGN KEY([CampaignTemplate_Id])
REFERENCES [dbo].[CampaignTemplate] ([CampaignTemplate_Id])
GO
ALTER TABLE [dbo].[VWebTemplate] CHECK CONSTRAINT [FK_VWebTemplate_CampaignTemplate]
GO
ALTER TABLE [dbo].[VWebTemplateArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWTACTCP] FOREIGN KEY([ClientProject_Id])
REFERENCES [dbo].[ClientProject] ([ClientProject_Id])
GO
ALTER TABLE [dbo].[VWebTemplateArtwork] CHECK CONSTRAINT [RelVWTACTCP]
GO
ALTER TABLE [dbo].[VWebTemplateArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWTACTPT] FOREIGN KEY([ProjectTemplate_Id])
REFERENCES [dbo].[ProjectTemplate] ([ProjectTemplate_Id])
GO
ALTER TABLE [dbo].[VWebTemplateArtwork] CHECK CONSTRAINT [RelVWTACTPT]
GO
ALTER TABLE [dbo].[VWebTemplateArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWTACTSMS] FOREIGN KEY([SMSTemplate_Id])
REFERENCES [dbo].[SMSTemplate] ([SMSTemplate_Id])
GO
ALTER TABLE [dbo].[VWebTemplateArtwork] CHECK CONSTRAINT [RelVWTACTSMS]
GO
ALTER TABLE [dbo].[VWebTemplateArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWTACTStat] FOREIGN KEY([Stationery_Id])
REFERENCES [dbo].[Stationery] ([Stationery_Id])
GO
ALTER TABLE [dbo].[VWebTemplateArtwork] CHECK CONSTRAINT [RelVWTACTStat]
GO
ALTER TABLE [dbo].[VWebTemplateArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWTACTT] FOREIGN KEY([Template_Id])
REFERENCES [dbo].[Template] ([Template_Id])
GO
ALTER TABLE [dbo].[VWebTemplateArtwork] CHECK CONSTRAINT [RelVWTACTT]
GO
ALTER TABLE [dbo].[VWebTemplateArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWTACTVWT] FOREIGN KEY([VWebTemplate_Id])
REFERENCES [dbo].[VWebTemplate] ([VWebTemplate_Id])
GO
ALTER TABLE [dbo].[VWebTemplateArtwork] CHECK CONSTRAINT [RelVWTACTVWT]
GO
ALTER TABLE [dbo].[VWebTemplateArtwork]  WITH CHECK ADD  CONSTRAINT [RelVWTAWP] FOREIGN KEY([WebPortal_Id])
REFERENCES [dbo].[WebPortal] ([WebPortal_Id])
GO
ALTER TABLE [dbo].[VWebTemplateArtwork] CHECK CONSTRAINT [RelVWTAWP]
GO
ALTER TABLE [dbo].[VWebTemplateExternalList]  WITH CHECK ADD  CONSTRAINT [FK_VWebTemplateExternalList_ExternalList] FOREIGN KEY([ExternalList_Id])
REFERENCES [dbo].[ExternalList] ([ExternalList_Id])
GO
ALTER TABLE [dbo].[VWebTemplateExternalList] CHECK CONSTRAINT [FK_VWebTemplateExternalList_ExternalList]
GO
ALTER TABLE [dbo].[VWebTemplateExternalList]  WITH CHECK ADD  CONSTRAINT [FK_VWebTemplateExternalList_Template] FOREIGN KEY([VWebTemplate_Id])
REFERENCES [dbo].[VWebTemplate] ([VWebTemplate_Id])
GO
ALTER TABLE [dbo].[VWebTemplateExternalList] CHECK CONSTRAINT [FK_VWebTemplateExternalList_Template]
GO
ALTER TABLE [dbo].[VWebWebPortalPage]  WITH CHECK ADD  CONSTRAINT [RelVWWPPVWCA] FOREIGN KEY([VWebCampaignArtwork_Id])
REFERENCES [dbo].[VWebCampaignArtwork] ([VWebCampaignArtwork_Id])
GO
ALTER TABLE [dbo].[VWebWebPortalPage] CHECK CONSTRAINT [RelVWWPPVWCA]
GO
ALTER TABLE [dbo].[WebPortalPage]  WITH CHECK ADD  CONSTRAINT [RelWPP] FOREIGN KEY([WebPortal_Id])
REFERENCES [dbo].[WebPortal] ([WebPortal_Id])
GO
ALTER TABLE [dbo].[WebPortalPage] CHECK CONSTRAINT [RelWPP]
GO
ALTER TABLE [dbo].[WebsitePage]  WITH CHECK ADD  CONSTRAINT [FK_WebsitePage_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Customer_Id])
GO
ALTER TABLE [dbo].[WebsitePage] CHECK CONSTRAINT [FK_WebsitePage_Customer]
GO
/****** Object:  StoredProcedure [dbo].[sp_getLimitInfo]    Script Date: 11/27/2017 3:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_getLimitInfo]
	@MARSHA varchar(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

declare @GROUPING_VAL varchar(5)

-- This query gets value depending on whether Marriott or Ritz property
set @GROUPING_VAL = (    SELECT
                CASE CostCentre.ScreenDefinition_Id  
                    WHEN 13 THEN '%-MRP'
                    ELSE '%-EB'
                END
            FROM 
                CostCentre 
            WHERE 
                CostCentre.CostCentre_Id = (    SELECT
                                    CostCentre.CostCentre_Id AS cost_center_id
                                FROM
                                    CostCentre
                                WHERE
                                    SUBSTRING(CostCentre.CostCentreName, 2, 5) = @MARSHA
                                    AND CostCentre.Customer_Id = 36))

SELECT
        Cost_center_id,

        -- get current limit from ds_orderLimits
(
            SELECT TOP 1
                ds_orderLimits.limit
            FROM
                ds_orderLimits
            WHERE
                ds_orderLimits.grouping LIKE '%'+@MARSHA+'%'  --'%ABECY%'
                AND ds_orderLimits.grouping LIKE @GROUPING_VAL  --'%-EB%'
        ) AS limit,
        
	-- get last order date (last brochure order for Marriott | last card order for Ritz)
(
            SELECT
                convert(varchar, max([Order].[Date]), 101)
            FROM
                [Order]
            WHERE
                [Order].Customer_Id = 36
                AND [Order].CostCentre_Id = 1721
                AND [Order].Status_Id not in (7,10)
                AND [Order].Template_Id in (
                                SELECT 
                                    DISTINCT ds_templateGrouping.templateId
                                FROM 
                                    ds_templateGrouping
                                WHERE 
                                    ds_templateGrouping.[type] <> 1
                                    AND ds_templateGrouping.[grouping] like @GROUPING_VAL
                               )
        ) AS last_order,
        
	-- get qty already ordered that is reducing current available qty
(
            SELECT
                ISNULL(SUM(ISNULL([Order].TotalQuantity, [Order].Quantity * [Order].UnitQtysQtyPerUnit)),0)
            FROM
                [Order]
            WHERE
                [Order].[Customer_Id] = 36
                AND [Order].CostCentre_Id = cost_center_id
                AND [Order].Status_Id not in (7,10)
                AND [Order].[Date] > DATEADD(DAY, -60, GETDATE())
                AND [Order].[Date] >= '2017-09-03'
                AND [Order].Template_Id IN (
                    SELECT
                        DISTINCT ds_templateGrouping.templateId
                    FROM
                        ds_templateGrouping
                    WHERE
                        ds_templateGrouping.[type] <> 1
                        AND ds_templateGrouping.[grouping] LIKE '%-EB%'
                )
        ) AS on_order,
        
	-- get amount current in the cart
(
            SELECT
                ISNULL(SUM(ISNULL([Order].TotalQuantity, [Order].Quantity * [Order].UnitQtysQtyPerUnit)),0)
            FROM
                [Order]
            WHERE
                [Order].[Customer_Id] = 36
                AND [Order].CostCentre_Id = cost_center_id
                AND [Order].Status_Id = 10
                AND [Order].[Date] > DATEADD(DAY, -60, GETDATE())
                AND [Order].[Date] >= '2017-09-03'
                AND [Order].Template_Id IN (
                    SELECT
                        DISTINCT ds_templateGrouping.templateId
                    FROM
                        ds_templateGrouping
                    WHERE
                        ds_templateGrouping.[type] <> 1
                        AND ds_templateGrouping.[grouping] LIKE @GROUPING_VAL
                )
        ) AS in_cart,
        
	-- get the name of the user who create the cart
(
            SELECT
                TOP 1 (Employee.NameFirstName + ' ' + Employee.NameSurname)
            FROM
                [Order]
                JOIN [dbo].[Employee] on Employee.LoginAccount_Id = [Order].OrderedBy_Id
            WHERE
                [Order].[Customer_Id] = 36
                AND [Order].CostCentre_Id = cost_center_id
                AND [Order].Status_Id = 10
                AND [Order].[Date] > DATEADD(DAY, (60 * -1), getdate())
                AND [Order].[Date] >= '2017-09-03'
                AND [Order].Template_Id in (
                                SELECT
                                    ds_templateGrouping.templateId
                                FROM 
                                    ds_templateGrouping
                                WHERE 
                                    ds_templateGrouping.[type] <> 1
                                    AND ds_templateGrouping.[grouping] like @GROUPING_VAL
                            )
        ) AS cart_owner

    FROM (
        SELECT
            CostCentre.CostCentre_Id AS cost_center_id
        FROM
            CostCentre
        WHERE
            SUBSTRING(CostCentre.CostCentreName, 2, 5) = @MARSHA
            AND CostCentre.Customer_Id = 36
    ) as ccid

END
GO
/****** Object:  StoredProcedure [dbo].[sp_setOrderLimit]    Script Date: 11/27/2017 3:04:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_setOrderLimit]
	@MARSHA varchar(5),
	@limit int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE ds_orderLimits
	SET ds_orderLimits.limit = @limit
	WHERE ds_orderLimits.grouping LIKE '%' + @MARSHA + '%'
		AND right(ds_orderLimits.grouping, 3) in ('-EB', 'MRP')
END
GO
USE [master]
GO
ALTER DATABASE [CardExpress_Dev] SET  READ_WRITE 
GO
