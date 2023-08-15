-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 05:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\n\r\nToday, we focus on sustainable urban greening and forest restoration projects, spread environmental awareness, and activate people to become environmental stewards across South Asia.\r\n\r\n\r\n', '\r\n\r\nIn 2010, I was returning home to Dhaka after travelling 16 countries as part of a film production crew. Although the adventure had allowed for incredible personal growth, I was keenly aware of the negative impact of his nomadic lifestyle on the environment.\r\n\r\nAfter discussing his concerns with 9 friends over supper one night, the group resolved to come together and get their hands dirty for our planet. The goal? To plant 1000 trees during the month of September (Arbor Month) in Dhaka’s under-greened, marginalized communities.\r\n\r\nThey fundraised, researched appropriate planting locations, gathered like-minded individuals and the campaign came together. After the final tree had been placed in the ground, the group went back to their day jobs. But their phones didn’t stop ringing. Underprivileged schools who had heard about the project were requesting trees, companies were offering their support and individuals were asking to volunteer.\r\n\r\Achol, Isfaq, Raiyan, Shuvarthi realized that there was an ongoing need for an organization which connects people to the planet, each other and themselves and decided to focus all of their energy on making it a reality.\r\n\r\nAnd, Plentily was born.\r\n\r\nToday, we focus on sustainable urban greening and forest restoration projects, spread environmental awareness, and activate people to become environmental stewards across South Asia.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'raiyannazir7@gmail.com', '123456', 'user-profile-min.png', '+8801735863533', 'Bangladesh', 'Front-End Developer', 'Name:Raiyan Nazir Chowdhury\r\nID:19301162\r\nPosition: Frond-End Developer');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(27, '::1', 0, '100', 'Select a Size');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Birthday', 'yes', 'bday.jpg'),
(3, 'Sympathy', 'no', 'sym.jpg'),
(4, 'Love & Charm', 'yes', 'two-black-heart-png-transparent-two-black-heart.png'),
(5, 'Gift', 'no', '004532.jpg'),
(6, 'Weekly Special', 'no', '004732.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ecomstore@mail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(7, 27, '10 TK OFF', '90', 'OFFER10  ', 30, 4),
(8, 30, '30 taka off', '120', 'coupon30', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(9, 'Nazir', 'raiyannazir9@gmail.com', '789111', 'bd', 'dhaka', '01735863533', 'shewrapara', '0e0EPeV.jpg', '::1', '125092195'),
(10, 'Sherlock Holmes', 'sherlockholmes221@hotmail.com', 'Sherlocked', 'uk', 'london', '92862288', '221 baker street', '3500.webp', '::1', '588952111');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(70, 9, 300, 2121307187, 2, 'Medium', '2023-08-19 13:33:26', 'Complete'),
(71, 9, 500, 2121307187, 2, 'Select a Size', '2023-08-19 13:33:46', 'Complete'),
(72, 9, 435, 1063205254, 5, 'Large Bouquet', '2023-08-19 14:38:10', 'pending'),
(73, 9, 300, 1942656438, 5, 'Large', '2023-08-19 14:47:13', 'Complete'),
(74, 9, 1000, 782446872, 2, 'Medium', '2023-08-19 15:42:00', 'Complete'),
(75, 9, 240, 782446872, 3, 'Small', '2023-08-19 15:42:44', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'BRAC Nursery', 'yes', 'nursery.png'),
(3, 'Green Escapes', 'no', 'green_escapes_logo.jpg'),
(4, 'Gardenia', 'no', 'download.png'),
(5, 'Shaheen Nursery', 'no', 'download.jpg'),
(7, 'Shobuj Bangla', 'no', 'images.png'),
(8, 'Green BD', 'no', 'green.png'),
(9, 'Azimpur Nursery', 'no', '234942.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(46, 2, 2, 'EBL Skypay', 2, 2, '2'),
(47, 1, 1, 'EBL Skypay', 1, 1, '1'),
(48, 1942656438, 300, 'bkash', 64, 24526484, '8-19-2023'),
(49, 782446872, 1000, 'bkash', 0, 2949562, '7-8-2023'),
(50, 782446872, 240, 'bkash', 0, 594524846, '7-28-2023');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(70, 9, 2121307187, '30', 2, 'Medium', 'Complete'),
(71, 9, 2121307187, '33', 2, 'Select a Size', 'Complete'),
(72, 9, 1063205254, '25', 5, 'Large Bouquet', 'pending'),
(73, 9, 1942656438, '24', 5, 'Large', 'Complete'),
(74, 9, 782446872, '17', 2, 'Medium', 'Complete'),
(75, 9, 782446872, '26', 3, 'Small', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(0, 8, 6, 9, '2023-08-19 15:37:56', 'The Pandan', 'pandan', 'Pandan-1.jpg', 'pandan-3.jpg', 'pamdan-3.jpg', 200, 190, '\r\nPandan leaves are commonly pulverized to produce an emerald-green extract. The more mature the leaf, the darker the hue and deeper the flavor.\r\n', '\r\n\r\nPandanus species typically have slender palmlike stems and produce from their trunks and stems aerial prop roots that are often huge and those together with their terminal crowns of swordlike leaves, give the plants a distinctive appearance.', '\r\n\r\n', 'pandan', 'In stock', 'product'),
(15, 4, 5, 4, '2023-07-28 10:02:57', 'The Murano', 'Murano', 'Murano.jpg', 'Murano-1.jpg', 'Murano-2.jpg', 88, 75, '\r\n\r\nThis towering white orchid comes potted in a patterned blue and white pot that resembles the artistic glass one may find in the Italian city of Murano. Place on a kitchen counter or in an office for a chic look that’s nothing short of bellissima\r\n\r\n', '\r\n\r\n\r\nDual staked, White Orchid ranging from Blue and White Ceramic Planter\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'Murano', 'Stock out', 'bundle'),
(17, 4, 4, 2, '2023-07-27 21:16:42', 'Red Rose with Vase', 'Flower ', 'istockphoto-111795740-612x612.jpg', 'istockphoto-178509071-612x612.jpg', 'istockphoto-1095283072-170667a.jpg', 500, 500, '\r\n\r\nWhile red roses are synonymous with celebrating the joy and passion of love, they are also a special gift during times of grieving. Red roses are a beautiful way to convey your respect and love for someone who has passed and can also represent courage and gratitude.', '\r\n\r\n', '\r\n\r\n', 'Red', 'In Stock', 'product'),
(18, 4, 4, 5, '2023-07-27 21:29:26', 'Scarlet Bouquet', 'Scarlet', 'Delightfull-Bouquet-141.jpg', 'Delightfull-Bouquet-142.jpg', 'Delightfull-Bouquet-144.jpg', 400, 400, '\r\n\r\n\r\nThe holiday season calls for something resplendent, which is where The Scarlet steps in to do the honors. Our brilliant arrangement reflects the spirit and joy of the season with its vivid assortment of red roses, anemones, and pink ranunculus. Wherever it goes, it’s destined to add a dash of festive cheer and good tidings to your space.\r\n\r\n\r\n\r\n', '\r\nGarden Roses, Anemones, Ranunculus, Photinia, and Mini Carnations\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Scarlet', 'In Stock', 'product'),
(19, 4, 4, 3, '2023-07-28 10:17:01', 'The Ellington', 'Ellington', 'The-Ellington-750x750.jpg', 'The-Ellington-2.jpg', 'The-Billy-4-1.jpg', 95, 95, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nSwingy stems and vibrant colors evoke a jazzy effect on The Ellington. This bouquet is a multicolored delight featuring sweet and romantic shades of pink, purple, and peach ranunculus. Pops of white and green offer just the right contrast, making this showy display the perfect choice for a centerpiece or an entryway accessory.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nRanunculus, Hebe, and Eucalyptus\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'The', 'In Stock', 'product'),
(20, 4, 2, 7, '2023-07-27 21:47:50', 'The Skye', 'Skye', 'skye.jpg', 'skye-2.jpg', 'skye-3.jpg', 100, 100, '\r\n\r\nA symbol of love, beauty, and admiration, this purple-speckled orchid is planted in a pressed zinc pot. Send to a friend or loved one and make a lasting impression.', '\r\n\r\nPurple Double Orchid ranging, Grey Metal Planter', '\r\n\r\n', 'skye', 'In Stock', 'product'),
(21, 8, 5, 9, '2023-07-28 09:48:44', 'The Dinero', 'Dinero', 'G-1.jpg', 'G-2.jpg', 'G-3.jpg', 90, 90, '\r\n\r\nThe money tree is symbolic of good fortune and prosperity, but that’s not all that makes this beauty so appealing. The signature braided trunk is where your luck is thought to reside, while the brilliant green leaves represent natural elements. The low-maintenance plant is potted in one of our handcrafted ceramic pots bearing attractive geometric patterns for a one-of-a-kind look.\r\n\r\nNote: The pattern of your pot may vary slightly as pictured above.\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nMoney Tree in a Black and White Ceramic Planter\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'Dinero', 'Stock out', 'product'),
(22, 8, 6, 8, '2023-07-28 09:48:12', 'The Quinn ', 'Quinn', 'Q-1.jpg', 'Q-2.jpg', 'Q-4.jpg', 85, 85, '\r\n\r\n\r\nWith its towering snake plant leaves, The Quinn isn’t only pretty to look at but has several benefits too. Along with emitting oxygen and filtering toxins from the air, it’s also been shown to reduce stress and spark creativity.\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\nSnake plant in a White and Black Ceramic Planter\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Quinn', 'In Stock', 'product'),
(23, 5, 6, 9, '2023-07-28 09:42:02', 'Mango Plant', 'Mango', '1281.970.jpg', 'cold.jpg', 'cold.jpg', 300, 300, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nThe mango tree is erect and branching with a thick trunk and broad, rounded canopy. The leaves of the tree are are shiny and dark green. They are either elliptical or lanceolate with long petioles and a leathery texture. The tree produces dense clusters of flowers with cream-pink petals on branched panicles.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nThe mango tree is erect and branching with a thick trunk and broad, rounded canopy. The leaves of the tree are are shiny and dark green. They are either elliptical or lanceolate with long petioles and a leathery texture. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Mango', 'In Stock', 'product'),
(24, 6, 6, 2, '2023-07-28 10:14:56', 'Chili Plant With Pot', 'Chili', 'VECHI36878.jpg', 'VECHI36879.jpg', 'chi.jpg', 60, 60, '\r\nChillie Growing in Pot. Good soil is the key to productive chillie plants. Buy the best quality potting mix that is well-drained and loose, or also make your own. It should be rich in organic matter and fertile. For this, you can add well-rotted manure or compost into it at the planting time.\r\n', '\r\n\r\nTheir stems are woody at the base, fleshy and either erect or semi-prostrate. The shrub consists of a main tap root with many lateral roots. ', '\r\n\r\n', 'chili', 'In Stock', 'product'),
(25, 7, 5, 3, '2023-07-28 10:27:43', 'Aloe Vera ', 'Aloe', 'istockphoto-804524148-612x612.jpg', 'Aloe-Vera-Pic-Main.jpg', '61JMG10cnyL._SX569_.jpg', 87, 99, '\r\n\r\n\r\nAloe vera is a herb with succulent leaves that are arranged in a rosette. The leaves are grey to green and sometimes have white spots on their surfaces. They have sharp, pinkish spines along their edges and are the source of the colorless gel found in many commercial and medicinal products.\r\n', '\r\n\r\nThe plant has triangular, fleshy leaves with serrated edges, yellow tubular flowers and fruits that contain numerous seeds.\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Aloe', 'In Stock', 'bundle'),
(26, 9, 6, 3, '2023-07-28 14:16:35', 'Creeper Plant', 'Creeper', 'climbing-1.jpg', 'climbing-2.jpg', 'climbing-3.jpg', 80, 80, '\r\n\r\nA creeper is a plant that grows very low to the ground or close to a wall or fence. Many types of ivy and other vines are creepers.\r\n', '\r\n\r\n\r\nThey creep along with the soil and possess thin, weak and long stems. Require support of other plants, seeks by extended branches. Stems are delicate and cannot support their own weight, hence cannot stand erectly.\r\n', '\r\n\r\n\r\n\r\n', 'Creeper', 'In Stock', 'product'),
(27, 5, 5, 4, '2023-07-28 14:45:53', 'Strawberry Plant', 'Strawberry', 'straw-1.jpg', 'straw-2.jpg', 'straw-3.jpg', 100, 100, '\r\n\r\n\r\nStrawberries are low-growing herbaceous plants with a fibrous root system and a crown from which arise basal leaves. The leaves are compound, typically with three leaflets, sawtooth-edged, and usually hairy.\r\n\r\n\r\n', '\r\n\r\n\r\nStrawberry plants may not bear fruit immediately, but once it does, it remains productive for about 5 years. Strawberries are the first fruit to ripen in the spring. Strawberries are a member of the rose family.\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'Strawberry', 'In Stock', 'product'),
(28, 8, 5, 2, '2023-07-28 14:49:13', 'Small Cactus ', 'Cactus', 'cactus-2.jpg', 'cactus-1.jpg', 'cactus-3.jpg', 90, 90, '\r\n\r\nCacti generally have thick herbaceous or woody chlorophyll-containing stems. Cacti can be distinguished from other succulent plants by the presence of areoles, small cocoonlike structures with trichomes (plant hairs) and, in almost all species, spines or barbed bristles (glochids).\r\n\r\n', '\r\n\r\n\r\nThese plants are leafless, or their leaves are modified into thorns. Such structure helps them to conserve water by minimizing the water lost through transpiration. The roots of cactus penetrate deep into the soil to obtain water. They have a waxy coating on their green and fleshy stem which again minimizes water loss.', '\r\n\r\n\r\n\r\n', 'Cactus', 'Stock out', 'product'),
(33, 4, 4, 4, '2023-07-28 09:09:12', 'The Ellington', 'Elling', 'pink-3.jpg', 'pink-2.jpg', 'PInk Elington.jpg', 250, 250, '\r\n\r\nSwing stems and vibrant colors evoke a jazzy effect on The Ellington. This bouquet is a multicolored delight featuring sweet and romantic shades of pink, purple, and peach rancorous. ', '\r\n\r\n', '\r\n\r\n', 'Elling', 'In stock', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Flower ', 'yes', 'Screenshot000019.jpg'),
(5, 'Fruit ', 'no', 'Screenshot000955.jpg'),
(6, 'Vegetable ', 'no', 'Screenshot001428.jpg'),
(7, 'Herbal', 'no', 'Screenshot002201.jpg'),
(8, 'Grass', 'no', 'Screenshot001756.jpg'),
(9, 'Climbers', 'no', 'Screenshot003015.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', 'The Site and the provided products and services are delivered by Plantly LLC (hereinafter referred to as “Plantify”).  The following terminology applies to our Terms, Privacy Policy, Cookie Statement, Accessibility Disclaimer and other guidelines and agreements indicated by us from time to time: “client”, “user”, “you” and “your” refers to you, the person logged on this website and compliant to the Company’s terms and conditions; “ourselves”, “we”, “our” and “us”, refers to our parent and holding companies.  Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to the same.\r\n\r\nAll terms hereof refer to the offer, acceptance, and consideration of payment necessary to undertake the process of our assistance to the user in the most appropriate manner for the express purpose of meeting the client’s needs in respect of the provision of Plantly’s stated services, in accordance with and subject to, prevailing laws applicable to Plantly.  Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to the same.\r\n\r\nHenceforth, by accessing this Site, you are agreeing to be bound by these Terms, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws.  If you do not agree with any of these Terms, you are prohibited from using or accessing this Site.  The materials contained in this Site are protected by applicable copyright and trademark law.'),
(2, 'Refund Policy', 'link2', 'Once the buyer has successfully made a purchase, the seller is responsible to deliver the product. All purchases have an automatic cool-off period of ten (10) days, counted from the date where the product was received by the buyer, as indicated by the courier service. After such period, all purchases are automatically accepted and will remain final. After the cooling-off period, money from the purchase will be transferred to the seller’s account. However, in the rare occurrence that if after ten (10) days the dispute is not resolved, Plantify may intervene as a last resort. It is our goal is to resolve any disputes as quickly as possible while being fair to both parties. If you are concerned about the refund policy, please ask the seller before you make your purchase. For more information, please take a look at our Mediation Section. Our refund policy varies from seller to seller. We recommend our sellers put their return policy on their profile pages, setup through their vendor dashboard. In general, we honor a full refund or a partial refund, based on all evidence we collect from each party. In almost all cases, however, buyers and sellers will settle the dispute among themselves, as we are all here for the same reason — we love plants. In the case of a refund, the buyer will receive the full price of each order back, less our service fees and any merchant fees. In such case, the seller would not receive any amount at all. Once the refund is approved, Plantify will transfer the refund within no less than fifteen (15) days from the date our systems approve the refund or when the merchant approves the refund, whichever occurs later. Buyer should include a description of the items in question, including the reason Buyer is seeking a refund, Buyer’s name, address, account information, payment details, and product(s) along with images of the shipping package, the product, and any defects or shipping damages. Buyer should keep in mind that Buyer will generally have to pay for the shipping and/or insurance on the shipment back to seller.'),
(3, 'Pricing and Promotions Policy', 'link3', 'All our sellers will undertake their reasonable commercial efforts to ensure that the quoted prices and descriptions are true, accurate, updated and correct, but notwithstanding the foregoing, Plantify cannot fully guarantee such information.  Accordingly, the specifications, availability, eligibility, prices and characteristics of the products and services provided via the Site will be subject to change at any time, may or will be discontinued without prior notice and without any responsibility on behalf of Plantify.\r\n\r\nYou authorize us to charge your account for Plantify´s fees. Unless noted, fees are in US dollars; tax is additional. To the extent permitted by law, fees are nonrefundable, even for products we remove.  We may refuse purchases, which may place a hold on your account.\r\n\r\nThe receipt of the order is recorded and confirmed by our platform, with the sending of an e-mail to the address indicated by the buyer during registration.  Please keep the email until you receive the purchased product(s).');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15),
(7, 7, 29),
(8, 8, 30),
(10, 9, 31),
(11, 9, 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
