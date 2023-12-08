-- Tạo bảng Người dùng (User)
create database social_network
go
use social_network
go
CREATE TABLE Users(
    UserID INT PRIMARY KEY identity(1,1),
    UserName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    AvatarURL VARCHAR(255),
	Admin Int  DEFAULT 0
);
INSERT INTO Users (UserName, Email, Password, AvatarURL)
VALUES 
  ('JohnDoe', 'john@example.com', 'hashed_password', 'avatar_url.jpg'),
  ('JaneDoe', 'jane@example.com', 'hashed_password', NULL),
  ('BobSmith', 'bob@example.com', 'hashed_password', 'bob_avatar.jpg');


-- Tạo bảng Bài viết (Post)
CREATE TABLE Post (
    PostID INT PRIMARY KEY identity(1,1),
    Content nvarchar(1000),
    PostTime DATETime,
    ImageVideoURL VARCHAR(255),
    Likes INT DEFAULT 0,
    Comments INT DEFAULT 0,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tạo bảng Bình luận (Comment)
CREATE TABLE Comment (
    CommentID INT PRIMARY KEY identity(1,1),
    Content nvarchar(255),
    CommentTime DATETime,
    UserID INT,
    PostID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PostID) REFERENCES Post(PostID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Tạo bảng Thích (Like)
CREATE TABLE Likes (
    LikeID INT PRIMARY KEY identity(1,1),
    UserID INT,
    PostID INT,
    CommentID INT,
    LikeTime DATETIME,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ,
    FOREIGN KEY (PostID) REFERENCES Post(PostID)  ,
    FOREIGN KEY (CommentID) REFERENCES Comment(CommentID)  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FriendRequest (
    RequestID INT PRIMARY KEY IDENTITY(1,1),
    SenderID INT,
    ReceiverID INT,
    IsAccepted int DEFAULT 0, -- 0: Chưa được chấp nhận, 1: Đã chấp nhận
    FOREIGN KEY (SenderID) REFERENCES Users(UserID) ,
    FOREIGN KEY (ReceiverID) REFERENCES Users(UserID)
);

-- Tạo bảng Kết bạn (Friendship)
CREATE TABLE Friendship (
    FriendshipID INT PRIMARY KEY identity(1,1),
    User1ID INT,
    User2ID INT,
    FOREIGN KEY (User1ID) REFERENCES Users(UserID) ,
    FOREIGN KEY (User2ID) REFERENCES Users(UserID) 
);







-- Tạo bảng Tin nhắn riêng (Private Message)
CREATE TABLE PrivateMessage (
    MessageID INT PRIMARY KEY IDENTITY(1,1),
    SenderUserID INT,
    ReceiverUserID INT,
	Timestamp DATETIME,
    MessageContent nvarchar(255),
    FOREIGN KEY (SenderUserID) REFERENCES Users(UserID) ,
    FOREIGN KEY (ReceiverUserID) REFERENCES Users(UserID)  
);
-- Thêm một dòng dữ liệu mới
INSERT INTO PrivateMessage (SenderUserID, ReceiverUserID, MessageContent)
VALUES (1, 2, N'a xin chao b');

-- Thêm một dòng dữ liệu khác
INSERT INTO PrivateMessage (SenderUserID, ReceiverUserID, MessageContent)
VALUES (2, 1, N'b xin chao a');
INSERT INTO PrivateMessage (SenderUserID, ReceiverUserID, MessageContent)
VALUES (1, 2, N'a hoi tham b');

-- Thêm một dòng dữ liệu khác
INSERT INTO PrivateMessage (SenderUserID, ReceiverUserID, MessageContent)
VALUES (2, 1, N'b van khoe');
INSERT INTO PrivateMessage (SenderUserID, ReceiverUserID, MessageContent)
VALUES (3, 1, N'c van khoe');
INSERT INTO PrivateMessage (SenderUserID, ReceiverUserID, MessageContent)
VALUES (3, 1, N'a van khoe');
INSERT INTO PrivateMessage (SenderUserID, ReceiverUserID, MessageContent)
VALUES (2, 1, N'a muon di choi vs b k');
--SELECT * 
--FROM PrivateMessage
--WHERE (SenderUserID = 1 AND ReceiverUserID = 2) 
--   OR (SenderUserID = 2 AND ReceiverUserID = 1)
--ORDER BY MessageID;
