-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 12:56 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eating4health`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergen`
--

CREATE TABLE `allergen` (
  `allergen_id` int(11) NOT NULL,
  `allergen` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allergen`
--

INSERT INTO `allergen` (`allergen_id`, `allergen`) VALUES
(1, 'gluten'),
(2, 'eggs'),
(3, 'dairy'),
(4, 'sugar'),
(5, 'nuts'),
(6, 'shellfish'),
(7, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `ingredient_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `ingredient_name`) VALUES
(1, 'almond milk'),
(2, 'aquafaba'),
(3, 'erythritol'),
(4, 'ground majoram'),
(5, 'cream of buckwheat cereal'),
(6, 'peanut powder'),
(7, 'maple extract'),
(8, 'acorn squash'),
(9, 'sausage'),
(10, 'coconut milk'),
(11, 'onion(s)'),
(12, 'ghee'),
(13, 'coconut oil'),
(14, 'avocado oil'),
(15, 'garlic '),
(16, 'rosemary'),
(17, 'thyme'),
(18, 'sea or mineral salt'),
(19, 'black pepper'),
(20, 'white grapes'),
(21, 'collard greens leaves'),
(22, 'parsley '),
(23, 'pineapple '),
(24, 'avocado'),
(25, 'flax seeds'),
(26, 'ginger'),
(27, 'beetroot greens and stems'),
(28, 'mango '),
(29, 'blackberries'),
(30, 'banana'),
(31, 'sunflower seeds'),
(32, 'pumpkin seeds'),
(33, 'hemp oil '),
(34, 'hemp seeds'),
(35, 'persimmons'),
(36, 'rhubard stalk'),
(37, 'apple(s)'),
(38, 'pomegranate seeds'),
(39, 'almond flour'),
(40, 'coconut flour'),
(41, 'maple syrup '),
(42, 'vanilla extract'),
(43, 'coconut sugar '),
(44, 'pecans'),
(45, 'medjool dates'),
(46, 'chocolate chips'),
(47, 'cocoa powder'),
(48, 'molasses'),
(49, 'xanthan gum'),
(50, 'vegetable glycerin'),
(51, 'tahini'),
(52, 'peanut butter'),
(53, 'agave nector'),
(54, 'coconut cream'),
(55, 'powdered sweetener'),
(56, 'cashew milk'),
(57, 'buckwheat flour'),
(58, 'baking powder'),
(59, 'baking soda'),
(60, 'unsweetened applesauce'),
(61, 'ground turkey'),
(62, 'garlic powder'),
(63, 'crushed red pepper flakes'),
(64, 'tomato sauce'),
(65, 'zucchini'),
(66, 'english cucumber '),
(67, 'butter '),
(68, 'paprika'),
(69, 'quinoa'),
(70, 'shiitake mushrooms '),
(71, 'coconut aminos'),
(72, 'kale '),
(73, 'walnuts '),
(74, 'butternut squash '),
(75, 'shredded coconut'),
(76, 'balsamic vinegar'),
(77, 'shallot'),
(78, 'cauliflower '),
(79, 'arrowroot powder'),
(80, 'spelt breadcrumbs '),
(81, 'rice vinegar '),
(82, 'sour cream'),
(83, 'dill'),
(84, 'dill pickle juice'),
(85, 'lemon juice'),
(86, 'apple cider vinegar'),
(87, 'bay leaves'),
(88, 'tomato paste '),
(89, 'green cabbage '),
(90, 'beef broth'),
(91, 'vegetable broth/stock'),
(92, 'carrots'),
(93, 'turnip '),
(94, 'italian seasoning'),
(95, 'basil'),
(96, 'yellow potato'),
(97, 'chicken thigh'),
(98, 'chicken breast'),
(99, 'red curry paste'),
(100, 'sweet potato(s) '),
(101, 'snow peas '),
(102, 'red bell pepper'),
(103, 'yellow bell pepper'),
(104, 'brown rice noodles '),
(105, 'lime juice'),
(106, 'cilantro '),
(107, 'chicken sausage(s)'),
(108, 'curry powder'),
(109, 'ground cumin '),
(110, 'black beans '),
(111, 'rainbow bell peppers'),
(112, 'oregano '),
(113, 'capers '),
(114, 'chicken broth'),
(115, 'olives '),
(116, 'tapioca flour '),
(117, 'full-fat canned coconut milk'),
(118, 'marsala wine'),
(119, 'baby bella mushrooms'),
(120, 'gluten-free flour'),
(121, 'boneless chicken '),
(122, 'peas'),
(123, 'walnuts'),
(124, 'nutritional yeast'),
(125, 'arugala'),
(126, 'filtered water '),
(127, 'za\'atar spice '),
(128, 'chia seeds'),
(129, 'buckwheat groats '),
(130, 'dried parsley'),
(131, 'tomatoes'),
(132, 'rice'),
(133, 'cajun chicken sausages'),
(134, 'black-eyed peas '),
(135, 'hot sauce '),
(136, 'cayenne pepper'),
(137, 'orange bell pepper'),
(138, 'scallions '),
(139, 'mayonnaise'),
(140, 'soy sauce'),
(141, 'sriracha'),
(142, 'ground beef'),
(143, 'gluten-free breadcrumbs'),
(144, 'green beans'),
(145, 'korean chili flakes'),
(146, 'light brown sugar'),
(147, 'toasted sesame oil'),
(148, 'cornstarch'),
(149, 'salmon fillet'),
(150, 'cilantro lime rice'),
(151, 'mixed vegetables'),
(152, 'red potatoes '),
(153, 'chickpeas'),
(154, 'asparagus'),
(155, 'beef roast'),
(156, 'celery stalk(s)'),
(157, 'mushrooms'),
(158, 'glucomannan'),
(159, 'hard boiled eggs'),
(160, 'dijon mustard'),
(161, 'chives'),
(162, 'sesame seeds'),
(163, 'white beans '),
(164, 'butternut squash'),
(165, 'Bragg liquid aminos '),
(166, 'mesquite liquid smoke'),
(167, 'worcestershire sauce'),
(168, 'tamari sauce '),
(169, 'cheese'),
(170, 'corn'),
(171, 'pizza sauce '),
(172, 'salsa '),
(173, 'garbanzo beans'),
(174, 'corn'),
(175, 'chili powder'),
(176, 'ground coriander'),
(177, 'lemon '),
(178, 'lemon zest'),
(179, 'broccoli head'),
(180, 'kosher salt'),
(181, 'extra-virgin olive oil '),
(182, 'cherry tomatoes'),
(183, 'red cabbage '),
(184, 'pork/turkey bacon '),
(185, 'peanuts'),
(186, 'yellow mustard'),
(187, 'smoked paprika'),
(188, 'garlic salt'),
(189, 'onion powder'),
(190, 'plain greek yogurt '),
(191, 'peas'),
(192, 'cinnamon'),
(193, 'mandarin oranges'),
(194, 'cranberries'),
(195, 'cucumbers'),
(196, 'liquid stevia'),
(197, 'jicama '),
(198, 'unsweetened coconut'),
(199, 'pecans'),
(200, 'almonds'),
(201, 'pumpkin spice'),
(202, 'pumpkin puree'),
(203, 'flax seeds'),
(204, 'rolled oats'),
(205, 'vanilla bean paste'),
(206, 'swerve '),
(207, 'blueberries'),
(208, 'egg whites'),
(209, 'eggs'),
(210, 'mixed spice'),
(211, 'gluten-free oat flour'),
(212, 'garbanzo bean flour'),
(213, 'mixed fruit'),
(214, 'variety nuts'),
(215, 'spinach'),
(216, 'honey or maple syrup'),
(217, 'liquid hickory smoke'),
(218, 'celery salt'),
(219, 'tumeric'),
(220, 'honey and ginger mixture 1:1'),
(221, 'almond milk');

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `measurement_id` int(11) NOT NULL,
  `measurement` varchar(29) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`measurement_id`, `measurement`) VALUES
