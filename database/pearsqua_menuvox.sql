-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 01, 2018 at 01:51 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pearsqua_menuvox`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`id`, `created_at`, `name`) VALUES
(1, '2018-06-23 14:02:44', 'starter'),
(2, '2018-06-23 14:03:05', 'main'),
(3, '2018-06-23 14:03:09', 'beverage'),
(4, '2018-06-23 14:03:25', 'side'),
(5, '2018-06-23 14:03:35', 'dessert'),
(6, '2018-06-23 14:03:38', 'kid'),
(7, '2018-06-23 14:05:46', 'lunch'),
(8, '2018-06-23 15:37:53', 'breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `restaurant_id` int(11) DEFAULT NULL,
  `menu_category_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `price` varchar(50) DEFAULT NULL,
  `calories` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `created_at`, `restaurant_id`, `menu_category_id`, `title`, `description`, `price`, `calories`) VALUES
(1, '2018-06-23 14:08:46', 1, 7, 'Soup, Salad & Garlic Pan Bread™', 'Soup of the day, house or Caesar salad, with a lunch-size Jack’s Garlic Pan Bread™. Sides (Choose 2).', '11.53', 504),
(2, '2018-06-23 14:09:48', 1, 7, 'Nachos and Side', 'Corn tortilla chips, tomatoes, peppers, onions, jalapeños, three cheeses. Add a side. Sides (Choose 1).', '10.97', 747),
(3, '2018-06-23 14:11:49', 1, 7, 'Chicken Quesadilla & Salad', 'Grilled chicken, pico de gallo lots of melted Monterey cheese in toasted flour tortillas. Served with house salad. Sides (Choose 1).', '11.97', 809),
(4, '2018-06-23 14:13:36', 1, 2, 'Pulled Pork Southern Fries', 'The South meets the North! 100% Canadian russet fries, slow-roasted pulled pork tossed with our authentic Kansas City BBQ sauce and caramelized onions. Topped with a blend of mozza and cheddar cheeses, sweet smoky gravy, southern spices, crispy pork rinds, green onions, and a trio of our made in-house sauces: Alabama White, Carolina Mustard, and Kansas City BBQ. A portion of the proceeds from the sale of this item will be donated to our charity partner Wells of Hope.', '11.98', 1557),
(5, '2018-06-23 14:14:06', 1, 2, 'Big Ol’ Chicken Salad', 'Packed with 14 ingredients, this salad isn’t too big for its britches, or yours! Roasted chicken, mixed greens, shredded kale, julienned carrots, diced watermelon, quinoa, roasted sweet potato, cheddar cheese, avocado, spiced pecans, dried cranberries, corn chips, green onion, and our Southern Pride vinaigrette.', '19.93', 1138),
(6, '2018-06-23 14:14:51', 1, 2, 'Southern Chicken Wrap', 'Jack’s World Famous Chicken Fingers, mixed greens, cheddar cheese, tomatoes, and house-made sweet pickles dressed with a touch of Jack’s Comeback sauce and Southern Pride vinaigrette, all wrapped in a grilled flour tortilla. Served with 100% Canadian russet fries. Sides (Choose 1).', '16.65', 803),
(7, '2018-06-23 14:15:29', 1, 2, 'Jack’s Southern BBQ Burger', 'Fresh Angus ground beef, our house-made Alabama White sauce, melted cheese, and pulled pork tossed in a Kansas City BBQ sauce. Topped off with tangy slaw, crispy pork rinds and our house-made Carolina Mustard. Served with 100% Canadian russet fries. Sides (Choose 1).', '17.97', 1441),
(8, '2018-06-23 14:16:11', 1, 2, 'Nashvegas BBQ Steak (11oz)', 'Beef with a Bourbon BBQ sauce and green onions. Served alongside roasted sweet potatoes, sautéed onions with chopped spiced pecans, and a Southern Pride kale salad. This steak has got gumption!', '31.97', 1057),
(9, '2018-06-23 14:16:37', 1, 2, 'Nashvegas BBQ Steak (7 oz)', 'Beef with a Bourbon BBQ sauce and green onions. Served alongside roasted sweet potatoes, sautéed onions with chopped spiced pecans, and a Southern Pride kale salad. This steak has got gumption!', '26.97', 884),
(10, '2018-06-23 14:17:13', 1, 2, 'Jack’s Fried Chicken Sandwich', 'A buttermilk marinated fried chicken breast topped with cheese, lettuce, tomato, Jack’s Comeback sauce, Carolina Mustard, and freshly made in-house sweet pickles (oh, yes we did!). All served on a toasted sweet potato bun alongside 100% Canadian russet fries. Knock this one off your chicken bucket list. Sides (Choose 1).', '16.87', 831),
(11, '2018-06-23 14:17:45', 1, 2, 'Grand Ole Superfood Bowl – Chicken', 'Fill your soul –and your belly with seasoned chicken on top of seven-grain rice, chilled black beans, roasted sweet potato, avocado, kale, house-made sweet pickles, julienned carrots, shredded daikon radish, green onions, our Southern Pride vinaigrette and Carolina Mustard.', '19.92', 1240),
(12, '2018-06-23 14:18:18', 1, 2, 'Grand Ole Superfood Bowl – Shrimp', 'Fill your soul –and your belly with shrimp on top of seven-grain rice, chilled black beans, roasted sweet potato, avocado, kale, house-made sweet pickles, julienned carrots, shredded daikon radish, green onions, our Southern Pride vinaigrette and Carolina Mustard.', '19.92', 1155),
(13, '2018-06-23 14:19:07', 1, 5, 'Chocolate Butterscotch Bourbon Pie', 'Rich chocolate n’bourbon icebox pie with a pecan-graham cracker crust, Georgia peach compote, butterscotch bourbon sauce, and whipped cream. We done good. Add vanilla ice cream ($1.50).', '8.68', 1052),
(14, '2018-06-23 14:19:37', 1, 5, 'Deep Fried Pecan Cheesecake Rolls', 'Authentic New York-Style vanilla cheesecake and chopped spiced pecans rolled in a crispy spring roll wrapper, deep fried, and served warm with bumbleberry and bourbon butterscotch sauces for dipping. Bless your little deep fried heart. Add vanilla ice cream ($1.50).', '8.78', 1180),
(15, '2018-06-23 14:21:27', 1, 1, 'Jack’s Garlic Pan Bread', 'Smell that? We bake a fresh new batch every 90 minutes! Soaked in buttery garlic sauce.', '6.97', 1238),
(16, '2018-06-23 14:22:08', 1, 1, 'Crispy Broccoli Caesar Bites', 'Lightly battered broccoli flowerettes tossed in Parmesan and asiago cheeses, drizzled with roasted garlic aioli, topped with onion chips, bacon and dusted with lemon pepper.', '13.09', 621),
(17, '2018-06-23 14:24:07', 1, 1, 'Jack’s Cheese Garlic Pan Bread', 'Add melted three-cheese blend.', '8.98', 1413),
(18, '2018-06-23 14:24:35', 1, 1, 'Golden Calamari', 'Served with house-made roasted lemon garlic aioli, spicy Sriracha cocktail sauce.', '13.55', 688),
(19, '2018-06-23 14:25:06', 1, 1, 'Fresh Guacamole', 'Made fresh in-house daily.', '8.87', 489),
(20, '2018-06-23 14:26:17', 1, 1, 'Ye Olde Faithful Macho Nachos', 'Tomatoes, peppers, onions, jalapeños, three cheeses. Add beef chili for 3.49 (110 Cals). Add Guacamole for 2.99 (190 Cals)', '16.76', 1537),
(21, '2018-06-23 14:26:46', 1, 1, 'Ye Olde Faithful Macho Nachos with Beef', 'Tomatoes, peppers, onions, jalapeños, three cheeses. Add beef chili for 3.49 (110 Cals). Add Guacamole for 2.99 (190 Cals)', '20.32', 1702),
(22, '2018-06-23 14:27:12', 1, 1, 'Tuna Guacamole', 'Sesame seared Ahi tuna, tomato salsa, sweet soy and lime sour cream drizzle, crisp fried onions, feta cheese, and peanuts', '15.27', 571),
(23, '2018-06-23 14:27:39', 1, 1, 'Lobster and Crab Dip', 'Cream cheese, sautéed mushrooms, peppers, onions, nacho chips, pita triangles.', '14.60', 917),
(24, '2018-06-23 14:28:02', 1, 1, 'Grilled Chicken Quesadilla', 'Pico de gallo, Monterey Jack, flour tortillas, salsa, sour cream.', '14.60', 1043),
(25, '2018-06-23 14:28:29', 1, 1, 'Jack’s Beer and Cheddar Soup', 'A guest favourite for over 15 years, made fresh in-house with amber beer, asiago and cheddar cheese.', '7.98', 483),
(26, '2018-06-23 14:28:58', 1, 1, 'Thick-Cut Bruschetta', 'Roma tomatoes, roasted garlic, feta, Parmesan, house-made lemon garlic aioli, balsamic glaze.', '12.97', 834),
(27, '2018-06-23 14:29:32', 1, 1, 'Daily Featured Soup', 'Sides (Choose 1)', '6.93', 483),
(28, '2018-06-23 14:30:31', 1, 4, 'Classic Stack’d Poutine', '100% Canadian russet fries, cheese curds, beef gravy.', '8.93', 951),
(29, '2018-06-23 14:31:01', 1, 4, 'Chicken BLT Stack’d Poutine', '100% Canadian russet fries, cheese curds, chicken, bacon, onion, lettuce, tomatoes, beef gravy, Caesar dressing', '10.43', 1374),
(30, '2018-06-23 14:32:09', 1, 2, 'Board Nachos - Beef', 'Mozz, tomato, onion, peppers, iceberg, cilantro, garlic chips, lime, salsa, sour cream.', '17.98', 996),
(31, '2018-06-23 14:32:39', 1, 2, 'Board Nachos - BBQ Chicken', 'Chipotle mayo, mozz, onion, bacon, tomato, peppers, iceberg, cilantro, lime.', '19.18', 1368),
(32, '2018-06-23 14:33:11', 1, 2, 'Board Nachos - Veggie', 'Yuzu avocado, mozz, feta cheese, tomato, peppers, onion, iceberg, cilantro, lime.', '15.56', 817),
(33, '2018-06-23 14:33:49', 1, 2, 'Tacos - Con Carne', 'Seasoned ground beef, mozz, chipotle mayo, sesame diablo.', '12.28', 743),
(34, '2018-06-23 14:34:17', 1, 2, 'Tacos - Chicken', 'Red cabbage, mango cilantro drizzle, sesame diablo, feta.', '13.40', 663),
(35, '2018-06-23 14:34:48', 1, 2, 'Big Bowl Salads - Tuna Mango Avocado Salad', 'Seared sesame Ahi tuna, chili ginger drizzle, mixed greens, arugula, mango, cucumber, celery, red pepper, honey Dijon ginger dressing, fresh avocado, and corn tortilla strips.', '19.50', 642),
(36, '2018-06-23 14:35:11', 1, 2, 'Big Bowl Salads - The Smiling Buddha', 'Roasted chicken, mixed greens, arugula, red quinoa, cucumber, apple, strawberries, dried cranberries, spiced pecans, honey Dijon dressing, fresh mint, basil, and goat cheese crumble.', '19.93', 808),
(37, '2018-06-23 14:35:41', 1, 2, 'Big Bowl Salads - Mexican', 'Roasted chicken, mixed greens, arugula, black beans, corn, grape tomatoes, red onion, fresh avocado, honey lime dressing, fresh basil, cilantro, corn tortillas, fried jalapeños, and feta cheese crumble.', '18.78', 743),
(38, '2018-06-23 14:36:46', 1, 2, 'Big Bowl Salads - Classic Caesar', 'Romaine, iceberg, creamy Caesar dressing, shaved Parmesan, fresh lemon juice, crispy onion chips, bacon, capers, and croutons. Add Roasted Chicken (190 Cals) or Crispy Buffalo Chicken Bites (490 Cals) for 3.99.', '14.97', 1156),
(39, '2018-06-23 14:38:04', 1, 2, 'The Original Chicken Fingers', 'Our fresh, never frozen chicken tenders are breaded in-house and made to order. Meals served with 100% Canadian russet fries.', '15.93', 1036),
(40, '2018-06-23 14:38:41', 1, 2, 'Buffalo Chicken Fingers', 'Our fresh, never frozen chicken tenders are breaded in-house and made to order. Meals served with 100% Canadian russet fries. Tossed in your choice of mild, medium or hot authentic made in-house Buffalo wing sauce. Sides (Choose 2).', '16.43', 1186),
(41, '2018-06-23 14:40:07', 1, 2, 'Chicken Wings', 'Flour-dusted, deep fried and then tossed table side. Guaranteed tears of joy! 5 Piece. Choice of flavour: Buffalo: Hot, Buffalo: Medium, Buffalo: Mild, Sesame Ginger Garlic, Toffee/Chipotle.', '9.96', 675),
(42, '2018-06-23 14:40:56', 1, 2, 'Steak Frites', '7oz top sirloin, red wine jus, truffle parmesan fries. Sides (Choose 2).', '22.87', 861),
(43, '2018-06-23 14:52:12', 1, 2, 'New York Steak Frites', '11oz New York, red wine jus, truffle Parmesan fries.', '29.15', 1038),
(44, '2018-06-23 14:52:42', 1, 2, 'The Bourbon Street 11oz New York', 'Sautéed shrimp, creole tomato and bell pepper sauce, seasonal vegetables, russet potato mash topped with roasted garlic butter.', '33.11', 1299),
(45, '2018-06-23 14:53:05', 1, 2, 'The Bourbon Street 7oz Sirloin', 'Sautéed shrimp, creole tomato and bell pepper sauce, seasonal vegetables, russet potato mash topped with roasted garlic butter.', '28.37', 1126),
(46, '2018-06-23 14:53:31', 1, 2, 'The Memphis 11oz New York', 'Cremini mushrooms, three peppercorn sauce, crispy fried onions, seasonal vegetables, russet potato mash topped with roasted garlic butter.', '31.37', 1333),
(47, '2018-06-23 14:53:49', 1, 2, 'The Memphis 7oz Sirloin', 'Cremini mushrooms, three peppercorn sauce, crispy fried onions, seasonal vegetables, russet potato mash topped with roasted garlic butter.', '27.35', 1160),
(48, '2018-06-23 14:54:26', 1, 2, 'The Classic 11oz New York', '11oz top sirloin, seasonal vegetables, russet potato mash topped with roasted garlic butter, red wine jus.', '30.60', 924),
(49, '2018-06-23 14:54:52', 1, 2, 'The Classic 7oz Sirloin', '7oz top sirloin, seasonal vegetables, russet potato mash topped with roasted garlic butter, red wine jus.', '25.24', 747),
(50, '2018-06-23 14:55:54', 1, 2, 'Roasted Double Chicken Breast', 'Crisp skin-on chicken, seven grain dirty rice, sautéed peppers, onions, avocado, feta.', '17.85', 1302),
(51, '2018-06-23 14:56:19', 1, 2, 'Smokin’ Salmon', 'Grilled Atlantic salmon, seven grain rice, charred tomatoes, avocado, smoky garlic sauce, jalapeño butter.', '22.76', 1272),
(52, '2018-06-23 14:58:21', 1, 2, 'Fajitas', 'Peppers, onions, shredded lettuce, cilantro, sour cream, salsa, cheddar, warm tortillas. Selection: Grilled chicken, grilled steak (add $1.25), spicy shrimp, or tofu. Add Guacamole – 2.99 (190 cals).', '21.81', 1333),
(53, '2018-06-23 14:58:45', 1, 2, 'Micro Brew Fish N’ Chips', 'Fish fillet, micro brew batter, made in-house tartar sauce.', '17.54', 1524),
(54, '2018-06-23 14:59:13', 1, 2, 'Garlic Herb Shrimp Pasta', 'Sauteed shrimp, garlic tomato sauce, fresh basil, cavatappi pasta, pine nuts and Parmesan topper', '19.97', 1048),
(55, '2018-06-23 14:59:39', 1, 2, 'Chicken Parmigiana', 'Breaded chicken, tomato sauce, smoked mozzarella, bow-tie pasta, creamy cheese sauce, garlic chips', '19.73', 1231),
(56, '2018-06-23 15:00:04', 1, 2, 'Asiago Chicken Bowties', 'Asiago-crusted chicken, bow-tie pasta, creamy cheese sauce, semi-sun-dried tomatoes.', '19.68', 1156),
(57, '2018-06-23 15:00:33', 1, 2, '5 Cheese Chicken Mac', 'Aji Amarillo roasted chicken, cavatappi pasta, roasted red peppers, spicy jalapeño five-cheese sauce, bacon bits, crispy fried jalapeños, green onions, toasted asiago crust.', '19.84', 1448),
(58, '2018-06-23 15:02:49', 1, 2, 'Burger - Classic Double', 'Juicy Ontario Angus ground beef. Served with your choice of standard side. Sub a premium side for $2.97 or a classic poutine for $4.97 extra. Gluten-free bun for $1.00 extra.\r\nAll our burgers are topped with mayo, lettuce, tomato, onion, and a pickle.', '15.06', 1017),
(59, '2018-06-23 15:03:14', 1, 2, 'Burger - Classic Triple', 'Juicy Ontario Angus ground beef, Served with your choice of standard side. Sub a premium side for $2.97 or a classic poutine for $4.97 extra. Gluten-free bun for $1.00 extra.\r\nAll our burgers are topped with mayo, lettuce, tomato, onion, and a pickle.', '16.44', 1307),
(60, '2018-06-23 15:05:11', 1, 2, 'Burger - Cheeseburger Double', 'The classic with gooey American cheese. Served with your choice of standard side. Sub a premium side for $2.97 or a classic poutine for $4.97 extra. Gluten-free bun for $1.00 extra.\r\nAll our burgers are topped with mayo, lettuce, tomato, onion, and a pickle.', '16.58', 1146),
(61, '2018-06-23 15:05:52', 1, 2, 'Burger - Cheeseburger Triple', 'The classic with gooey American cheese. Served with your choice of standard side. Sub a premium side for $2.97 or a classic poutine for $4.97 extra. Gluten-free bun for $1.00 extra.\r\nAll our burgers are topped with mayo, lettuce, tomato, onion, and a pickle.', '19.15', 1501),
(62, '2018-06-23 15:06:37', 1, 2, 'Bacon Cheese Burger Double', 'A thick pile of crispy bacon and American cheese. Served with your choice of standard side. Sub a premium side for $2.97 or a classic poutine for $4.97 extra. Gluten-free bun for $1.00 extra.\r\nAll our burgers are topped with mayo, lettuce, tomato, onion, and a pickle.', '17.57', 1291),
(63, '2018-06-23 15:07:43', 1, 2, 'Bacon Cheeseburger Triple', 'A thick pile of crispy bacon and American cheese. Served with your choice of standard side. Sub a premium side for $2.97 or a classic poutine for $4.97 extra. Gluten-free bun for $1.00 extra.\r\nAll our burgers are topped with mayo, lettuce, tomato, onion, and a pickle.', '20.85', 1719),
(64, '2018-06-23 15:08:16', 1, 2, 'Chicken Clubhouse', 'Coffee-crusted bacon, tomato, mayo, lettuce, toasted telera bun. Sides (Choose 1).', '16.38', 662),
(65, '2018-06-23 15:08:38', 1, 2, 'Chicken & Goat Cheese Sandwich', 'Tomato, arugula, roasted red onions, garlic lemon aioli, toasted sweet potato bun.', '15.59', 563),
(66, '2018-06-23 15:09:00', 1, 2, 'Grilled Cheese & Chicken Crunch Sandwich', 'Roasted chicken, a crisp corn tortilla with a hint of lime, seven cheese blend, butter griddled telera bread.', '15.97', 897),
(67, '2018-06-23 15:09:29', 1, 2, 'Holy Smoke BBQ Burger', 'Smoked bacon, American cheese, smoky BBQ sauce, crispy fried onions, pickled banana peppers, hickory mayo.', '17.73', 1449),
(68, '2018-06-23 15:09:51', 1, 2, 'The Italian Burger', 'Goat cheese, onions, tomatoes, garlic, arugula, balsamic drizzle and garlic aioli.', '17.22', 1121),
(69, '2018-06-23 15:10:13', 1, 2, 'Hold the Beef', 'Meatless, gluten-free black bean patty, goat cheese, marinated tomatoes, arugula, roasted garlic lemon aioli.', '15.98', 724),
(70, '2018-06-23 15:10:53', 1, 2, 'Miso Sesame Tuna Bowl', 'Seared sesame tuna, rice, broccoli, carrot, snow peas, avocado, ginger, quinoa, miso sesame sauce.', '19.84', 834),
(71, '2018-06-23 15:11:51', 1, 2, 'Fajita Bowl', 'Seven grain rice, black beans, marinated tomatoes, onions, peppers, tortilla strips, guajillo sesame spice, crisp fried jalapeños, feta, avocado. Selection: Grilled chicken or grilled steak (add $0.20).', '19.63', 1153),
(72, '2018-06-23 15:12:12', 1, 2, 'Sesame Chicken Bowl', 'Crispy chicken, carrots, snow peas, Thai honey sauce, jasmine rice.', '19.77', 1251),
(73, '2018-06-23 15:12:37', 1, 2, 'Bombay Chicken Curry Bowl', 'Chicken, curry, rice, cucumber raita, charred tomatoes, fried cauliflower, onion, naan bread.', '19.30', 1310),
(74, '2018-06-23 15:13:19', 1, 2, 'Pad Thai Bowl', 'Rice noodles, peanut tamarind sauce, red pepper, bean sprouts, fried onion, peanuts, cage-free fried egg. Choose between the following: Chicken and shrimp, chicken, or shrimp.', '19.74', 1187),
(75, '2018-06-23 15:15:16', 1, 4, 'Canadian Russet Fries', NULL, '2.97', 476),
(76, '2018-06-23 15:15:31', 1, 4, 'House Salad', NULL, '2.97', 232),
(77, '2018-06-23 15:15:46', 1, 4, 'Caesar Salad', NULL, '2.97', 554),
(78, '2018-06-23 15:16:05', 1, 4, 'Mexican Salad', NULL, '2.97', 219),
(79, '2018-06-23 15:16:19', 1, 4, 'Jasmine Rice', NULL, '2.97', 334),
(80, '2018-06-23 15:16:38', 1, 4, 'Creamy Cole Slaw', NULL, '2.97', 327),
(81, '2018-06-23 15:16:59', 1, 4, 'Russet Mashed Potatoes', NULL, '2.97', 288),
(82, '2018-06-23 15:17:18', 1, 4, 'Market Fresh Vegetables', NULL, '2.97', 130),
(83, '2018-06-23 15:17:41', 1, 4, 'Sweet Potato Fries', NULL, '5.94', 476),
(84, '2018-06-23 15:18:03', 1, 4, 'Fruity Quinoa Salad', NULL, '5.94', 286),
(85, '2018-06-23 15:18:25', 1, 4, 'Classic Poutine', NULL, '5.94', 951),
(86, '2018-06-23 15:18:44', 1, 4, 'Truffle Parmesan Fries', NULL, '5.94', 1264),
(87, '2018-06-23 15:18:58', 1, 4, 'Seven Grain Rice', NULL, '5.94', 196),
(88, '2018-06-23 15:19:28', 1, 4, 'Beer & Cheddar Soup', NULL, '5.94', 483),
(89, '2018-06-23 15:21:38', 1, 5, 'My Cookie Ate Your Brownie™', 'A warm chocolate brownie stuffed inside a large house-baked chocolate chip cookie.', '4.22', 989),
(90, '2018-06-23 15:22:11', 1, 5, 'World’s Most Ridiculously Small Brownie', 'Served with whipped cream and coffee caramel drizzle. Add vanilla ice cream ($1.50).', '2.22', 224),
(91, '2018-06-23 15:22:45', 1, 5, 'Don Kiebals Donut Dippers', 'Warm donut holes with coffee caramel, Baileys chocolate, and bumbleberry sauces for dipping. Add vanilla ice cream ($1.50).', '6.87', 1299),
(92, '2018-06-23 15:23:40', 1, 5, 'The Kitchen Sink Brownie', 'SINK-RONIZE YOUR DESSERT CRAVINGS NOW! A fresh house-baked cookie brownie with vanilla ice cream, “junk mix” (REESE’s PIECES®, toffee bits, pretzel pieces, peanuts, and marshmallows) finished with a peanut cream sauce and Baileys chocolate sauce. Delicious proof that we have little to no restraint when it comes to dessert. Add vanilla ice cream ($1.50).', '7.99', 1432),
(93, '2018-06-23 15:24:32', 1, 5, 'Apple Pie Nachos', 'IT’S THE AGE OLD QUESTION: NACHOS OR APPLE PIE? Is that only our problem? Well we solved it with cinnamon-sugared wontons topped with apple compote, whipped cream, coffee caramel sauce, cream cheese icing,\nspicy pecans, and dried cranberries. You’re welcome. Add vanilla ice cream ($1.50).', '7.73', 365),
(94, '2018-06-23 15:25:07', 1, 5, 'The Extreme Chocolate Fudge Cake', 'HAVE YOUR CAKE – AND POPCORN – AND EAT IT, TOO. A 12-layer slice of dark, rich chocolate cake, sweet caramel corn and Baileys chocolate sauce. Our great Uncle Orville Cake n’ Bacher would be proud. Add vanilla ice cream ($1.50).', '8.97', 749),
(95, '2018-06-23 15:27:27', 1, 6, 'Burger', 'A house-made premium beef burger grilled and served on a toasted classic sesame seed bun with your choice of side. Add cheese (70 cals)… $0.50', '8.98', 459),
(96, '2018-06-23 15:27:57', 1, 6, 'Build Your Own Taco', 'Lightly seasoned fresh ground beef in a hard tortilla bowl with cheese, lettuce, salsa and soft tortillas. Add extra taco beef (190 Cals) . . . $2.99', '8.98', 722),
(97, '2018-06-23 15:28:23', 1, 6, 'Sirloin Steak', 'A sirloin steak grilled to perfection. Served with your choice of side. Sides (Choose 2).', '11.25', 424),
(98, '2018-06-23 15:28:49', 1, 6, 'Chicken Wings', 'Chicken wings coated in BBQ sauce with carrot, celery and a ranch dip and your choice of side. Sides (Choose 1).', '8.98', 701),
(99, '2018-06-23 15:29:11', 1, 6, 'Chicken Stir Fry', 'Fried chicken pieces and vegetables coated in honey garlic chili sauce served over rice and sprinkled with sesame seeds.', '8.98', 861),
(100, '2018-06-23 15:29:33', 1, 6, 'Chicken Bites', 'Crispy chicken bites with plum sauce and your choice of side. Tossed in Buffalo wing sauce (126-174 Cals). . . $0.50', '8.98', 601),
(101, '2018-06-23 15:30:07', 1, 6, 'Pita Pit-za', 'Add pepperoni or keep it cheesy on top\r\nof our made-in-house tomato sauce and pita bread with your choice of side.', '8.98', 348),
(102, '2018-06-23 15:30:34', 1, 6, 'Jack\'s Pasta', 'Scoobi Doo pasta tossed in your choice of a tomato sauce, cheesy sauce or butter with Parmesan cheese. Add sautéed chicken (150 Cals) . . . $3.97.', '7.81', 414),
(103, '2018-06-23 15:30:52', 1, 6, 'Fish on a Stick', 'Jack’s fish filet cut into pieces, put on sticks, hand dipped, and cooked golden brown with freshly made tartar sauce and your choice of side.', '8.98', 414),
(104, '2018-06-23 15:31:47', 1, 6, 'House Salad', NULL, '2.39', 19),
(105, '2018-06-23 15:32:10', 1, 6, 'Caesar Salad', NULL, '2.39', 148),
(106, '2018-06-23 15:33:08', 1, 6, 'Market Fresh Vegetables', NULL, '2.39', 130),
(107, '2018-06-23 15:33:23', 1, 6, 'Mashed Potatoes', NULL, '2.39', 288),
(108, '2018-06-23 15:33:42', 1, 6, '100% Canadian Russet Fries', NULL, '2.39', 476),
(109, '2018-06-23 15:33:53', 1, 6, 'Fresh Fruit', NULL, '2.39', 71),
(110, '2018-06-23 15:34:11', 1, 6, 'Seven Grain Rice', NULL, '2.39', 196),
(111, '2018-06-23 15:34:43', 1, 6, 'Cookie', 'A chocolate chip cookie freshly baked in-house and ready to take home.', '0', 314),
(112, '2018-06-23 15:35:03', 1, 6, 'Brownie', 'Chocolate brownie with icing, served with whipped cream and drizzled in caramel sauce.', '0', 324),
(113, '2018-06-23 15:35:20', 1, 6, 'Fresh Fruit', NULL, '0', 71),
(114, '2018-06-23 15:35:38', 1, 6, 'Banana Split', 'Sliced banana split atop vanilla ice cream, drizzled with chocolate and caramel sauce. Topped with whipped cream and a maraschino cherry. ', '2.33', 354),
(115, '2018-06-23 15:35:55', 1, 6, 'Orange Sorbet', 'Peanut free / tree-nut free / lactose free / gluten free sorbet- and it’s really yummy, too.', '0', 70),
(116, '2018-06-23 15:41:52', 2, 2, '4 oz. Sandwich', 'Sandwiches come with choice of 3 oz. coleslaw (170 Cals) or potato salad (340 Cals) and sliced dill pickle or veggie sticks.\r\n\r\nToppings:\r\n10 Grain\r\nBagel\r\nCaraway Rye\r\nDark Rye\r\nEgg Challah\r\nEgg Onion Bun\r\nFrench Baguette\r\nKaiser Bun\r\nLight Rye\r\nPumpernickel\r\nSprouted Flax (GF)\r\nWhite (GF)\r\nWhite Wrap\r\nWhole Wheat Wrap\r\nLettuce Wrap\r\nAll Beef Salami\r\n\r\nChicken Breast\r\nChicken Shawarma (Halal)\r\nCorned Beef\r\nDeli Ham\r\nEgg Salad\r\nHummus\r\nRoast Beef\r\nSalmon Salad\r\nSmoked Meat\r\nTuna Salad\r\nTurkey Breast\r\nNo Protein\r\nCheddar\r\nCream Cheese\r\nFeta\r\nHavarti\r\n\r\nSwiss (LF)\r\nSmoked Gouda (LF)\r\nAvocado\r\nBaby Kale\r\nBaby Spinach\r\n3 Slices Bacon\r\nBlack Olives\r\nCapers\r\nCarrot\r\nCucumber\r\n1/2 Dill Pickle Diced\r\nHot Banana Peppers\r\nLeaf Lettuce\r\nMango\r\nMixed Bell Peppers\r\nMushroom\r\n\r\n1/4 Pear\r\nRed Onion\r\nSauerkraut\r\nSliced Tomato\r\nSprouts\r\n40 Creek BBQ\r\nCreamy Greek Feta\r\nDijon Mustard\r\nGuacamole\r\nHot Sauce\r\nMighty Caesar\r\nRoasted Red Pepper Hummus\r\nTzatziki\r\nWhipped Dressing\r\nYellow Mustard\r\n\r\nPlease note not all toppings available at all locations. Ingredients subject to change based on availability.\r\n', '7.95', 290),
(117, '2018-06-23 15:42:33', 2, 2, '6 oz. Sandwich', 'Sandwiches come with choice of 3 oz. coleslaw (170 Cals) or potato salad (340 Cals) and sliced dill pickle or veggie sticks.\r\n\r\nToppings:\r\n10 Grain\r\nBagel\r\nCaraway Rye\r\nDark Rye\r\nEgg Challah\r\nEgg Onion Bun\r\nFrench Baguette\r\nKaiser Bun\r\nLight Rye\r\nPumpernickel\r\nSprouted Flax (GF)\r\nWhite (GF)\r\nWhite Wrap\r\nWhole Wheat Wrap\r\nLettuce Wrap\r\nAll Beef Salami\r\n\r\nChicken Breast\r\nChicken Shawarma (Halal)\r\nCorned Beef\r\nDeli Ham\r\nEgg Salad\r\nHummus\r\nRoast Beef\r\nSalmon Salad\r\nSmoked Meat\r\nTuna Salad\r\nTurkey Breast\r\nNo Protein\r\nCheddar\r\nCream Cheese\r\nFeta\r\nHavarti\r\n\r\nSwiss (LF)\r\nSmoked Gouda (LF)\r\nAvocado\r\nBaby Kale\r\nBaby Spinach\r\n3 Slices Bacon\r\nBlack Olives\r\nCapers\r\nCarrot\r\nCucumber\r\n1/2 Dill Pickle Diced\r\nHot Banana Peppers\r\nLeaf Lettuce\r\nMango\r\nMixed Bell Peppers\r\nMushroom\r\n\r\n1/4 Pear\r\nRed Onion\r\nSauerkraut\r\nSliced Tomato\r\nSprouts\r\n40 Creek BBQ\r\nCreamy Greek Feta\r\nDijon Mustard\r\nGuacamole\r\nHot Sauce\r\nMighty Caesar\r\nRoasted Red Pepper Hummus\r\nTzatziki\r\nWhipped Dressing\r\nYellow Mustard\r\n\r\nPlease note not all toppings available at all locations. Ingredients subject to change based on availability.', '9.95', 360),
(118, '2018-06-23 15:42:50', 2, 2, '8 oz. Sandwich', 'Sandwiches come with choice of 3 oz. coleslaw (170 Cals) or potato salad (340 Cals) and sliced dill pickle or veggie sticks.\r\n\r\nToppings:\r\n10 Grain\r\nBagel\r\nCaraway Rye\r\nDark Rye\r\nEgg Challah\r\nEgg Onion Bun\r\nFrench Baguette\r\nKaiser Bun\r\nLight Rye\r\nPumpernickel\r\nSprouted Flax (GF)\r\nWhite (GF)\r\nWhite Wrap\r\nWhole Wheat Wrap\r\nLettuce Wrap\r\nAll Beef Salami\r\n\r\nChicken Breast\r\nChicken Shawarma (Halal)\r\nCorned Beef\r\nDeli Ham\r\nEgg Salad\r\nHummus\r\nRoast Beef\r\nSalmon Salad\r\nSmoked Meat\r\nTuna Salad\r\nTurkey Breast\r\nNo Protein\r\nCheddar\r\nCream Cheese\r\nFeta\r\nHavarti\r\n\r\nSwiss (LF)\r\nSmoked Gouda (LF)\r\nAvocado\r\nBaby Kale\r\nBaby Spinach\r\n3 Slices Bacon\r\nBlack Olives\r\nCapers\r\nCarrot\r\nCucumber\r\n1/2 Dill Pickle Diced\r\nHot Banana Peppers\r\nLeaf Lettuce\r\nMango\r\nMixed Bell Peppers\r\nMushroom\r\n\r\n1/4 Pear\r\nRed Onion\r\nSauerkraut\r\nSliced Tomato\r\nSprouts\r\n40 Creek BBQ\r\nCreamy Greek Feta\r\nDijon Mustard\r\nGuacamole\r\nHot Sauce\r\nMighty Caesar\r\nRoasted Red Pepper Hummus\r\nTzatziki\r\nWhipped Dressing\r\nYellow Mustard\r\n\r\nPlease note not all toppings available at all locations. Ingredients subject to change based on availability.', '11.95', 420),
(119, '2018-06-23 15:44:25', 2, 2, 'Regular Salad', 'Add protein for just $2.50 (60-90 cals) or 1/4 avocado for $1.00 (60 cals)\r\n\r\nToppings:\r\nBaby Kale\r\nBaby Spinach\r\nIceberg\r\nRomaine\r\nSpring Mix\r\nSpring Mix & Romaine\r\nChicken Breast\r\nCorned Beef\r\nDeli Ham\r\nEgg Salad\r\nRoast Beef\r\nSalmon Salad\r\nSmoked Meat\r\nTuna Salad\r\nTurkey Breast\r\nShredded Cheddar\r\nFeta\r\n\r\nGoat Cheese\r\nShaved Parmesan\r\nAvocado\r\nBlack Olives\r\nBlueberries\r\nBroccoli\r\nCapers\r\nCarrot\r\nCauliflower\r\nCelery\r\nChick Peas\r\nCorn Nibblets\r\nCranberries\r\nCroutons\r\nCrumbled Egg\r\nCucumber\r\nFlax Seeds\r\n\r\nGreen Onions\r\nGreen Peppers\r\nHot Peppers\r\nMandarin Oranges\r\nMango\r\nMixed Beans\r\nMushrooms\r\nPeas\r\nPecans\r\nPickled Beets\r\nPumpkin Seeds\r\nRaisins\r\nReal Bacon Bits\r\nRed Cabbage\r\nRed Onion\r\nRed Peppers\r\nSprouts\r\n\r\nStrawberries\r\nSunflower Seeds\r\nToasted Almonds\r\nTomatoes\r\nAsian Sesame\r\nBalsamic Vinaigrette\r\nButtermilk Ranch\r\nCreamy Greek Feta\r\nFat-Free Raspberry\r\nHoney Dijon and Herb\r\nMighty Caesar\r\nRustico Italian\r\nSpring Herb Garlic\r\nSweet Onion\r\n\r\nPlease note not all toppings available at all locations. Ingredients subject to change based on availability.', '7.50', 450),
(120, '2018-06-23 15:44:51', 2, 2, 'Large Salad', 'Add protein for just $2.50 (60-90 cals) or 1/4 avocado for $1.00 (60 cals)\r\n\r\nToppings:\r\nBaby Kale\r\nBaby Spinach\r\nIceberg\r\nRomaine\r\nSpring Mix\r\nSpring Mix & Romaine\r\nChicken Breast\r\nCorned Beef\r\nDeli Ham\r\nEgg Salad\r\nRoast Beef\r\nSalmon Salad\r\nSmoked Meat\r\nTuna Salad\r\nTurkey Breast\r\nShredded Cheddar\r\nFeta\r\n\r\nGoat Cheese\r\nShaved Parmesan\r\nAvocado\r\nBlack Olives\r\nBlueberries\r\nBroccoli\r\nCapers\r\nCarrot\r\nCauliflower\r\nCelery\r\nChick Peas\r\nCorn Nibblets\r\nCranberries\r\nCroutons\r\nCrumbled Egg\r\nCucumber\r\nFlax Seeds\r\n\r\nGreen Onions\r\nGreen Peppers\r\nHot Peppers\r\nMandarin Oranges\r\nMango\r\nMixed Beans\r\nMushrooms\r\nPeas\r\nPecans\r\nPickled Beets\r\nPumpkin Seeds\r\nRaisins\r\nReal Bacon Bits\r\nRed Cabbage\r\nRed Onion\r\nRed Peppers\r\nSprouts\r\n\r\nStrawberries\r\nSunflower Seeds\r\nToasted Almonds\r\nTomatoes\r\nAsian Sesame\r\nBalsamic Vinaigrette\r\nButtermilk Ranch\r\nCreamy Greek Feta\r\nFat-Free Raspberry\r\nHoney Dijon and Herb\r\nMighty Caesar\r\nRustico Italian\r\nSpring Herb Garlic\r\nSweet Onion\r\n\r\nPlease note not all toppings available at all locations. Ingredients subject to change based on availability.', '11.95', 900),
(121, '2018-06-23 15:45:13', 2, 2, 'Mediterranean Side Salad - Regular', NULL, '4.50', 240),
(122, '2018-06-23 15:45:25', 2, 2, 'Mediterranean Side Salad - Large', NULL, '6.95', 480),
(123, '2018-06-23 15:45:43', 2, 2, 'Grain, Rice & Pasta Side Salad - Regular', NULL, '4.50', 540),
(124, '2018-06-23 15:47:06', 2, 2, 'Grain, Rice & Pasta Side Salad - Large', NULL, '6.95', 1080),
(125, '2018-06-23 15:47:36', 2, 5, 'Fruit Salad - Regular', NULL, '4.50', 100),
(126, '2018-06-23 15:47:47', 2, 2, 'Fruit Salad - Large', NULL, '6.95', 200),
(127, '2018-06-23 15:48:04', 2, 2, 'Soup of the Day - Regular', NULL, '4.00', 260),
(128, '2018-06-23 15:48:15', 2, 2, 'Soup of the Day - Large', NULL, '6.50', 520),
(129, '2018-06-23 15:48:32', 2, 2, 'Premium Soup of the Day - Regular', NULL, '5.00', 370),
(130, '2018-06-23 15:48:43', 2, 2, 'Premium Soup of the Day - Large', NULL, '8.00', 740),
(131, '2018-06-23 15:48:58', 2, 2, 'Chili - Regular', NULL, '5.00', 220),
(132, '2018-06-23 15:49:09', 2, 2, 'Chili - Large', NULL, '8.00', 440),
(133, '2018-06-23 15:49:21', 2, 2, 'Mac’n Cheese - Regular', NULL, '5.00', 380),
(134, '2018-06-23 15:49:32', 2, 2, 'Mac’n Cheese - Large', NULL, '8.00', 760),
(135, '2018-06-23 15:50:26', 2, 8, 'Bacon, Egg & Cheese Bagel', NULL, '5.00', 460),
(136, '2018-06-23 15:50:37', 2, 8, 'B.L.T. Cheese Bagel', NULL, '5.00', 530),
(137, '2018-06-23 15:50:46', 2, 8, 'Western Bagel', NULL, '5.00', 550),
(138, '2018-06-23 15:51:01', 2, 8, 'Breakfast Wrap', '', '5.00', 510),
(139, '2018-06-23 15:51:13', 2, 8, 'Greens, Egg & Ham Bagel', NULL, '5.50', 590),
(140, '2018-06-23 15:51:24', 2, 8, 'Classic Grilled Cheese on Challah', NULL, '4.00', 660),
(141, '2018-06-23 15:51:34', 2, 8, 'Grilled Cheese w/ Bacon on Challah', NULL, '5.25', 750),
(142, '2018-06-23 15:51:46', 2, 8, 'Grilled Cheese w/ Bacon & Tomato on Challah', NULL, '5.75', 760),
(143, '2018-06-23 15:51:57', 2, 8, 'Bagel or Toast', NULL, '1.50', 330),
(144, '2018-06-23 15:52:07', 2, 8, 'Bagel & Cheese', NULL, '2.75', 430),
(145, '2018-06-23 15:52:16', 2, 8, 'Bagel w/ Egg & Cheese', NULL, '4.00', 510),
(146, '2018-06-23 15:52:26', 2, 8, 'Bagel w/ Bacon & Cheese', NULL, '4.00', 490),
(147, '2018-06-23 15:52:36', 2, 8, 'Bagel w/ Egg & Sausage', NULL, '4.00', 670),
(148, '2018-06-23 15:52:45', 2, 8, 'Gluten Free Toast', NULL, '2.00', 320),
(149, '2018-06-23 15:53:36', 2, 2, 'Grilled Cheese', 'Pick from a variety of breads, proteins, toppings and dressings to tempt your taste buds. Can’t decide? That’s okay – try a different combination each time you visit.\r\n\r\nToppings:\r\n10 Grain\r\nBagel\r\nCaraway Rye\r\nDark Rye\r\nEgg Challah\r\nFrench Baguette\r\nLight Rye\r\nPumpernickel\r\nWhite (GF)\r\nWhite Wrap\r\n\r\nWhole Wheat Wrap\r\nCheddar\r\nCream Cheese\r\nHavarti\r\nSwiss (LF)\r\nSmoked Gouda (LF)\r\nAll Beef Salami\r\nBacon\r\nCorned Beef\r\nHam\r\n\r\nSmoked Meat\r\nTurkey\r\nAvocado\r\nBaby Kale\r\nBaby Spinach\r\nBlack Olives\r\nCapers\r\nCarrot\r\nCucumber\r\n1/2 Dill Pickle Diced\r\n\r\nHot Banana Peppers\r\nMango\r\nMixed Bell Peppers\r\nMushroom\r\n1/4 Pear\r\nRed Onion\r\nSauerkraut\r\nSliced Tomato\r\nSprouts\r\n\r\nPlease note not all toppings available at all locations. Ingredients subject to change based on availability.', '4.00', 660),
(150, '2018-06-23 15:54:14', 2, 3, 'Soft Drinks', 'A selection of carbonated beverages including Coca Cola, Diet Coke, Sprite, Diet Sprite, Canada Dry Ginger Ale, Barq’s Root Beer, C-Plus Orange and Grape (selection varies per location).', '2.75', NULL),
(151, '2018-06-23 15:54:31', 2, 3, 'Bottled Water', 'Naya, Dasani, Glaceau Vitaminwater', '2.75', 0),
(152, '2018-06-23 15:54:54', 2, 3, 'Coffee', 'Choose from Williams Fresh Cafe Signature Blend coffee or decaffeinated. Served with cream, sugar and sweetener.\r\nSm. $1.90 / Med. $2.10 / Lrg $2.35', '2.35', NULL),
(153, '2018-06-23 15:55:09', 2, 3, 'Nestea Iced Tea', 'Choice of regular, diet or green Nestea.', '2.75', NULL),
(154, '2018-06-23 15:55:22', 2, 3, 'Milk', 'Skim, 2% and Chocolate Milk.', '2.75', NULL),
(155, '2018-06-23 15:55:34', 2, 3, 'Tea', 'Assorted teas including Orange Pekoe and a selection of Higgins and Burke green and herbal teas. Served with milk or cream, sugar and sweetener.\r\n\r\nSm. $1.90 / Med. $2.10 / Lrg $2.35', '2.35', NULL),
(156, '2018-06-23 15:55:59', 2, 5, 'Pastries', 'Brownies, Nanaimo bars, date squares, Rice Krispie squares, and nature bars.', '4.00', 370),
(157, '2018-06-23 15:56:18', 2, 5, 'Cookies', 'Chocolate chunk, white chocolate macadamia nut, double chocolate, oatmeal raisin and peanut butter cookies.', '4.00', 400);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `created_at`, `name`, `address`) VALUES
(1, '2018-06-23 13:40:14', 'Jack Astor\'s Bar and Grill', '10 Dundas St E, Toronto, ON M5B 2G9'),
(2, '2018-06-23 13:40:35', 'Druxy\'s', '2 St Clair Ave E, Toronto, ON M4T 2T5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
