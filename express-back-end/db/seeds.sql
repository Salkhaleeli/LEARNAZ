INSERT INTO users (first_name, last_name, email, password)
VALUES ('Saad', 'Alkhaleeli', 'alkhaleelisaad@gmail.com', '123'),
('Siraj', 'Ibrahim', 'sirajwah@yahoo.ca', '456');

INSERT INTO subjects (subject_name)
VALUES ('Cooking'),
('Chess'),
('Writing'),
('Guitar'),
('Coding'),
('Photography'),
('Gardening'),
('Knitting'),
('Illustration'),
('French');

INSERT INTO resources (step_number, step_description, article_url, photo_url, video_url)
VALUES (1, 'The physical hardware you stock in your kitchen is equally as important as the ingredients you choose and the cooking techniques you use. Use the following guides to help you find what you really need in the kitchen.', 'https://www.seriouseats.com/basic-starter-kitchen-equipment', null, 'https://www.youtube.com/watch?v=5zt6_knK8Ms'),
(2, 'The pantry is the backbone of your kitchen. In the following resource you will find tips to help you organize your refrigerator as well as a list of the essential building blocks to cooking all kinds of dishes.', 'https://www.eater.com/2020/3/30/21196551/how-to-stock-pantry-grocery-shopping-list-home-cooking', null, null),
(3, 'Refer to the following resource and familiarize yourself with the multiple essential skills needed for everyday cooking.', 'https://iccadubai.ae/stockpot/8-basic-cooking-skills-every-budding-chef-must-know', null, null),
(4, 'These are special occasion pancakes. Serve them at brunch, at your own risk. You will surely secure yourself top seed as host for every brunch in the future.', 'https://cooking.nytimes.com/recipes/1022931-lemon-ricotta-pancakes', 'https://i.pinimg.com/474x/f7/bf/0a/f7bf0a7d224f680bdaca3db6084064b6.jpg', 'https://www.youtube.com/watch?v=iSUIRCa1nwk'),
(5, 'A rich, fragrant, deeply coloured pot of comfort', 'https://www.washingtonpost.com/news/voraciously/wp/2019/10/02/it-doesnt-take-hours-to-make-an-intense-dark-and-rich-french-onion-soup/', 'https://i.pinimg.com/736x/4e/8f/bb/4e8fbbfbd7362753beae4087af93df1e.jpg', 'https://www.youtube.com/watch?v=yV9gLR1reGU'),
(6, 'Skirt steak is perfect for steak fajitas since it is a super beefy cut thats delicious when marinated and grilled.', 'https://www.seriouseats.com/grilled-skirt-steak-fajitas-food-lab-recipe', 'https://playswellwithbutter.com/wp-content/uploads/2022/07/Grilled-Skirt-Steak-Fajitas-6-595x397.jpg', 'https://www.youtube.com/watch?v=bptRd0YLVe4'),
(7, 'A simple roasted cauliflower dish dressed up with a sophisticated vinaigrette', 'https://www.seriouseats.com/roasted-cauliflower-pine-nut-raisin-caper-food-lab-recipe', 'https://www.wellseasonedstudio.com/wp-content/uploads/2019/12/Sicilian-cauliflower-10-500x500.jpg', 'https://www.youtube.com/watch?v=tFYpMT8fcD4'),
(8, 'A rich, hearty vegetarian lasagna stuffed with spinach, mushrooms, and cheese.', 'https://www.seriouseats.com/ultra-creamy-spinach-and-mushroom-lasagna-recipe', 'https://i.pinimg.com/originals/54/cd/02/54cd02c5b5dd84b0c82c245330c25e39.jpg', 'https://www.youtube.com/watch?v=shTIlV5iDQw');

INSERT INTO steps_to_resources (subjects_id, resources_id)
VALUES (1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8);

INSERT INTO progress_tracker (users_id, resources_id, steps_complete)
VALUES (1, 1, false),
(1, 2, false),
(1, 3, false),
(1, 4, false),
(1, 5, false),
(1, 6, false),
(1, 7, false),
(1, 8, false);