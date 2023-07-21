DROP TABLE IF EXISTS Reactions;
DROP TABLE IF EXISTS Comments;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS Persons;
DROP TABLE IF EXISTS Menus;

CREATE TABLE Menus (
	id INT PRIMARY KEY auto_increment,
 	restaurant VARCHAR(255)
);

CREATE TABLE Items (
  id INT PRIMARY KEY auto_increment,
  menuId INT,
  name VARCHAR(255),
  FOREIGN KEY (menuId) REFERENCES Menus (id)
);

CREATE TABLE Persons (
  id INT PRIMARY KEY auto_increment,
  name VARCHAR(255)
 );

CREATE TABLE Comments (
  id INT PRIMARY KEY auto_increment,
  personId INT,
  itemId INT,
  content VARCHAR(255),
  FOREIGN KEY (personId) REFERENCES Persons (id),
  FOREIGN KEY (itemId) REFERENCES Items (id)
);

CREATE TABLE Reactions (
  id INT PRIMARY KEY auto_increment,
  personId INT,
  itemId INT,
  commentId INT,
  emote INT, -- 1:dislike,2:like,3:love
  type INT,
  FOREIGN KEY (personId) REFERENCES Persons (id),
  FOREIGN KEY (itemId) REFERENCES Items (id),
  FOREIGN KEY (commentId) REFERENCES Comments (id)
);

INSERT INTO Menus(restaurant) VALUES
	("McDonalds"),
    ("Burger King"),
    ("Little Ceasar's"),
    ("Arby's"),
    ("Subway"),
    ("Pizza Hut"),
    ("Chik Fil-A"),
    ("Taco Bell"),
    ("Wendy's"),
    ("Carl's Jr.");

INSERT INTO Items(menuId,name) VALUES
	(1,"Big Mac"),
    (1,"Quarter Pounder"),
    (2,"Whopper"),
    (3,"Pepperoni Pizza"),
    (3,"Breadsticks"),
    (4,"Smokehouse"),
    (4,"Gyro"),
    (5,"Meatball Sub"),
    (6,"Pepperoni Pizza"),
    (7,"Chicken Sandwich"),
    (7,"Cobb Salad"),
    (8,"Beefy Taco Melt"),
    (8,"Doritos Locos Taco"),
    (9,"Baconator"),
    (10,"Big Carl");

INSERT INTO Persons(name) VALUES
	("Marcus"),
    ("Parker"),
    ("Kellie"),
    ("Annie"),
    ("Maggie"),
    ("Ben"),
    ("Hailey"),
    ("Courtney"),
    ("Jeff"),
    ("Sharlene");

INSERT INTO Comments(personId,itemId,content) VALUES
	(1,1,"Severely overrated"),
    (1,8,"Can eat it every week"),
    (1,12,"Addicted"),
    (2,6,"To die for"),
    (2,7,"The only middle eastern food i'll eat"),
    (3,8,"My favorite!"),
    (4,8,"I'll always love Marcus for showing me this!!"),
    (6,13,"I can't stop eating these!!!"),
    (7,9,"Got me through Keto"),
    (10,1,"Ewwwwwwwwwww");

INSERT INTO Reactions(personId,itemId,commentId,emote) VALUES
	(4,NULL,1,2),
    (2,NULL,1,2),
    (1,1,NULL,1),
    (4,1,NULL,1),
    (2,NULL,10,3),
    (1,7,NULL,3),
    (5,NULL,4,2),
    (9,9,NULL,2),
    (9,NULL,5,2),
    (9,NULL,8,2);