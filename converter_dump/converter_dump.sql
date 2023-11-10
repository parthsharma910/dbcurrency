-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: currency_converter_db
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `currency_info`
--

DROP TABLE IF EXISTS `currency_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_info` (
  `country_name` varchar(100) DEFAULT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_info`
--

LOCK TABLES `currency_info` WRITE;
/*!40000 ALTER TABLE `currency_info` DISABLE KEYS */;
INSERT INTO `currency_info` VALUES ('United Arab Emirates','United Arab Emirates Dirham','AED','AE'),('Afghanistan','Afghan Afghani','AFN','AF'),('Albania','Albanian Lek','ALL','AL'),('Armenia','Armenian Dram','AMD','AM'),('Netherlands Antilles','Netherlands Antillean Guilder','ANG','AN'),('Angola','Angolan Kwanza','AOA','AO'),('Argentina','Argentine Peso','ARS','AR'),('Australia','Australian Dollar','AUD','AU'),('Aruba','Aruban Florin','AWG','AW'),('Azerbaijan','Azerbaijani Manat','AZN','AZ'),('Bosnia and Herzegovina','Bosnian Convertible Mark','BAM','BA'),('Barbados','Barbadian or Bajan Dollar','BBD','BB'),('Bangladesh','Bangladeshi Taka','BDT','BD'),('Bulgaria','Bulgarian Lev','BGN','BG'),('Bahrain','Bahraini Dinar','BHD','BH'),('Burundi','Burundian Franc','BIF','BI'),('Bermuda','Bermudian Dollar','BMD','BM'),('Brunei','Bruneian Dollar','BND','BN'),('Bolivia','Bolivian Bolíviano','BOB','BO'),('Brazil','Brazilian Real','BRL','BR'),('Bahamas','Bahamian Dollar','BSD','BS'),('Bhutan','Bhutanese Ngultrum','BTN','BT'),('Botswana','Botswana Pula','BWP','BW'),('Belarus','Belarusian Ruble','BYN','BY'),('Belize','Belizean Dollar','BZD','BZ'),('Canada','Canadian Dollar','CAD','CA'),('Congo/Kinshasa','Congolese Franc','CDF','CD'),('Switzerland','Swiss Franc','CHF','CH'),('Chile','Chilean Peso','CLP','CL'),('China','Chinese Yuan Renminbi','CNY','CN'),('Colombia','Colombian Peso','COP','CO'),('Costa Rica','Costa Rican Colon','CRC','CR'),('Cuba','Cuban Convertible Peso','CUC','CU'),('Cuba','Cuban Peso','CUP','CU'),('Cape Verde','Cape Verdean Escudo','CVE','CV'),('Czech Republic','Czech Koruna','CZK','CZ'),('Djibouti','Djiboutian Franc','DJF','DJ'),('Denmark','Danish Krone','DKK','DK'),('Dominican Republic','Dominican Peso','DOP','DO'),('Algeria','Algerian Dinar','DZD','DZ'),('Egypt','Egyptian Pound','EGP','EG'),('Eritrea','Eritrean Nakfa','ERN','ER'),('Ethiopia','Ethiopian Birr','ETB','ET'),('Eurozone','Euro','EUR','EU'),('Falkland Islands','Falkland Island Pound','FKP','FK'),('United Kingdom','British Pound','GBP','GB'),('Georgia','Georgian Lari','GEL','GE'),('Guernsey','Guernsey Pound','GGP','GG'),('Ghana','Ghanaian Cedi','GHS','GH'),('Gibraltar','Gibraltar Pound','GIP','GI'),('Gambia','Gambian Dalasi','GMD','GM'),('Guinea','Guinean Franc','GNF','GN'),('Guatemala','Guatemalan Quetzal','GTQ','GT'),('Guyana','Guyanese Dollar','GYD','GY'),('Hong Kong','Hong Kong Dollar','HKD','HK'),('Honduras','Honduran Lempira','HNL','HN'),('Croatia','Croatian Kuna','HRK','HR'),('Haiti','Haitian Gourde','HTG','HT'),('Hungary','Hungarian Forint','HUF','HU'),('Indonesia','Indonesian Rupiah','IDR','ID'),('Israel','Israeli Shekel','ILS','IL'),('Isle of Man','Manx Pound','IMP','IM'),('India','Indian Rupee','INR','IN'),('Iraq','Iraqi Dinar','IQD','IQ'),('Iran','Iranian Rial','IRR','IR'),('Iceland','Icelandic Krona','ISK','IS'),('Jersey','Jersey Pound','JEP','JE'),('Jamaica','Jamaican Dollar','JMD','JM'),('Jordan','Jordanian Dinar','JOD','JO'),('Japan','Japanese Yen','JPY','JP'),('Kenya','Kenyan Shilling','KES','KE'),('Kyrgyzstan','Kyrgyzstani Som','KGS','KG'),('Cambodia','Cambodian Riel','KHR','KH'),('Comoros','Comorian Franc','KMF','KM'),('North Korea','North Korean Won','KPW','KP'),('South Korea','South Korean Won','KRW','KR'),('Kuwait','Kuwaiti Dinar','KWD','KW'),('Cayman Islands','Caymanian Dollar','KYD','KY'),('Kazakhstan','Kazakhstani Tenge','KZT','KZ'),('Laos','Laotian Kip','LAK','LA'),('Lebanon','Lebanese Pound','LBP','LB'),('Sri Lanka','Sri Lankan Rupee','LKR','LK'),('Liberia','Liberian Dollar','LRD','LR'),('Lesotho','Basotho Loti','LSL','LS'),('Libya','Libyan Dinar','LYD','LY'),('Morocco','Moroccan Dirham','MAD','MA'),('Moldova','Moldovan Leu','MDL','MD'),('Madagascar','Malagasy Ariary','MGA','MG'),('Macedonia','Macedonian Denar','MKD','MK'),('Burma/Myanmar','Burmese Kyat','MMK','MM'),('Mongolia','Mongolian Tughrik','MNT','MN'),('Macau','Macau Pataca','MOP','MO'),('Mauritania','Mauritanian Ouguiya','MRU','MR'),('Mauritius','Mauritian Rupee','MUR','MU'),('Maldives','Maldivian Rufiyaa','MVR','MV'),('Malawi','Malawian Kwacha','MWK','MW'),('Mexico','Mexican Peso','MXN','MX'),('Malaysia','Malaysian Ringgit','MYR','MY'),('Mozambique','Mozambican Metical','MZN','MZ'),('Namibia','Namibian Dollar','NAD','NA'),('Nigeria','Nigerian Naira','NGN','NG'),('Nicaragua','Nicaraguan Cordoba','NIO','NI'),('Norway','Norwegian Krone','NOK','NO'),('Nepal','Nepalese Rupee','NPR','NP'),('New Zealand','New Zealand Dollar','NZD','NZ'),('Oman','Omani Rial','OMR','OM'),('Panama','Panamanian Balboa','PAB','PA'),('Peru','Peruvian Sol','PEN','PE'),('Papua New Guinea','Papua New Guinean Kina','PGK','PG'),('Philippines','Philippine Peso','PHP','PH'),('Pakistan','Pakistani Rupee','PKR','PK'),('Poland','Polish Zloty','PLN','PL'),('Paraguay','Paraguayan Guarani','PYG','PY'),('Qatar','Qatari Riyal','QAR','QA'),('Romania','Romanian Leu','RON','RO'),('Serbia','Serbian Dinar','RSD','RS'),('Russia','Russian Ruble','RUB','RU'),('Rwanda','Rwandan Franc','RWF','RW'),('Saudi Arabia','Saudi Arabian Riyal','SAR','SA'),('Solomon Islands','Solomon Islander Dollar','SBD','SB'),('Seychelles','Seychellois Rupee','SCR','SC'),('Sudan','Sudanese Pound','SDG','SD'),('Sweden','Swedish Krona','SEK','SE'),('Singapore','Singapore Dollar','SGD','SG'),('Saint Helena','Saint Helenian Pound','SHP','SH'),('Sierra Leone','Sierra Leonean Leone','SLL','SL'),('Somalia','Somali Shilling','SOS','SO'),('Suriname','Surinamese Dollar','SRD','SR'),('Sao Tome and Principe','Sao Tomean Dobra','STN','ST'),('El Salvador','Salvadoran Colon','SVC','SV'),('Syria','Syrian Pound','SYP','SY'),('Swaziland','Swazi Lilangeni','SZL','SZ'),('Thailand','Thai Baht','THB','TH'),('Tajikistan','Tajikistani Somoni','TJS','TJ'),('Turkmenistan','Turkmenistani Manat','TMT','TM'),('Tunisia','Tunisian Dinar','TND','TN'),('Tonga','Tongan Pa\'anga','TOP','TO'),('Turkey','Turkish Lira','TRY','TR'),('Trinidad and Tobago','Trinidadian Dollar','TTD','TT'),('Taiwan','Taiwan New Dollar','TWD','TW'),('Tanzania','Tanzanian Shilling','TZS','TZ'),('Ukraine','Ukrainian Hryvnia','UAH','UA'),('Uganda','Ugandan Shilling','UGX','UG'),('United States','US Dollar','USD','US'),('Uruguay','Uruguayan Peso','UYU','UY'),('Uzbekistan','Uzbekistani Som','UZS','UZ'),('Venezuela','Venezuelan Bolivar','VES','VE'),('Vietnam','Vietnamese Dong','VND','VN'),('Vanuatu','Ni-Vanuatu Vatu','VUV','VU'),('Samoa','Samoan Tala','WST','WS'),('Central African Republic','Central African CFA Franc BEAC','XAF','CF'),('Silver Ounce','Silver Ounce','XAG',''),('Gold Ounce','Gold Ounce','XAU',''),('East Caribbean','East Caribbean Dollar','XCD',''),('IMF Special Drawing Rights','IMF Special Drawing Rights','XDR',''),('CFA Franc','CFA Franc','XOF',''),('Palladium Ounce','Palladium Ounce','XPD',''),('CFP Franc','CFP Franc','XPF',''),('Platinum Ounce','Platinum Ounce','XPT',''),('Yemen','Yemeni Rial','YER','YE'),('South Africa','South African Rand','ZAR','ZA'),('Zambia','Zambian Kwacha','ZMW','ZM');
/*!40000 ALTER TABLE `currency_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-15 14:56:40
