DROP DATABASE IF EXISTS stylishDB;

CREATE DATABASE stylishDB;

USE stylishDB;

CREATE TABLE products (
  id int NOT NULL,
  title varchar(100) NOT NULL,
  brand varchar(20) NOT NULL,
  imgUrl varchar(100) NOT NULL,
  price int,
  style varchar(30),
  type varchar(10),
  gender varchar (1),
  starCount int,
  numReviews int,
  PRIMARY KEY (id)
);

CREATE TABLE colors (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product_color (
  product_id int,
  color_id int,
  FOREIGN KEY (product_id)
    REFERENCES products(id),
  FOREIGN KEY (color_id)
    REFERENCES colors(id)
);


INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (1, "Pique Polo", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/piquepolo.jpg"
, 175, "casual", "shirt", "m", 5, 10);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (2, "Ugly Shirt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 150, "casual", "shirt", "m", 3, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (3, "Cool Pants", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
, 210, "casual", "pants", "m", 5, 30);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (4, "Swanky Pants", "PRADA", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/greenpants.jpg"
, 300, "casual", "pants", "m", 2, 14);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (5, "Slick Shoes", "adidas", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownboot.jpg"
, 100, "casual", "shoes", "m", 3, 5);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (6, "Clown Shoes", "clown school", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 790, "casual", "shoes", "m", 5, 800);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (7, "Analog Watch", "Watch Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/bluewatch.jpg"
, 95, "casual", "watch", "m", 1, 10);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (8, "Drawn-On Watch", "Rolex", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"
, 100, "casual", "watch", "m", 2, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (9, "Boring Belt", "Belt Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 450, "casual", "belt", "m", 3, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (10, "Interesting Belt", "Belt Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/fancybelt.jpg"
, 570, "casual", "belt", "m", 2, 13);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (11, "Slick Shirt", "supreme", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 900, "business_casual", "shirt", "m", 3, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (12, "Tuxedo Shirt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 140, "business_casual", "shirt", "m", 2, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (13, "Metallica Shirt", "Retro Shirt Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/piquepolo.jpg"
, 160, "business_casual", "shirt", "m", 5, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (14, "Plain Ol' Jeans", "Levi's", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"
, 175, "business_casual", "pants", "m", 1, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (15, "Chaps", "Pants Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
, 200, "business_casual", "pants", "m", 3, 2);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (16, "Maritime Watch", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownwatch.jpg"
, 350, "business_casual", "watch", "m", 5, 3);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (17, "Quartz Watch", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/ceramicwatch.jpg"
, 680, "business_casual", "watch", "m", 2, 5);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (18, "Karate Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 195, "business_casual", "belt", "m", 1, 100);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (19, "Cowboy Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/fancybelt.jpg"
, 140, "business_casual", "belt", "m", 2, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (20, "USB cord (belt)", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"
, 90, "business_casual", "belt", "m", 3, 2);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (21, "Stained T-shirt", "PRADA", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 130, "unemployed_chic", "shirt", "m", 4, 10);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (22, "Ripped T-shirt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 160, "unemployed_chic", "shirt", "m", 5, 122);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (23, "Gucci Sweatpants", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
, 180, "unemployed_chic", "pants", "m", 1, 5);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (24, "LV B-Ball Shorts", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"
, 190, "unemployed_chic", "pants", "m", 0, 0);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (25, "CK Boxer Briefs", "Calvin Klein", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/greenpants.jpg"
, 200, "unemployed_chic", "pants", "m", 4, 30);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (26, "Chronograph Watch", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/ceramicwatch.jpg"
, 210, "unemployed_chic", "watch", "m", 1, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (27, "Broken Watch", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/bluewatch.jpg"
, 190, "unemployed_chic", "watch", "m", 3, 13);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (28, "Kimono Belt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 180, "unemployed_chic", "belt", "m", 5, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (29, "Small Woven Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"
, 280, "unemployed_chic", "belt", "m", 3, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (30, "Large Buckle Belt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/fancybelt.jpg"
, 190, "unemployed_chic", "shoes", "m", 1, 6);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (31, "V-Neck T-shirt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 200, "hipster_formal", "shirt", "m", 3, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (32, "Shirtless Vest", "Calvin Klein", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 300, "hipster_formal", "shirt", "m", 1, 20);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (33, "Frilly Long Shirt", "PRADA", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/piquepolo.jpg"
, 400, "hipster_formal", "shirt", "m", 2, 33);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (34, "Skinny Jeans", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"
, 500, "hipster_formal", "pants", "m", 3, 35);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (35, "Cargo Shorts", "Cargo Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
, 300, "hipster_formal", "pants", "m", 1, 51);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (36, "Analog Watch", "Rolex", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"
, 200, "hipster_formal", "watch", "m", 4, 22);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (37, "Watch Tattoo", "Rolex", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/bluewatch.jpg"
, 310, "hipster_formal", "watch", "m", 3, 60);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (38, "All-Stars", "Chuck Taylor", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 400, "hipster_formal", "shoes", "m", 2, 73);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (39, "Recycled Cardboard Belt", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"
, 410, "hipster_formal", "belt", "m", 1, 74);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (40, "Bullfighter Belt", "Cool Belt Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 180, "hipster_formal", "belt", "m", 1, 90);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (41, "Long-Sleeve Stretchy Shirt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 190, "athleisure", "shirt", "m", 0, 0);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (42, "Stretchy Shirt", "UnderArmor", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 230, "athleisure", "shirt", "m", 1, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (43, "Fred Pants", "lululemon", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
, 250, "athleisure", "pants", "m", 3, 19);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (44, "Stretchy Pants", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/greenpants.jpg"
, 180, "athleisure", "pants", "m", 4, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (45, "Honda Civic Seat-Belt", "Honda", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 65, "athleisure", "belt", "m", 1, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (46, "Recycled Jansport Backpack Strap", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"
, 190, "athleisure", "belt", "m", 3, 13);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (47, "Flip-Flops", "PRADA", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownboot.jpg"
, 200, "athleisure", "shoes", "m", 1, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (48, "LV Loafers", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 210, "athleisure", "shoes", "m", 3, 20);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (49, "Diving Watch", "Rolex", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/ceramicwatch.jpg"
, 180, "athleisure", "watch", "m", 5, 13);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (50, "Digital Smart-Watch", "Rolex", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"
, 175, "athleisure", "watch", "m", 3, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (51, "Frilly Shirt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/piquepolo.jpg"
, 200, "casual", "shirt", "f", 2, 17);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (52, "Clown Blouse", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 100, "casual", "shirt", "f", 1, 29);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (53, "Stretchy Pants", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"
, 150, "casual", "pants", "f", 4, 30);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (54, "LV Jeggings", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
, 180, "casual", "pants", "f", 1, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (55, "GUCCI Flip-Flops", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownboot.jpg"
, 190, "casual", "shoes", "f", 3, 2);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (56, "Pikachu Loafers", "GameFreak", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 290, "casual", "shoes", "f", 3, 3);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (57, "Shiny Watch", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/ceramicwatch.jpg"
, 190, "casual", "watch", "f", 1, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (58, "Dull Watch", "Rolex", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/bluewatch.jpg"
, 200, "casual", "watch", "f", 0, 0);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (59, "Spaghetti String Belt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 170, "casual", "belt", "f", 1, 16);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (60, "Vintage Boyfriend Belt", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/fancybelt.jpg"
, 190, "casual", "belt", "f", 2, 65);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (61, "Vintage Apron", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 120, "hipster_formal", "shirt", "f", 5, 19);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (62, "Mike Tyson Sweater", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/piquepolo.jpg"
, 130, "hipster_formal", "shirt", "f", 5, 3);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (63, "JNCO Jeans", "JNCO", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"
, 140, "hipster_formal", "pants", "f", 1, 540);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (64, "Wide Belt", "Wide Belt Co.", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"
, 115, "hipster_formal", "belt", "f", 3, 91);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (65, "Just For Looks Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 170, "hipster_formal", "belt", "f", 4, 33);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (66, "Gucci Clogs", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/manboot.jpg"
, 190, "hipster_formal", "pants", "f", 2, 39);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (67, "All-Stars", "Chuck Taylor", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownboot.jpg"
, 150, "hipster_formal", "shoes", "f", 3, 20);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (68, "Drawn-On Vans", "Vans", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 155, "hipster_formal", "shoes", "f", 1, 19);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (69, "Wind-up Watch", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"
, 350, "hipster_formal", "watch", "f", 2, 25);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (70, "Copper Watch", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownwatch.jpg"
, 360, "hipster_formal", "watch", "f", 3, 33);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (71, "Boyfriend's Shirt", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 375, "unemployed_chic", "shirt", "f", 1, 45);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (72, "Boyfriend's Jersey", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 190, "unemployed_chic", "shirt", "f", 3, 33);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (73, "Gucci Sweatpants", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"
, 280, "unemployed_chic", "pants", "f", 5, 67);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (74, "Soccer Shorts", "PRADA", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/greenpants.jpg"
, 135, "unemployed_chic", "pants", "f", 3, 91);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (75, "Crocs", "Crocs", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/manboot.jpg"
, 120, "unemployed_chic", "shoes", "f", 4, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (76, "Comfy Slippers", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownboot.jpg"
, 225, "unemployed_chic", "shoes", "f", 3, 13);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (77, "Boyfriend's Flip-Flops", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 130, "unemployed_chic", "shoes", "f", 3, 16);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (78, "Databank", "CASIO", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"
, 175, "unemployed_chic", "watch", "f", 3, 55);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (79, "Apple Watch", "Apple", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/bluewatch.jpg"
, 130, "unemployed_chic", "watch", "f", 2, 92);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (80, "Boyfriend's Karate Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"
, 145, "unemployed_chic", "belt", "f", 1, 33);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (81, "Neon Shirt", "lululemon", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 190, "athleisure", "shirt", "f", 2, 22);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (82, "Diamond Studded Sports Bra", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
, 200, "athleisure", "shirt", "f", 3, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (83, "Stretchy Pants", "lululemon", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"
, 250, "athleisure", "pants", "f", 1, 18);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (84, "Cheap Stretchy Pants", "lululime", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/greenpants.jpg"
, 190, "athleisure", "pants", "f", 3, 19);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (85, "Z02", "BBB", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/manboot.jpg"
, 495, "athleisure", "shoes", "f", 2, 15);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (86, "Vibrams", "Vibrams", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 130, "athleisure", "shoes", "f", 1, 7);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (87, "SweatProof Watch", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/ceramicwatch.jpg"
, 85, "athleisure", "watch", "f", 2, 9);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (88, "iPod Shuffle", "Apple", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/bluewatch.jpg"
, 190, "athleisure", "watch", "f", 3, 33);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (89, "iPod", "Apple", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"
, 200, "athleisure", "watch", "f", 1, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (90, "Gym Bag Strap", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 120, "athleisure", "belt", "f", 5, 56);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (91, "Casual Blouse", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"
, 150, "business_casual", "shirt", "f", 3, 77);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (92, "Orange Moo-Moo", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/piquepolo.jpg"
, 250, "business_casual", "shirt", "f", 2, 92);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (93, "Long Skirt", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/greenpants.jpg"
, 415, "business_casual", "pants", "f", 1, 13);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (94, "Long Pants", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
, 995, "business_casual", "pants", "f", 0, 0);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (95, "Fancy Shoes", "Louis Vuitton", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownboot.jpg"
, 215, "business_casual", "shoes", "f", 2, 1);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (96, "Fancier Shoes", "GUCCI", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
, 225, "business_casual", "shoes", "f", 3, 3);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (97, "Diamond Watch", "Rolex", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownwatch.jpg"
, 945, "business_casual", "watch", "f", 4, 6);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (98, "Recycled Sea-Glass Watch", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"
, 290, "business_casual", "watch", "f", 1, 12);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (99, "Boring Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"
, 235, "business_casual", "belt", "f", 3, 150);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (100, "Shiny Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/fancybelt.jpg"
, 280, "business_casual", "belt", "f", 2, 99);
INSERT INTO products (id, title, brand, imgUrl, price, style, type, gender, starCount, numReviews) VALUES (101, "Lame Belt", "BURBERRY", "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
, 175, "business_casual", "belt", "f", 1, 12);

INSERT INTO colors (id, name) VALUES (1, "black");
INSERT INTO colors (id, name) VALUES (2, "white");
INSERT INTO colors (id, name) VALUES (3, "green");
INSERT INTO colors (id, name) VALUES (4, "brown");
INSERT INTO colors (id, name) VALUES (5, "blue");

INSERT INTO product_color (product_id, color_id) VALUES (1, 1);
INSERT INTO product_color (product_id, color_id) VALUES (1, 2);
INSERT INTO product_color (product_id, color_id) VALUES (1, 3);
INSERT INTO product_color (product_id, color_id) VALUES (2, 4);
INSERT INTO product_color (product_id, color_id) VALUES (2, 5);
INSERT INTO product_color (product_id, color_id) VALUES (3, 1);
INSERT INTO product_color (product_id, color_id) VALUES (3, 2);
INSERT INTO product_color (product_id, color_id) VALUES (3, 3);
INSERT INTO product_color (product_id, color_id) VALUES (3, 4);
INSERT INTO product_color (product_id, color_id) VALUES (4, 5);
INSERT INTO product_color (product_id, color_id) VALUES (5, 1);
INSERT INTO product_color (product_id, color_id) VALUES (6, 2);
INSERT INTO product_color (product_id, color_id) VALUES (7, 3);
INSERT INTO product_color (product_id, color_id) VALUES (8, 4);
INSERT INTO product_color (product_id, color_id) VALUES (9, 5);
INSERT INTO product_color (product_id, color_id) VALUES (9, 1);
INSERT INTO product_color (product_id, color_id) VALUES (10, 2);
INSERT INTO product_color (product_id, color_id) VALUES (11, 3);
INSERT INTO product_color (product_id, color_id) VALUES (11, 4);
INSERT INTO product_color (product_id, color_id) VALUES (12, 5);
INSERT INTO product_color (product_id, color_id) VALUES (13, 1);
INSERT INTO product_color (product_id, color_id) VALUES (14, 2);
INSERT INTO product_color (product_id, color_id) VALUES (15, 3);
INSERT INTO product_color (product_id, color_id) VALUES (16, 4);
INSERT INTO product_color (product_id, color_id) VALUES (17, 5);
INSERT INTO product_color (product_id, color_id) VALUES (17, 1);
INSERT INTO product_color (product_id, color_id) VALUES (18, 2);
INSERT INTO product_color (product_id, color_id) VALUES (19, 3);
INSERT INTO product_color (product_id, color_id) VALUES (20, 4);
INSERT INTO product_color (product_id, color_id) VALUES (21, 5);
INSERT INTO product_color (product_id, color_id) VALUES (22, 1);
INSERT INTO product_color (product_id, color_id) VALUES (23, 2);
INSERT INTO product_color (product_id, color_id) VALUES (24, 3);
INSERT INTO product_color (product_id, color_id) VALUES (24, 4);
INSERT INTO product_color (product_id, color_id) VALUES (25, 5);
INSERT INTO product_color (product_id, color_id) VALUES (25, 1);
INSERT INTO product_color (product_id, color_id) VALUES (26, 2);
INSERT INTO product_color (product_id, color_id) VALUES (26, 3);
INSERT INTO product_color (product_id, color_id) VALUES (27, 4);
INSERT INTO product_color (product_id, color_id) VALUES (28, 5);
INSERT INTO product_color (product_id, color_id) VALUES (28, 1);
INSERT INTO product_color (product_id, color_id) VALUES (29, 2);
INSERT INTO product_color (product_id, color_id) VALUES (30, 3);
INSERT INTO product_color (product_id, color_id) VALUES (31, 4);
INSERT INTO product_color (product_id, color_id) VALUES (31, 5);
INSERT INTO product_color (product_id, color_id) VALUES (32, 1);
INSERT INTO product_color (product_id, color_id) VALUES (33, 2);
INSERT INTO product_color (product_id, color_id) VALUES (34, 3);
INSERT INTO product_color (product_id, color_id) VALUES (34, 4);
INSERT INTO product_color (product_id, color_id) VALUES (34, 5);
INSERT INTO product_color (product_id, color_id) VALUES (35, 1);
INSERT INTO product_color (product_id, color_id) VALUES (35, 2);
INSERT INTO product_color (product_id, color_id) VALUES (35, 3);
INSERT INTO product_color (product_id, color_id) VALUES (36, 4);
INSERT INTO product_color (product_id, color_id) VALUES (37, 5);
INSERT INTO product_color (product_id, color_id) VALUES (38, 1);
INSERT INTO product_color (product_id, color_id) VALUES (38, 2);
INSERT INTO product_color (product_id, color_id) VALUES (39, 3);
INSERT INTO product_color (product_id, color_id) VALUES (39, 4);
INSERT INTO product_color (product_id, color_id) VALUES (40, 5);
INSERT INTO product_color (product_id, color_id) VALUES (41, 1);
INSERT INTO product_color (product_id, color_id) VALUES (42, 2);
INSERT INTO product_color (product_id, color_id) VALUES (42, 3);
INSERT INTO product_color (product_id, color_id) VALUES (43, 4);
INSERT INTO product_color (product_id, color_id) VALUES (44, 5);
INSERT INTO product_color (product_id, color_id) VALUES (44, 1);
INSERT INTO product_color (product_id, color_id) VALUES (45, 2);
INSERT INTO product_color (product_id, color_id) VALUES (45, 3);
INSERT INTO product_color (product_id, color_id) VALUES (46, 4);
INSERT INTO product_color (product_id, color_id) VALUES (46, 5);
INSERT INTO product_color (product_id, color_id) VALUES (46, 1);
INSERT INTO product_color (product_id, color_id) VALUES (47, 2);
INSERT INTO product_color (product_id, color_id) VALUES (48, 3);
INSERT INTO product_color (product_id, color_id) VALUES (48, 4);
INSERT INTO product_color (product_id, color_id) VALUES (48, 5);
INSERT INTO product_color (product_id, color_id) VALUES (49, 1);
INSERT INTO product_color (product_id, color_id) VALUES (49, 2);
INSERT INTO product_color (product_id, color_id) VALUES (49, 3);
INSERT INTO product_color (product_id, color_id) VALUES (49, 4);
INSERT INTO product_color (product_id, color_id) VALUES (50, 5);
INSERT INTO product_color (product_id, color_id) VALUES (50, 1);
INSERT INTO product_color (product_id, color_id) VALUES (50, 2);
INSERT INTO product_color (product_id, color_id) VALUES (51, 3);
INSERT INTO product_color (product_id, color_id) VALUES (51, 4);
INSERT INTO product_color (product_id, color_id) VALUES (51, 5);
INSERT INTO product_color (product_id, color_id) VALUES (52, 1);
INSERT INTO product_color (product_id, color_id) VALUES (52, 2);
INSERT INTO product_color (product_id, color_id) VALUES (52, 3);
INSERT INTO product_color (product_id, color_id) VALUES (53, 4);
INSERT INTO product_color (product_id, color_id) VALUES (53, 5);
INSERT INTO product_color (product_id, color_id) VALUES (54, 1);
INSERT INTO product_color (product_id, color_id) VALUES (55, 2);
INSERT INTO product_color (product_id, color_id) VALUES (56, 3);
INSERT INTO product_color (product_id, color_id) VALUES (57, 4);
INSERT INTO product_color (product_id, color_id) VALUES (58, 5);
INSERT INTO product_color (product_id, color_id) VALUES (58, 1);
INSERT INTO product_color (product_id, color_id) VALUES (59, 2);
INSERT INTO product_color (product_id, color_id) VALUES (60, 3);
INSERT INTO product_color (product_id, color_id) VALUES (61, 4);
INSERT INTO product_color (product_id, color_id) VALUES (62, 5);
INSERT INTO product_color (product_id, color_id) VALUES (62, 1);
INSERT INTO product_color (product_id, color_id) VALUES (63, 2);
INSERT INTO product_color (product_id, color_id) VALUES (64, 3);
INSERT INTO product_color (product_id, color_id) VALUES (64, 4);
INSERT INTO product_color (product_id, color_id) VALUES (65, 5);
INSERT INTO product_color (product_id, color_id) VALUES (66, 1);
INSERT INTO product_color (product_id, color_id) VALUES (67, 2);
INSERT INTO product_color (product_id, color_id) VALUES (67, 3);
INSERT INTO product_color (product_id, color_id) VALUES (68, 4);
INSERT INTO product_color (product_id, color_id) VALUES (68, 5);
INSERT INTO product_color (product_id, color_id) VALUES (69, 1);
INSERT INTO product_color (product_id, color_id) VALUES (69, 2);
INSERT INTO product_color (product_id, color_id) VALUES (70, 3);
INSERT INTO product_color (product_id, color_id) VALUES (71, 4);
INSERT INTO product_color (product_id, color_id) VALUES (72, 5);
INSERT INTO product_color (product_id, color_id) VALUES (72, 1);
INSERT INTO product_color (product_id, color_id) VALUES (73, 2);
INSERT INTO product_color (product_id, color_id) VALUES (73, 3);
INSERT INTO product_color (product_id, color_id) VALUES (73, 4);
INSERT INTO product_color (product_id, color_id) VALUES (74, 5);
INSERT INTO product_color (product_id, color_id) VALUES (74, 1);
INSERT INTO product_color (product_id, color_id) VALUES (75, 2);
INSERT INTO product_color (product_id, color_id) VALUES (76, 3);
INSERT INTO product_color (product_id, color_id) VALUES (77, 4);
INSERT INTO product_color (product_id, color_id) VALUES (78, 5);
INSERT INTO product_color (product_id, color_id) VALUES (79, 1);
INSERT INTO product_color (product_id, color_id) VALUES (80, 2);
INSERT INTO product_color (product_id, color_id) VALUES (80, 3);
INSERT INTO product_color (product_id, color_id) VALUES (81, 4);
INSERT INTO product_color (product_id, color_id) VALUES (81, 5);
INSERT INTO product_color (product_id, color_id) VALUES (82, 2);
INSERT INTO product_color (product_id, color_id) VALUES (82, 3);
INSERT INTO product_color (product_id, color_id) VALUES (83, 4);
INSERT INTO product_color (product_id, color_id) VALUES (84, 5);
INSERT INTO product_color (product_id, color_id) VALUES (85, 2);
INSERT INTO product_color (product_id, color_id) VALUES (85, 3);
INSERT INTO product_color (product_id, color_id) VALUES (85, 4);
INSERT INTO product_color (product_id, color_id) VALUES (86, 5);
INSERT INTO product_color (product_id, color_id) VALUES (87, 2);
INSERT INTO product_color (product_id, color_id) VALUES (87, 3);
INSERT INTO product_color (product_id, color_id) VALUES (88, 4);
INSERT INTO product_color (product_id, color_id) VALUES (88, 5);
INSERT INTO product_color (product_id, color_id) VALUES (89, 2);
INSERT INTO product_color (product_id, color_id) VALUES (90, 3);
INSERT INTO product_color (product_id, color_id) VALUES (91, 4);
INSERT INTO product_color (product_id, color_id) VALUES (92, 5);
INSERT INTO product_color (product_id, color_id) VALUES (93, 2);
INSERT INTO product_color (product_id, color_id) VALUES (93, 3);
INSERT INTO product_color (product_id, color_id) VALUES (94, 4);
INSERT INTO product_color (product_id, color_id) VALUES (95, 5);
INSERT INTO product_color (product_id, color_id) VALUES (96, 2);
INSERT INTO product_color (product_id, color_id) VALUES (97, 3);
INSERT INTO product_color (product_id, color_id) VALUES (98, 4);
INSERT INTO product_color (product_id, color_id) VALUES (99, 5);
INSERT INTO product_color (product_id, color_id) VALUES (100, 2);
INSERT INTO product_color (product_id, color_id) VALUES (100, 3);
INSERT INTO product_color (product_id, color_id) VALUES (101, 4);
INSERT INTO product_color (product_id, color_id) VALUES (101, 5);


-- -- urls belts
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownbelt.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/fancybelt.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/leatherbelt.jpg"

-- --urls watches
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/bluewatch.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownwatch.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/ceramicwatch.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/smartwatch.jpg"

-- --urls shirts
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/otherpolo.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/piquepolo.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/versaceshirt.jpg"

-- --urls pants
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/floralpants.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/greenpants.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/slimpants.jpg"


-- --urls shoes
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/brownboot.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/cowboyboot.jpg"
-- "https://s3-us-west-1.amazonaws.com/randomoutfitgenerator/Pictures/manboot.jpg"
