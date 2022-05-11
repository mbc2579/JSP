create table bbs(
	bbsID int,
    bbsTitle varchar(50),
    userID varchar(20),
    bbsDate datetime,
    bbsContent varchar(5000),
    bbsAvailable int
    );
    
create table user(
	userID varchar(20),
    userPassword varchar(20),
    userName varchar(20),
    userGender varchar(20),
    userEmail varchar(50)
    );