#1
CREATE DATABASE JS09_MessagesBy_Alexis;

#2
USE JS09_MessagesBy_Alexis;

#3
CREATE TABLE Users (User_Id  INT PRIMARY KEY AUTO_INCREMENT, Username TEXT(50), Password CHAR(41));

#4
CREATE TABLE Messages (Message_Id INT PRIMARY KEY AUTO_INCREMENT, User_Id INT, FOREIGN KEY (User_Id) REFERENCES Users(User_Id), Content TEXT, Created_At TIMESTAMP DEFAULT NOW());

#5
INSERT INTO Users (User_Id, Username, Password) VALUES (1, "tapeface", PASSWORD("tapeface"));

#6
INSERT INTO Users (Username, Password) VALUES ("butterface", PASSWORD("butterface"));

#7
INSERT INTO Messages (Message_Id, User_Id, Content) VALUES (1, 1, "How is it going my friend?");

#8
INSERT INTO Messages (User_Id, Content) VALUES (1, "Are u there?");

#9
INSERT INTO Messages (User_Id, Content) VALUES (2, "Are u there?");

#10
INSERT INTO Messages (User_Id, Content) VALUES (2, "I’m here! Really cool. How about you man? Tell me something.");