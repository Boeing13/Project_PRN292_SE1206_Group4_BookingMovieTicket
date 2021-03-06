USE [BookingTicket]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[fullName] [nvarchar](max) NOT NULL,
	[tel] [nvarchar](50) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (1, N'Hilary', N'12345', N'Hilary Langford', N'0987876787', N'Bavaria')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (2, N'Katarina', N'Katarina', N'Spring Stone', N'0918282810', N'Washington')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (3, N'Russo', N'Russo', N'Joe Russo', N'01219292828', N'Texas')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (4, N'Caroline', N'carl12345', N'Caroline Anderson', N'01922222828', N'Florida')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (5, N'Saoise', N'qwerty', N'Saoise Ronan', N'0980000010', N'Scottland')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (6, N'Scarlett', N'123456', N'Scarlett Johansson', N'0880888808', N'Manhattan')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (7, N'Bradley', N'buddy', N'Bradley Cooper', N'01234567863', N'Pennsylvania')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (8, N'Benedict', N'cumberbitch', N'Benedict Cumberbatch', N'0911111112', N'Michigan')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (9, N'zoey', N'12345', N'Zoey Colson', N'(097) 172-1771', N'Kansas')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (10, N'May', N'12345', N'Melinda May', N'(012) 343-2134', N'Tennessee')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (11, N'sim', N'11111', N'Simmon', N'(123) 456-4323', N'Manchester')
