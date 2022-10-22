-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2022 at 08:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourist_guide`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `thumbnail` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `content`, `thumbnail`) VALUES
(1, ' Ahsan Manzil Museum', 'Ahsan Manzil is the erstwhile official residential palace and seat of the Nawab of Dhaka. The building is situated at Kumartoli along the banks of the Buriganga River in Dhaka, Bangladesh. Construction was started in 1859 and was completed in 1872. It was constructed in the Indo-Saracenic Revival architecture. It has been designated as a national museum.', 'upload/Pictures/Gallery/Ahsan_Manzil_Museum.jpg'),
(2, 'Lalbagh Fort', 'Lalbagh Fort is a fort in the old city of Dhaka, Bangladesh. Its name is derived from its neighborhood Lalbagh, which means Red Garden. The term Lalbagh refers to reddish and pinkish architecture from the Mughal period. The original fort was called Fort Aurangabad. Its construction was started by Prince Muhammad Azam Shah, who was the son of Emperor Aurangzeb and a future Mughal emperor himself.', 'upload/Pictures/Gallery/Lalbagh_Fort.jpg'),
(3, 'Sompur Mahavihara', 'Somapura Mahavihara in Paharpur, Badalgachhi, Naogaon, Bangladesh is among the best known Buddhist viharas or monasteries in the Indian Subcontinent and is one of the most important archaeological sites in the country. It was designated as a UNESCO World Heritage Site in 1985. It is one of the most famous examples of architecture in pre-Islamic Bangladesh. It dates from a period to the nearby Halud Vihara and to the Sitakot Vihara in Nawabganj Upazila of Dinajpur District.', 'upload/Pictures/Gallery/Sompur_Mahavihara.jpg'),
(4, 'Sixty Dome Mosque', 'The Sixty Dome Mosque, is a mosque in Bagerhat, Bangladesh. It is a part of the Mosque City of Bagerhat, a UNESCO World Heritage Site. It is the largest mosque in Bangladesh from the sultanate period. It was built during the Bengal Sultanate by Khan Jahan Ali, the governor of the Sundarbans. It has been described as \"one of the most impressive Muslim monuments in the whole of South Asia.', 'upload/Pictures/Gallery/Sixty_Dome_Mosque.jpg'),
(5, 'Kantajew Temple', 'Kantanagar Temple, commonly known as Kantaji Temple or Kantajew Temple at Kantanagar, is a late-medieval Hindu temple in Dinajpur, Bangladesh. The Kantajew Temple is a religious edifice belonging to the 18th century. The temple belongs to the Hindu Kanta or Krishna and this is most popular with the Radha-Krishna cult in Bengal. This temple is dedicated to Krishna and his wife Rukmini. Built by Maharaja Pran Nath, its construction started in 1704 CE and ended in the reign of his son Raja Ramnath in 1722 CE. It is an example of terracotta architecture in Bangladesh and once had nine spires, but all were destroyed in an earthquake that took place in 1897', 'upload/Pictures/Gallery/Kantajew_Temple.jpg'),
(6, 'Sundarban National Park', 'Silpa carja joynul abedin songroho sala ', 'upload/Pictures/Gallery/Sundarban_National_Park.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gmap` mediumtext NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `division` varchar(20) NOT NULL,
  `facility` text NOT NULL,
  `nearby_travel_place` text NOT NULL,
  `budget_min` varchar(20) DEFAULT '0',
  `budget_max` varchar(20) NOT NULL DEFAULT '0',
  `offer` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `address`, `gmap`, `thumbnail`, `description`, `phone`, `division`, `facility`, `nearby_travel_place`, `budget_min`, `budget_max`, `offer`) VALUES