(2, 'cup'),
(3, 'teaspoon'),
(4, 'tablespoon'),
(5, 'quart'),
(6, 'pint'),
(7, 'gallon'),
(8, 'bag'),
(9, 'each'),
(10, 'slices');

-- --------------------------------------------------------

--
-- Table structure for table `measurement_qty`
--

CREATE TABLE `measurement_qty` (
  `measurement_qty_id` int(11) NOT NULL,
  `measurement_qty` varchar(29) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `measurement_qty`
--

INSERT INTO `measurement_qty` (`measurement_qty_id`, `measurement_qty`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '1/4'),
(8, '1/2'),
(9, '3/4'),
(10, '1/3'),
(11, '2/3');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `recipe_name` varchar(32) NOT NULL,
  `description` varchar(128) NOT NULL,
  `category` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `recipe_name`, `description`, `category`) VALUES
(2, 'Oatmeal', 'Combine Water or Milk and Oats with salt (as desired).  Heat in microwave on high for two minutes.', 'Breakfast'),
(3, 'Ham Sandwich', 'Ham and Bread with optional toppings.', 'Lunch');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_images`
--

CREATE TABLE `recipe_images` (
  `recipe_image_id` int(11) NOT NULL,
  `recipe_image` varchar(32) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `recipe_id` int(11) NOT NULL,
  `measurement_id` int(11) NOT NULL,
  `measurement_qty_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `allergen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`recipe_id`, `measurement_id`, `measurement_qty_id`, `ingredient_id`, `allergen_id`) VALUES
(2, 2, 8, 204, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergen`
--
ALTER TABLE `allergen`
  ADD PRIMARY KEY (`allergen_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`measurement_id`);

--
-- Indexes for table `measurement_qty`
--
ALTER TABLE `measurement_qty`
  ADD PRIMARY KEY (`measurement_qty_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `recipe_images`
--
ALTER TABLE `recipe_images`
  ADD PRIMARY KEY (`recipe_image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergen`
--
ALTER TABLE `allergen`
  MODIFY `allergen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `measurement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `measurement_qty`
--
ALTER TABLE `measurement_qty`
  MODIFY `measurement_qty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
