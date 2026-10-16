USE Digiato

SELECT *
FROM Contents
INNER JOIN SubCategories
on SubCategories.Id=Contents.CategoryId
WHERE Contents.CategoryId IN(
SELECT SubCategories.Id
WHERE SubCategories.CategoryId=1);

SELECT *
FROM Contents
INNER JOIN Users
on Contents.PublisherId=Users.Id
WHERE PublisherId IN(
SELECT Users.Id
FROM Users
WHERE Users.Username='x'
);

SELECT *
FROM Contents
INNER JOIN Users
on Contents.PublisherId=Users.Id
WHERE PublisherId IN(
SELECT Users.Id
FROM Users
WHERE Users.Username='y'
) AND Contents.CategoryId IN(
SElECT Id
FROM SubCategories
WHERE SubCategories.Title=N'موبایل'
);