(4, 'Hotel Sukarna Int. Residential', 'Shaheb Bazar Road Somoby Super Market Rajshahi BD 6000, Shaheb Bazar Rd, Rajshahi', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14537.698810169173!2d88.5982898!3d24.3665249!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc183fd56e13f9442!2sHotel%20Sukarna%20International!5e0!3m2!1sen!2sbd!4v1666447595726!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Hotel_Sukarna_Int_Residential.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla u', '01711811014', 'Rajshahi', '[{\"name\":\"24 Hour security.\",\"description\":\"Car parking.\"},{\"name\":\"Interconnecting rooms.\",\"description\":\"Facility Details 4\"}]', '[\"5\"]', '1000', '5000', '20% Off'),
(5, 'Meghpunji Resort, Sajek', 'Sajek valley ', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14648.230657241887!2d92.2923363!3d23.3861311!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc92e1da11dca73b7!2sMeghpunji%20Resort%2C%20Sajek!5e0!3m2!1sen!2sbd!4v1666447791609!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Meghpunji_Resort.jpg', '4 cottages named Tarasha, Purbasha, Rodela, and Meghla\r\n* Complete privacy in each cottage\r\n* Each cottage has a couple bed\r\n* Tiled washroom with high commode\r\n* Spacious open Baranda in each cottage\r\n* Unique Selfie Bridge and delightful night lighting\r\n', '01815761065', 'Chattagram', '[{\"name\":\"1.\",\"description\":\"Guaranteed safety at all time\"},{\"name\":\"2.\",\"description\":\"24 hours water supply\"},{\"name\":\"3.\",\"description\":\"24 hours electricity with the all-time backup of solar, ips, and generator\"},{\"name\":\"4.\",\"description\":\"Swing set and beautiful garden\"}]', '[\"5\"]', '4000', '4500', '10%'),
(6, 'Warisan Residential Hotel', '88 Zodiac Palace, 7th Floor Shaheb Bazar, Rajshahi City 6100 Bangladesh', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14537.80163760934!2d88.6003301!3d24.3656301!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x371ec9788bf4141f!2sWarisan%20Residential%20Hotel!5e0!3m2!1sen!2sbd!4v1666448147657!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Warisan Residential Hotel.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla u', '01793040269', 'Rajshahi', '[]', '[]', '3000', '10000', '20%'),
(8, 'Hotel Nice International', 'West of P.N Girls High SchoolGanakpara, Rajshahi, Rajshahi, Bangladesh', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14537.811773068039!2d88.6012493!3d24.3655419!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x99917b63f27f916e!2sHotel%20Nice%20International!5e0!3m2!1sen!2sbd!4v1666448336588!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Hotel Nice International.jpg', 'At Hotel Nice International, every effort is made to make guests feel comfortable. To do so, the hotel provides the best in services and amenities. 24-hour room service, facilities for disabled guests, Wi-Fi in public areas, valet parking, car park are just a few of the facilities that set Hotel Nice International apart from other hotels in the city.', '01123456789', 'Rajshahi', '[{\"name\":\"Languages spoken\",\"description\":\"English\"},{\"name\":\"Fitness & recreation\",\"description\":\"Game room\"},{\"name\":\"Internet access\",\"description\":\"Wi-Fi in public areas\"}]', '[]', '1500', '6000', '15%'),
(13, 'Hotel Amir International', '46/A, Palika Shopping Centre, Station Road, Mymensingh 2200', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3623.1673062427644!2d90.40787005075742!3d24.755452155476423!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37564f00d617a9c5%3A0xc13982e5ff8297d7!2sHotel%20Amir%20International!5e0!3m2!1sen!2sbd!4v1601649533374!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Hotel Amir International.jpg', 'This straightforward hotel on a bustling urban street walk from Mymensingh Railway Junction This straightforward hotel on a bustling urban street walk from Mymensingh Railway JunctionThis straightforward hotel on a bustling ', '01711167948', 'Mymensingh', '[{\"name\":\"breakfast\",\"description\":\"free breakfast\"},{\"name\":\"wifi\",\"description\":\"free wifi\"}]', '[]', '1000', '8000', ''),
(14, 'Grand Palace Hotel & Resort', 'G L Roy Road, 5400 Rangpur, Bangladesh', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d81268.23436690349!2d89.24015561767587!3d25.75462807357898!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7bd5104fa37f038b!2sGrand%20Palace%20Hotel!5e0!3m2!1sen!2sbd!4v1666449159079!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Grand Palace Hotel & Resort.jpg', 'Grand Palace Hotel & Resort features a restaurant, fitness center, a bar and garden in Rangpur. Featuring family rooms, this property also provides guests with a terrace. ', '01734746072', 'Rangpur', '[{\"name\":\"Services\",\"description\":\"Room service\"},{\"name\":\"Food & Drink\",\"description\":\"Bar, Restaurant\"}]', '[\"10\"]', '2000', '10000', '20%'),
(18, 'Little Rangpur Inn', ' Kotwali Thana Road 2 Mulatole, 5400 Rangpur, Bangladesh', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14374.82697378411!2d89.2491916!3d25.7472098!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf9da7ad29a63ccac!2z4Kay4Ka_4Kaf4KayIOCmsOCmguCmquCngeCmsCDgpofgpqg!5e0!3m2!1sen!2sbd!4v1666449675454!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Little Rangpur Inn.jpg', 'Little Rangpur Inn has a restaurant, free bikes, a fitness center and garden in Rangpur. Among the facilities at this property are room service and a concierge service', '01780873393', 'Rangpur', '[{\"name\":\"Outdoors\",\"description\":\"Outdoor fireplace, Picnic area\"},{\"name\":\"Safety & security\",\"description\":\"Fire extinguishers, Smoke alarms\"}]', '[]', '1500', '5000', '25%'),
(19, 'Mermaid Beach Resort ', 'Pechar Dwip Marine Drive, Road, Ramu 4730', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118943.33925884945!2d91.97344228125596!3d21.311832204968823!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30adc506241a96b9%3A0xe677680604648b8f!2sMermaid%20Beach%20Resort!5e0!3m2!1sen!2sbd!4v1666449958209!5m2!1sen!2sbd', 'upload/Pictures/Hotels/Mermaid_Beach_Resort.jpg', 'We have two restaurants at the Resort. Our cafÃ© serves local and Italian food and the second restaurant offers world cuisine a diverse culinary offering to satisfy every palette.', '01841416468', 'Chattagram', '[{\"name\":\"1\",\"description\":\"Free wifi\"},{\"name\":\"2\",\"description\":\"Hot water kettle\"},{\"name\":\"3\",\"description\":\"Air conditioning\"},{\"name\":\"4\",\"description\":\"24hour housekeeping\"}]', '[]', '12000 ', '25000 ', '8%');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `place_from` int(30) NOT NULL,
  `resort_to` int(30) NOT NULL,
  `days` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `total_seat` int(50) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `price` double NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `place_from`, `resort_to`, `days`, `type`, `status`, `details`, `image`, `total_seat`, `date`, `price`, `last_updated`) VALUES
(13, 'UPcom', 20, 15, '1', 'single', 'expired', 'dd', 'http://localhost/tourist_guide/upload/2018/11/01/5bdb53fc6bc4c_ab.jpg', 48, '2020-10-31', 230, '2020-10-02 00:50:04'),
(14, 'UPcom', 10, 7, '1', 'single', '', 'dd', 'http://localhost/tourist_guide/upload/2018/11/01/5bdb53fc6bc4c_ab.jpg', 48, '2020-10-10', 230, '2020-10-02 00:50:30'),
(15, 'Couple Package', 10, 7, '2', 'single', '', 'dhaka to sajek', '1', 8, '2020-01-10', 20000, '2020-10-02 09:28:45'),
(16, 'Normal', 4, 10, '4', 'single', '', 'all in one', '', 40, '2020-10-10', 10000, '2020-10-02 11:05:26'),
(17, 'single package', 7, 7, '4', 'single', '', 'Everything in one', '', 40, '2020-02-11', 10000, '2020-10-02 11:06:58'),
(18, 'Sajek valley tour', 19, 12, '5', 'single', '', 'go to sajek valley ', 'http://digitalbd.net/project/tourist/upload/2020/10/02/5f77141f8a3b9_18271800htr1.JPG', 60, '2020-05-10', 5000, '2020-10-02 11:36:56'),
(19, 'Mermaid Package', 20, 1, '2', 'couple', '', 'All in one', '', 3, '2020-12-05', 100000, '2020-10-02 12:05:45'),
(20, 'fly north', 4, 15, '3', 'single', '', '', '', 40, '2020-11-03', 3000, '2020-10-02 12:32:08'),
(21, 'dhaka to cox bazar', 20, 15, '3', 'single', 'booked', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ', 'http://localhost/tourist_guide/upload/2020/10/02/5f77502a1dcb4_bau.jpg', 45, '2020-10-31', 300, '2020-10-02 12:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `division` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `name`, `division`) VALUES
(4, 'Natore', 'Rajshahi'),
(5, 'Pabna', 'Rajshahi'),
(7, 'Kushtia', 'Khulna'),
(8, 'Kumarkhali', 'Khulna'),
(9, 'Mirpur 1', 'Dhaka'),
(11, 'Noakhali', 'Chattagram'),
(12, 'Cumilla', 'Chattagram'),
(13, 'Chattogram', 'Chattagram'),
(14, 'Savar', 'Dhaka'),
(15, 'Gazipur', 'Dhaka'),
(16, 'Narainganj', 'Dhaka'),
(17, 'Narsindi', 'Dhaka'),
(18, 'Madaripur', 'Dhaka'),
(19, 'Gaibandha', 'Rangpur'),
(20, 'Dhaka', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gmap` mediumtext NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `division` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `address`, `gmap`, `thumbnail`, `description`, `phone`, `division`) VALUES
(2, 'Star Kabab & Restaurant', 'House-15 Rd no. 17, Block- C, Dhaka 1213', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14602.853401766479!2d90.4028846!3d23.7932198!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa95c484629de3048!2sStar%20Kabab%20%26%20Restaurant!5e0!3m2!1sen!2sbd!4v1666459389463!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/Star Kabab & Restaurant.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,\r\n\r\n', ' 01795201347', 'Dhaka'),
(3, 'Kashbon Restaurant', 'Z1603, Sajek', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3689.614110181888!2d91.84201511495588!3d22.36819508528833!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30ad2776559515a1%3A0xe5c5a91dbc017db!2sKashbon%20Restaurant!5e0!3m2!1sen!2sbd!4v1666459689950!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/Kashbon Restaurant.jpg', 'Kashbon Restaurant is the best Restaurant in Sajek. We are the only restaurant with a Rooftop view in Sajek. Its not only the best place food and relaxation but also the best place to get a view of Sajek. We have 5/5 star reviews and 6 star service.\r\n\r\nOur Restaurant has two Floors of Sitting Space and capable of servicing 70 person at a time.', '01648676555', 'Chattagram'),
(4, 'Hotel Star International', 'Aamchattar, Bypass Road, Nowdapara, Rajshahi City 6203 Bangladesh', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14532.985967304654!2d88.6142779!3d24.4075028!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6f6d13333e723cf1!2sHotel%20Star%20International!5e0!3m2!1sen!2sbd!4v1666460000074!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/Hotel Star International.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo', '01721761263', 'Rajshahi'),
(5, 'FoodNKI', 'Ruilui Para, Sajek', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14648.39654814817!2d92.2924669!3d23.3846306!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe5a583417d5e9e74!2sFoodNKI!5e0!3m2!1sen!2sbd!4v1666460147232!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/FoodNKI.png', 'FoodKI is one of the best restaurant in Sajek.', '01869157666', 'Chattagram'),
(6, 'The Hideout Cafe', 'Newmarket Road Level-2, Sultanabad, Rajshahi City 6000 Bangladesh', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14537.14468989227!2d88.6033834!3d24.3713463!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd589221c07474b27!2sThe%20Hideout%20Cafe!5e0!3m2!1sen!2sbd!4v1666460374993!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/The Hideout Cafe.jpg', 'A fast food restaurant with good quality food, good ambiance & good service.', '01721171816', 'Rajshahi'),
(7, 'Twist & Taste', 'Shaheb Bazar Rd. Jamal Super Market, 1st Floor., Rajshahi City 6100 Bangladesh', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14537.879973926578!2d88.6012246!3d24.3649484!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3c1211534f36dff!2sTwist%20%26%20Taste!5e0!3m2!1sen!2sbd!4v1601645764996!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/Twist & Taste.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo', '01710058947', 'Rajshahi'),
(8, 'Cicily', 'Raja Rammohan Market, Rangpur 5400 Bangladesh', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d925014.645795355!2d88.56661724749242!3d25.09040173684034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e32dfc52ec9d13%3A0xb2ced79be6351fa5!2sCicily!5e0!3m2!1sen!2sbd!4v1666460808474!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/Cicily.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. ', '01521630769', 'Rangpur'),
(9, 'Moubon Restora', 'Kachari Bazaar Road, Rangpur Bangladesh', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2372.1808900279652!2d89.24421731460474!3d25.754767064188577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e33201d16b51e3%3A0x19899f7cdfd3c647!2sMoubon%20Restora!5e0!3m2!1sen!2sbd!4v1666461110988!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/Moubon Restora.jpg', '\r\nThis is an old famous restaurant in Rangpur city. ', '01721171816', 'Rangpur'),
(10, 'Mermaid Cafe', 'Mermaid Cafe, Near Dragon Mart, Kolatoli Road, Sugandha Beach Sea In point, Hotel Motel, Coxs Bazar 4700', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3714.2030913060757!2d91.97613961493933!3d21.42126088578711!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30adc87ce9c0fb4d%3A0x83536e3b5f20191b!2sMermaid%20Cafe!5e0!3m2!1sen!2sbd!4v1666461343631!5m2!1sen!2sbd', 'upload/Pictures/Restaurant/Mermaid Cafe.jpg', 'CUISINES:\r\nSeafood, Asian\r\n\r\nSPECIAL DIETS:\r\nVegetarian Friendly\r\n\r\nMEALS:\r\nLunch, Dinner, Late Night', '01841416461', 'Chattagram');

-- --------------------------------------------------------

--
-- Table structure for table `travel_place`
--

CREATE TABLE `travel_place` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `details` text NOT NULL,
  `populer_foods` mediumtext NOT NULL,
  `gmap` mediumtext NOT NULL,
  `division` varchar(50) NOT NULL,
  `nearby_hotel` text NOT NULL,
  `nearby_restaurants` text NOT NULL,
  `nearby_tour_place` text NOT NULL,
  `tourist_spot` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_place`
--

INSERT INTO `travel_place` (`id`, `name`, `thumbnail`, `details`, `populer_foods`, `gmap`, `division`, `nearby_hotel`, `nearby_restaurants`, `nearby_tour_place`, `tourist_spot`) VALUES
(1, 'Cox\'s Bazar', 'upload/pictures/places/coxs_bazar.jpeg', 'Cox’s Bazar is a town on the southeast coast of Bangladesh. It’s known for its very long, sandy beachfront, stretching from Sea Beach in the north to Kolatoli Beach in the south. Aggameda Khyang monastery is home to bronze statues and centuries-old Buddhist manuscripts. South of town, the tropical rainforest of Himchari National Park has waterfalls and many birds. North, sea turtles breed on nearby Sonadia Island. ', '[{\"name\":\"Food 1\",\"price\":\"125\",\"details\":\"Detais food 1\"},{\"name\":\"Food 2\",\"price\":\"150\",\"details\":\"Detais food 2\"},{\"name\":\"Food 3\",\"price\":\"580\",\"details\":\"Detais food 3\"}]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118830.36310545262!2d92.002902!3d21.45089815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30adc7ea2ab928c3%3A0x3b539e0a68970810!2sCox&#39;s%20Bazar!5e0!3m2!1sen!2sbd!4v1666428548505!5m2!1sen!2sbd', 'Chattagram', '[]', '[\"2\"]', '[]', '{\"spots\":[],\"journey\":[]}'),
(7, 'Sajek valley', 'upload/pictures/places/sajek_valley.jpg', 'Sajek Valley -is an emerging tourist spot in Bangladesh situated among the hills of the Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 1,476 feet (450 m) above sea level. \r\n\r\nSajek valley is known for its natural environment and is surrounded by mountains, dense forest, and grassland hill tracks. Many small rivers flow through the mountains among which the Kachalong and the Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and the Mayni river. The road to Sajek has high peaks and falls\r\n\r\n\r\nSajek valley is known as the Queen of Hills & Roof of Rangamati.', '[{\"name\":\"Bamboo Biriyani\",\"price\":\"300/2person\",\"details\":\"It is cooked in the bamboo\"}]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1873778.0493693454!2d90.22119170975431!3d23.47046310444227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3752feb9eb8c7313%3A0xf1d07a0cc84f174c!2sSajek%20Valley!5e0!3m2!1sen!2sbd!4v1601645550389!5m2!1sen!2sbd', 'Chattagram', '[]', '[]', '[]', '{\"spots\":[\"Ruilui para\",\"konglak pahar\"],\"journey\":{\"spot_konglakpahar_spot_ruiluipara\":{\"distance\":\"2.8km\",\"vehicle\":[\"chander gari/CNG\"],\"fare\":[\"500\"],\"time\":[\"39min\"]}}}'),
(8, 'Varendra Research Museum', 'upload/pictures/places/Varendra_Research_Museum.jpg', 'Varendra Museum is a museum, research centre, and popular visitor attraction at the heart of Rajshahi and maintained by Rajshahi University in Bangladesh. It is considered the oldest museum in Bangladesh. It was the first museum to be established in East Bengal in 1910. The museum started out as the collection for Varendra Anushandan Samiti and got its current name in 1919. The Rajahs of Rajshahi and Natore, notably prince Sharat Kumar Ray, donated their personal collections to Varendra Museum. Varendra refers to an ancient Janapada roughly corresponding to modern northern Bangladesh', '[{\"name\":\"Shashlik \",\"price\":\"30\",\"details\":\"Nothing would be able to beat the appeal of Shashlik of NFC cart in Laxmipur that comes with real cube of chicken garnished with onion and carrot\"},{\"name\":\"Bot Porata\",\"price\":\"15\",\"details\":\"Bot Porota of Talaimari in the evening is one of the oldest street foods of Rajshahi city. \"}]', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14537.63814399383!2d88.5925182!3d24.3670528!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa24b2e60bfa403be!2sVarendra%20Research%20Museum!5e0!3m2!1sen!2sbd!4v1666429532155!5m2!1sen!2sbd', 'Rajshahi', '[\"4\"]', '[\"6\"]', '[]', '{\"spots\":[],\"journey\":[]}'),
(10, 'Tajhat Palace, Rangpur.', 'upload/pictures/places/tajhat_palace.jpg', 'Tajhat Palace, Tajhat Rajbari, is a historic palace of Bangladesh, located in Tajhat, Rangpur. This palace now holds the Rangpur museum. Tajhat Palace is situated three km. south-east of the city of Rangpur, on the outskirts of town.', '[{\"name\":\"Biriyani\",\"price\":\"200\",\"details\":\"much tasty\"}]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3594.375291641752!2d89.2804!3d25.725099999999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e32db3e42e1bad%3A0x8bf86bca027d5c0b!2sTajhat%20Palace%2C%20Rangpur!5e0!3m2!1sen!2sbd!4v1666428928922!5m2!1sen!2sbd', 'Rangpur', '[\"14\"]', '[\"8\"]', '[\"8\"]', '{\"spots\":[],\"journey\":[]}'),
(11, 'Vinnojagat', 'upload/pictures/places/Vinnojagat.jpg', 'Vinno jogot is most famous and popular tourist spot of Rangpur district. It is biggest tourist spot and picnic spots of Rangpur. It is located in Uttar Khaleya, Gongipur, Paglapir, Upo Zillla-Rangpur Sadar in Rangpur district.', '[{\"name\":\"kacchi\",\"price\":\"180\",\"details\":\"amazing taste\"}]', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14364.443761452889!2d89.1118468!3d25.8328894!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xccd622a46bad3f61!2sVinnojagat!5e0!3m2!1sen!2sbd!4v1666428694689!5m2!1sen!2sbd', 'Rajshahi', '[\"18\"]', '[\"9\"]', '[\"10\"]', '{\"spots\":[\"Funcity Amusement Park, Thakurgaon.\",\"Rangpur Zoo, Rangpur.\"],\"journey\":{\"spot_rangpurzoo,rangpur._spot_funcityamusementpark,thakurgaon.\":{\"distance\":\"15km\",\"vehicle\":[\"bus\"],\"fare\":[\"100\"],\"time\":[\"40min\"]}}}'),
(12, 'Zainul Abedin Sangrahashala', 'upload/pictures/places/Shilpacharya_Zainul_Abedin Sangrahashala.jpg', 'It is located at the northern end of Mymensingh city, surrounded by natural scenery on the banks of the Brahmaputra River and the memory of the great artist', '[{\"name\":\"cotpoti\",\"price\":\"200\",\"details\":\"1package\"}]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3622.735120876759!2d90.39279845071721!3d24.770269384018498!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37564ee46a43d3e5%3A0xb0cce5f49053ae6!2sShilpacharya%20Zainul%20Abedin%20Sangrahashala!5e0!3m2!1sen!2sbd!4v1601653301004!5m2!1sen!2sbd', 'Mymensingh', '[]', '[]', '[]', '{\"spots\":[\"bank of river\",\"cercit house\"],\"journey\":{\"spot_cercithouse_spot_bankofriver\":{\"distance\":\"2km\",\"vehicle\":[\"rikshaw\"],\"fare\":[\"50\"],\"time\":[\"20min\"]}}}'),
(13, 'Natore Rajbari', 'upload/pictures/places/Natore_Rajbari.jpg', 'Natore Rajbari was a prominent royal palace in Natore, Bangladesh. It was the residence and seat of the Rajshahi Raj family of zamindars. The famous queen Rani Bhabani lived here and after the death of her husband, expanded both the estate and the palace.', '[{\"name\":\"Kancha Golla\",\"price\":\"400\",\"details\":\"delicious\"}]', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14531.6476526152!2d88.9926119!3d24.4191276!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7e67a544df04a973!2sNatore%20Rajbari!5e0!3m2!1sen!2sbd!4v1601669703173!5m2!1sen!2sbd', 'Rajshahi', '[\"8\"]', '[\"7\"]', '[]', '{\"spots\":[\"chalan beel\",\"uttara gonobhaban\"],\"journey\":{\"spot_uttaragonobhaban_spot_chalanbeel\":{\"distance\":\"10km\",\"vehicle\":[\"bus\"],\"fare\":[\"200\"],\"time\":[\"1hr\"]}}}'),
(14, 'St. Martin Island', 'upload/pictures/places/Saint_Martin.jpg', 'St. Martin Island is a small island in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Coxs Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh. There is a small adjoining island that is separated at high tide, called Chera Dwip', '[{\"name\":\"Sea Fish\",\"price\":\"300/2person\",\"details\":\"Fried Sea fish\"}]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59753.03199432007!2d92.2919520831156!3d20.605835174500033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30ae2363dee2d61b%3A0xfb3463713589d312!2sSt.%20Martin&#39;s%20Island!5e0!3m2!1sen!2sbd!4v1601656787580!5m2!1sen!2sbd', 'Chattagram', '[\"19\",\"5\"]', '[]', '[\"7\",\"1\"]', '{\"spots\":[\"chera dwip\",\"saint martin\"],\"journey\":{\"spot_saintmartin_spot_cheradwip\":{\"distance\":\"3.8km\",\"vehicle\":[\"walking\"],\"fare\":[\"0\"],\"time\":[\"46min\"]}}}'),
(15, 'Puthia Rajbari', 'upload/pictures/places/Puthia_Rajbari.jpg', 'Puthia Rajbari is a palace in Puthia Upazila, in Bangladesh, built in 1895, for Rani Hemanta Kumari, it is an example of Indo-Saracenic Revival architecture. The palace is sited on the Rajshahi Nator highway 30 km from the east of the town and one km south from Rajshahi Nator highway', '[{\"name\":\"Seekh Burger\",\"price\":\"30\",\"details\":\"Seekh burger was born when east fell in love with the west. Especial spicy seekh kebab wrapped in smoked bread served with coriander sauce can fill your evening with more colours in Rajshahi. \"},{\"name\":\"chhanar polao\",\"price\":\"220\",\"details\":\"famous dish of rajshahi\"}]', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14538.231146303!2d88.8367165!3d24.3618922!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xec7d9a92ddfc1103!2sPuthia%20Rajbari!5e0!3m2!1sen!2sbd!4v1601656722160!5m2!1sen!2sbd', 'Rajshahi', '[\"6\"]', '[\"4\"]', '[\"13\"]', '{\"spots\":[\"padma garden\",\"Bagha mosque\"],\"journey\":{\"spot_baghamosque_spot_padmagarden\":{\"distance\":\"47km\",\"vehicle\":[\"bus\"],\"fare\":[\"300\"],\"time\":[\"1hr 20 min\"]}}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(33) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_activity` datetime NOT NULL DEFAULT current_timestamp(),
  `user_role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_date`, `last_activity`, `user_role`) VALUES
(1, 'mdarikrayhan', 'mdarikrayhan@gmail.com', '202cb962ac59075b964b07152d234b70', '2018-10-20 23:45:12', '2018-10-20 07:45:12', 'admin'),
(2, 'gourobroy', 'gourobroy@gmail.com', 'ab93045192aad0729880f332858cd79e', '2020-10-02 06:00:29', '2020-10-02 06:00:29', 'admin'),
(3, 'bilkiskhatun', 'bilkiskhatun@gmail.com', '24cf6b88f3ebbe637bd60f0bf442f354', '2020-10-02 06:30:04', '2020-10-02 06:30:04', 'admin'),
(4, 'mone', 'mone@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-10-02 08:15:40', '2020-10-02 08:15:40', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_place`
--
ALTER TABLE `travel_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `travel_place`
--
ALTER TABLE `travel_place`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