INSERT [dbo].[User] ([userID], [username], [password], [fullName], [tel], [address]) VALUES (13, N'qwerty', N'12345', N'qwerty', N'(123) 112-2211', N'qwerty')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Type]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[typeID] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Type] ([typeID], [name], [price]) VALUES (1, N'2D', 45000)
INSERT [dbo].[Type] ([typeID], [name], [price]) VALUES (2, N'3D', 55000)
INSERT [dbo].[Type] ([typeID], [name], [price]) VALUES (3, N'4D', 80000)
/****** Object:  Table [dbo].[Hour]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hour](
	[hourID] [int] NOT NULL,
	[time] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Hour] PRIMARY KEY CLUSTERED 
(
	[hourID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (1, N'10h')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (2, N'12h50')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (3, N'13h30')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (4, N'15h30')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (5, N'17h50')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (6, N'18h')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (7, N'19h30')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (8, N'20h')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (9, N'21h')
INSERT [dbo].[Hour] ([hourID], [time]) VALUES (10, N'21h30')
/****** Object:  Table [dbo].[Genres]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[genreID] [int] IDENTITY(1,1) NOT NULL,
	[genreName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[genreID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Genres] ON
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (1, N'Action')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (2, N'Adventure')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (3, N'Comedy')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (4, N'Crime & Gangsters')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (5, N'Drama')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (6, N'Epic')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (7, N'Horror')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (8, N'Musical')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (9, N'Science Fiction')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (10, N'War')
INSERT [dbo].[Genres] ([genreID], [genreName]) VALUES (11, N'Romantic')
SET IDENTITY_INSERT [dbo].[Genres] OFF
/****** Object:  Table [dbo].[Room]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[roomID] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[roomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Room] ([roomID], [name]) VALUES (1, N'Room 1')
INSERT [dbo].[Room] ([roomID], [name]) VALUES (2, N'Room 2')
INSERT [dbo].[Room] ([roomID], [name]) VALUES (3, N'Room 3')
INSERT [dbo].[Room] ([roomID], [name]) VALUES (4, N'Room 4')
/****** Object:  Table [dbo].[Movie]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[movieID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[state] [bit] NOT NULL,
	[genreID] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[movieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Movie] ON
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (1, N'Venom', 1, 1, N'Journalist Eddie Brock is trying to take down Carlton Drake, the notorious and brilliant founder of the Life Foundation. While investigating one of Drake''s experiments, Eddie''s body merges with the alien Venom -- leaving him with superhuman strength and power. Twisted, dark and fueled by rage, Venom tries to control the new and dangerous abilities that Eddie finds so intoxicating')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (2, N'Harry Potter', 1, 6, N'Harry Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry.')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (3, N'The Avengers', 1, 1, N'When Thor''s evil brother, Loki, gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth.')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (4, N'Three billboards outside Ebbing Missouri', 1, 4, N'Mildred Hayes, a hard-nosed mother is seeking justice for her murdered daughter. With no arrests after seven months, Mildred puts up three roadside signs to goad Ebbing police chief into action. But the law - and especially Sam Rockwell''s hot-headed deputy - don''t take kindly to the provocation. And the townsfolk are on their side. But Mildred doesn''t care about ruffling a few feathers.')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (5, N'Ocean 8', 1, 3, N'Five years, eight months, 12 days and counting -- that''s how long Debbie Ocean has been devising the biggest heist of her life. She knows what it''s going to take -- a team of the best people in the field, starting with her partner-in-crime Lou Miller. Together, they recruit a crew of specialists, including jeweler Amita, street con Constance, suburban mom Tammy, hacker Nine Ball, and fashion designer Rose. Their target -- a necklace that''s worth more than $150 million.')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (6, N'The impossible', 1, 2, N'In December 2004, close-knit family Maria, Henry and their three sons begin their winter vacation in Thailand. But the day after Christmas, the idyllic holiday turns into an incomprehensible nightmare when a terrifying roar rises from the depths of the sea, followed by a wall of black water that devours everything in its path. Though Maria and her family face their darkest hour, unexpected displays of kindness and courage ameliorate their terror.')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (7, N'The Danish girl', 1, 5, N'The novel is a fictionalized account of the life of Lili Elbe, one of the first people to undergo sex reassignment surgery. The Danish Girl, as Ebershoff stated, does not try to tell a true story. ... Einar Wegener is happily married to his wife, Gerda Wegener')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (8, N'Jungle book', 1, 2, N'Raised by a family of wolves since birth, Mowgli must leave the only home he''s ever known when the fearsome tiger Shere Khan unleashes his mighty roar. Guided by a no-nonsense panther and a free-spirited bear, the young boy meets an array of jungle animals, including a slithery python and a smooth-talking ape.')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (11, N'My movie', 1, 5, N'alo 12345')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (12, N'The Circle', 1, 5, N'This movie need to check duplication')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (13, N'the circle', 0, 1, N'This movie need to check duplication')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (14, N'Crazy Rick Asisan', 1, 11, N'Rachel Chu is happy to accompany her longtime boyfriend, Nick, to his best friend''s wedding in Singapore. She''s also surprised to learn that Nick''s family is extremely wealthy and he''s considered one of the country''s most eligible bachelors. Thrust into the spotlight, Rachel must now contend with jealous socialites, quirky relatives and something far, far worse')
INSERT [dbo].[Movie] ([movieID], [title], [state], [genreID], [description]) VALUES (15, N'Ocean8', 0, 3, N'Five years, eight months, 12 days and counting -- that''s how long Debbie Ocean has been devising the biggest heist of her life. She knows what it''s going to take -- a team of the best people in the field, starting with her partner-in-crime Lou Miller. Together, they recruit a crew of specialists, including jeweler Amita, street con Constance, suburban mom Tammy, hacker Nine Ball, and fashion designer Rose. Their target -- a necklace that''s worth more than $150 million.')
SET IDENTITY_INSERT [dbo].[Movie] OFF
/****** Object:  Table [dbo].[Schedule]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[roomID] [int] NOT NULL,
	[hourID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[movieID] [int] NOT NULL,
	[leftSeat] [int] NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[roomID] ASC,
	[hourID] ASC,
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Schedule] ([roomID], [hourID], [date], [movieID], [leftSeat]) VALUES (1, 1, CAST(0xF43E0B00 AS Date), 1, 88)
INSERT [dbo].[Schedule] ([roomID], [hourID], [date], [movieID], [leftSeat]) VALUES (1, 1, CAST(0xF63E0B00 AS Date), 2, 489)
INSERT [dbo].[Schedule] ([roomID], [hourID], [date], [movieID], [leftSeat]) VALUES (1, 2, CAST(0xF83E0B00 AS Date), 14, 100)
INSERT [dbo].[Schedule] ([roomID], [hourID], [date], [movieID], [leftSeat]) VALUES (3, 1, CAST(0x033F0B00 AS Date), 1, 123)
INSERT [dbo].[Schedule] ([roomID], [hourID], [date], [movieID], [leftSeat]) VALUES (4, 3, CAST(0xF63E0B00 AS Date), 6, 500)
INSERT [dbo].[Schedule] ([roomID], [hourID], [date], [movieID], [leftSeat]) VALUES (4, 8, CAST(0xF53E0B00 AS Date), 7, 500)
INSERT [dbo].[Schedule] ([roomID], [hourID], [date], [movieID], [leftSeat]) VALUES (4, 8, CAST(0xF73E0B00 AS Date), 8, 500)
/****** Object:  Table [dbo].[BookingHistory]    Script Date: 11/19/2018 13:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingHistory](
	[bookingID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[movieID] [int] NOT NULL,
	[typeID] [int] NOT NULL,
	[hourID] [int] NOT NULL,
	[showingDate] [date] NOT NULL,
	[bookingDate] [date] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_BookingHistory] PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingHistory] ON
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (1, 9, 1, 1, 1, CAST(0xE73E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (2, 9, 1, 1, 2, CAST(0xE73E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (3, 9, 1, 1, 2, CAST(0xE73E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (4, 9, 1, 1, 2, CAST(0xE73E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (5, 9, 1, 3, 1, CAST(0xE73E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (6, 9, 7, 3, 8, CAST(0xE73E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (7, 9, 7, 1, 7, CAST(0xE73E0B00 AS Date), CAST(0xE73E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (8, 9, 1, 1, 1, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (9, 9, 2, 1, 2, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (10, 9, 3, 1, 5, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (11, 9, 1, 1, 1, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (12, 9, 1, 1, 1, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (13, 9, 8, 1, 8, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (14, 9, 8, 1, 8, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (15, 9, 8, 1, 8, CAST(0xDB3E0B00 AS Date), CAST(0xE73E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (16, 9, 4, 1, 4, CAST(0xDB3E0B00 AS Date), CAST(0xEB3E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (17, 9, 4, 1, 4, CAST(0xDB3E0B00 AS Date), CAST(0xEC3E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (18, 9, 4, 1, 4, CAST(0xDB3E0B00 AS Date), CAST(0xEC3E0B00 AS Date), 1)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (19, 9, 6, 1, 6, CAST(0xDB3E0B00 AS Date), CAST(0xEC3E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (20, 10, 1, 2, 1, CAST(0xF13E0B00 AS Date), CAST(0xF13E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (21, 10, 1, 2, 1, CAST(0xF13E0B00 AS Date), CAST(0xF13E0B00 AS Date), 2)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (22, 9, 1, 1, 1, CAST(0xF53E0B00 AS Date), CAST(0xF53E0B00 AS Date), 100)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (23, 9, 1, 2, 1, CAST(0xF53E0B00 AS Date), CAST(0xF53E0B00 AS Date), 12)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (24, 9, 2, 1, 3, CAST(0xF53E0B00 AS Date), CAST(0xF53E0B00 AS Date), 10)
INSERT [dbo].[BookingHistory] ([bookingID], [userID], [movieID], [typeID], [hourID], [showingDate], [bookingDate], [quantity]) VALUES (25, 9, 2, 1, 3, CAST(0xF53E0B00 AS Date), CAST(0xF53E0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[BookingHistory] OFF
/****** Object:  Default [DF_BookingHistory_bookingDate]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[BookingHistory] ADD  CONSTRAINT [DF_BookingHistory_bookingDate]  DEFAULT (getdate()) FOR [bookingDate]
GO
/****** Object:  Default [DF_Schedule_date]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[Schedule] ADD  CONSTRAINT [DF_Schedule_date]  DEFAULT (($0.0000)) FOR [movieID]
GO
/****** Object:  ForeignKey [FK_BookingHistory_Hour1]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[BookingHistory]  WITH CHECK ADD  CONSTRAINT [FK_BookingHistory_Hour1] FOREIGN KEY([hourID])
REFERENCES [dbo].[Hour] ([hourID])
GO
ALTER TABLE [dbo].[BookingHistory] CHECK CONSTRAINT [FK_BookingHistory_Hour1]
GO
/****** Object:  ForeignKey [FK_BookingHistory_Movie1]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[BookingHistory]  WITH CHECK ADD  CONSTRAINT [FK_BookingHistory_Movie1] FOREIGN KEY([movieID])
REFERENCES [dbo].[Movie] ([movieID])
GO
ALTER TABLE [dbo].[BookingHistory] CHECK CONSTRAINT [FK_BookingHistory_Movie1]
GO
/****** Object:  ForeignKey [FK_BookingHistory_Type1]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[BookingHistory]  WITH CHECK ADD  CONSTRAINT [FK_BookingHistory_Type1] FOREIGN KEY([typeID])
REFERENCES [dbo].[Type] ([typeID])
GO
ALTER TABLE [dbo].[BookingHistory] CHECK CONSTRAINT [FK_BookingHistory_Type1]
GO
/****** Object:  ForeignKey [FK_BookingHistory_User1]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[BookingHistory]  WITH CHECK ADD  CONSTRAINT [FK_BookingHistory_User1] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[BookingHistory] CHECK CONSTRAINT [FK_BookingHistory_User1]
GO
/****** Object:  ForeignKey [FK_Movie_Genres]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Genres] FOREIGN KEY([genreID])
REFERENCES [dbo].[Genres] ([genreID])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Genres]
GO
/****** Object:  ForeignKey [FK_Schedule_Hour]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Hour] FOREIGN KEY([hourID])
REFERENCES [dbo].[Hour] ([hourID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Hour]
GO
/****** Object:  ForeignKey [FK_Schedule_Movie]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Movie] FOREIGN KEY([movieID])
REFERENCES [dbo].[Movie] ([movieID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Movie]
GO
/****** Object:  ForeignKey [FK_Schedule_Room]    Script Date: 11/19/2018 13:08:16 ******/
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Room] FOREIGN KEY([roomID])
REFERENCES [dbo].[Room] ([roomID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Room]
GO
