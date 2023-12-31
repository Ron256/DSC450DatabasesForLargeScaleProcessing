--DROP TABLE TWEETS;

CREATE TABLE UserTweets 
(
    Id VARCHAR2(100),
    name VARCHAR2(100),
    screen_name VARCHAR2(300),
    description VARCHAR2(500),
    friends_count NUMBER,
    CONSTRAINT UserTweets_PK Primary Key(Id)
);


  CREATE TABLE TWEETS 
(	CREATED_AT DATE, 
	ID VARCHAR2(100), 
	TEXT VARCHAR2(300), 
	SOURCE VARCHAR2(100), 
	IN_REPLY_TO_USER_ID VARCHAR2(100), 
	IN_REPLY_TO_SCREEN_NAME VARCHAR2(100), 
	IN_REPLY_TO_STATUS_ID VARCHAR2(100), 
	RETWEET_COUNT NUMBER, 
	CONTRIBUTORS VARCHAR2(100 BYTE),
    User_Id VARCHAR2(100),
    CONSTRAINT TWEETS_FK FOREIGN KEY(User_Id) REFERENCES UserTweets(Id)
);