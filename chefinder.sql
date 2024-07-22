-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 05:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chefinder`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdatePhotos` ()   BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE num_rows INT;

    -- Loop to ensure all rows are processed
    WHILE NOT done DO
        -- Update a batch of rows
        UPDATE chefs
        SET Photo = REPLACE(Photo, 'C:\\xampp\\htdocs\\chef images\\', 'images/')
        WHERE Photo LIKE 'C:\\xampp\\htdocs\\chef images\\%'
        LIMIT 1000;  -- Adjust batch size if needed

        -- Check how many rows still need updating
        SELECT COUNT(*) INTO num_rows
        FROM chefs
        WHERE Photo LIKE 'C:\\xampp\\htdocs\\chef images\\%';

        -- If no more rows need updating, exit the loop
        IF num_rows = 0 THEN
            SET done = TRUE;
        END IF;
    END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `chefs`
--

CREATE TABLE `chefs` (
  `Chef_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Contact_Information` varchar(20) DEFAULT NULL,
  `Charges` varchar(20) DEFAULT NULL,
  `Specialist` varchar(50) DEFAULT NULL,
  `Availability` varchar(20) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chefs`
--

INSERT INTO `chefs` (`Chef_ID`, `Name`, `Contact_Information`, `Charges`, `Specialist`, `Availability`, `Photo`) VALUES
(1, 'D.Rohit', '8300963238', '1500 (per day)', 'Indian ,Chinnese', 'Full-time', 'https://png.pngtree.com/thumb_back/fw800/background/20230516/pngtree-chef-wearing-a-chef-s-hat-and-a-black-background-in-image_2570068.jpg'),
(2, 'V.Yuvanmai', '7037534236', '1000 (per day)', 'American,Desserts', 'Part-time', 'https://img.freepik.com/premium-photo/cooking-food-concept-smiling-female-chef-cook-baker-dreaming_380164-61085.jpg'),
(3, 'MD.Abdul', '6305251208', '1000 (per day)', 'South indian', 'Full-time', 'https://i.pinimg.com/564x/40/06/5f/40065f1feefb6514cbf8756c562a73e1.jpg'),
(4, 'Vamsi krishna', '9106519018', '8000 (per month)', 'Roties , tandoori', 'Part-time', 'https://i.pinimg.com/564x/66/e2/e8/66e2e8bc072a0b088788dcb9b1a05965.jpg'),
(5, 'Siva', '9704729440', '800 (per hour)', 'Korean,juices', 'Full-time', 'https://i.pinimg.com/564x/39/40/14/394014ef0e3d103c7871f8b0d8964fb3.jpg'),
(6, 'Namitha', '9154377440', '4000 (per week)', 'Desserts', 'Full-time', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF-P0Q_O4dp8XUTf4hoofnhbeIA0ACyuVRbv4fQD7-DOO2tHP'),
(7, 'Abishek', '8322767358', '1000 (per day)', 'Indian ,Chinnese', 'Part-time', 'https://img.freepik.com/premium-photo/chef-cook-wearing-cooking-jacket-hat-holding-plate-black-background_325364-848.jpg'),
(8, 'Swathi', '9330845378', '400 (per hour)', 'Apetizers', 'Full-time', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTqzFERQLd2CYUKMUtcmCq5iTT64eil6_ppF9hKEqV2KSPqGFwq'),
(9, 'Karun', '9386141762', '35000 (per month)', 'South indian', 'Full-time', 'https://i.pinimg.com/564x/4e/db/e1/4edbe156d402ee920e349e691d02eba6.jpg'),
(10, 'D.Shyam', '7201498465', '20000 (per month)', 'Roties , tandoori', 'On leave', 'https://img.freepik.com/premium-photo/male-chef-white-uniform-prepares-spaghetti-with-vegetables-dish-before-serving-while-working-restaurant-kitchen_106485-4514.jpg?w=996'),
(11, 'Parmila', '6801440457', '1500 (per day)', 'Desserts', 'Part-time', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSzJ4m1_Hd-n-o6U5FOk_Zld7kY0HQH8UmmRu4AJj1n2MONr438'),
(12, 'Neha', '6369966078', '2000 (per day)', 'Indian', 'On leave', 'https://img.freepik.com/premium-photo/young-attractive-woman-chef-black-uniform-holds-bell-pepper-black-background_114963-8235.jpg?w=996'),
(13, 'Charan', '7024813620', '1000 (per day)', 'Indian', 'Full-time', 'https://i.pinimg.com/236x/30/5f/a8/305fa8fbfc8c78c8fb871e8f275c6801.jpg'),
(14, 'Sivanvika', '8311776094', '500 (per day)', 'American,Desserts', 'Full-time', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQOSQpfbUGilAlu-trm_Frg77WfM3T2vwLTuD2ZZOvVV5jqNBau'),
(15, 'I. pavan', '2028516520', '5000 (per week)', 'South indian', 'Part-time', 'https://i.pinimg.com/236x/6b/b8/5b/6bb85bedbd4e06a47c3e1ed563bce532.jpg'),
(16, 'J.uday', '9317867492', '10000 (per month)', 'Roties , tandoori', 'On leave', 'https://i.pinimg.com/564x/6a/99/77/6a9977a5f123c421d358ef70c14b0aa4.jpg'),
(17, 'J.Gayaneswari', '8308122245', '15000 (per month)', 'Desserts', 'Full-time', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTdS58GFvV0OKMsx3SBBA59JDPuyB6GM4Tf9J9yvYFqDhDOov6f'),
(18, 'Chakri', '7921198320', '5000 (per week)', 'Korean,juices', 'Part-time', 'https://i.pinimg.com/236x/9a/11/f7/9a11f7257a7bc85aa6d45f04003f6e29.jpg'),
(19, 'Kalyan', '9878693840', '500 (per hour)', 'Juices', 'Part-time', 'https://i.pinimg.com/236x/30/b8/81/30b881c9a98b21323d55cb5161182591.jpg'),
(20, 'k.Raju', '9141260742', '2000 (per day)', 'juices', 'On leave', 'https://img.freepik.com/premium-photo/professional-chef-man-showing-sign-delicious-male-chef-white-uniform-with-perfect-sign_763111-6711.jpg?w=740'),
(21, 'Mohit k.v.s', '8412203331', '3500 (per hour)', 'Desserts', 'Full-time', 'https://img.freepik.com/premium-photo/young-handsome-chef-with-thumb-up-black-background_175610-134.jpg?w=360'),
(22, 'K.Shyam', '9283124412', '4000 (per week)', 'Apetizers', 'Part-time', 'https://img.freepik.com/free-photo/portrait-smiling-chef-uniform_329181-675.jpg'),
(23, 'Gautham sai', '6431707137', '800 (per hour)', 'Apetizers', 'On leave', 'https://st.depositphotos.com/1049680/1878/i/450/depositphotos_18784157-stock-photo-male-chef-showing-thumbs-up.jpg'),
(24, 'Prashant', '9162678761', '1500 (per day)', 'Roties , tandoori', 'On leave', 'https://st4.depositphotos.com/32970972/41285/i/450/depositphotos_412855134-stock-photo-portrait-young-dressed-black-chef.jpg'),
(25, 'Durga prasad', '91502286465', '2000 (per hour)', 'South indian', 'On leave', 'https://i.pinimg.com/236x/c2/cc/78/c2cc78a9d2c62842cf76a5be76da8a92.jpg'),
(26, 'Kumili durga', '9150940257', '15000 (per month)', 'South indian', 'Full-time', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTjFDZpY9514FvWrlyTnOOaAjzGZQ0TGQCQssa6S1hTSpONWa7b'),
(27, 'Pranitham', '03956019090', '500 (per day)', 'Ameerican,Desserts', 'On leave', 'https://i.pinimg.com/236x/04/6c/67/046c67400383f1d3284c014be2315dc4.jpg'),
(28, 'Gayaneswari', '3859931345', '1500 (per day)', 'Desserts', 'Part-time', 'https://thumbs.dreamstime.com/b/female-chef-isolated-black-background-34122614.jpg'),
(29, 'Harshitha', '9806114291', '2000 (per day)', 'Roties , tandoori', 'Part-time', 'https://static.vecteezy.com/system/resources/thumbnails/027/275/856/small/female-chef-s-portrait-on-a-light-grey-background-photo.jpg'),
(30, 'Neeraj Gowd', '9107161848', '20000 (per month)', 'tandoori', 'On leave', 'https://media.istockphoto.com/id/1251768687/photo/young-male-dressed-in-a-black-chef-suit-looking-confident-with-the-knife-in-his-hand.jpg?s=612x612&w=0&k=20&c=qcc3f5_pHb5eebxsUfBqUAlXKvL_XYVMaZeVecuPqmE='),
(31, 'MD Abbas', '0490485491', '1500 (per day)', 'Korean,juices', 'On leave', 'https://i.pinimg.com/236x/07/fc/e9/07fce999f18deb8922e5822c88c91439.jpg'),
(32, 'Alisa', '2030200450', '500 (per hour)', 'Korean,juices', 'Full-time', 'https://i.pinimg.com/236x/2e/66/f8/2e66f8c7f8afc7f225c25b2fb459b072.jpg'),
(33, 'Sriya Shalini', '7934149470', '2000 (per day)', 'South indian', 'Part-time', 'https://thumbs.dreamstime.com/b/chef-holding-plate-pasta-delicious-italian-food-recipes-culinary-arts-chef-holding-plate-pasta-delicious-italian-food-160851506.jpg'),
(34, 'Deepak', '0458585919', '10000 (per week)', 'Ameerican,Desserts', 'Part-time', 'https://st2.depositphotos.com/2458365/10395/i/450/depositphotos_103958146-stock-photo-the-best-cook-is-a.jpg'),
(35, 'Jai Chandhra', '07736862753', '1000 (per day)', 'Indian', 'Full-time', 'https://i.pinimg.com/236x/a9/80/7b/a9807b8f8989a5a7e82f9e9ac23ef87b.jpg'),
(36, 'Pavan kumar', '3067306309', '1000 (per hour)', 'Chinnese', 'Part-time', 'https://i.pinimg.com/236x/9b/0c/2d/9b0c2d985edad2852a918cc95372c1fa.jpg'),
(37, 'Sandilya', '6584496636', '2500 (per week)', 'Chinnese', 'Part-time', 'https://i.pinimg.com/236x/dc/56/70/dc567065428ad22c7505abe0b642b5e4.jpg'),
(38, 'Vijay bhaskar', '8671623103', '5000 (per week)', 'Chinnese', 'Full-time', 'https://i.pinimg.com/736x/9b/59/8e/9b598e3fcd6b8b9e385c1cede8131fd3.jpg'),
(39, 'Patti Susmitha', '7592991922', '2500 (per week)', 'Korean,juices', 'Part-time', 'https://thumbs.dreamstime.com/b/serious-chef-4159161.jpg'),
(40, 'Koshmitha', '9328405859', '500 (per hour)', 'Juices', 'On leave', 'https://t3.ftcdn.net/jpg/01/38/52/70/360_F_138527072_f3U9sijCifXrxhWiPrXn22gNX3dSSSjy.jpg'),
(41, 'Joshna', '9432122147', '25000 (per month)', 'Juices', 'Full-time', 'https://t4.ftcdn.net/jpg/00/66/39/97/360_F_66399720_mF9eJzEsFhku9PKX0hbvbASGbzSq3hjf.jpg'),
(42, 'Rishab patel', '7902254827', '30000 (per month)', 'Apetizers', 'On leave', 'https://i.pinimg.com/564x/5c/b3/9a/5cb39a270da583722e1166032fd803c5.jpg'),
(43, 'Praveen kumar', '03877255410', '25000 (per month)', 'Indian', 'On leave', 'https://i.pinimg.com/564x/62/56/a0/6256a02db77f24c082368b53cbf4d3a3.jpg'),
(44, 'Poojitha', '6648697397', '5000 (per week)', 'Ameerican,Desserts', 'Part-time', 'https://st.depositphotos.com/1157399/3124/i/450/depositphotos_31242991-stock-photo-woman-chef-cooking.jpg'),
(45, 'Soniya yadhav', '4336836640', '500 (per hour)', 'Desserts', 'On leave', 'https://as2.ftcdn.net/v2/jpg/01/90/12/09/1000_F_190120967_wlWKCMKnWYvcKDHLTQZIALyJparmaD3M.jpg'),
(46, 'Sai prasad', '01786784963', '400 ( per hour)', 'Chinnese', 'Part-time', 'https://i.pinimg.com/564x/31/1c/f3/311cf3713a28e849bed3915e1b57e77a.jpg'),
(47, 'Ramu', '8194481556', '2000 (per day)', 'Roties , tandoori', 'Full-time', 'https://i.pinimg.com/564x/ed/58/0b/ed580b3dcc756e7d87a0921da77007f1.jpg'),
(48, 's.harshitha', '8304562103', '20000 (per month)', 'Roties , tandoori', 'Part-time', 'https://www.shutterstock.com/image-photo/portrait-young-woman-chef-on-260nw-587686352.jpg'),
(49, 'Sandeep', '8852462537', '30000 (per month)', 'Roties , tandoori', 'Full-time', 'https://i.pinimg.com/564x/52/4c/ac/524cac1619f98ae4d569ea707a359cb6.jpg'),
(50, 'Shravanthi', '6192524005', '3000 (per week)', 'South indian', 'Part-time', 'https://thumbs.dreamstime.com/b/chef-tools-2538404.jpg'),
(51, 'Mani madhav', '9139650651', '4000 (per week)', 'South indian', 'On leave', 'https://i.pinimg.com/564x/6c/c6/46/6cc646bfed3b5e3c3ca2e87e81969ab8.jpg'),
(52, 'Vera badhra', '8051665785', '5000 (per week)', 'Indian ,Chinnese', 'On leave', 'https://i.pinimg.com/564x/d0/59/96/d05996792a0a73823dfbac46f511a603.jpg'),
(53, 'Hari charan', '8171067910', '8000 (per month)', 'Indian,Chineese', 'Part-time', 'https://i.pinimg.com/564x/a5/a5/42/a5a542ea8c4299ad845d0ae26260d31d.jpg'),
(54, 'Daniel', '9100967786', '10000 (per month)', 'Indian', 'Full-time', 'https://us.123rf.com/450wm/scandinavianstock/scandinavianstock1903/scandinavianstock190300194/121562652-businessman-wearing-a-cook-hat.jpg?ver=6'),
(55, 'Ajay', '6869072710', '1000 (per day)', 'Juices', 'Full-time', 'https://us.123rf.com/450wm/tverdohlib/tverdohlib1609/tverdohlib160903565/63860453-bearded-man-cook-in-hat-tasting-food-with-spoon-in-studio-on-black-background-copy-space.jpg?ver=6'),
(56, 'Kushal pavan', '9773896253', '2000 (per day)', 'Korean,juices', 'Part-time', 'https://cdn.openart.ai/published/X1z8uczgFqPrlqwW3Stl/ZwSoHvAS_gRIj_1024.webp'),
(57, 'Purnima', '8111841120', '25000 (per month)', 'Roties , tandoori', 'Full-time', 'https://img.freepik.com/premium-photo/young-attractive-woman-chef-black-uniform-holds-rolling-pin-black-background_114963-8244.jpg'),
(58, 'Mahindra', '6544075873', '500 (per hour)', 'tandoori', 'Full-time', 'https://media.istockphoto.com/id/1327176933/photo/chef-cook-wearing-cooking-jacket-and-hat-surprised-holding-wooden-tray-on-black-background.jpg?s=612x612&w=0&k=20&c=YzemkDI820rj7yiGbZxE_vYO8QxHhHoTkZkb_NKDh88='),
(59, 'leela sai vardhan', '7135479083', '1000 (per hour)', 'tandoori', 'Part-time', 'https://st3.depositphotos.com/4218696/34488/i/450/depositphotos_344882968-stock-photo-cook-serving-chicken-dish-showing.jpg'),
(60, 'Girish', '7556634526', '10000 (per week)', 'American,Desserts', 'Full-time', 'https://images.pond5.com/smiling-mature-male-chef-black-photo-231857478_iconl_nowm.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`Chef_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
