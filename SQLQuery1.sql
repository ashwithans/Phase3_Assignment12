CREATE DATABASE ContentDB;

USE ContentDB;

CREATE TABLE Articles (
    ArticleId INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100),
    Content NVARCHAR(MAX),
    PublishDate DATETIME
)

INSERT INTO Articles (Title, Content, PublishDate)
VALUES ('Sample Title 1', 'Sample Content 1', '2023-12-15 09:00:00'),
       ('Sample Title 2', 'Sample Content 2', '2023-12-16 10:00:00'),
       ('Sample Title 3', 'Sample Content 3', '2023-12-17 11:00:00');

	   SELECT * FROM Articles