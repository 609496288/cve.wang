USE [loudong]
GO
/****** Object:  Table [dbo].[concern_loophole]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[concern_loophole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loopholeid] [int] NOT NULL,
	[markuser] [varchar](100) NOT NULL,
	[addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_concern_loophole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[concern_loophole] ON
INSERT [dbo].[concern_loophole] ([id], [loopholeid], [markuser], [addtime]) VALUES (2, 4, N'11111', CAST(0x0000A557013805E8 AS DateTime))
INSERT [dbo].[concern_loophole] ([id], [loopholeid], [markuser], [addtime]) VALUES (3, 17, N'aa_bb', CAST(0x0000A55900F98AA7 AS DateTime))
INSERT [dbo].[concern_loophole] ([id], [loopholeid], [markuser], [addtime]) VALUES (5, 13, N'doubishi2b', CAST(0x0000A55900FD91F1 AS DateTime))
INSERT [dbo].[concern_loophole] ([id], [loopholeid], [markuser], [addtime]) VALUES (6, 27, N'bb_dd', CAST(0x0000A55900FE656F AS DateTime))
INSERT [dbo].[concern_loophole] ([id], [loopholeid], [markuser], [addtime]) VALUES (7, 11, N'bb_dd', CAST(0x0000A55900FE9878 AS DateTime))
INSERT [dbo].[concern_loophole] ([id], [loopholeid], [markuser], [addtime]) VALUES (8, 35, N'doubishi2b', CAST(0x0000A55B012DA96B AS DateTime))
INSERT [dbo].[concern_loophole] ([id], [loopholeid], [markuser], [addtime]) VALUES (9, 35, N'doubishi2b', CAST(0x0000A55B012DA96B AS DateTime))
SET IDENTITY_INSERT [dbo].[concern_loophole] OFF
/****** Object:  Table [dbo].[company]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[companyurl] [nvarchar](200) NOT NULL,
	[companyname] [nvarchar](100) NOT NULL,
	[companydesc] [nvarchar](200) NULL,
	[addtime] [datetime] NOT NULL,
	[modtime] [datetime] NOT NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[company] ON
INSERT [dbo].[company] ([id], [companyurl], [companyname], [companydesc], [addtime], [modtime]) VALUES (5, N'www.10086.cn', N'中国移动', N'运营商', CAST(0x0000A55900A806D8 AS DateTime), CAST(0x0000A55900A94252 AS DateTime))
INSERT [dbo].[company] ([id], [companyurl], [companyname], [companydesc], [addtime], [modtime]) VALUES (6, N'www.189.cn', N'中国电信', N'运营商', CAST(0x0000A55900A82CF1 AS DateTime), CAST(0x0000A55900A82CF1 AS DateTime))
INSERT [dbo].[company] ([id], [companyurl], [companyname], [companydesc], [addtime], [modtime]) VALUES (7, N'www.10010.com', N'中国联通', N'运营商', CAST(0x0000A55900A8AC2F AS DateTime), CAST(0x0000A55900A8AC2F AS DateTime))
INSERT [dbo].[company] ([id], [companyurl], [companyname], [companydesc], [addtime], [modtime]) VALUES (8, N'www.fjfda.gov.cn', N'福建药监局', N'福建药监局', CAST(0x0000A55900A8C258 AS DateTime), CAST(0x0000A55900A957C6 AS DateTime))
INSERT [dbo].[company] ([id], [companyurl], [companyname], [companydesc], [addtime], [modtime]) VALUES (9, N'www.sac.net.cn', N'中国证券协会', N'中国证券协会', CAST(0x0000A55900A8F9E5 AS DateTime), CAST(0x0000A55900A8F9E5 AS DateTime))
INSERT [dbo].[company] ([id], [companyurl], [companyname], [companydesc], [addtime], [modtime]) VALUES (10, N'www.cbrc.gov.cn', N'中国银监会', N'中国银监会', CAST(0x0000A55900A916B8 AS DateTime), CAST(0x0000A55900A916B7 AS DateTime))
SET IDENTITY_INSERT [dbo].[company] OFF
/****** Object:  Table [dbo].[comment]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[newsid] [nvarchar](300) NULL,
	[lanmu] [tinyint] NULL,
	[title] [nvarchar](50) NULL,
	[content] [nvarchar](1000) NULL,
	[ip] [nvarchar](15) NULL,
	[addtime] [smalldatetime] NULL,
	[reply] [nvarchar](800) NULL,
	[replytime] [smalldatetime] NULL,
	[replyuser] [nvarchar](30) NULL,
	[Parea] [nvarchar](50) NULL,
	[Ptel] [nvarchar](50) NULL,
	[Pemail] [nvarchar](50) NULL,
	[isshow] [bit] NOT NULL,
	[nextId] [int] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论类型 1-漏洞评论 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment', @level2type=N'COLUMN',@level2name=N'lanmu'
GO
SET IDENTITY_INSERT [dbo].[comment] ON
INSERT [dbo].[comment] ([id], [newsid], [lanmu], [title], [content], [ip], [addtime], [reply], [replytime], [replyuser], [Parea], [Ptel], [Pemail], [isshow], [nextId]) VALUES (1, N'1', 1, N'11', N'1', N'127.0.0.1', CAST(0xA55703C5 AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[comment] ([id], [newsid], [lanmu], [title], [content], [ip], [addtime], [reply], [replytime], [replyuser], [Parea], [Ptel], [Pemail], [isshow], [nextId]) VALUES (2, N'5', 1, N'11', N'xiao  wen ti ye dei xiu fu a ', N'127.0.0.1', CAST(0xA559025B AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[comment] ([id], [newsid], [lanmu], [title], [content], [ip], [addtime], [reply], [replytime], [replyuser], [Parea], [Ptel], [Pemail], [isshow], [nextId]) VALUES (3, N'1', 1, N'jjq', N'3', N'127.0.0.1', CAST(0xA559028A AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[comment] ([id], [newsid], [lanmu], [title], [content], [ip], [addtime], [reply], [replytime], [replyuser], [Parea], [Ptel], [Pemail], [isshow], [nextId]) VALUES (4, N'9', 1, N'erbozi', N'撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a撒的发的撒发撒的发a', N'127.0.0.1', CAST(0xA5590346 AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[comment] ([id], [newsid], [lanmu], [title], [content], [ip], [addtime], [reply], [replytime], [replyuser], [Parea], [Ptel], [Pemail], [isshow], [nextId]) VALUES (5, N'15', 1, N'11', N'aaaaaa', N'127.0.0.1', CAST(0xA559037A AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[comment] ([id], [newsid], [lanmu], [title], [content], [ip], [addtime], [reply], [replytime], [replyuser], [Parea], [Ptel], [Pemail], [isshow], [nextId]) VALUES (6, N'17', 1, N'11', N'&lt;img/src=1&gt;asas&#39;&quot;', N'127.0.0.1', CAST(0xA559038C AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[comment] ([id], [newsid], [lanmu], [title], [content], [ip], [addtime], [reply], [replytime], [replyuser], [Parea], [Ptel], [Pemail], [isshow], [nextId]) VALUES (7, N'44', 1, N'11', N'这都是什么呢。', N'127.0.0.1', CAST(0xA55D0576 AS SmallDateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[comment] OFF
/****** Object:  Table [dbo].[BrandJoinPic]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BrandJoinPic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NULL,
	[ImgUrl] [varchar](100) NULL,
	[AddTime] [smalldatetime] NULL,
	[ModTime] [smalldatetime] NULL,
	[EndTime] [smalldatetime] NULL,
	[Url] [varchar](200) NULL,
	[AddUser] [varchar](20) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_BrandJoinPic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=广告轮播图,1=加盟中间轮播图，2=战略品牌轮播图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BrandJoinPic', @level2type=N'COLUMN',@level2name=N'Type'
GO
SET IDENTITY_INSERT [dbo].[BrandJoinPic] ON
INSERT [dbo].[BrandJoinPic] ([Id], [BrandName], [ImgUrl], [AddTime], [ModTime], [EndTime], [Url], [AddUser], [Type]) VALUES (1, N'111', N'', CAST(0xA55703CB AS SmallDateTime), CAST(0xA55703CB AS SmallDateTime), CAST(0xA55703CB AS SmallDateTime), N'http://www.baidu.com', N'admin', 1)
INSERT [dbo].[BrandJoinPic] ([Id], [BrandName], [ImgUrl], [AddTime], [ModTime], [EndTime], [Url], [AddUser], [Type]) VALUES (2, N'起步软件', N'http://admin.jqsoft.com.cn:27359/UpLoad/linkpic/635837282622153748.jpg', CAST(0xA557045E AS SmallDateTime), CAST(0xA5570464 AS SmallDateTime), CAST(0xA557045E AS SmallDateTime), N'http://qibu.com', N'admin', 0)
INSERT [dbo].[BrandJoinPic] ([Id], [BrandName], [ImgUrl], [AddTime], [ModTime], [EndTime], [Url], [AddUser], [Type]) VALUES (3, N'qibu起步一起', N'', CAST(0xA557045F AS SmallDateTime), CAST(0xA557045F AS SmallDateTime), CAST(0xA557045F AS SmallDateTime), N'http://qibu.com', N'admin', 1)
SET IDENTITY_INSERT [dbo].[BrandJoinPic] OFF
/****** Object:  Table [dbo].[bigetype]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bigetype](
	[id] [int] IDENTITY(1001,1) NOT NULL,
	[btypename] [nvarchar](100) NOT NULL,
	[btypedesc] [nvarchar](100) NULL,
	[problemtype] [int] NULL,
 CONSTRAINT [PK_bigetype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bigetype] ON
INSERT [dbo].[bigetype] ([id], [btypename], [btypedesc], [problemtype]) VALUES (1001, N'网络边界/基础架构', N'网络边界/基础架构', 1)
INSERT [dbo].[bigetype] ([id], [btypename], [btypedesc], [problemtype]) VALUES (1002, N'loudong', N'asas', 1)
INSERT [dbo].[bigetype] ([id], [btypename], [btypedesc], [problemtype]) VALUES (1004, N'dedecms', N'', 2)
SET IDENTITY_INSERT [dbo].[bigetype] OFF
/****** Object:  Table [dbo].[announcement]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[announcement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NULL,
	[content] [text] NULL,
	[auther] [varchar](100) NULL,
	[addtime] [datetime] NOT NULL,
	[modtime] [datetime] NOT NULL,
 CONSTRAINT [PK_announcement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[announcement] ON
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (1, N'公告', N'希望大家支持本站', N'运营团队', CAST(0x0000A5500168774C AS DateTime), CAST(0x0000A5570133A774 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (3, N'demo', N'demo', N'demo', CAST(0x0000A55301630B70 AS DateTime), CAST(0x0000A55301630B70 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (4, N'12', N'12', N'12', CAST(0x0000A55900B447C3 AS DateTime), CAST(0x0000A55900B447C3 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (5, N'12', N'12', N'12', CAST(0x0000A55900B4565F AS DateTime), CAST(0x0000A55900B4565F AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (6, N'12', N'12', N'12', CAST(0x0000A55900B46CB7 AS DateTime), CAST(0x0000A55900B46CB7 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (7, N'12', N'12', N'12', CAST(0x0000A55900B47C01 AS DateTime), CAST(0x0000A55900B47C01 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (8, N'12', N'12', N'12', CAST(0x0000A55900B497CB AS DateTime), CAST(0x0000A55900B497CB AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (9, N'12', N'12', N'12', CAST(0x0000A55900B4D8B8 AS DateTime), CAST(0x0000A55900B4D8B8 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (10, N'12', N'12', N'12', CAST(0x0000A55900B4E2CE AS DateTime), CAST(0x0000A55900B4E2CE AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (11, N'12', N'12', N'12', CAST(0x0000A55900B4EB78 AS DateTime), CAST(0x0000A55900B4EB78 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (12, N'12', N'12', N'12', CAST(0x0000A55900B4F4C6 AS DateTime), CAST(0x0000A55900B4F4C6 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (13, N'12', N'12', N'12', CAST(0x0000A55900B513A9 AS DateTime), CAST(0x0000A55900B513A9 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (14, N'34', N'34', N'34', CAST(0x0000A55900B54D55 AS DateTime), CAST(0x0000A55900B54D55 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (15, N'34', N'34', N'34', CAST(0x0000A55900B564EB AS DateTime), CAST(0x0000A55900B564EB AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (16, N'34', N'34', N'34', CAST(0x0000A55900B56DD8 AS DateTime), CAST(0x0000A55900B56DD8 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (17, N'34', N'34', N'34', CAST(0x0000A55900B57869 AS DateTime), CAST(0x0000A55900B57869 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (18, N'34', N'34', N'34', CAST(0x0000A55900B581FD AS DateTime), CAST(0x0000A55900B581FD AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (19, N'34', N'34', N'34', CAST(0x0000A55900B59452 AS DateTime), CAST(0x0000A55900B59452 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (20, N'34', N'34', N'34', CAST(0x0000A55900B5B470 AS DateTime), CAST(0x0000A55900B5B470 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (21, N'34', N'34', N'34', CAST(0x0000A55900B5CBB5 AS DateTime), CAST(0x0000A55900B5CBB5 AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (22, N'34', N'34', N'34', CAST(0x0000A55900B5DB9C AS DateTime), CAST(0x0000A55900B5DB9C AS DateTime))
INSERT [dbo].[announcement] ([id], [title], [content], [auther], [addtime], [modtime]) VALUES (23, N'hi', N'hi', N'hi', CAST(0x0000A55900B62817 AS DateTime), CAST(0x0000A55900B62817 AS DateTime))
SET IDENTITY_INSERT [dbo].[announcement] OFF
/****** Object:  Table [dbo].[adminuser]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminuser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[username] [varchar](50) NULL,
	[department] [varchar](20) NULL,
	[rolename] [varchar](20) NULL,
	[ip] [varchar](100) NULL,
	[modtime] [datetime] NOT NULL,
	[addtime] [datetime] NOT NULL,
	[lastlogintime] [datetime] NOT NULL,
	[logincount] [int] NOT NULL,
	[roleid] [int] NULL,
	[salt] [nvarchar](200) NULL,
 CONSTRAINT [PK_adminuser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'rolename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录的IP ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'addtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次登录的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'lastlogintime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'adminuser', @level2type=N'COLUMN',@level2name=N'logincount'
GO
SET IDENTITY_INSERT [dbo].[adminuser] ON
INSERT [dbo].[adminuser] ([id], [userid], [password], [username], [department], [rolename], [ip], [modtime], [addtime], [lastlogintime], [logincount], [roleid], [salt]) VALUES (1, N'admin', N'new123', N'管理员', N'技术部', N'系统管理员', N'192.168.1.100', CAST(0x0000A54900E56F10 AS DateTime), CAST(0x0000A54900E56F10 AS DateTime), CAST(0x0000A55E0023CE2C AS DateTime), 66, 1, NULL)
INSERT [dbo].[adminuser] ([id], [userid], [password], [username], [department], [rolename], [ip], [modtime], [addtime], [lastlogintime], [logincount], [roleid], [salt]) VALUES (2, N'jqshu', N'sjq123', N'久强', N'技术部', N'系统管理员', N'127.0.0.1', CAST(0x0000A54A00034BC0 AS DateTime), CAST(0x0000A54A00034BC0 AS DateTime), CAST(0x0000A54A0003C05F AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[adminuser] OFF
/****** Object:  Table [dbo].[smalltype]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smalltype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stypename] [nvarchar](100) NOT NULL,
	[stypedesc] [nvarchar](100) NULL,
	[parentid] [int] NOT NULL,
 CONSTRAINT [PK_smalltype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[smalltype] ON
INSERT [dbo].[smalltype] ([id], [stypename], [stypedesc], [parentid]) VALUES (1, N'网络设计缺陷/逻辑错误', N'网络设计缺陷/逻辑错误', 1001)
INSERT [dbo].[smalltype] ([id], [stypename], [stypedesc], [parentid]) VALUES (2, N'loudong1', N'loudong1', 1001)
SET IDENTITY_INSERT [dbo].[smalltype] OFF
/****** Object:  Table [dbo].[my_favorite]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[my_favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loopholeid] [int] NOT NULL,
	[userid] [varchar](100) NOT NULL,
	[addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_my_favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[member_rank]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[member_rank](
	[id] [int] NOT NULL,
	[rankname] [varchar](50) NULL,
	[ranknumber] [int] NULL,
	[addtime] [datetime] NULL,
	[xinnumber] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[member_rank] ([id], [rankname], [ranknumber], [addtime], [xinnumber]) VALUES (0, N'路人', 0, CAST(0x0000A54A00F623CC AS DateTime), 0)
INSERT [dbo].[member_rank] ([id], [rankname], [ranknumber], [addtime], [xinnumber]) VALUES (1, N'高级会员', 100, CAST(0x0000A54A00F623B8 AS DateTime), 2)
INSERT [dbo].[member_rank] ([id], [rankname], [ranknumber], [addtime], [xinnumber]) VALUES (2, N'普通会员', 10, CAST(0x0000A54A00F64230 AS DateTime), 1)
INSERT [dbo].[member_rank] ([id], [rankname], [ranknumber], [addtime], [xinnumber]) VALUES (3, N'核心会员', 1000, CAST(0x0000A557007F2D08 AS DateTime), 3)
/****** Object:  Table [dbo].[member]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[member](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[netname] [varchar](50) NULL,
	[mobile] [varchar](20) NULL,
	[Tel] [varchar](20) NULL,
	[utype] [int] NOT NULL,
	[rank] [int] NOT NULL,
	[money] [int] NOT NULL,
	[udesc] [nvarchar](500) NULL,
	[learnto] [nvarchar](200) NULL,
	[addtime] [datetime] NULL,
	[lastlogintime] [datetime] NULL,
	[ip] [varchar](50) NULL,
	[salt] [nvarchar](200) NULL,
	[ranknumber] [int] NOT NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'netname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员状态，1=开通，0 关闭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'utype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'rank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'money'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'udesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'擅长领域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'learnto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'member', @level2type=N'COLUMN',@level2name=N'addtime'
GO
SET IDENTITY_INSERT [dbo].[member] ON
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (1, N'shujq', N'79738B7A14558688', N'舒久强', N'', N'', 1, 2, 0, N'', N'', CAST(0x0000A55700A53048 AS DateTime), CAST(0x0000A55700A54D94 AS DateTime), N'127.0.0.1', N'2e9f8fcd-d8ed-4cac-a8dd-963b00386150', 100, N'')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (2, N'aa_bb', N'301D607E8DA5F76A30664EAFF7897414', N'11', N'', N'', 1, 3, 0, N'', N'', CAST(0x0000A55700E6922C AS DateTime), CAST(0x0000A55D017CD037 AS DateTime), N'127.0.0.1', N'1dfa3844-d922-4ccd-913b-4dbeb0727780', 1050, N'')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (3, N'11111', N'0D11685C6DE1CD3D', N'jjq', N'', N'', 1, 0, 0, N'', N'', CAST(0x0000A557010EE538 AS DateTime), CAST(0x0000A55E00001FF8 AS DateTime), N'127.0.0.1', N'0365c659-5350-4cdf-b568-0f7565f4b03a', 1, N'')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (7, N'huluwa', N'dsfsadf', N'葫芦娃', NULL, NULL, -1, 0, 0, NULL, NULL, CAST(0x0000A557014F4B1A AS DateTime), CAST(0x0000A557014F4B1A AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (8, N'shujq00', N'9E5E2EB29B5D6A61', N'3333', N'', N'', 0, 0, 0, N'', N'', CAST(0x0000A558001B36CC AS DateTime), CAST(0x0000A558001B36CC AS DateTime), N'', N'df42d69d-290d-41c9-bc56-9769294c23db', 1, N'')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (9, N'sjq11', N'DA89A0CD4E04518A', N'aaaa', NULL, NULL, 0, 0, 0, NULL, NULL, CAST(0x0000A55800263514 AS DateTime), CAST(0x0000A55800263514 AS DateTime), NULL, N'b3b10f9b-a06c-4c88-a220-f7837f279a4f', 1, N'932737707@qq.com')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (10, N'erbozi', N'D0AB02FD401D4B2A', N'erbozi', N'', N'', 1, 2, 0, N'', N'', CAST(0x0000A55900B21574 AS DateTime), CAST(0x0000A55900E2E0BE AS DateTime), N'127.0.0.1', N'ba613efd-03fd-4ec8-9318-5a3a9792d063', 1, N'qqqqq@qq.com')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (11, N'22222', N'9250CADB9FB1D97A', N'111111', N'', N'', 1, 2, 0, N'', N'', CAST(0x0000A55900BA426C AS DateTime), CAST(0x0000A55C00D2297C AS DateTime), N'127.0.0.1', N'fbae139b-2d17-46bd-817b-88f8b1377648', 3, N'932737707@qq.com')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (12, N'doubishi2b', N'CAC7E933D56ACAB5', N'逗逼是2b', N'', N'', 1, 1, 0, N'', N'', CAST(0x0000A55900E526E4 AS DateTime), CAST(0x0000A55B01240D32 AS DateTime), N'127.0.0.1', N'0fc3a9d1-b82c-4113-8f25-d0110b5e00b5', 20, N'doubishierbi@163.com')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (13, N'abcdef', N'4A87EBE2D992E89C', N'test111', N'', N'', 1, 0, 0, N'', N'', CAST(0x0000A55900E821C8 AS DateTime), CAST(0x0000A55900E821C8 AS DateTime), N'127.0.0.1', N'ab122da8-b995-49af-88c8-55814d6bb2b5', 1, N'123@qq.com')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (14, N'lovelili', N'5EE11EA68385F6C64522B1C363295610', N'lovelili', NULL, NULL, 0, 0, 0, NULL, NULL, CAST(0x0000A55900E91EF9 AS DateTime), CAST(0x0000A55900E91EF9 AS DateTime), N'127.0.0.1', N'307ee79f-d987-4ac0-ac53-1f98a744c72f', 1, N'shishengme@qq.com')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (15, N'qwert', N'58E1B78D39D75FA1', N'adbf', N'', N'', 1, 0, 0, N'', N'', CAST(0x0000A55900E92398 AS DateTime), CAST(0x0000A55900E92398 AS DateTime), N'127.0.0.1', N'95dc8a58-742a-4b49-89ce-18a1ac5a80ef', 1, N'abcdef@qq.com')
INSERT [dbo].[member] ([id], [userid], [password], [netname], [mobile], [Tel], [utype], [rank], [money], [udesc], [learnto], [addtime], [lastlogintime], [ip], [salt], [ranknumber], [email]) VALUES (16, N'bb_dd', N'B070A6B0228AA68B8639010F3DDF04DE', N'爱上一朵鲜花很可恶', N'', N'', 1, 0, 0, N'', N'', CAST(0x0000A55900FD6B00 AS DateTime), CAST(0x0000A55D00C36527 AS DateTime), N'127.0.0.1', N'6316ee2d-7951-4903-a95e-4a24e060ec72', 30, N'122212@aa.com')
SET IDENTITY_INSERT [dbo].[member] OFF
/****** Object:  Table [dbo].[mark_user]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mark_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[markuser] [nvarchar](50) NOT NULL,
	[addtime] [datetime] NULL,
 CONSTRAINT [PK_mark_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mark_user', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关注的用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mark_user', @level2type=N'COLUMN',@level2name=N'markuser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mark_user', @level2type=N'COLUMN',@level2name=N'addtime'
GO
/****** Object:  Table [dbo].[loophole]    Script Date: 11/29/2015 00:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loophole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[problemtype] [int] NULL,
	[companyid] [int] NOT NULL,
	[btype] [int] NOT NULL,
	[stype] [int] NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[ranktype] [int] NOT NULL,
	[rank] [int] NOT NULL,
	[description] [ntext] NOT NULL,
	[detialdesc] [ntext] NOT NULL,
	[prove] [ntext] NOT NULL,
	[repair] [ntext] NOT NULL,
	[testcode] [varchar](50) NULL,
	[tag] [ntext] NOT NULL,
	[userid] [nvarchar](100) NOT NULL,
	[addtime] [datetime] NOT NULL,
	[modeltime] [datetime] NOT NULL,
	[state] [int] NOT NULL,
	[staterank] [ntext] NULL,
	[isessence] [int] NOT NULL,
	[piloustate] [ntext] NULL,
	[companyrepy] [ntext] NULL,
	[publicdate] [datetime] NULL,
	[loopholehash] [ntext] NULL,
	[copyright] [ntext] NULL,
	[custcomname] [varchar](100) NULL,
	[confirmdate] [datetime] NULL,
 CONSTRAINT [PK_loophole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'problemtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司厂商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'companyid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题大类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'btype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题小类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'stype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分类型，0-低，1-中，2-高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'ranktype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'rank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'漏洞描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'detialdesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'漏洞证明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'prove'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'漏洞修复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'repair'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'漏洞预警' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'testcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'tag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'漏洞状态,0表示未审核，1-已认领,2-已确认,3=等待认领,漏洞预警=4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'staterank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否精华榜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'isessence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'披漏状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'loophole', @level2type=N'COLUMN',@level2name=N'piloustate'
GO
SET IDENTITY_INSERT [dbo].[loophole] ON
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (1, 1, 2, 1001, 1, N'中国人寿主站信息泄露', 2, 10, N'中国人寿主站信息泄露中国人寿主站信息泄露中国人寿主站信息泄露中国人寿主站信息泄露中国人寿主站信息泄露', N'中国人寿主站信息泄露中国人寿主站信息泄露中国人寿主站信息泄露<img src="http://www.jqsoft.com.cn/attached/image/20151121/20151121152309_1038.jpg" alt="" />', N'<span>中国人寿主站信息泄露</span><span>中国人寿主站信息泄露</span><span>中国人寿主站信息泄露</span><img src="http://www.jqsoft.com.cn/attached/image/20151121/20151121152309_1038.jpg" alt="" /><span></span>', N'修复下配置？', N'true', N'信息泄露 重要', N'aa_bb', CAST(0x0000A55700FDCE9C AS DateTime), CAST(0x0000A55700FDCE9C AS DateTime), 1, N'', 0, N'', N'', CAST(0x0000A55E000013B0 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (2, 1, 4, 1001, 1, N'1111', 0, 2, N'<img src="/attached/image/20151121/20151121162740_1352.jpg" alt="" />', N'', N'<img src="/attached/image/20151121/20151121162757_7462.jpg" alt="" />', N'<img src="/attached/image/20151121/20151121162807_3958.jpg" alt="" />', N'false', N'', N'11111', CAST(0x0000A557010F6E54 AS DateTime), CAST(0x0000A557010F6E54 AS DateTime), 2, N'2015/11/21 19:08:32已确认', 0, N'', N'', CAST(0x0000A557010F6E54 AS DateTime), N'', N'', N'', CAST(0x0000A557013B7C01 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (3, 1, 2, 1001, 1, N'sdfs', 0, 2, N'<img src="http://www.jqsoft.com.cn/attached/image/20151121/20151121175156_7774.jpg" alt="" />', N'', N'', N'', N'true', N'', N'11111', CAST(0x0000A55701268670 AS DateTime), CAST(0x0000A55701268670 AS DateTime), 3, N'2015/11/21 18:36:17等待认领', 0, N'', N'', CAST(0x0000A55701268670 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (4, 1, 4, 1001, 2, N'啊啊啊啊啊啊啊啊啊啊啊', 2, 1, N'1111111111<img src="http://www.jqsoft.com.cn/attached/image/20151121/20151121182515_3457.jpg" alt="" />', N'1111111111111<span>1111111111</span><img src="http://www.jqsoft.com.cn/attached/image/20151121/20151121182515_3457.jpg" alt="" /><span></span>', N'12<span>1111111111</span><img src="http://www.jqsoft.com.cn/attached/image/20151121/20151121182515_3457.jpg" alt="" /><span></span>', N'12122<span>1111111111</span><img src="http://www.jqsoft.com.cn/attached/image/20151121/20151121182515_3457.jpg" alt="" /><span></span>', N'false', N'1212', N'aa_bb', CAST(0x0000A557012F9918 AS DateTime), CAST(0x0000A557012F9918 AS DateTime), 1, N'2015/11/21 18:27:24已公开', 0, N'', N'谢谢提交', CAST(0x0000A5570132457E AS DateTime), N'', N'', N'', CAST(0x0000A55701300BF0 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (5, 1, 4, 1001, 2, N'中国移动问题', 2, 10, N'小问题而已', N'<span>小问题而已</span>', N'<span>小问题而已</span>', N'<span>小问题而已</span>', N'true', N'阿萨斯', N'huluwa', CAST(0x0000A55701498A1C AS DateTime), CAST(0x0000A55701498A1C AS DateTime), 3, N'2015/11/21 20:00:49等待认领', 0, N'', N'', CAST(0x0000A55701498A1C AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (6, 1, 2, 1001, 1, N'111', 0, 1, N'', N'', N'', N'', NULL, N'', N'huluwa', CAST(0x0000A557014C9567 AS DateTime), CAST(0x0000A557014C9567 AS DateTime), 1, NULL, 0, NULL, NULL, CAST(0x0000A55E000013B0 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (7, 1, 3, 1001, 2, N'vvvvvvvvvvvvv', 2, 1, N'aaaaaaaa', N'aaaaaaaaaaaaa', N'aaaaaaaaaa', N'aaa', N'true', N'asas', N'huluwa', CAST(0x0000A557014E31E8 AS DateTime), CAST(0x0000A557014E31E8 AS DateTime), 2, N'2015/11/21 20:31:16已确认', 0, N'', N'', CAST(0x0000A557014E31E8 AS DateTime), N'', N'', N'', CAST(0x0000A55701523400 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (8, 1, 4, 1001, 2, N'fffffffffff', 0, 2, N'ffffffffff', N'f', N'f', N'f', NULL, N'ff', N'aa_bb', CAST(0x0000A55701600845 AS DateTime), CAST(0x0000A55701600845 AS DateTime), 1, NULL, 0, NULL, NULL, CAST(0x0000A55E000013B0 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (9, 1, 6, 1001, 2, N'10011 open url re', 1, 5, N'10011 open url re10011 open url re10011 open url re', N'10011 open url re10011 open url re10011 open url re', N'10011 open url re10011 open url re10011 open url re10011 open url re10011 open url re10011 open url re', N'bug fix', N'true', N'bug', N'aa_bb', CAST(0x0000A55900AA6388 AS DateTime), CAST(0x0000A55900AA6388 AS DateTime), 2, N'2015/11/23 11:06:08已确认', 1, N'</div>2015-11-23厂商已经确认，细节仅向厂商公开</div>', N'', CAST(0x0000A55900AA6388 AS DateTime), N'', N'', N'', CAST(0x0000A55900B70F80 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (10, 1, 7, 1001, 1, N'bbbbbbbb', 0, 2, N'cccccccc', N'dddddddd', N'eeeeeee', N'fffffff', N'true', N'gggggg', N'doubishi2b', CAST(0x0000A55900EBA5C8 AS DateTime), CAST(0x0000A55900EBA5C8 AS DateTime), 1, N'2015/11/23 15:15:13已公开', 0, N'</div>2015-11-23细节向发掘者公开</div>', N'', CAST(0x0000A55900FB6D12 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (11, 1, 5, 1001, 1, N'有个漏洞aaaaaaaaa', 1, 2, N'描述是bbbbbbbbb'',<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "bdMini": "2",<br />
&nbsp; &nbsp; &nbsp; &nbsp; &n', N'详细说明是cccccccc', N'证明是dddddd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;', N'修复是eeeee', N'true', N'标签是ffffff', N'doubishi2b', CAST(0x0000A55900EDC90C AS DateTime), CAST(0x0000A55900EDC90C AS DateTime), 1, N'2015/11/23 15:14:39已公开', 0, N'</div>2015-11-23细节向发掘者公开</div></div>2015-11-23细节向发掘者公开</div></div>2015-11-23细节向发掘者公开</div>', N'漏洞分数：5分<br>

最后拟定分数：2分<br>

谢谢您提交的漏洞！', CAST(0x0000A5590155BC2E AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (12, 1, 6, 1001, 1, N'aaaaaa', 0, 2, N'<p>
	<p>
		<span style="font-family:monospace;font-size:medium;line-height:normal;">''</span>
	</p>
	<table>
		<tbody>
			<tr>
				<td class="line-content">
					}
				</td>
			</tr>
			<tr>', N'', N'', N'', NULL, N'', N'doubishi2b', CAST(0x0000A55900EE7BB3 AS DateTime), CAST(0x0000A55900EE7BB3 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900EE7BB3 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (13, 1, 7, 1001, 1, N'aaaaaa', 0, 2, N'bbbbbbb''<br />
}<br />
};<br />
<br />', N'', N'', N'', NULL, N'', N'doubishi2b', CAST(0x0000A55900EEF78E AS DateTime), CAST(0x0000A55900EEF78E AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900EEF78E AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (14, 1, 6, 1001, 1, N'aaaaaaa', 0, 2, N'bbbbbbb''<br />
}<br />
};<br />
alert(1230);<br />
<p>
	c=
</p>
<p>
	{
</p>
<p>
	a:
</p>
<p>
	{
</p>
<p>
	"a"=''
</p>', N'', N'', N'', N'true', N'', N'doubishi2b', CAST(0x0000A55900EF7144 AS DateTime), CAST(0x0000A55900EF7144 AS DateTime), 1, N'2015/11/23 15:14:17已公开', 0, N'</div>2015-11-23细节向发掘者公开</div>', N'', CAST(0x0000A55900FB2970 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (15, 1, 5, 1001, 1, N'cccccccccccc', 0, 2, N'cccccccc''<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;', N'', N'', N'', N'true', N'', N'doubishi2b', CAST(0x0000A55900F2AEF4 AS DateTime), CAST(0x0000A55900F2AEF4 AS DateTime), 1, N'2015/11/23 15:13:51已公开', 0, N'</div>2015-11-23细节向发掘者公开</div>', N'', CAST(0x0000A55900FB0728 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (16, 1, 5, 1001, 1, N'bbbbbb', 0, 2, N'cccccccc''<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;', N'', N'', N'', N'true', N'', N'doubishi2b', CAST(0x0000A55900F33108 AS DateTime), CAST(0x0000A55900F33108 AS DateTime), 1, N'2015/11/23 15:00:31已公开', 1, N'</div>2015-11-23细节向发掘者公开</div>', N'', CAST(0x0000A55900F75AFC AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (17, 1, 5, 1001, 1, N'ddddd', 0, 2, N'cccccccc''<br />
}<br />
};<br />
alert(1230);<br />
z=<br />
{<br />
"a":<br />
{<br />
"bdSnsKey": ''1234<br />
<br />', N'', N'', N'', N'true', N'', N'doubishi2b', CAST(0x0000A55900F40D58 AS DateTime), CAST(0x0000A55900F40D58 AS DateTime), 1, N'2015/11/23 15:13:29已公开', 0, N'</div>2015-11-23细节向发掘者公开</div>', N'', CAST(0x0000A55900FAED80 AS DateTime), N'', N'', N'', CAST(0x0000A55B01853A30 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (18, 1, 5, 1001, 1, N'eeee', 0, 1, N'cccccccc''}};alert(1230);z={"a":{"bdSnsKey": ''1234', N'', N'', N'', NULL, N'', N'doubishi2b', CAST(0x0000A55900F47163 AS DateTime), CAST(0x0000A55900F47163 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F47163 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (19, 1, 10, 1001, 1, N'aaaaaaaaaaaaaaa', 1, 2, N'&lt;script&gt;alert(1)&lt;/script&gt;&lt;''"', N'&lt;script&gt;alert(1)&lt;/script&gt;&lt;''"', N'&lt;script&gt;alert(1)&lt;/script&gt;&lt;''"', N'&lt;script&gt;alert(1)&lt;/script&gt;&lt;''"', NULL, N'<script>alert(1)</script><''"', N'huluwa', CAST(0x0000A55900F83313 AS DateTime), CAST(0x0000A55900F83313 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F83311 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (20, 1, 5, 1001, 1, N'1111', 0, 2, N'<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123150620_9096.jpg" alt="" />', N'', N'', N'', NULL, N'', N'22222', CAST(0x0000A55900F8F8EC AS DateTime), CAST(0x0000A55900F8F8EC AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F8F8EC AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (21, 1, 5, 1001, 1, N'aaaa', 1, 1, N'111''"', N'111''"', N'111''"', N'111''"', NULL, N'111''"', N'aa_bb', CAST(0x0000A55900F90270 AS DateTime), CAST(0x0000A55900F90270 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F90270 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (22, 1, 5, 1001, 1, N'1111', 0, 2, N'<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123150620_9096.jpg" alt="" />', N'', N'', N'', N'false', N'', N'22222', CAST(0x0000A55900F91668 AS DateTime), CAST(0x0000A55900F91668 AS DateTime), 1, N'2015/11/23 15:09:09已公开', 0, N'</div>2015-11-23细节向发掘者公开</div>', N'', CAST(0x0000A55900F9B827 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (23, 1, 5, 1001, 1, N'aaaa', 1, 1, N'111''"', N'111''"', N'111''"', N'111''"', NULL, N'111''"', N'huluwa', CAST(0x0000A55900F93F99 AS DateTime), CAST(0x0000A55900F93F99 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F93F99 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (24, 1, 5, 1001, 1, N'aaaa', 1, 1, N'111''"', N'111''"', N'111''"', N'111''"', NULL, N'111''"', N'huluwa', CAST(0x0000A55900F93FB0 AS DateTime), CAST(0x0000A55900F93FB0 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F93FB0 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (25, 1, 5, 1001, 1, N'aaaa', 1, 1, N'111''"', N'111''"', N'111''"', N'111''"', NULL, N'111''"', N'huluwa', CAST(0x0000A55900F93FC8 AS DateTime), CAST(0x0000A55900F93FC8 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F93FC7 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (26, 1, 5, 1001, 1, N'aaaa', 1, 1, N'111''"', N'111''"', N'111''"', N'111''"', NULL, N'111''"', N'huluwa', CAST(0x0000A55900F93FC9 AS DateTime), CAST(0x0000A55900F93FC9 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F93FC9 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (27, 1, 5, 1001, 1, N'aaaa', 1, 1, N'111''"', N'111''"', N'111''"', N'111''"', NULL, N'111''"', N'huluwa', CAST(0x0000A55900F94060 AS DateTime), CAST(0x0000A55900F94060 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900F93FC7 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (28, 1, 7, 1001, 2, N'爱上一个人还搞尼玛的站', 1, 4, N'爱上一个人很难 ，还搞尼玛的站爱上一个人很难 ，还搞尼玛的站<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123152525_2250.jpg" alt="" />', N'爱上一个人很难 ，还搞尼玛的站', N'爱上一个人很难 ，还搞尼玛的站', N'爱上一个人很难 ，还搞尼玛的站', NULL, N'爱上一个人很难 ，还搞尼玛的站', N'bb_dd', CAST(0x0000A55900FE421C AS DateTime), CAST(0x0000A55900FE421C AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55900FE421B AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (29, 1, 6, 1001, 1, N'asad', 0, 1, N'<span style="font-family:monospace;font-size:medium;line-height:normal;">cccccccc''}};alert(12301);z={"a":{"bdSnsKey": ''1234</span>', N'', N'', N'', NULL, N'', N'doubishi2b', CAST(0x0000A55901006E11 AS DateTime), CAST(0x0000A55901006E11 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55901006E0F AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (30, 1, 0, 1001, 1, N'111111111111', 0, 1, N'&lt;p style%3D"XSS:expression%28alert%28/1230/%29%29"&gt;', N'&lt;p style%3D"XSS:expression%28alert%28/1230/%29%29"&gt;', N'&lt;p style%3D"XSS:expression%28alert%28/1230/%29%29"&gt;', N'&lt;p style%3D"XSS:expression%28alert%28/1230/%29%29"&gt;', NULL, N'', N'doubishi2b', CAST(0x0000A559010544DA AS DateTime), CAST(0x0000A559010544DA AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A559010544D9 AS DateTime), NULL, NULL, N'<p style%3D"XSS:expression%28alert%28/1230/%29%29">', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (31, 1, 6, 1001, 1, N'vvvvvvvvv', 0, 1, N'asas阿萨斯', N'javascript:confirm(1)<br />
javascript:alert(1)<br />
javascript:prompt(1)<br />
&lt;script&gt;prompt(-[])&lt;/script&gt;<br />
&lt;button onclick="alert(9)"&gt;xsstest&lt;/button&gt;<br />
&lt;i', N'javascript:confirm(1)<br />
javascript:alert(1)<br />
javascript:prompt(1)<br />
&lt;script&gt;prompt(-[])&lt;/script&gt;<br />
&lt;button onclick="alert(9)"&gt;xsstest&lt;/button&gt;<br />
&lt;i', N'javascript:confirm(1)<br />
javascript:alert(1)<br />
javascript:prompt(1)<br />
&lt;script&gt;prompt(-[])&lt;/script&gt;<br />
&lt;button onclick="alert(9)"&gt;xsstest&lt;/button&gt;<br />
&lt;i', N'false', N'去''"}', N'bb_dd', CAST(0x0000A5590105AAB8 AS DateTime), CAST(0x0000A5590105AAB8 AS DateTime), 1, N'2015/11/23 15:53:41已公开', 0, N'</div>2015-11-23细节向发掘者公开</div>', N'', CAST(0x0000A5590105F4F0 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (32, 1, 0, 1001, 1, N'testtestetestetes', 0, 1, N'&lt;p style="XSS:expression(alert(1230))"&gt;&lt;p+style="XSS:expression(alert(1230))"&gt;', N'&lt;p style="XSS:expression(alert(1230))"&gt;&lt;p+style="XSS:expression(alert(1230))"&gt;', N'&lt;p style="XSS:expression(alert(1230))"&gt;&lt;p+style="XSS:expression(alert(1230))"&gt;', N'&lt;p style="XSS:expression(alert(1230))"&gt;&lt;p+style="XSS:expression(alert(1230))"&gt;', NULL, N'', N'doubishi2b', CAST(0x0000A5590105B924 AS DateTime), CAST(0x0000A5590105B924 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A5590105B923 AS DateTime), NULL, NULL, N'<p style="XSS:expression(alert(1230))"><p+style="XSS:expression(alert(1230))">', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (33, 1, 0, 1001, 1, N'11111', 0, 1, N'&lt;iframe src="http://www.baidu.com"&gt;', N'&lt;iframe src="http://www.baidu.com"&gt;', N'&lt;iframe src="http://www.baidu.com"&gt;', N'&lt;iframe src="http://www.baidu.com"&gt;', NULL, N'', N'doubishi2b', CAST(0x0000A55901066159 AS DateTime), CAST(0x0000A55901066159 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55901066159 AS DateTime), NULL, NULL, N'<iframe src="http://www.baidu.com">', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (34, 1, 5, 1001, 1, N'中国赢我们开始了一天的工作', 1, 10, N'我们开始了一天的工作', N'<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123164724_4014.jpg" width:500px;height:500px;"="" alt=""><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始', N'<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作', N'<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作<span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作</span><span>我们开始了一天的工作', N'false', N'111', N'bb_dd', CAST(0x0000A5590114FBD0 AS DateTime), CAST(0x0000A5590114FBD0 AS DateTime), 0, N'', 0, N'', N'', CAST(0x0000A5590114FBD0 AS DateTime), N'', N'', N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (35, 1, 7, 1001, 1, N'哈哈哈哈哈哈 ', 2, 6, N'<p>
	<p>
		<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123202400_6657.png" width:500px;height:500px;"="" alt="">jjj
	</p>
	<p>
		asas
	</p>
	<p>
		as
	</p>
	<p>
		<br />
	</p>
	<p>
		<br />
	</p>
	<p>
		as
	</p>
	<p>
		a
	</p>
	<p>
		s
	</p>
	<p>
		a
	</p>
	<p>
		s
	</p>
	<p>
		as
	</p>
	<p>
		a
	</p>
	<p>
		s
	</p>
	<p>
		a
	</p>
	<p>
		s
	</p>
	<p>
		a
	</p>
	<p>
		s
	</p>
	<p>
		a
	</p>
	<p>
		s
	</p>
	<p>
		as
	</p>
	<p>
		a
	</p>
	<p>
		s
	</p>
	<p>
		''"
	</p>
	<p>
		<br />
	</p>
	<p>
		as''"&lt;ifrmae&gt;&lt;script&gt;&lt;&gt;?:"{}|_)(*&amp;^%$#@!~`1234567890-=[]\;'',./zxcvbnm
	</p>
	<p>
		<br />
	</p>
	<p>
		<br />
	</p>
	<p>
		asasas
	</p>
	<p>
		&lt;img src=1&gt;''"&gt;<br class="Apple-interchange-newline" />
<span>&lt;script&gt;prompt(1)&lt;/script&gt;</span>
	</p>
</p>
<p>
	<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123202146_0120.png" width:500px;height:500px;"="" alt="">
</p>', N'<p>
	<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123202400_6657.png" width:500px;height:500px;"="" alt="">jjj
</p>
<p>
	asas
</p>
<p>
	as
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	''"
</p>
<p>
	<br />
</p>
<p>
	as''"&lt;ifrmae&gt;&lt;script&gt;&lt;&gt;?:"{}|_)(*&amp;^%$#@!~`1234567890-=[]\;'',./zxcvbnm
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	asasas
</p>
<p>
	&lt;img src=1&gt;''"&gt;
</p>
<p>
	<br />
</p>
<p>
	&lt;script&gt;prompt(1)&lt;/script&gt;
</p>', N'<p>
	<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123202400_6657.png" width:500px;height:500px;"="" alt="">jjj
</p>
<p>
	asas
</p>
<p>
	as
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	''"
</p>
<p>
	<br />
</p>
<p>
	as''"&lt;ifrmae&gt;&lt;script&gt;&lt;&gt;?:"{}|_)(*&amp;^%$#@!~`1234567890-=[]\;'',./zxcvbnm
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	asasas
</p>
<p>
	&lt;img src=1&gt;''"&gt;
</p>', N'<p>
	<img src="http://www.jqsoft.com.cn/attached/image/20151123/20151123202400_6657.png" width:500px;height:500px;"="" alt="">jjj
</p>
<p>
	asas
</p>
<p>
	as
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	as
</p>
<p>
	a
</p>
<p>
	s
</p>
<p>
	''"
</p>
<p>
	<br />
</p>
<p>
	as''"&lt;ifrmae&gt;&lt;script&gt;&lt;&gt;?:"{}|_)(*&amp;^%$#@!~`1234567890-=[]\;'',./zxcvbnm
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	asasas
</p>
<p>
	&lt;img src=1&gt;''"&gt;
</p>', NULL, N' <script>prompt(1)</script>', N'huluwa', CAST(0x0000A55901511E57 AS DateTime), CAST(0x0000A55901511E57 AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55901511E57 AS DateTime), NULL, NULL, N'', NULL)
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (36, 1, 6, 1001, 1, N'中国人民银行出现大规模的钓鱼腥味', 1, 3, N'<p>333</p>', N'<p>333</p>', N'<p>33</p>', N'<p>333</p>', N'true', N'33', N'aa_bb', CAST(0x0000A55A00A32B7C AS DateTime), CAST(0x0000A55A00A32B7C AS DateTime), 1, N'2015/11/24 9:55:25已公开', 0, N'2015/11/25 23:26:34厂商已经确认，细节仅向厂商公开<br/>2015-11-25细节向发掘者公开<br/>', N'', CAST(0x0000A55B0182537F AS DateTime), N'', N'', N'', CAST(0x0000A55B0182537F AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (37, 1, 6, 1001, 2, N'aaaaaa', 2, 2, N'<p>&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;aaaaaa&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;</p>', N'<p>&amp;lt;p&amp;gt;&amp;amp;lt;img src=&amp;amp;#39;http://www.jqsoft.com.cn/attached/image/20151125/20151125100741_2402.jpg&amp;amp;#39;&amp;amp;gt;&amp;lt;/p&amp;gt;</p>', N'<p>&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;&amp;amp;amp;lt;span&amp;amp;amp;gt;aaaaaa&amp;amp;amp;lt;/span&amp;amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;</p>', N'<p>&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;&amp;amp;amp;lt;span&amp;amp;amp;gt;aaaaaa&amp;amp;amp;lt;/span&amp;amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;</p>', N'true', N'11', N'aa_bb', CAST(0x0000A55B00A799DC AS DateTime), CAST(0x0000A55B00A799DC AS DateTime), 2, N'2015/11/25 22:18:27已确认/n2015/11/25 10:19:07已公开/n', 0, N'2015-11-25厂商已经确认，细节仅向厂商公开<br/>', N'<p>&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;345&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;</p>', CAST(0x0000A55B01848226 AS DateTime), N'<p>&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;123&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;</p>', N'<p>&amp;lt;p&amp;gt;&amp;amp;lt;p&amp;amp;gt;234&amp;amp;lt;/p&amp;amp;gt;&amp;lt;/p&amp;gt;</p>', N'', CAST(0x0000A55B017491BC AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (38, 1, 5, 1001, 1, N'<p>a</p>', 1, 6, N'<p>aaa<img style="WIDTH: 500px; HEIGHT: 500px" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126115218_6731.jpg"/></p>', N'<p>as</p>', N'<p>as</p>', N'<p>as</p>', N'true', N'11biaojian', N'aa_bb', CAST(0x0000A55C00C426D8 AS DateTime), CAST(0x0000A55C00C426D8 AS DateTime), 1, N'2015/11/26 11:58:59已公开', 1, N'<p>2015/11/26 12:55:58厂商已经确认，细节仅向厂商公开<br/>2015-11-26细节向发掘者公开<br/>1111</p>', N'', CAST(0x0000A55C00D52028 AS DateTime), N'', N'', N'', CAST(0x0000A55C00D52028 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (39, 1, 6, 1001, 1, N'asas', 1, 2, N'<p>aaa<img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126125719_3812.jpg"/></p>', N'<p><span>aaa</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126125719_3812.jpg"/><span></span></p>', N'<p><span>aaa</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126125719_3812.jpg"/><span></span></p>', N'<p><span>aaa</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126125719_3812.jpg"/><span></span></p>', N'true', N'11', N'aa_bb', CAST(0x0000A55C00D58D24 AS DateTime), CAST(0x0000A55C00D58D24 AS DateTime), 1, N'2015/11/26 12:58:34已公开/n/n', 1, N'2015/11/26 12:57:31厂商已经确认，细节仅向厂商公开<br/>2015-11-26细节向发掘者公开<br/>', N'<p>很好</p><p>谢谢</p><p>ok</p><p>了</p><p>&nbsp;</p>', CAST(0x0000A55C00DBCBB0 AS DateTime), N'', N'', N'', CAST(0x0000A55C00D58D24 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (40, 1, 7, 1001, 2, N'<p>testtest</p>', 1, 8, N'<p>qqq<img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126132056_9782.jpg"/></p>', N'<p><span>qqq</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126132056_9782.jpg"/></p>', N'<p><span>qqq</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126132056_9782.jpg"/></p>', N'<p><span>qqq</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151126/20151126132056_9782.jpg"/></p>', N'true', N'qqq', N'aa_bb', CAST(0x0000A55C00DC09B0 AS DateTime), CAST(0x0000A55C00DC09B0 AS DateTime), 1, N'2015/11/26 13:21:33已公开', 1, N'<p>2015-11-26 01:21:08厂商已经确认，细节仅向厂商公开</p><p>2015-11-27 11:44:59细节向发掘者公开</p>', N'<p>谢谢您的提交，我们会很快修复的！</p>', CAST(0x0000A55D00C1A1DB AS DateTime), N'', N'', N'', CAST(0x0000A55C00DC09B0 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (41, 1, 5, 1001, 1, N'<p>积分需要增加啊</p>', 1, 4, N'<p>as<img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127114639_7972.jpg"/></p>', N'<p>as<span>as</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127114639_7972.jpg"/><span></span></p>', N'<p><span>as</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127114639_7972.jpg"/><span></span></p>', N'<p><span>as</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127114639_7972.jpg"/><span></span></p>', N'true', N'qwqwas​', N'aa_bb', CAST(0x0000A55D00C285A8 AS DateTime), CAST(0x0000A55D00C285A8 AS DateTime), 1, N'2015/11/27 11:48:54已公开/n/n', 1, N'<p>2015-11-27 11:48:14厂商已经确认，细节仅向厂商公开</p><p><br/></p>', N'', CAST(0x0000A55D00C2C298 AS DateTime), N'', N'', N'', CAST(0x0000A55D00C285A8 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (42, 1, 5, 1001, 1, N'<p>bbbbbbbb</p>', 1, 7, N'<p>bn</p>', N'<p>bn</p>', N'<p>bn</p>', N'<p>bn</p>', N'true', N'bn', N'bb_dd', CAST(0x0000A55D00C3945C AS DateTime), CAST(0x0000A55D00C3945C AS DateTime), 1, N'2015/11/27 11:53:50已公开
2015/11/27 11:52:52等待认领
', 1, N'', N'', CAST(0x0000A55D00C57984 AS DateTime), N'', N'', N'', CAST(0x0000A55D00C3945C AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (43, 1, 8, 1001, 1, N'<p>福建药监局</p>', 1, 5, N'<p>测试中我们得到的信息。</p>', N'<p><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127224441_3194.jpg"/></p>', N'<p><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://ttp://p4.music.126.net/f9GSwe7PE_NjSaLjxgK-NQ==/5755943371488839.jpg?param=200y200"/></p>', N'<p>修复代码</p>', N'false', N'代码', N'aa_bb', CAST(0x0000A55D017713EC AS DateTime), CAST(0x0000A55D017713EC AS DateTime), 1, N'', 1, N'', N'', CAST(0x0000A55D017713EC AS DateTime), N'', N'', N'', CAST(0x0000A55D017713EC AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (44, 1, 6, 1001, 1, N'<p>中国电信</p>', 2, 10, N'<p>中国电信各省运营站点出现大量漏洞<img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127230849_8383.png"/></p>', N'<p><span>中国电信各省运营站点出现大量漏洞</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127230849_8383.png"/><span></span></p>', N'<p><span>中国电信各省运营站点出现大量漏洞</span><img style="WIDTH: 100px; HEIGHT: 100px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127230849_8383.png"/><span></span></p>', N'<p><span>中国电信各省运营站点出现大量漏洞</span><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127230849_8383.png"/><span></span></p>', N'false', N'hi', N'aa_bb', CAST(0x0000A55D017DA338 AS DateTime), CAST(0x0000A55D017DA338 AS DateTime), 1, N'', 0, N'<p>2015年11月27日 厂商等待认领</p><p>2015年11月27日 厂商确认认领</p><p>2015年11月27日 厂商确认认领，向大众公开漏洞</p><p>&nbsp;</p>', N'', CAST(0x0000A55D017DA338 AS DateTime), N'', N'', N'', CAST(0x0000A55D017DA338 AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (45, 1, 0, 1001, 1, N'地对地导弹地对地导弹', 1, 3, N'333<img src="http://www.jqsoft.com.cn/attached/image/20151127/20151127231929_8199.png" style="width:500px;height:500px;" alt="" onload="alert(1)"/>', N'333<span>333</span><img src="http://www.jqsoft.com.cn/attached/image/20151127/20151127231929_8199.png" alt="" style="width:500px;height:500px;" onload="alert(1)"/>', N'<span>333</span><img src="http://www.jqsoft.com.cn/attached/image/20151127/20151127231929_8199.png" alt="" style="width:500px;height:500px;" />', N'<span>333</span><img src="http://www.jqsoft.com.cn/attached/image/20151127/20151127231929_8199.png" alt="" style="width:500px;height:500px;" onload="alert(1)"/>', NULL, N'前期', N'aa_bb', CAST(0x0000A55D0180B29F AS DateTime), CAST(0x0000A55D0180B29F AS DateTime), 0, NULL, 0, NULL, NULL, CAST(0x0000A55D0180B29F AS DateTime), NULL, NULL, N'地对地导弹', CAST(0x0000A55D0180B29F AS DateTime))
INSERT [dbo].[loophole] ([id], [problemtype], [companyid], [btype], [stype], [title], [ranktype], [rank], [description], [detialdesc], [prove], [repair], [testcode], [tag], [userid], [addtime], [modeltime], [state], [staterank], [isessence], [piloustate], [companyrepy], [publicdate], [loopholehash], [copyright], [custcomname], [confirmdate]) VALUES (46, 1, 6, 1001, 1, N'<p>cc</p>', 0, 2, N'<p><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127232534_7668.png"/></p>', N'<p><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127232534_7668.png"/><span></span></p>', N'<p><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127232534_7668.png"/><span></span></p>', N'<p><img style="WIDTH: 500px; HEIGHT: 500px" alt="" src="http://www.jqsoft.com.cn/attached/image/20151127/20151127232534_7668.png"/><span></span></p>', N'false', N'11', N'aa_bb', CAST(0x0000A55D018220D4 AS DateTime), CAST(0x0000A55D018220D4 AS DateTime), 1, N'', 1, N'', N'', CAST(0x0000A55D018220D4 AS DateTime), N'', N'', N'', CAST(0x0000A55D018220D4 AS DateTime))
SET IDENTITY_INSERT [dbo].[loophole] OFF
/****** Object:  StoredProcedure [dbo].[LD_Admin_login]    Script Date: 11/29/2015 00:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LD_Admin_login]
    (
      @userid VARCHAR(30) ,
      @pd VARCHAR(20) ,
      @ip VARCHAR(20) ,
      @netname VARCHAR(20) OUTPUT ,
      @utype VARCHAR(20) OUTPUT ,
      @deptName varchar(20) OUTPUT,
      @returncode TINYINT OUTPUT
    )
AS 
    DECLARE @getpass VARCHAR(20)
    SET @getpass = ''
    SELECT  @getpass = [password] ,
            @netname = username ,
            @utype = rolename,
            @deptName=[Department]
    FROM    adminuser
    WHERE   userid = @userid
    IF @getpass = NULL
        OR @getpass = '' 
        SET @returncode = 0 
    ELSE 
        IF @getpass != @pd 
            SET @returncode = 1
        ELSE 
            BEGIN---成功
                SET @returncode = 2
                UPDATE  adminuser
                SET     ip = @ip ,
                        LastLoginTime = GETDATE() ,
                        logincount = logincount + 1
                WHERE   userid = @userid
            END


    RETURN
GO
/****** Object:  StoredProcedure [dbo].[f_userlogin]    Script Date: 11/29/2015 00:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--bao 改于2013.01.16
--张海 改于 2014.6.11 主要增加VIP会员IP验证，手机验证码通过验证
CREATE proc [dbo].[f_userlogin]( 
  @userid  varchar(30),
  @userpassword varchar(20),
  @ip varchar(20),
  @netname varchar(20) output,
  @utype tinyint output,
  @returncode tinyint output,
  @rank int output,
  @money int output,
  @salt varchar(2) output
)
as 
--用户登陆 
declare @errors int;
 begin
	declare @getpass varchar(20);
	declare @RegiestIP varchar(20);
	
	set @getpass=''
	select @getpass=[password], @salt=salt,@netname=netname, @utype=utype,@RegiestIP=ip,@rank=[rank],@money=[money]
	 from member where userid=@userid and utype=1  
	
	if @getpass=null or @getpass=''
		set @returncode = 0 
	else if @getpass!=@userpassword
		set @returncode = 1
	else  
		begin  --成功
					begin tran--开启事物
					set @returncode = 2
					--更新最后登录时间和登录次数
					update member set lastlogintime = getdate(),ip=@ip
						where userid = @userid
					set @errors=@errors+@@error
					
					if @errors <> 0
						begin
							rollback tran
							--登录中出错
							set @returncode = 4
						end
					else
						begin
							commit tran
						end 
		end 
end 
 return @returncode
GO
/****** Object:  Default [DF_adminuser_modtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[adminuser] ADD  CONSTRAINT [DF_adminuser_modtime]  DEFAULT (getdate()) FOR [modtime]
GO
/****** Object:  Default [DF_adminuser_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[adminuser] ADD  CONSTRAINT [DF_adminuser_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_adminuser_lastlogintime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[adminuser] ADD  CONSTRAINT [DF_adminuser_lastlogintime]  DEFAULT (getdate()) FOR [lastlogintime]
GO
/****** Object:  Default [DF_adminuser_logincount]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[adminuser] ADD  CONSTRAINT [DF_adminuser_logincount]  DEFAULT ((0)) FOR [logincount]
GO
/****** Object:  Default [DF_announcement_auther]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[announcement] ADD  CONSTRAINT [DF_announcement_auther]  DEFAULT ('漏洞平台') FOR [auther]
GO
/****** Object:  Default [DF_announcement_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[announcement] ADD  CONSTRAINT [DF_announcement_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_announcement_modtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[announcement] ADD  CONSTRAINT [DF_announcement_modtime]  DEFAULT (getdate()) FOR [modtime]
GO
/****** Object:  Default [DF_bigetype_problemtype]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[bigetype] ADD  CONSTRAINT [DF_bigetype_problemtype]  DEFAULT ((0)) FOR [problemtype]
GO
/****** Object:  Default [DF_BrandJoinPic_AddTime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[BrandJoinPic] ADD  CONSTRAINT [DF_BrandJoinPic_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_BrandJoinPic_ModTime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[BrandJoinPic] ADD  CONSTRAINT [DF_BrandJoinPic_ModTime]  DEFAULT (getdate()) FOR [ModTime]
GO
/****** Object:  Default [DF_BrandJoinPic_type]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[BrandJoinPic] ADD  CONSTRAINT [DF_BrandJoinPic_type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_comment_lanmu]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_lanmu]  DEFAULT ((0)) FOR [lanmu]
GO
/****** Object:  Default [DF_comment_isshow]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_isshow]  DEFAULT ((0)) FOR [isshow]
GO
/****** Object:  Default [DF_company_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[company] ADD  CONSTRAINT [DF_company_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_company_modtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[company] ADD  CONSTRAINT [DF_company_modtime]  DEFAULT (getdate()) FOR [modtime]
GO
/****** Object:  Default [DF_concern_loophole_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[concern_loophole] ADD  CONSTRAINT [DF_concern_loophole_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_loophole_companyid]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_companyid]  DEFAULT ((-1)) FOR [companyid]
GO
/****** Object:  Default [DF_loophole_testcode]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_testcode]  DEFAULT (N'false') FOR [testcode]
GO
/****** Object:  Default [DF_loophole_userid]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_userid]  DEFAULT ('luren') FOR [userid]
GO
/****** Object:  Default [DF_loophole_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_loophole_modeltime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_modeltime]  DEFAULT (getdate()) FOR [modeltime]
GO
/****** Object:  Default [DF_loophole_state]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_state]  DEFAULT ((0)) FOR [state]
GO
/****** Object:  Default [DF_loophole_isessence]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_isessence]  DEFAULT ((0)) FOR [isessence]
GO
/****** Object:  Default [DF_loophole_publicdate]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[loophole] ADD  CONSTRAINT [DF_loophole_publicdate]  DEFAULT (getdate()) FOR [publicdate]
GO
/****** Object:  Default [DF_mark_user_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[mark_user] ADD  CONSTRAINT [DF_mark_user_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_members_utype]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member] ADD  CONSTRAINT [DF_members_utype]  DEFAULT ((0)) FOR [utype]
GO
/****** Object:  Default [DF_members_rank]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member] ADD  CONSTRAINT [DF_members_rank]  DEFAULT ((0)) FOR [rank]
GO
/****** Object:  Default [DF_members_money]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member] ADD  CONSTRAINT [DF_members_money]  DEFAULT ((0)) FOR [money]
GO
/****** Object:  Default [DF_member_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member] ADD  CONSTRAINT [DF_member_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_member_lastlogintime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member] ADD  CONSTRAINT [DF_member_lastlogintime]  DEFAULT (getdate()) FOR [lastlogintime]
GO
/****** Object:  Default [DF_member_ranknumber]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member] ADD  CONSTRAINT [DF_member_ranknumber]  DEFAULT ((1)) FOR [ranknumber]
GO
/****** Object:  Default [DF_member_rank_ranknumber]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member_rank] ADD  CONSTRAINT [DF_member_rank_ranknumber]  DEFAULT ((0)) FOR [ranknumber]
GO
/****** Object:  Default [DF_member_rank_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member_rank] ADD  CONSTRAINT [DF_member_rank_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_member_rank_xinnumber]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[member_rank] ADD  CONSTRAINT [DF_member_rank_xinnumber]  DEFAULT ((0)) FOR [xinnumber]
GO
/****** Object:  Default [DF_my_favorite_addtime]    Script Date: 11/29/2015 00:58:42 ******/
ALTER TABLE [dbo].[my_favorite] ADD  CONSTRAINT [DF_my_favorite_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
