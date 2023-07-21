USE bettermenu;

/*
-- Query #1: display comment, item, and restaurants of all Marcus's comments
SELECT Comments.content, Items.name, Menus.restaurant 
FROM Comments
JOIN Persons ON Comments.personId = Persons.id
JOIN Items ON Comments.itemId = Items.id
JOIN Menus ON Items.menuId = Menus.id
WHERE Persons.name = "Marcus";
*/

/*
-- Query #2: display all items, restaurant names, and reaction/comment counts
SELECT Items.name, Menus.restaurant, COUNT(Reactions.id) AS reaction_count, COUNT(Comments.id) AS comment_count
FROM Items
JOIN Menus ON Items.menuId = Menus.id
LEFT JOIN Reactions ON Reactions.itemId = Items.id
LEFT JOIN Comments ON Comments.itemId = Items.id
GROUP BY  Items.id;
*/

/*
-- Query #3: display emote, item, and restaurants of all Annie's reactions
SELECT Reactions.emote, Items.name, Menus.restaurant
FROM Reactions
JOIN Persons ON Reactions.personId = Persons.id
JOIN Items ON Reactions.itemId = Items.id
JOIN Menus ON Items.menuId = Menus.id
WHERE Persons.name = "Annie";
*/

/*
-- Query #4: display all restaurants and their item names
SELECT Menus.restaurant, Items.name
FROM Menus
JOIN Items ON Menus.id = Items.menuId;
*/

/*
-- Query #5: display comments and reaction emotes for comments made by Sharlene
SELECT Comments.content, Reactions.emote
FROM Persons
JOIN Comments ON Persons.id = Comments.personId
JOIN Reactions ON Comments.id = Reactions.commentId
WHERE Persons.name = "Sharlene";
*/