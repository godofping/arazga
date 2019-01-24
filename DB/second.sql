-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2019 at 01:14 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id8368605_arazga_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `adminId` int(6) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`adminId`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `average_question_table`
--

CREATE TABLE `average_question_table` (
  `averageQuestionId` int(6) NOT NULL,
  `averageQuestion` text,
  `initialScrambledWord` varchar(60) DEFAULT NULL,
  `averageAnswer` varchar(60) DEFAULT NULL,
  `categoryId` int(6) DEFAULT NULL,
  `stage` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `average_question_table`
--

INSERT INTO `average_question_table` (`averageQuestionId`, `averageQuestion`, `initialScrambledWord`, `averageAnswer`, `categoryId`, `stage`) VALUES
(1, 'It is the scripture of Islam.', 'N	A	R	U	Q', 'QURAN', 4, 'Stage 1'),
(2, 'It is a first surah in the Quran.', 'A	H	I	T	A	F', 'FATIHA', 4, 'Stage 1'),
(4, 'It is the longest and the second surah in the Quran. ', 'H	A	R	A	Q	A	B', 'BAQARAH', 4, 'Stage 1'),
(5, 'A shortest surah in the Quran.', 'R	A	H	T	W	A	K', 'KAWTHAR', 4, 'Stage 1'),
(6, 'It is a most exalted verse in the Quran.', 'I	S	R	U	K	L	U	T	A	Y	A', 'AYATUL KURSI', 4, 'Stage 1'),
(7, 'Surah in the Quran that the â€œBismilliah Ar Rahmanir Raheemâ€ repeated twice.', 'L	M	A	N', 'NAML', 4, 'Stage 1'),
(8, 'It is the 49th chapter of the Quran.', 'T	A	R	U	J	U	H', 'HUJURAT', 4, 'Stage 1'),
(9, 'In Surah Saff ayah:6, Muhammad (pbuh) was named?', 'D	A	M	H	A', 'AHMAD', 4, 'Stage 1'),
(10, 'A prophet who is mentioned and discussed most in the Quran.', 'A	S	U	M', 'MUSA', 4, 'Stage 1'),
(11, 'Another name of Makkah in the Quran.', 'A	R	U	Q	L	A	M	M	U', 'UMM AL QURA', 4, 'Stage 1'),
(12, 'A dowry paid to bride in honour.', 'B	G	F	R	H	E	A	M', 'MAHR', 4, 'Stage 2'),
(13, 'The most important ritual in Islam.', 'B	G	K	S	A	L	O	A	H', 'SALAH', 4, 'Stage 2'),
(14, 'It is a surah meaning â€œDaybreakâ€.', 'B	K	G	F	A	S	E	J	R	U	S	Y	N', 'FAJR', 4, ''),
(15, 'A cave where the Quran was revealed first.', 'B	S	H	I	A	R	A	I', 'HIRA', 4, 'Stage 2'),
(16, 'It is a surah named after a basic pillar of Islam.', 'B	K	G	A	L	F	H	A	J	J', 'AL HAJJ', 4, 'Stage 2'),
(17, 'It is a Surah in the Quran tha was first revealed.', 'B	G	K	A	L	S	A	Q', 'ALAQ', 4, 'Stage 2'),
(18, 'It is a surah in the Quran that has the name of a blessed woman.', 'G	K	M	A	R	K	E	Y	A	M', 'MARYAM', 4, 'Stage 2'),
(19, 'It is the first cultural home built for human race, according to Quran.', 'G	K	B	A	E	A	B	U	A', 'KAABA', 4, 'Stage 2'),
(20, 'It is a Surah about women.', 'G	A	S	N	I	S	A	B	A', 'NISAA', 4, 'Stage 2'),
(21, 'It is a Surah that protects one from the enmity of the enemy.', 'B	K	G	A	W	U	O	T	H	A	R', 'KAWTHAR  ', 4, 'Stage 2'),
(22, 'It is a word used in the Quran that refers for Muhammad (pbuh).', 'B	G	R	A	D	F	S	U	I	P	L', 'RASUL', 4, 'Stage 3'),
(23, 'It is a term used in the Quran to refer to the message that Muhammad (pbuh) get from Allah (SWT).', 'K	G	D	E	W	A	A	S	H	Y', 'WAHY', 4, 'Stage 3'),
(24, 'Quran declares, â€œHe will purge man of his chains and the weights imposed on himâ€. Who is he?', 'G	M	U	G	H	A	G	M	K	M	G	A	 D	G', 'MUHAMMAD', 4, 'Stage 3'),
(25, 'It is an Arabic term for â€œchapterâ€ in the Quran.', 'B	G	K	S	U	A	R	W	A	H	I', 'SURAH', 4, 'Stage 3'),
(26, 'It is an Arabic term for â€œverseâ€ in the Quran.', 'B	G	A	Y	S	A	S	H	R	E', 'AYAH', 4, 'Stage 3'),
(27, 'It is the term used by Muslims for people who have completely memorized the Holy Qurâ€™an.', 'D	E	H	A	A	S	F	Y	U	I	Z', 'HAFIZ', 4, 'Stage 3'),
(28, 'It is the 67th Surah in the Quran.', 'B	G	K	M	U	A	S	L	K	U', 'MULK', 4, 'Stage 3'),
(29, 'It is a surah meaning â€œThe clear evidenceâ€.', 'B	G	A	S	A	Y	Y	I	U	I	O	N A', 'BAYYINA ', 4, 'Stage 3'),
(30, 'Who is the man that Allah (SWT) said in the Quran that his body is kept as an admonishing example for future generations to come?', 'B	K	G	F	I	R	A	U	A	S	U	N', 'FIRAUN', 4, 'Stage 3'),
(31, 'A name that is mentioned mostly in the Holy Quran.', 'B	A	L	A	S	L	A  H U ', 'ALLAH', 4, 'Stage 2'),
(32, 'It is a surah about â€œthe spiderâ€.', 'G	A	B	A	S	N	K	E	R	T	A	B O	C	O	T', 'ANKABOOT', 4, 'Stage 4'),
(33, 'It is a surah that protect one from anger of Allah (SWT).', 'B	G	F	A	O	P	T	I	U	Y	G	H A	K', 'FATIHA', 4, 'Stage 4'),
(34, 'It is a surah that the ayah of the sajdah was revealed.', 'D	E	N	A	H	A	J	L	O	M', 'NAJM', 4, 'Stage 5'),
(35, 'Whoever recites this surah before sleeping will be saved from the horror of the grave.', 'B	G	K	L	T	A	E	K	W	A	T	A S	H	U	R', 'TAKATHUR', 4, 'Stage 4'),
(36, 'A surah that protects one from evil thoughts.', 'N	W	E	R	A	A	H	U	I	O	S	P', 'NAAS', 4, 'Stage 4'),
(37, 'A surah that tackle about the slanderer.', 'G	K	H	F	U	T	M	H	A	U	Z	I A	P', 'HUMAZA', 4, 'Stage 4'),
(38, 'It is a surah that its main topic is about the end of the world. Earthquake will strike the earth and ruin it.', 'B	Z	K	G	A	L	S	Z	U	A	I	L O	A	P	H', 'ZALZALAH', 4, 'Stage 4'),
(39, 'It is a 100th surah in the Quran. It was revealed to inform us about the story of the fighting horse which attacks the enemy, and about the nature of a man who loves wealth and worldly gains.', 'B	G	A	D	I	U	A	O	S	Y B A C T', 'ADIYAT', 4, 'Stage 4'),
(40, 'It is a surah that tells us that Allah (SWT) took His oath by creation, like the morning and the night, that He never forsakes His servant Prophet Muhammad.', 'B	E	I	D	N	H	O	A	P	S	U	H A', 'DHUHA', 4, 'Stage 4'),
(41, 'It is a surah that tells us that the Holy Quran was sent from the Lawh al Mahfudh to the lowest heaven near  our planet during the Night of Decree.', 'B	K	G	Q	A	D	E	D	R	A	S	P', 'QADR ', 4, 'Stage 4'),
(42, 'It is a surah that warned mankind about the great loss they will suffer at a certain period of time.', 'S	D	H	R	E	A	I	A	S	L	O	P R', 'ASR', 4, 'Stage 3'),
(43, 'In this surah, Allah (SWT) deplored the polytheistâ€™s excessive appetite for wealth. Their wealth made the polytheists abandon their faith and their duties to worship Allah (SWT).', 'B	U	T	S	T	E	A	K	D	A	B	N T	C	H	S	U	R', 'TAKATHUR', 4, 'Stage 5'),
(44, 'Allah (SWT) informed us in this surah that the day of resurrection is the greatest terror that frightens all of creation.', 'B	G	M	O	P	E	Q	S	R	V	N	A R	I	A	H', 'QARIAH', 4, 'Stage 5'),
(45, 'It is the other term for the devil in the Quran aside from  shaytan.', 'I	B	W	A	A	G	F	L	L	E	R	T L	E	E	S', 'IBLEES', 4, 'Stage 5'),
(46, 'Category of creature that the Quran put â€œibleesâ€ into.', 'J	A	S	D	E	T	U	I	N	B	D	I N	N', 'JINN', 4, 'Stage 5'),
(47, 'A scale or measure of ones dignity according to Quran.', 'T	A	A	Q	W	B	R	E	T	A	J	U	O	T	Y', 'TAQWA', 4, 'Stage 5'),
(48, 'Which Surah in the Qurâ€™an is named after an Israelite Prophet who was sent to Iraq about 800 BC for the guidance of the Assyrians?', 'H	T	O	U	F	Y	T	S	G	A	U	F B	N	T', 'YUNUS', 4, 'Stage 5'),
(49, 'It is the Surah that does not start with â€œBismillahâ€.', 'T	A	W	G	W	S	A	E	Y	U	N	O P	B	A	H', 'TAWBAH', 4, 'Stage 5'),
(51, 'It is the other name of Madinah in the Quran (33:13).', 'Y	S	A	B	A	K	A	T	T	H	U	 R	O	I	P	T', 'YATHRIB', 4, ''),
(52, 'What is the other term for taqdir?', 'Q	O	I	P	A	U	E	Z	U	A 	D	R	S', 'QADAR', 4, 'Stage 4'),
(53, 'It is any of the innovated practices introduced in the religion of Islam.', 'B	G	K	B	A	S	I	D	D	E	R	A H	V	U	I	O', 'BIDAH', 4, 'Stage 6'),
(54, 'It is an Arabic term for â€œreligionâ€ in Islam.', 'B	G	K	D	E	A	A	E	R	T	U	I O	S	E	N', 'DEEN', 4, 'Stage 6'),
(55, 'It is a state in which every pilgrim in hajj to perform his/her hajj, consisting of two modest clothes and 25 restrictions.', 'I	B	A	H	G	C	K	E	R	D	T	U T	U	R	A	M', 'IHRAM', 4, 'Stage 6'),
(56, 'It is a Surah meaning â€œKingdomâ€.', 'B	Y	M	A	J	C	K	M	L	N	U	B L	O	P	K', 'MULK', 4, 'Stage 6'),
(57, 'It is a 10th surah in the Quran.', 'Y	U	A	S	D	N	U	Y	E	C	G	F K	U	S	N	M', 'YUNUS', 4, 'Stage 6'),
(58, 'Where was the first Surah revealed?', 'G	O	B	U	M	S	E	P	R	O	A	N K	M	U	K	A	H', 'MAKKAH', 4, 'Stage 6'),
(59, 'What is the topic of the Qur\'\'an? ', 'N	A	B	T	B	A	B	Q	L	A	M	J V	E	F', 'MAN', 4, 'Stage 6'),
(60, 'What according to the Qurâ€™an is the root cause of the evil?', 'L	R	X	O	P	H	R	G	O	X	C	I	W	L	O	S	A', 'ALCOHOL', 4, 'Stage 5'),
(61, 'Which is the first and the most ancient Mosque according to Qurâ€™an?', 'Q	K	N	H	A	K	A	L	B	A	C	I H	R	V	Z	Q', 'KAABA', 4, ''),
(62, 'Refers to any of the various collected accountings of words, actions, and habits of prophet Muhammad', 'H      D    I     T    H    A', 'HADITH', 1, 'Stage 1'),
(63, 'What did Muhammad (pbuh) used to practice in the last 10 days of the month of Ramadan?', 'F	A	K	I	T	I', 'ITIKAF', 1, 'Stage 1'),
(64, 'It is something that is impure.', 'S	I	J	A	N', 'NAJIS', 1, 'Stage 1'),
(65, 'It is a pronouncement of marriage according to Shariâ€™ah.', 'H	A	K	K	I	N', 'NIKKAH', 1, 'Stage 1'),
(66, 'The prophet said,â€ All drinks that produce intoxication are?', 'M	A	R	A	H', 'HARAM', 1, 'Stage 1'),
(67, 'It is the act of breaking the fast.', 'T	A	R	I	F', 'IFTAR', 1, 'Stage 1'),
(68, 'Arkan Al Islam which means to fast in the month of ramadan.', 'M	W	A	S', 'SAWM', 1, 'Stage 1'),
(69, 'He is the last messenger of Allah (SWT).', 'D	A	M	M	A	H	U	M', 'MUHAMMAD', 1, 'Stage 1'),
(70, 'It was the tribe of our Holy Prophet.', 'S	H	D	I	A	W	R	T	U	R	Q', 'QURAISH', 1, 'Stage 2'),
(71, 'It is the three day festival marking the end of Ramadan.', 'R	W	T	R	I	H	F	O	U	L	E	I	D', 'EID UL FITR', 1, 'Stage 2'),
(72, 'It is the feast of sacrifice.', 'B	A	H	N	D	A	U	L	L	D	I	E	K', 'EID UL ADHA', 1, 'Stage 2'),
(73, 'They are the companion of the prophet Muhammad (pbuh).', 'J	I	Y	B	A	N	H	A	S	C', 'SAHABI', 1, 'Stage 2'),
(74, 'It is an Islamic Law that encompasses both the Qurâ€™an and the Hadith.', 'F	A	A	I	R	H	A	H	J	S', 'SHARIA', 1, 'Stage 2'),
(75, 'A sermon given at Jumuâ€™ah (Friday) and Eid prayers.', 'B	G	A	K	H	U	U	T	B	A', 'KHUTBA', 1, 'Stage 2'),
(76, 'It is the whole community of Islam or the ideal society God creates from those who practice and sumbit to Islam.', 'A	U	M	D	M	E	A	U	H', 'UMMAH', 1, 'Stage 2'),
(77, 'It is the act of bowing when performing salah (prayers).', 'R	A	U	S	A	K	U	E', 'RUKU', 1, 'Stage 2'),
(78, 'He said â€œFeed the hungry, visit a sick person, and free the captive, if he be unjustly confined. Assist any person oppressed, wheter Muslim or non-Muslim.â€ Who is he?', 'T	M	W	M	Q	A	D	A	H	U	Y	M', 'MUHAMMAD', 1, 'Stage 2'),
(80, 'It is the love and fear that a Muslim feels for Allah, which drives him / her to avoid things that displease Him.', 'B	T	A	U	H	Q	F	W	A', 'TAQWA', 1, 'Stage 2'),
(81, 'Eating before dawn is called?', 'S  U   H   R   U ', 'SUHUR', 1, 'Stage 1'),
(82, 'She was a female narrator of Hadeeth and a daughter of Prophet Muhammad.', ' H     T     I       F      A     M      A', 'FATIMAH', 1, 'Stage 1'),
(83, 'Prophet Muhammad said “It extinguishes sins like water extinguishes fire” What is this?', 'D	R	A	E	S	E	H	E	A     N	G       Q       A	', 'SADAQAH', 1, 'Stage 3'),
(84, '“When asked to pray against the disbelievers, Prophet Muhammad said: I was not sent as a curser, I was sent as mercy.” This hadith was found in the collection of?', 'M	L	I	S	O	L	U	E	U	M	Y	H	I	H	K	A	S	', 'SAHIH MUSLIM', 1, 'Stage 3'),
(85, 'Prophet said “ to fight the evil within yourself is the greatest?', 'Y	F	D	A	L	H	V	I	J	X	Z', 'JIHAD', 1, 'Stage 3'),
(86, 'It is the conveyance of the message of Islam to people.', 'K	N	H	A	O	V	I	W	A	D	A	', ' DAWAH', 1, 'Stage 3'),
(87, ' It is an Arabic term referring to the afterlife.', 'Q	H	B	A	R	D	I	K	C	H	T	A	P', 'AKHIRAH', 1, 'Stage 3'),
(88, 'It is translated as “worship” means submission, obedience, and devotion to God.', 'M	O	H	E	A	D	A	A	G	B	I	Z', 'IBADAH', 1, 'Stage 3'),
(89, 'They are he follower of the religion Islam.', 'B	M	I	H	S	L	G	L	U	M	O	P', 'MUSLIM', 1, 'Stage 3'),
(90, 'It is an Arabic term meaning “Paradise”.', 'A	H	S	A	N	D	N	F	A	T	J	Y', 'JANNAH', 1, 'Stage 3'),
(91, 'It is the religion of the Muslims, a monotheistic faith regarded as revealed through Muhammad as the prophet of Allah (SWT).', 'J	M	U	A	E	L	B	S	L	I	C', 'ISLAM', 1, 'Stage 3'),
(92, 'It is the belief in the resurrection of people on the day of judgement.', 'H	B	A	C	M	A	I	Y	E	C	I	A Q', 'QIYAMAH', 1, 'Stage 3'),
(93, 'It refers to a state of modesty and covering that encompasses a womans entire body, excluding hands and face.', 'O	D	B	E	R	A	F	J	L	I	H	N M', 'HIJAB', 1, 'Stage 4'),
(94, 'It is the congregational worship performed on Fridays in place of the midday worship.', 'V	U	E	J	A	U	M	D	A	D	J	H I', 'JUMAH', 1, 'Stage 4'),
(95, 'Places of worship for Muslims.', 'A	M	A	E	S	B	H	J	H	F	I	Y D	U', 'MASJID', 1, 'Stage 4'),
(96, 'It is an Arabic term for Angels.', 'M	E	A	A	L	C	U	A	R	I	O K	I	U	A	H', 'MALAIKAH', 1, 'Stage 4'),
(97, 'It is a direction in which all Muslims face when praying which is the kaaba in Makkah in Saudi Arabia.', 'Q	A	I	B	R	E	L	Y	C	A	U	H I	O', 'QIBLAH', 1, 'Stage 4'),
(98, 'The Arabic term for prostration.', 'E	S	W	A	A	O	J	I	D	T	A	U P', 'SAJDA', 1, 'Stage 4'),
(99, 'An empty cube-shaped structure located in the city of Makkah.', 'A	K	V	A	B	C	Y	A	H	U	M	E T', 'KABAH', 1, 'Stage 4'),
(100, 'It is formerly named Yathrib. It became the center of the first Islamic community and the political state after prophet Muhammad migrated there from  Makkah 622 C.E.', 'J	M	A	R	A	D	O	T	I	U	N	A P	H	I', 'MADINAH', 1, 'Stage 4'),
(101, 'An ancient city where Abraham and Ismail built the Kaabah.', 'M	A	A	K	K	T	R	A	Y	N    V    H 	P	U', 'MAKKAH', 1, 'Stage 4'),
(102, 'It is the night journey of the prophet Muhammad (pbuh)  from Makkah to Jerusalem and then through the realms of the seven heavens.', 'E	M	A	I	U	R	G	A	I	F	J	O	 P', 'MIRAJ', 1, 'Stage 4'),
(103, 'It is a race of created beings that are made out of smokeless.', 'Q	J	A	M	R	I	T	E	N	N	I	U    R   P', 'JINN', 1, 'Stage 5'),
(104, 'A full ritual washing of the body with water.', 'G	V	G	R	I	O	Z	H	U	S	B	R L	O	P', 'GHUSL', 1, 'Stage 5'),
(105, 'It means “religion”. It iis a comprehensive word which means a total way of life, following the commandments of Allah.', 'A	D	E	D	E	T	N	E	T	Y	U	W W	E', 'DEEN', 1, 'Stage 5'),
(106, 'Any innovated practices introduced in the religion of Islam.', 'G	E	B	Y	A	I	O	A	D	A	S	H D	R	P', 'BIDAH', 1, 'Stage 5'),
(107, 'Purifying with water before performing prayers is called?', 'G	D	K	W	T	A	U	E	O	D	F	H P	U	A', 'WUDHU', 1, 'Stage 5'),
(108, 'It is a pilgrimage in Makkah, but not during the hajj period.', 'K	G	U	A	I	M	O	T	R	P	A	A H	T	Z', 'UMRAH', 1, 'Stage 5'),
(109, 'It is a dry purification when water is not available or is detrimental to health.', 'K	G	T	F	O	A	R	A	Y	Y	R	A J	M	M	U	U	M', 'TAYAMMUM', 1, 'Stage 5'),
(110, 'It means believer. It is a person who has complete submission to the will of Allah (SWT).', 'G	K	K	A	M	C	U	M	Y	E	O	I I	O	N', 'MUMIN', 1, 'Stage 5'),
(111, 'It is an Arabic term for Hell.', 'G	J	K	M	A	L	C	H	A	V	B	N O	N	A	P	M	I', 'JAHANNAM', 1, 'Stage 5'),
(112, 'It means “testimony in faith”.', 'G	K	G	A	T	R	B	A	T	S	O	I H	A	P	H	U	D', 'TASHAHUD', 1, 'Stage 5'),
(113, 'It is the Islamic virtue of patience and endurance.', 'B    K	S	A	G	A	A	E	U	B	U	R	R I	O	P', 'SABR', 1, 'Stage 6'),
(114, 'It is belief in God (ALLAH SWT), his prophets, revealed books, angels, the hereafter, and Allah’s divine.', 'K	G	A	I	E	V	D	C	D	M	U	A I	N	O	P', 'IMAN', 1, 'Stage 6'),
(115, 'It means purification of body, clothing and souls.', 'A	R	Q	T	E	U	A	I	H	D	A	O R	C	P	A	E	H	A', 'TAHARAH', 1, 'Stage 6'),
(116, 'It is an Arabic term meaning “festivity” or “celebration”.', 'G	K	A	W	E	G	T	U	I	D	U	O P A  S', 'EID', 1, 'Stage 6'),
(117, 'It is the month of fasting. The 9th month of the Islamic Calendar.', 'G	I	R	A	O	M	E	A	A	W	S	O D	P Y  B	I	A	N', 'RAMADAN', 1, 'Stage 6'),
(118, 'An Arabic term for “peace”.', 'K	G	A	U	A	S	A	Y	G	T	L	A U	M	I	O	P', 'SALAM', 1, 'Stage 6'),
(119, 'It refers to the charity due on the occasion of Eid al fitr, on the night after Ramadan.', 'G	I	F	A	I	U	S	T	A	R	I	T O	A	H	K	K	U', 'FITRAH', 1, 'Stage 6'),
(120, 'It refers to the breaking of the fast.', 'G	A	Q	I	F	J	A	T	O	I	U	Y A	L	R	O U', 'IFTAR', 1, ''),
(121, 'It is an Arabic term for “Leader”. Generally applied to religious leaders.', 'G	K	I	S	E	Y	T	A	M	I	U	A N	O	M	I', 'IMAM', 1, 'Stage 6'),
(122, 'It means repentance.', 'K	G	T	A	C	W	V	U	B	T	I	U A	O	D	H	P	E', 'TAWBAH', 1, 'Stage 6'),
(123, 'It refers to the breaking of the fast.', 'B G	A	Q	I	F	J	A	T	O	I	U	Y A	L	R	O', 'IFTAR', 1, ''),
(124, ' It refers to the breaking of the fast.', 'B G	A	Q	I	F	J	A	T	O	I	U	Y A	L	R	O', 'IFTAR', 1, ''),
(125, 'It refers to the breaking of the fast.', 'G	A	Q	I	F	J	A	T H	O	I	U	Y A	L	R	O', 'IFTAR', 1, 'Stage 6'),
(126, 'He is the first Prophet', 'M	A	D	A', 'ADAM', 2, 'Stage 1'),
(127, 'What is the name of our Holy Prophet?', 'D	A	M	M	A	H	U	M', 'MUHAMMAD', 2, 'Stage 1'),
(128, 'He protected prophet Muhammad (PBUH) after mother’s death.', 'B	I	L	T	T	U	M	A	L	U	D	B     A', 'ABDUL MUTTALIB', 2, 'Stage 1'),
(129, 'Who was the prophet who came just before prophet Isa (AS)?', 'A	S	U	M	', 'MUSA', 2, 'Stage 1'),
(130, 'Who is the sahabi who accompanied the prophet (PBUH) during Hijra?', 'R	K	A	B	U	B	A', 'ABU BAKR', 2, 'Stage 1'),
(131, 'It is a city where the cave of hira found', 'H	A	K	K	A	M', 'MAKKAH', 2, 'Stage 1'),
(132, 'He was one of the greatest of all prophets. He, along with his eldest son Ismail (AS) rebuilt the Ka’bah in Makkah.', 'M	I	H	A	R	B	I', 'IBRAHIM', 2, 'Stage 1'),
(133, 'Sacred well in Makkah.', 'M	A	Z	M	A	Z', 'ZAMZAM', 2, 'Stage 1'),
(134, 'A single united Muslim nation.', 'H	A	M	M	U', 'UMMAH', 2, 'Stage 1'),
(135, 'He was the prophet in which the Injeel were revealed.', 'S	A	I', 'ISA', 2, 'Stage 1'),
(136, 'A first person who counted the ayah (verses) of the Quran?', 'B	A	D	E	R	H	S	I	A', 'AISHA', 2, 'Stage 2'),
(137, 'Who was the prophet whose name is mentioned and discussed most in the Quran?', 'A	G	S	Y	I	O	U	M', 'MUSA', 2, 'Stage 2'),
(138, 'It is the ruler of the Muslim nation.', 'K	A	A	L	F	I	Y	F	O	A', 'KALIFA', 2, 'Stage 2'),
(139, 'He was the second prophet of Islam.', 'H	U	D	U	T	E	N', 'NUH', 2, 'Stage 2'),
(140, 'Who is the relative of the Prophet Muhammad whose name is mentioned in the Quran?', 'G	B	A	A	S	H	A	L	D	U	B	A', 'ABU LAHAB', 2, 'Stage 2'),
(141, 'Who was the prophet in which Zabur was revealed?', 'A   D  P   A   O  W  N  U  D', 'DAWUD', 2, 'Stage 2'),
(142, 'She is the mother of Prophet Isa (AS).', 'B	M	K	A	G	M	R	Y	A	M', 'MARYAM', 2, 'Stage 2'),
(143, 'A prophet who called Bilqas to Islam.', 'B	S	W	E	R	U	L	E	I	M	A	N', 'SULEIMAN', 2, 'Stage 2'),
(144, 'It is a mountain where Musa (AS) climbs to praise Allah (SWT).', 'B	S	I	G	K	A	N	A	I', 'SINAI', 2, 'Stage 2'),
(145, 'She was Rasulullah\'s nurse.', 'B	G	H	K	A	O	L	I	M	A	H', 'HALIMAH', 2, 'Stage 2'),
(146, 'She was the first Martyr in Islam.', 'S	U	A	B	N	R	T	M	A	Y	Y	A', 'SUMAYYA', 2, 'Stage 3');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `categoryId` int(6) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`categoryId`, `category`) VALUES
(1, 'Hadeeth'),
(2, 'Seerah'),
(3, 'Du\'a'),
(4, 'Qur\'an');

-- --------------------------------------------------------

--
-- Table structure for table `difficult_question_table`
--

CREATE TABLE `difficult_question_table` (
  `difficultQuestionId` int(6) NOT NULL,
  `difficultQuestion` text,
  `stage` varchar(60) DEFAULT NULL,
  `categoryId` int(6) DEFAULT NULL,
  `difficultAnswer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `difficult_question_table`
--

INSERT INTO `difficult_question_table` (`difficultQuestionId`, `difficultQuestion`, `stage`, `categoryId`, `difficultAnswer`) VALUES
(4, 'Name the biggest sin in Islam.', 'Stage 1', 1, 'Shirk;Disobeying parents;Zina'),
(5, 'Name a dhikr that Muslim usually says.', 'Stage 1', 1, 'Bismillah;Alhamdulillah;Allahu Akbar'),
(6, 'Name the fruits that are mentioned in the Quran.', 'Stage 1', 1, 'Fig;Dates;Olive'),
(7, 'Wudhu is necessary for?', 'Stage 1', 1, 'Salah;Tawaf;reading Quran'),
(8, 'Name the things that are sunnah in the day of Jumâ€™ah.', 'Stage 1', 1, 'Cutting Nails;Reading Quran;Ghusl'),
(9, 'Name the things that cannot be done when parying.', 'Stage 1', 1, 'Sleeping;Drinking;Eating'),
(10, 'Name the types of tawhid', 'Stage 1', 1, 'Rubbubiyyah;Uluhiyyah;Asmae wassifat'),
(11, 'Name The Islamic Religious leaders.', '', 1, 'Ulama;Imam;Mufti'),
(13, 'Name of the Prophets whose name starts with â€œYâ€.', 'Stage 2', 1, 'Yunus;Yakob;Yusuf;Yahya'),
(14, 'Name the angels of Allah.', 'Stage 2', 1, 'Jibril;Mikail;Israfil;Izrail'),
(16, 'Name the Rightly Guided Caliphs', '', 1, 'Abu bakr;Ali;Omar;Uthman'),
(17, 'Name the types of prayers.', 'Stage 2', 1, 'Fardh;Wajib;Sunnah;Nafl'),
(19, 'Name the Sahabi of Prophet Muhammad.', 'Stage 2', 1, 'Ali;Abu bakr;Uthman;Omar'),
(25, 'Name the Surahâ€™s in the Quran that starts with letter â€œNâ€.', '', 1, 'Surah an Naml;Surah an Nasr;Surah An Najim;Surah An Naas;Surah Nisaa'),
(26, 'Name the daily prayers.', 'Stage 3', 1, 'Fajr;Dhuhr;Asr;Maghrib;Isha'),
(31, 'Name the things to do during the month of Ramadhan.', 'Stage 3', 1, 'Fasting;Recite the Quran;Suhur;Iftar;Pray'),
(32, 'Name the Pillars of Islam', 'Stage 3', 1, 'Shahada;Salah;Zakat;Sawm;Hajj'),
(33, 'Muslim do during hajj.', '', 1, 'Mina;Arafat;Muzdalifa;Jamarat;Tawaf;Hajj'),
(35, 'Famous narrator of hadith.', 'Stage 4', 1, 'Abu hurayra;Ibn umar;Anas b. Malik;Aisha;Ibn Abas;Ibn mas ud'),
(36, 'Name something that are prohibited for  women during menstruation', 'Stage 4', 1, 'Praying;Fasting;Hajj;Tawaf;Jamarat;Arafat'),
(37, 'Who were the paternal aunties of the prophet?', 'Stage 4', 1, 'Saffiyah;Arwa;Atiqah;Umm Hakim;Barrah;Umaymah'),
(38, 'Name the short surahâ€™s in the Quran. ', 'Stage 4', 1, 'Kawthar;Nasr;Ikhlas;Falaq;Naas;Masad'),
(39, 'Name the longest surahâ€™s in the Quran.', 'Stage 4', 1, 'Baqarah;Nisaa;Imran;Aâ€™raf;Shuraa;Saaffat'),
(40, 'Name the pillars of Iman.', 'Stage 4', 1, 'Belief in Allah;Belief in angels;Belief in the revealed books;Belief in prophets;Belief in hereafter;Belief in Predestination'),
(41, 'Name the famous narrator of hadith.', 'Stage 4', 1, 'Abdullah bin Umar;Anas bin Malik;Aisha;Abdullah bin Salam;Abdullah bin Abbas;Jabir bin Abdullah'),
(42, 'What is the name of prophet muhammads Father?', 'Stage 4', 1, 'Abdullah;Ibn Abdul Mutallib;Ibn Hashim;Ibn Abd Manaf;Ibn Qusayy;Ibn Kilab'),
(44, 'Name a surah whose name starts with letter \"H\".', 'Stage 5', 1, 'Hud;Hijr;Hajj;Hujurat;Hadid;Hashr;Haqqa'),
(45, 'Name a surah that starts with letter \"M\"', 'Stage 5', 1, 'Maida;Maryam;Mu\'minun;Mujadila;Mumtahana;Munafiqun;Mulk'),
(46, 'What were the names of Muhammad that people used to call him?', 'Stage 5', 1, 'Muhammad;Ahmad;Al Mahi;Al Hashir;Al Aqib;Al Sadiq;Al Amin'),
(47, 'Name the sifat al thubutiyah.', 'Stage 5', 1, 'Qadim;Qadir;Alim;Hayy;Mureed;Mudrik;Mutakallim'),
(48, 'Besides praying, name something that a  people do during Jum\'ah prayer.', 'Stage 5', 1, 'Khutba;Dhikr;Salawat;Sunnah;Durood;Dua;Sujud'),
(49, 'Names kinds of ghusl that are wajib.', 'Stage 5', 1, 'Janabat;Haiz;Nifas;Istihaza;Mayyit;Massal Mayyit;Nadhar'),
(50, 'Name the sifat al Salbiyah.', 'Stage 5', 1, 'Shareek;Murakkab;Makaan;Hulool;Mahal al-Hawadith;Mar\'i;Ihtiyaj'),
(51, 'Name the kinds of Jannah.', 'Stage 5', 1, 'Daral Salam;Daral Jalal;Mava;Khuld;Adan;Firdaws;Naeem'),
(52, 'Name the asmaul husna that starts with \"W\".', 'Stage 5', 1, 'Wahab;Wasi;Wadud;Wakil;Wali;Wajid;Wahid'),
(53, 'What are the branches of Islam?', 'Stage 5', 1, 'Jihad;Amr bil Ma\'ruf;Nahyan al Munkar;Tawalla;Ijtihad;Taqlid'),
(54, 'Name some of the sunnah food according to Prophet Muhammad.', 'Stage 6', 1, 'Barley;Dates;Figs;Grapes;Honey;Olives;Pomegranate;Melon'),
(55, 'Name some surah\'s that is sunnah to recite before sleeping.', 'Stage 6', 1, 'Baqarah;Mulk;Kafirun;Isra;Zumar;Ayatul Kursi;Naas;Falaq'),
(56, 'Name the first 8 of the arabic letters.', 'Stage 6', 1, 'Alif;Ba;Ta;Tha;Jim;Ha;Kha;Dal\r\n'),
(57, 'Name the grandchildren of the prophet.', 'Stage 6', 1, 'Ali;Umamah;Abdullah;Hasan;Husain;Muhsin;Umm Kulthum;Zaynab\r\n'),
(58, 'Name the Asmaul husna that starts with letter \"M\".', 'Stage 6', 1, 'Malik;Mu\'min;Muhaymin;Mutakabbir;Musawwir;Mu\'izz;Muzil;Muqit\r\n'),
(59, 'Name the positive attributes which are befitting Allah.', 'Stage 6', 1, 'Qadim;Qadir;Alim;Haay;Mudrid;Mudrik;Mutakallim;Sadiq\r\n'),
(60, 'What are the negative attributes which cannot be found in Allah?', 'Stage 6', 1, 'Shareek;Murakkab;Makaan;Hulool;Mahal al hawadith;Mar\'i;Ihtiyaj;Sifat alzaid\r\n'),
(61, 'Name the surah that has sajda in it.', 'Stage 6', 1, 'A\'raf;Rad;Nahl;Hajj;Inshiqaq;Alaq;Sad;Furqan\r\n'),
(62, 'Name some Surah that starts with \"A\".', 'Stage 6', 1, 'Alaq;A\'la;An\'am;Anqabut;A\'raf;Anfal;Anbiya;Ahzab\r\n'),
(65, 'Name some of the expression that Muslim usually says.', 'Stage 7', 1, 'Bismillah;Alhamdulillah;Mashallah;Subhnallah;Allahu Akbar;Astagfirullah;Ashokulillah;Inshallah;Rahimakallah'),
(66, 'What are the surah\'s that starts with \"T\"?', 'Stage 7', 1, 'Taha;Tur;Taghabun;Talaq;Tahrim;Tariq;Tawbah;Tin;Takathur'),
(67, 'Name the fundamental principles or belief that are essential for Muslims.', 'Stage 7', 1, 'Salah;Sawm;Hajj;Zakat;Khums;Jihad;Nahyan al Munkar;Tawalla;Tabarra'),
(68, 'Name the List of Hadith Collections.', 'Stage 7', 1, 'Sahih Bukhari;Sahih Muslim;Sunan Ibn Majah;Sunan Abu Dawud;Sunan Tirmidhi;Sunan Nasai;Al Muwatta;Sunan Al Darimi;Sahih Ibn Hibban'),
(69, 'Name the asmaul husna that starts with   \"H\".', 'Stage 7', 1, 'Hakam;Halim;Hafidh;Hasib;Hakim;Haqq;Hamidu;Hayy;Hadi'),
(70, 'Name the Arabic vowels and tenses.', 'Stage 7', 1, 'Fatha;Kasra;Damma;Sukun;Tanween;Madi;Mudari;Amr;Shadda'),
(71, 'Name the last 9 surah\'s of the Quran.', 'Stage 7', 1, 'Quraysh;Maun;Kawthar;Kafirun;Nasr;Masad;Ikhlas;Falaq;Naas'),
(72, 'What are the names of Prophet Muhammad?', 'Stage 7', 1, 'Amin;Sadiq;Kareem;Mustafa;Shahid;Aqib;Rasul;Nabi;Tayyib'),
(73, 'Name the Durood sharif.', 'Stage 7', 1, 'Durood Ibrahim;Durood Fath;Durood Shafi;Durood Dawami;Durood Tunajinna;Durood Qurani;Durood Sadaqah;Durood Wali;Durood Ali'),
(74, 'Name the Arabic numbers from 1 to 10', 'Stage 8', 1, 'Wahid;Isnin;Salasa;Arba;Khamsa;Sitta;Sab\'a;Thamanya;Tis\'a;Ashara'),
(75, 'Who were the Asharah Mubasharah?', 'Stage 8', 1, 'Abu bakr;Umar;Uthman;Ali;Talha;Zubayr;Abdur-Rahman;Sa\'ad;Abu Ubaida;Said ibn Zayda'),
(76, 'What are the Obligatory prayers?', 'Stage 8', 1, 'Fajr;Dhuhr;Asr;Maghrib;Isha;Jum\'ah;Ihtiyat;Salatul mayyit;Qadha;Ijarah'),
(77, 'Who were the paternal uncles of the Prophet?', 'Stage 8', 1, 'Harith;Abu Talib;Gheedaq;Muqawwam;Dhirar;Quthm;Abdul ka\'bah;Hijl;Hamza;Abbas'),
(78, 'Name the first 10 Prophets of Islam.', 'Stage 8', 1, 'Adam;Idris;Nuh;Hud;Salih;Lut;Ibrahim;Ismail;Ishaq;Yaqub'),
(79, 'Name the tribes and clans during the time of Prophet Muhammad.', 'Stage 8', 1, 'Quraish;Banu Kinanah;Banu Hashim;Banu Hotail;Banu Bariq;Banu Hubu;Banu Hilal;Banu Tamim;Banu Sad;Banu Amr'),
(80, 'Name the Angels of Islam.', 'Stage 8', 1, 'Jibril;Mikail;Israfil;Izrail;Malik;Ridwan;Munkar;Nakir;Raqib;Atid'),
(81, 'Muslim usually recites surah\'s when praying, but aside from reciting surah\'s, what do they do?', 'Stage 8', 1, 'Sajda;Ruku;Dua;Salawat;Tashahud;Dhikr;Shahada;Salam;Takbir;Niyyah'),
(82, 'Name the first 10 of Arabic Alphabet.', 'Stage 8', 1, 'Alif;Ba;Ta;Sa;Jim;Ha;Kha;Dal;Dhal;Ra'),
(83, 'Name the women after Khadijah.', 'Stage 8', 1, 'Sawdah;Aisha;Hafsah;Zaynab bint Jas;Umm Salamah;Zaynab bint Khuzaymah;Juwairiyah;Umm Habebah;Safiyyah;Maymunah'),
(84, 'Name the doors of Jannah.', 'Stage 9', 1, 'Firdaws;Mava;Maqam;Salam;Khuld;Adan;Naeem;Kasif;Salah;Sadaqah;Hajj'),
(85, 'What are things that are wajib in prayers?', 'Stage 9', 1, 'Niyyah;Takbiratul Ihram;Qiyam;Ruku;Sajah;Qira\'at;Dhikr;Tashahud;Salam;Tartib;Muwalat'),
(86, 'What are the things that makes najis clean?', 'Stage 9', 1, 'Water;Earth;Sun;Istihala;Intiqal;Islam;Tabaiyat;Istibra;Ghaybah;Inqilab;Zawalayn'),
(87, 'Name the Gates of Jannah.', 'Stage 9', 1, 'Babus salah;Babul jihad;Babus sadaqah;Babur rayyan;Babul hajj;Babul kazimin al ghayz;Babul iman;Babuz dhikr;Firdaws;Zakah;Dhikr '),
(88, 'Name the prophets before Muhammad.', 'Stage 9', 1, 'Isa;Musa;Ibrahim;Idris;Nuh;Lut;Yahya;Yunus;Yusuf;Yakob;Dawud'),
(89, 'Name the layers of Jannah.', 'Stage 9', 1, 'Firdaws;Daral Maqamah;Janatul Aliyah;Daral Salam;Daral Akhirah;Al Jannah; Jannat al Khuld;Jannat al Ma’wa;Jannat al Naim;Maqad al Sidq;Maqam Al Amin'),
(90, ' Name the \"Sahabah hadith narrators\"', 'Stage 10', 1, 'Abdullah ibn Umar;Abdullah ibn Abbas;Abdullah ibn Salam;Abu Buraidah al-Aslami;Abu Hurairah;Amr ibn ;Abasah;Amr ibn Maymun;Anas ibn Malik;Umar;Fatimah;Ali'),
(91, 'Name the sifat al thubutiyah.', 'Stage 9', 1, 'Qadim;Qadirl;Alim;Haay;Murid;Mudrik;Mutakallim;Sadiq'),
(92, 'Name the female hadith Narrators\'.', 'Stage 9', 1, 'Fatimah;Zaynab;Aisha;Hafsa;Umm Darda;Al Shifa;Hafsa bint Sirin;Umm Salamah;Aisha bint Talha;Fatimah bint Musa;Sayida Nafisah'),
(93, 'Name the surah that has sajda-e-tilawat.', 'Stage 9', 1, 'A\'raf;Rad;Nahl;Alaq;Inshiqaq;Naml;Hajj;Furqan;Sajdah;Najm;Sad'),
(94, 'Who were the group of Masumeen?', 'Stage 10', 1, 'Ali;Hasan;Husain;Ali Zayn;Muhammad al Baqir;Jafar Sadiq;Musa al kadhi;Ali ar raza;Muhammad at taqi;Ali an naqi;Hasan al askari;Muhammad al mahdi'),
(95, 'Name some of the durood sharief.', 'Stage 10', 1, 'Ibrahimi;Nahariya;Fath;Safi’i;Dawami;Tunajina;Qurani;Sadaqah;Wali;Ghausia;Akbar;Noor.'),
(96, 'Name some short dhikr that Muslim usually says.', 'Stage 10', 1, 'Bismillah;Alhamdulillah;Allahu Akbar;Astagfirullah;Subhanallah'),
(97, 'Worrying stop when you have?', 'Stage 10', 1, 'Shukr;Sabr'),
(98, 'Name some of the women narrator of Hadith.', 'Stage 10', 1, 'Fatimah;Zaynab;Aisha;Hafsa;Umm darda;Al shifa;Umm salamah'),
(99, 'Muttafaq Alaih is the combination of?', 'Stage 10', 1, 'Sahih Bukhari;Sahih Muslim'),
(100, 'The sons of Prophet Ibrahim.', 'Stage 10', 1, 'Ismail;Ishaq'),
(101, 'Who are the prophets that are mentioned in the end of Surah Aâ€™la?', 'Stage 10', 1, 'Ibrahim;Musa'),
(102, 'Who were the Uluâ€™l-Azm Prophets?', 'Stage 10', 1, 'Nuh;Ibrahim;Musa;Isa;Muhammad'),
(103, 'Name The Islamic Religious leaders.', 'Stage 1', 1, 'Ulama;Imam;Mufti'),
(104, 'Name of the devil in the Quran.', 'Stage 1', 1, 'Shaytan;Iblis;Dajjal\r\n'),
(105, 'Name the rightly guided caliphs.', '', 1, 'Abu bakr;Ali;Omar;Uthman'),
(106, 'Name the four rivers of Jannah.', 'Stage 2', 1, 'Saihan;Jaihan;Furat;Nil'),
(107, 'Name the revealed books.', 'Stage 2', 1, 'Tawrat;Zabur;Injil;Quran'),
(108, 'Name the types of prayers.', 'Stage 2', 1, 'Fardh;Wajib;Sunnah;Nafl'),
(109, 'Name the Hadith Collections', 'Stage 2', 1, 'Sahi Bukhari;Sahih Muslim;Jami Tirmidhi;Sunan Abu Dawud'),
(110, 'Name the Arabic vowels.', 'Stage 2', 1, 'Fatha;Kasra;Damma;Sukun'),
(111, 'Places and times where the dua is answered.', 'Stage 2', 1, 'Laylatul Qadr;In the depths of the night;Praying;Sujud'),
(112, 'Who were the Ulu’l-Azm Prophets?', '', 1, 'Nuh;Ibrahim;Musa;Isa;Muhammad'),
(113, 'Who were the Ulu’l-Azm Prophets?', 'Stage 3', 1, 'Nuh;Ibrahim;Musa;Isa;Muhammad'),
(114, 'What are the names of Allah that can be recited when doing Dhikr?', 'Stage 3', 1, 'Ya Allah;Al Awwalu;Al Aleem;Al Azeez;Al Akram'),
(115, 'The women who are mentioned in the Holy Quran.', 'Stage 3', 1, 'Hawwa;Maryam;Umme Musa;Bilquis;Nuh’s wife'),
(116, 'Name the prayers aside from the five daily prayer.', 'Stage 3', 1, 'Jum’ah prayer;Tarawih;Tahajjud;Witr;Sunnah'),
(118, 'Name the Holy cities in Islam.', 'Stage 1', 1, 'Makkah;Madinah;Jerusalem'),
(119, 'Name the Surah’s in the Quran that starts with letter â€œNâ€.', 'Stage 3', 1, 'Nisaa;Naml;Nahl;Noor;Najm'),
(120, 'Who were the Ahl Al kisa?', 'Stage 3', 1, 'Prophet Muhammad;Ali;Fatima;Hasan;Husain'),
(121, 'Things to do before going to bed that are sunnah in Islam.', 'Stage 3', 1, 'Say bismillah;Do Miswak;Ablution;Ayatul Kursi;Dhikr'),
(122, 'Name some dhikr that are mostly used by the Muslim in tasbih.', 'Stage 4', 1, 'Alhamdulillah;Astagfirullah;Subhanallah;Ya Allah;Durood;La ilaha Ilallah'),
(123, 'List down the asmaul husna that starts with letter  â€œQâ€.', 'Stage 4', 1, 'Quddus;Qawiy;Qabidh;Qayyum;Qadir;Qahar'),
(124, 'List down the first 8 surah in the Quran.', '', 1, 'Fatiha;Baqarah;Imran;Nisaa;Maida;An\'am;A\'raf;Anfal'),
(125, 'What are the first 8 surah in the Quran?', 'Stage 6', 1, 'Fatiha;Baqarah;Imran;Nisaa;Maida;An\'am;A\'raf;Anfal'),
(126, 'Name the Arabic Alphabet that are mentioned in the Quran.', 'Stage 7', 1, 'Alif;Lam;Ra;Ya;Sin;Sad;Ta;Ha;Mim'),
(127, 'Name the types of tawhid.', 'Stage 1', 2, 'Rubbubiyyah;Uluhiyyah;Asmae wassifat'),
(128, 'Name The Islamic Religious leaders.', 'Stage 1', 2, 'Ulama;Imam;Mufti'),
(129, 'Name 3 of the Prophet Muhammad’s uncle who were supportive to him.', 'Stage 1', 2, 'Abu talib;Hamza;Al abbas'),
(130, 'Name the fruits that are mentioned in the Quran.', 'Stage 1', 2, 'Fig;Dates;Olive'),
(131, 'Name the holy cities of Islam.', 'Stage 1', 2, 'Makkah;Madinah;Jerusalem'),
(132, 'Name the biggest sin in Islam.', 'Stage 1', 2, 'Shirk;Disobeying parents;Zina'),
(133, 'Name a dhikr that Muslim usually says.', 'Stage 1', 2, 'Bismillah;Alhamdulillah;Allahu akbar'),
(134, 'Name of the devil in the Quran.', 'Stage 1', 2, 'Shaytan;Iblis;Dajjal'),
(135, 'Name the things that are sunnah in the day of Jum’ah.', 'Stage 1', 2, 'Cutting Nails;Reading Quran;Ghusl'),
(136, 'Name the things that cannot be done when praying.', 'Stage 1', 2, 'Sleeping;Drinking;Eating'),
(137, 'Name the rightly guided caliphs', 'Stage 2', 2, 'Abu bakr;Uthman;Omar;Ali '),
(138, 'Name a hadith Collections.', 'Stage 2', 2, 'Sahih Bukhari;Sahih Muslim;Sunan AbuDawud;Jami Tirmidhi'),
(139, 'Places and times where the dua is answered.', 'Stage 2', 2, 'Laylatul Qadr;In the depths of the nigh;Praying;Sujud'),
(140, 'Name the Sahabi of Prophet Muhammad.', 'Stage 2', 2, 'Ali;Abu bakr;Uthman;Omar'),
(141, 'Name the surah that start with “F”.', 'Stage 2', 2, 'Furqan;Fajr;Fussilat;Fath'),
(142, 'Name the types of prayers.', 'Stage 2', 2, 'Fardh;Wajib;Sunnah;Nafl'),
(143, 'Name the revealed books.', 'Stage 2', 2, 'Tawrat;Zabur;Injil;Quran'),
(144, 'Name the Arabic Tenses.', 'Stage 2', 2, 'Fatha;Kasra;Damma;Sukun'),
(145, 'Name the angels of Allah.', 'Stage 2', 2, 'Jibril;Mikail;Israfil;Izrail'),
(146, 'Name of the Prophets whose name starts with “Y”.', 'Stage 2', 2, 'Yunus;Yakob;Yusuf;Yahya'),
(147, 'What are the names of Allah that can be recited when doing Dhikr.', 'Stage 3', 2, 'Ya Allah;Al Awwalu;Al Aleem;Al Azeez;Al Akram'),
(148, 'Name the daily prayers.', 'Stage 3', 2, 'Fajr;Dhuhr;Asr;Maghrib;Isha'),
(149, 'Name the Surah’s in the Quran that starts with letter “N”.', 'Stage 3', 2, 'Naml;Nisaa;Nahl;Noor;Najm'),
(150, 'Who were the Ulu’l-Azm Prophets?', 'Stage 3', 2, 'Nuh;Ibrahim;Musa;Isa;Muhammad'),
(151, 'The women who are mentioned in the Holy Quran.', 'Stage 3', 2, 'Hawwa;Maryam;Umm-e-Musa;Bilquis;Nuh’s wife'),
(152, 'Name the prayers aside from the five daily prayer.', 'Stage 3', 2, 'Jum’ah prayer;Tarawih;Tahajjud;Witr;Sunnah'),
(153, 'Name the things to do during the month of Ramadhan.', 'Stage 3', 2, 'Fasting;Recite the Quran;Suhur;Iftar;Pray'),
(154, 'Things to do before going to bed that are sunnah in Islam.', 'Stage 3', 2, 'Say bismillah;Do Miswak;Ablution;Ayatul Kursi;Dhikr'),
(155, 'Who were the Ahl Al kisa?.', 'Stage 3', 2, 'Prophet Muhammad;Imam Ali;Fatimah;Imam hasan;Imam husain'),
(156, 'Name the Pillars of Islam', 'Stage 3', 2, 'Shahada;Salah;Zakat;Sawm;Hajj'),
(157, 'Who were the paternal aunties of the prophet.', 'Stage 4', 2, 'Safiyyah;Arwa;Atiqah;Umm Hakim;Barrah;Umaymah '),
(158, 'Name the short surah’s in the Quran', 'Stage 4', 2, 'Kawthar;Nasr;Ikhlas;Falaq;Naas;Masad'),
(159, 'What is the the name prophet Muhammad’s father?', 'Stage 4', 2, 'Abdullah;Ibn Abdul-Mutallib;Ibn Hashim;Ibn Abd-Manaf;Ibn Qusayy;Ibn Kilaab'),
(160, 'Name the famous narrator of Hadith.', 'Stage 4', 2, 'Abdullah bin Umar;Anas bin Malik;Aisha;Abdullah bin Abbas;Jabir bin Abdullah;Abdullah bin salam'),
(161, 'Name the longest surah’s in the Quran.', 'Stage 4', 2, 'Baqarah;Nisaa;Imran;A’raf;Shuraa;Saaffat '),
(162, 'Name something that are prohibited for  women during menstruation.', 'Stage 4', 2, 'Praying;Fasting;Hajj;Tawaf;Jamarat;Arafat'),
(163, 'Famous narrator of hadith.', 'Stage 4', 2, 'Abu hurayra;Ibn umar;Anas b. Malik;Aisha;Ibn Abas;Ibn mas ud'),
(164, 'What did a Muslim do during hajj?', 'Stage 4', 2, 'Mina;Arafat;Muzdalifa;Jamarat;Tawaf;Hajj'),
(165, 'Name some dhikr that are mostly used by the Muslim in tasbih.', 'Stage 4', 2, 'Subhanallah;Alhamdulillah;Allahu Akbar;Astagfirullah;La ilaha ilallah;Durood'),
(166, 'Name the pillars of Iman.', 'Stage 4', 2, 'Belief in Allah;Belief in angels;Belief in the revealed books;Belief in prophets;Belief in hereafter;Belief in Predestination'),
(167, 'Name the  kinds of Jannah.', 'Stage 5', 2, 'Daral Salam;Daral Jalal;Mava;Khuld;Adan;Firdaws;Naeem'),
(168, 'Name the Sifat al thubutiyah.', 'Stage 5', 2, 'Qadim;Qadir;Ali;Hayy;Mureed;Mudrik;Mutakallim'),
(169, 'Name a Surah whose name starts with “H”.', 'Stage 5', 2, 'Hud;Hijr;Hajj;Hujurat;Hadid;Hashr;Haqqa '),
(170, 'Name surah that starts with letter “M”.', 'Stage 5', 2, 'Maida;Maryam;Muminun;Mujadila;Mumtahana;Munafiqun;Mulk '),
(171, 'Name the Sifat al Salbiyah.', 'Stage 5', 2, 'Shareek;Murakkab;Makaan;Hulool;Mahal al-hawadith;Mar’I;Ihtiyaj'),
(172, 'Name the asmaul husna that starts with “W”.', 'Stage 5', 2, 'Wahab;Wasi;Wadud;Wakil;Wali;Wajid;Wahid'),
(173, 'What are the branches of Islam?', 'Stage 5', 2, 'Jihad;Amr bil Ma’ruf;Nahyan al Munkar;Tawalla;Tabarra;Ijtihad;Taqlid'),
(174, 'Name kinds of ghusl that are wajib.', 'Stage 5', 2, 'Janabat;Haiz;Nifas;Istihaza;Mayyit;Massal Mayyit;Nadhar'),
(175, 'What were the names of Muhammad that people used to call him?', 'Stage 5', 2, 'Muhammad;Ahmad;Al Mahi;Al Hashir;Al Aqib;Al Sadiq;Al Amin '),
(176, 'Besides praying, name something that a people do during Jum’ah prayer.', 'Stage 5', 2, 'Khutba;Dhikr;Salawat;Sunnah;Durood;Dua;Sujud'),
(177, 'What are the first 8 surah in the Quran?', 'Stage 6', 2, 'Fatiha;Baqarah;Imran;Nisaa;Maida;An’am;A’raf;Anfal '),
(178, 'What are the negative attributes which cannot be found in Allah?', 'Stage 6', 2, 'Shareek;Murakkab;Makaan;Hulool;Mahal al-hawadith;Mar’I;Ihtiyaj;Sifat alzaid'),
(179, 'Name some of the sunnah food according to Prophet Muhammad.', 'Stage 6', 2, 'Barley;Dates;Figs;Grapes;Honey;Olives;Pomegranate;Melon '),
(180, 'Name some Surah that starts with “A”.', 'Stage 6', 2, 'Alaq;A’la;An am;Anqabut;A’raf;Anfal;Anbiya;Ahzab '),
(181, 'Name the first 8 of the Arabic Letters.', 'Stage 6', 2, 'Alif;Ba;Ta;Tha;Jim;Ha;Kha;Dal '),
(182, 'Name some surah’s that is sunnah to recite before sleeping.', 'Stage 6', 2, 'Baqarah;Mulk;Kafirun;Isra;Zumar;Ayatul Kursi;Naas;Falaq'),
(183, 'Name the positive attributes which are befitting Allah.', 'Stage 6', 2, 'Qadim;Qadir;Alim;Haay;Murid;Mudrik;Mutakallim;Sadiq'),
(184, 'Name the grandchildren of the prophet.', 'Stage 6', 2, 'Ali;Umamah;Abdullah;Hasan;Hussain;Muhsin;Umm Kulthum;Zaynab'),
(185, 'Name the Surah that has sajda in it', 'Stage 6', 2, 'A’raf;Rad;Nahl;Hajj;Inshiqaq;Alaq;Sad;Furqan'),
(186, 'Name the Asmaul husna that starts with letter “M”.', 'Stage 6', 2, 'Malik;Mu’min;Muhaymin;Mutakabbir;Musawwir;Mu’izz;Muzil;Muqit'),
(187, 'Name the list of Hadith Collections.', 'Stage 7', 2, 'Sahih Bukhari;Sahih Muslim;Sunan Ibn Majah;Sunan Abu Dawud;Sunan Tirmidhi;Sunan Nasai;Al Muwatta;Sunan Al Darimi;Sahih Ibn Hibban'),
(188, 'What are the Surah’s that starts with letter “T”.', 'Stage 7', 2, 'Taha;Tur;Taghabun;Talaq;Tahrim;Tariq;Tawbah;Tin;Takathur'),
(189, 'Name the durood sharif.', 'Stage 7', 2, 'Durood Ibrahim;Durood Fath;Durood Shafi;Durood Dawami;Durood Tunajinna;Durood Qurani;Durood Sadaqah;Durood Wali;Durood Ali'),
(190, 'Name the Arabic vowels and tenses.', 'Stage 7', 2, 'Fatha;Kasra;Damma;Sukun;Tanween;Madi;Mudari;Amr;Shadda'),
(191, 'Name some of the expression that a Muslim usually says.', 'Stage 7', 2, 'Bismillah;Alhamdulillah;Mashallah;Subhanallah;Allahu Akbar;Astagfirullah;Ashokulillah;Inshallah;Rahimakallah'),
(192, 'Name an asmaul husna that starts with letter “H”.', 'Stage 7', 2, 'Hakam;Halim;Hafidh;Hasib;Hakim;Haqq;Hamidu;Hayy;Hadi'),
(193, 'Name the Arabic alphabet that are mentioned in the Quran.', 'Stage 7', 2, 'Alif;Lam;Ra;Ya;Sin;Sad;Ta;Ha;Mim '),
(194, 'Name the fundamental principles or belief that is essential for Muslims.', 'Stage 7', 2, 'Salah;Sawm;Haii;Zakat;Khums;Jihad;Nahyan al munkar;Tawalla;Tabarra'),
(195, 'Name the last 9 surah’s of the Quran.', 'Stage 7', 2, 'Quraysh;Maun;Kawthar;Kafirun;Nasr;Masad;Ikhlas;Falaq;Naas'),
(196, 'What are the names of prophet Muhammad?', 'Stage 7', 2, 'Amin;Sadiq;Kareem;Mustafa;Shahid;Aqib;Rasul;Nabi;Tayyib'),
(197, 'Name the first 10 of arabic Alpabet.', 'Stage 8', 2, 'Alif;Ba;Ta;Sa;Jim;Ha;Kha;Dal;Dhal;Ra '),
(198, 'Name the Angels of Islam.', 'Stage 8', 2, 'Jibril;Mikail;Israfil;Izrail;Malik;Ridwan;Munkar;Nakir;Raqib;Atid '),
(199, 'Name the women after Khadijah.', 'Stage 8', 2, 'Sawdah;Aisha;Hafsah;Zaynab bint Jas;Umm salamah;Zaynab bint khuzaymah;Juwairiyah;Umm Habebah;Safiyyah;Maymunah'),
(200, 'Who were the paternal uncles of the Prophet?', 'Stage 8', 2, 'Harith;Abu Talib;Gheedaq;Muqawwam;Dhirar;Quthm;Abdul Ka’bah;Hijl;Hamza;Abbas'),
(201, 'Name the  Arabic numbers from 1 to 10.', 'Stage 8', 2, 'Wahid;Isnin;Salasa;Arba;Khamsa;Sitta;Sab’a;Thamanya;Tis’a;Ashara '),
(202, 'Name the first 10 prophets of Islam.', 'Stage 8', 2, 'Adam;Idris;Nuh;Hud;Salih;Lut;Ibrahim;Ismail;Ishaq;Yaqub'),
(203, 'Muslim usually recites surahs when praying, but aside from reciting surahs, what do they do?', 'Stage 8', 2, 'Sajda;Ruku;Dua;Salawat;Tashahud;Dhikr;Shahada;Salam;Takbir;Niyyah '),
(204, 'Name the tribes and clans during the time of Prophet Muhammad.', 'Stage 8', 2, 'Quraish;Banu Kinanah;Banu Hashim;Banu Hotail;Banu bariq;Banu hubu;Banu Hilal;Banu tamim;Banu sad;Banu amr'),
(205, 'What are the obligatory prayers?', 'Stage 8', 2, 'Fajr;Dhuhr;Asr;Maghrib;Isha;Jum’ah;Ihtiyat;Salatul mayyit;Qadha;Ijarah'),
(206, 'Who were the Asharah Mubasharah?', 'Stage 8', 2, 'Abu bakr;Umar;Uthman;Ali;Talha;Zubayr;Abdur-Rahman;Sa’ad;Abu Ubaida;Said ibn Zayd'),
(207, 'Name an 11 prophet before Isa (AS).', 'Stage 9', 2, 'Ismail;Yahya;Zakariya;Sulaiman;Dawud;Harun;Musa;Shuaib;Yusuf;Yaqub;Ishaq'),
(208, 'Name the Gates of Jannah.', 'Stage 9', 2, 'Babus salah;Babul jihad;Babus sadaqah;Babur rayyan;Babul hajj;Babul kazimin al ghayz;Babul iman;Babuz dhikr;Firdaws;Zakah;Dhikr '),
(209, 'Name the doors of Jannah.', 'Stage 9', 2, 'Firdaws;Mava;Maqam;Salam;Khuld;Adan;Naeem;Kasif;Salah;Sadaqah;Hajj'),
(210, 'What are the things that makes najis clean?', 'Stage 9', 2, 'Water;Earth;Sun;Istihala;Intiqal;Islam;Tabaiyat;Istibra;Ghaybah;Inqilab;Zawalayn'),
(211, 'What are the things that are wajib in prayers?', 'Stage 9', 2, 'Niyyah;Takbiratul ihram;Qiyam;Ruku;Sajdah;Qira’at;Dhikr;Tashahud;Salam;Tartib;Muwalat'),
(212, 'Name the prophets before Muhammad.', 'Stage 9', 2, 'Isa;Musa;Ibrahim;Idris;Nuh;Lut;Yahya;Yunus;Yusuf;Yakob;Dawud'),
(213, 'Name the layers of Jannah.', 'Stage 9', 2, 'Firdaws;Daral Maqamah;Janatul Aliyah;Daral Salam;Daral Akhirah;Al Jannah; Jannat Al Adn; Jannat al Khuld;Jannat al Ma’wa;Jannat al Naim;Maqad al Sidq;Maqam Al Amin'),
(214, 'Names that are mentioned in the Quran.', 'Stage 9', 2, 'Adam;Ayyub;Dawud;Imran;Yusuf;Yunus;Hud;Ishaq;Ismail;Idris;Yaqub'),
(215, 'Name the famous tribes during the time of Prophet Muhammad.', 'Stage 9', 2, 'Quraish; Banu Kinanah;Banu Al Akdari;Banu Jadhimah;Banu Tamim;Banu Amr;Banu Hilal;Banu Bariq;Banu Utub;Banu Kalb;Banu Jumah'),
(216, 'Name the Women scholars of Hadith.', 'Stage 9', 2, 'Fatimah;Zaynab;Aisha;Hafsa;Umm Darda;Al Shifa;Hafsa bint Sirin;Umm Salamah;Aisha bint Talhah;Fatimah bint Musa;Sayyida Nafisa'),
(217, 'Give the last 12 Arabic Alphabet.', 'Stage 10', 2, 'Ya;Waw;Ha;Nun;Mim;Lam;Kaf;Qaf;Fa;Ghayn;Ayn;Za'),
(218, 'Name some of the durood sharief.', 'Stage 10', 2, 'Ibrahimi;Nahariya;Fath;Safi’i;Dawami;Tunajina;Qurani;Sadaqah;Wali;Ghausia;Akbar;Noor'),
(219, 'Name the Arabic numbers from 11 to 22.', 'Stage 10', 2, 'Ahada ashar;ithna ashar;thalatha ashar; arba’ata ashar;khamsata ashar;sittata ashar;sab’ata ashar;thamanyata ashar;tis’ata ashar;a’ishrun;wahid wa asharun;ithnan asharun'),
(220, 'Who were the group of Masumeen?', 'Stage 10', 2, 'Ali;Hasan;Husain;Ali Zayn;Muhammad al Baqir;Jafar Sadiq;Musa al kadhi;Ali ar raza;Muhammad at taqi;Ali an naqi;Hasan al askari;Muhammad al mahdi'),
(221, 'What are the commonly used words in the Quran?', 'Stage 10', 2, 'Bismillah;Alayhim;Ala;Alathee;Gafoor;Raheem;Huddan;Huwa;Illa;Insan;Kareem;Rahman'),
(222, 'Who were the asharah mubasharah?', 'Stage 10', 2, 'Abu bakr;Umar;Uthman;Ali;Talha;Zubayr;Abdur Rahman;Sa’ad;Abu Ubaid;Said Ibn Zayd;Ayman;Abdullah'),
(223, 'Name the first 12 prophets of Islam.', 'Stage 10', 2, 'Adam;Idris;Nuh;Hud;Salih;Ibrahim;Lut;Ismail;Ishaq;Yaqub;Yusuf;Ayyub'),
(224, 'Name the Salawats on the sayyidina Rasulullah.', 'Stage 10', 2, 'Nuraniyyah;Al Fath;Salatu Munajiyyah;Sayyid Salawat;Jawharatal Kamal;Salatu Nariyah;Salawat Dhatiyyah;Salatu Ulul Azm;Salawat Kamaliya;Salati Jibiya;Salawat Sa’dah;Salawat al Askandari.'),
(225, ' Name the first 12 of asmaul husna.', '', 2, 'Ar Rahman;Ar Rahim;Al Malik;Al Quddus;As Salam;Al Mu’min;Al Muhaymin;AAll Aziz;Al Jabbar;Al Mutakkabir;Al Khaliq;Al Bariq'),
(226, 'Name the Islamic Months.', 'Stage 10', 2, 'Muharram;Safar;Rabil Awwal;Rabil Akhir;Jamadil Awwal;Jamadi Akhir;Rajab;Sha’ban;Ramadan;Shawwal;Dhul Qayda;Dhul hajji'),
(227, 'Name the first 12 of asmaul husna.', '', 2, 'Ar Rahman;Ar Rahim;Al Malik;Al Quddus;As Salam;Al Mu’min;Al Muhaymin;AAll Aziz;Al Jabbar;Al Mutakkabir;Al Khaliq;Al Bariq'),
(228, 'Name the first 12 of asmaul husna.', 'Stage 10', 2, 'Ar Rahman;Ar Rahim;Al Malik;Al Quddus;As Salam;Al Mu’min;Al Muhaymin;AAll Aziz;Al Jabbar;Al Mutakkabir;Al Khaliq;Al Bariq'),
(229, 'Name a dhikr that Muslim usually says.', 'Stage 1', 3, 'Bismillah;Alhamdulillah;Allahu akbar'),
(230, 'Name the things that are sunnah in the day of Jum’ah.', 'Stage 1', 3, 'Cutting Nails;Reading Quran;Ghusl'),
(231, 'Name the things that cannot be done when praying.', 'Stage 1', 3, 'Sleeping;Drinking;Eating'),
(232, 'Name the types of tawhid.', 'Stage 1', 3, 'Rubbubiyyah;Uluhiyyah;Asmae wassifat'),
(233, 'Name of the devil in the Quran.', 'Stage 1', 3, 'Shaytan;Iblis;Dajjal'),
(234, 'Name The Islamic Religious leaders.', 'Stage 1', 3, 'Ulama;Imam;Mufti'),
(235, 'Name 3 of the Prophet Muhammad’s uncle who were supportive to him.', 'Stage 1', 3, 'Abu talib;Hamza;Al abbas'),
(236, 'Name the biggest sin in Islam.', 'Stage 1', 3, 'Shirk;Disobeying parents;Zina'),
(237, 'Name the holy cities of Islam.', 'Stage 1', 3, 'Makkah;Madinah;Jerusalem'),
(238, 'Name the fruits that are mentioned in the Quran.', 'Stage 1', 3, 'Fig;Dates;Olive'),
(239, 'Name the rightly guided caliphs.', 'Stage 2', 3, 'Abu bakr;Uthman;Omar;Ali '),
(240, 'Name the angels of Allah.', 'Stage 2', 3, 'Jibril;Mikail;Israfil;Izrail'),
(241, 'Name the types of prayers.', 'Stage 2', 3, 'Fardh;Wajib;Sunnah;Nafl'),
(242, 'Name of the Prophets whose name starts with “Y”.', 'Stage 2', 3, 'Yunus;Yakob;Yusuf;Yahya'),
(243, 'Name the Sahabi of Prophet Muhammad.', 'Stage 2', 3, 'Ali;Abu bakr;Uthman;Omar'),
(244, 'Name the Arabic Tenses.', 'Stage 2', 3, 'Fatha;Kasra;Damma;Sukun'),
(245, 'Name a hadith Collections.', 'Stage 2', 3, 'Sahih Bukhari;Sahih Muslim;Sunan AbuDawud;Jami Tirmidhi'),
(246, 'Name the revealed books.', 'Stage 2', 3, 'Tawrat;Zabur;Injil;Quran'),
(247, 'Name the surah that start with “F”', 'Stage 2', 3, 'Furqan;Fajr;Fussilat;Fath'),
(248, 'Places and times where the dua is answered.', 'Stage 2', 3, 'Laylatul Qadr;In the depths of the nigh;Praying;Sujud'),
(249, 'Name the women who are mentioned in the Holy Quran.', 'Stage 3', 3, 'Hawwa;Maryam;Umm-e-Musa;Bilquis;Nuh’s wife'),
(250, 'Who were the Ulu’l-Azm Prophets?', 'Stage 3', 3, 'Nuh;Ibrahim;Musa;Isa;Muhammad'),
(251, 'Name the daily prayers.', 'Stage 3', 3, 'Fajr;Dhuhr;Asr;Maghrib;Isha'),
(252, 'Name the Pillars of Islam', 'Stage 3', 3, 'Shahada;Salah;Zakat;Sawm;Hajj'),
(253, 'Things to do before going to bed that are sunnah in Islam.', 'Stage 3', 3, 'Say bismillah;Do Miswak;Ablution;Ayatul Kursi;Dhikr'),
(254, 'What are the names of Allah that can be recited when doing Dhikr.', 'Stage 3', 3, 'Ya Allah;Al Awwalu;Al Aleem;Al Azeez;Al Akram'),
(255, 'Who were the Ahl Al kisa?.', 'Stage 3', 3, 'Prophet Muhammad;Imam Ali;Fatimah;Imam hasan;Imam husain'),
(256, 'Name the things to do during the month of Ramadhan.', 'Stage 3', 3, 'Fasting;Recite the Quran;Suhur;Iftar;Pray'),
(257, 'Name the Surah’s in the Quran that starts with letter “N”.', 'Stage 3', 3, 'Naml;Nisaa;Nahl;Noor;Najm'),
(258, 'Name the prayers aside from the five daily prayer.', 'Stage 3', 3, 'Jum’ah prayer;Tarawih;Tahajjud;Witr;Sunnah'),
(259, 'Name something that are prohibited for  women during menstruation.', 'Stage 4', 3, 'Praying;Fasting;Hajj;Tawaf;Jamarat;Arafat'),
(260, 'Name the pillars of iman.', 'Stage 4', 3, 'Belief in Allah;Belief in angels;Belief in the revealed books;Belief in prophets;Belief in hereafter;Belief in Predestination'),
(261, 'Famous narrator of hadith', 'Stage 4', 3, 'Abu hurayra;Ibn umar;Anas b. Malik;Aisha;Ibn Abas;Ibn mas ud'),
(262, 'What is the the name prophet Muhammad’s father?', 'Stage 4', 3, 'Abdullah;Ibn Abdul-Mutallib;Ibn Hashim;Ibn Abd-Manaf;Ibn Qusayy;Ibn Kilaab'),
(263, 'What did a Muslim do during hajj?', 'Stage 4', 3, 'Mina;Arafat;Muzdalifa;Jamarat;Tawaf;Hajj'),
(264, ' Name the short surah’s in the Quran. ', 'Stage 4', 3, 'Kawthar;Nasr;Ikhlas;Falaq;Naas;Masad'),
(265, 'Name some dhikr that are mostly used by the Muslim in tasbih.', 'Stage 4', 3, 'Subhanallah;Alhamdulillah;Allahu Akbar;Astagfirullah;La ilaha ilallah;Durood'),
(266, 'Who were the paternal aunties of the prophet?', 'Stage 4', 3, 'Safiyyah;Arwa;Atiqah;Umm Hakim;Barrah;Umaymah'),
(267, 'Name the longest surah’s in the Quran.', 'Stage 4', 3, 'Baqarah;Nisaa;Imran;A’raf;Shuraa;Saaffat'),
(268, 'Name the famous narrator of Hadith.', 'Stage 4', 3, 'Abdullah bin Umar;Anas bin Malik;Aisha;Abdullah bin Abbas;Jabir bin Abdullah;Abdullah bin salam'),
(269, 'Name the Sifat al thubutiyah.', 'Stage 5', 3, 'Qadim;Qadir;Ali;Hayy;Mureed;Mudrik;Mutakallim'),
(270, 'Name the  kinds of Jannah.', 'Stage 5', 3, 'Daral Salam;Daral Jalal;Mava;Khuld;Adan;Firdaws;Naeem'),
(271, 'Besides praying, name something that a people do during Jum’ah prayer.', 'Stage 5', 3, 'Khutba;Dhikr;Salawat;Sunnah;Durood;Dua;Sujud'),
(272, 'Name the asmaul husna that starts with “W\".', 'Stage 5', 3, 'Wahab;Wasi;Wadud;Wakil;Wali;Wajid;Wahid'),
(273, 'Name a Surah whose name starts with “H”.', 'Stage 5', 3, 'Hud;Hijr;Hajj;Hujurat;Hadid;Hashr;Haqqa'),
(274, 'Name kinds of ghusl that are wajib.', 'Stage 5', 3, 'Janabat;Haiz;Nifas;Istihaza;Mayyit;Massal Mayyit;Nadhar'),
(275, 'What were the names of Muhammad that people used to call him?', 'Stage 5', 3, 'Muhammad;Ahmad;Al Mahi;Al Hashir;Al Aqib;Al Sadiq;Al Amin'),
(276, 'Name the Sifat al Salbiyah.', 'Stage 5', 3, 'Shareek;Murakkab;Makaan;Hulool;Mahal al-hawadith;Mar’I;Ihtiyaj'),
(277, 'What are the branches of Islam?', 'Stage 5', 3, 'Jihad;Amr bil Ma’ruf;Nahyan al Munkar;Tawalla;Tabarra;Ijtihad;Taqlid'),
(278, 'Name surah that starts with letter “M”.', 'Stage 5', 3, 'Maida;Maryam;Muminun;Mujadila;Mumtahana;Munafiqun;Mulk'),
(279, 'Name the Surah that has sajda in it.', 'Stage 6', 3, 'A’raf;Rad;Nahl;Hajj;Inshiqaq;Alaq;Sad;Furqan'),
(280, 'Name the grandchildren of the prophet.', 'Stage 6', 3, 'Ali;Umamah;Abdullah;Hasan;Hussain;Muhsin;Umm Kulthum;Zaynab'),
(281, 'What are the negative attributes which cannot be found in Allah?', 'Stage 6', 3, 'Shareek;Murakkab;Makaan;Hulool;Mahal al-hawadith;Mar’I;Ihtiyaj;Sifat alzaid'),
(282, 'Name some of the sunnah food according to Prophet Muhammad.', 'Stage 6', 3, 'Barley;Dates;Figs;Grapes;Honey;Olives;Pomegranate;Melon'),
(283, 'Name the positive attributes which are befitting Allah.', 'Stage 6', 3, 'Qadim;Qadir;Alim;Haay;Murid;Mudrik;Mutakallim;Sadiq'),
(284, 'Name the first 8 of the Arabic Letters.', 'Stage 6', 3, 'Alif;Ba;Ta;Tha;Jim;Ha;Kha;Dal'),
(285, 'Name the Asmaul husna that starts with letter “M”.', 'Stage 6', 3, 'Malik;Mu’min;Muhaymin;Mutakabbir;Musawwir;Mu’izz;Muzil;Muqit'),
(286, 'Name some surah’s that is sunnah to recite before sleeping.', 'Stage 6', 3, 'Baqarah;Mulk;Kafirun;Isra;Zumar;Ayatul Kursi;Naas;Falaq'),
(287, 'What are the first 8 surah in the Quran?', 'Stage 6', 3, 'Fatiha;Baqarah;Imran;Nisaa;Maida;An’am;A’raf;Anfal'),
(288, 'Name some Surah that starts with “A”.', 'Stage 6', 3, 'Alaq;A’la;An am;Anqabut;A’raf;Anfal;Anbiya;Ahzab'),
(289, 'Name the list of Hadith Collections', 'Stage 7', 3, 'Sahih Bukhari;Sahih Muslim;Sunan Ibn Majah;Sunan Abu Dawud;Sunan Tirmidhi;Sunan Nasai;Al Muwatta;Sunan Al Darimi;Sahih Ibn Hibban'),
(290, 'Name some of the expression that a Muslim usually says.', 'Stage 7', 3, 'Bismillah;Alhamdulillah;Mashallah;Subhanallah;Allahu Akbar;Astagfirullah;Ashokulillah;Inshallah;Rahimakallah'),
(291, 'What are the names of prophet Muhammad?', 'Stage 7', 3, 'Amin;Sadiq;Kareem;Mustafa;Shahid;Aqib;Rasul;Nabi;Tayyib'),
(292, 'Name an asmaul husna that starts with letter “H”.', 'Stage 7', 3, 'Hakam;Halim;Hafidh;Hasib;Hakim;Haqq;Hamidu;Hayy;Hadi'),
(293, 'What are the Surah’s that starts with letter “T”.', 'Stage 7', 3, 'Taha;Tur;Taghabun;Talaq;Tahrim;Tariq;Tawbah;Tin;Takathur'),
(294, 'Name the Arabic alphabet that are mentioned in the Quran', 'Stage 7', 3, 'Alif;Lam;Ra;Ya;Sin;Sad;Ta;Ha;Mim'),
(295, 'Name the Arabic vowels and tenses.', 'Stage 7', 3, 'Fatha;Kasra;Damma;Sukun;Tanween;Madi;Mudari;Amr;Shadda'),
(296, 'Name the fundamental principles or belief that is essential for Muslims.', 'Stage 7', 3, 'Salah;Sawm;Haii;Zakat;Khums;Jihad;Nahyan al munkar;Tawalla;Tabarra'),
(297, 'Name the last 9 surah’s of the Quran.', 'Stage 7', 3, 'Quraysh;Maun;Kawthar;Kafirun;Nasr;Masad;Ikhlas;Falaq;Naas'),
(298, 'Name the durood sharif.', 'Stage 7', 3, 'Durood Ibrahim;Durood Fath;Durood Shafi;Durood Dawami;Durood Tunajinna;Durood Qurani;Durood Sadaqah;Durood Wali;Durood Ali'),
(299, 'What are the obligatory prayers?', 'Stage 8', 3, 'Fajr;Dhuhr;Asr;Maghrib;Isha;Jum’ah;Ihtiyat;Salatul mayyit;Qadha;Ijarah'),
(300, 'Name the Angels of Islam.', 'Stage 8', 3, 'Jibril;Mikail;Israfil;Izrail;Malik;Ridwan;Munkar;Nakir;Raqib;Atid'),
(301, 'Who were the Asharah Mubasharah?', 'Stage 8', 3, 'Abu bakr;Umar;Uthman;Ali;Talha;Zubayr;Abdur-Rahman;Sa’ad;Abu Ubaida;Said ibn Zayd'),
(302, 'Muslim usually recites surahs when praying, but aside from reciting surahs, what do they do?', 'Stage 8', 3, 'Sajda;Ruku;Dua;Salawat;Tashahud;Dhikr;Shahada;Salam;Takbir;Niyyah '),
(303, 'Who were the paternal uncles of the Prophet?', 'Stage 8', 3, 'Harith;Abu Talib;Gheedaq;Muqawwam;Dhirar;Quthm;Abdul Ka’bah;Hijl;Hamza;Abbas'),
(304, 'Name the tribes and clans during the time of Prophet Muhammad.', 'Stage 8', 3, 'Quraish;Banu Kinanah;Banu Hashim;Banu Hotail;Banu bariq;Banu hubu;Banu Hilal;Banu tamim;Banu sad;Banu amr'),
(305, 'Name the first 10 of arabic Alpabet.', 'Stage 8', 3, 'Alif;Ba;Ta;Sa;Jim;Ha;Kha;Dal;Dhal;Ra\r\n'),
(306, 'Name the women after Khadijah.', 'Stage 8', 3, 'Sawdah;Aisha;Hafsah;Zaynab bint Jas;Umm salamah;Zaynab bint khuzaymah;Juwairiyah;Umm Habebah;Safiyyah;Maymunah'),
(307, 'Name the  Arabic numbers from 1 to 10.', 'Stage 8', 3, 'Wahid;Isnin;Salasa;Arba;Khamsa;Sitta;Sab’a;Thamanya;Tis’a;Ashara'),
(308, 'Name the first 10 prophets of Islam.', 'Stage 8', 3, 'Adam;Idris;Nuh;Hud;Salih;Lut;Ibrahim;Ismail;Ishaq;Yaqub'),
(309, 'Name the layers of Jannah.', 'Stage 9', 3, 'Firdaws;Daral Maqamah;Janatul Aliyah;Daral Salam;Daral Akhirah;Al Jannah; Jannat Al Adn; Jannat al Khuld;Jannat al Ma’wa;Jannat al Naim;Maqad al Sidq;Maqam Al Amin'),
(310, 'What are the things that are wajib in prayers?', 'Stage 9', 3, 'Niyyah;Takbiratul ihram;Qiyam;Ruku;Sajdah;Qira’at;Dhikr;Tashahud;Salam;Tartib;Muwalat'),
(311, 'Names that are mentioned in the Quran.', 'Stage 9', 3, 'Adam;Ayyub;Dawud;Imran;Yusuf;Yunus;Hud;Ishaq;Ismail;Idris;Yaqub'),
(312, 'What are the things that makes najis clean?', 'Stage 9', 3, 'Water;Earth;Sun;Istihala;Intiqal;Islam;Tabaiyat;Istibra;Ghaybah;Inqilab;Zawalayn'),
(313, 'Name the Gates of Jannah.', 'Stage 9', 3, 'Babus salah;Babul jihad;Babus sadaqah;Babur rayyan;Babul hajj;Babul kazimin al ghayz;Babul iman;Babuz dhikr;Firdaws;Zakah;Dhikr'),
(314, 'Name the Women scholars of Hadith.', 'Stage 9', 3, 'Fatimah;Zaynab;Aisha;Hafsa;Umm Darda;Al Shifa;Hafsa bint Sirin;Umm Salamah;Aisha bint Talhah;Fatimah bint Musa;Sayyida Nafisa'),
(315, 'Name an 11 prophet before Isa (AS).', 'Stage 9', 3, 'Ismail;Yahya;Zakariya;Sulaiman;Dawud;Harun;Musa;Shuaib;Yusuf;Yaqub;Ishaq'),
(316, 'Name the doors of Jannah.', 'Stage 9', 3, 'Firdaws;Mava;Maqam;Salam;Khuld;Adan;Naeem;Kasif;Salah;Sadaqah;Hajj'),
(317, 'Name the prophets before Muhammad.', 'Stage 9', 3, 'Isa;Musa;Ibrahim;Idris;Nuh;Lut;Yahya;Yunus;Yusuf;Yakob;Dawud'),
(318, 'Name the famous tribes during the time of Prophet Muhammad.', 'Stage 9', 3, 'Quraish; Banu Kinanah;Banu Al Akdari;Banu Jadhimah;Banu Tamim;Banu Amr;Banu Hilal;Banu Bariq;Banu Utub;Banu Kalb;Banu Jumah'),
(319, 'Name some of the durood sharief.', 'Stage 10', 3, 'Ibrahimi;Nahariya;Fath;Safi’i;Dawami;Tunajina;Qurani;Sadaqah;Wali;Ghausia;Akbar;Noor'),
(320, 'Name the Islamic Months.', 'Stage 10', 3, 'Muharram;Safar;Rabil Awwal;Rabil Akhir;Jamadil Awwal;Jamadi Akhir;Rajab;Sha’ban;Ramadan;Shawwal;Dhul Qayda;Dhul hajji'),
(321, 'Name the first 12 of asmaul husna.', 'Stage 10', 3, 'Ar Rahman;Ar Rahim;Al Malik;Al Quddus;As Salam;Al Mu’min;Al Muhaymin;AAll Aziz;Al Jabbar;Al Mutakkabir;Al Khaliq;Al Bariq'),
(322, 'Name the Salawats on the sayyidina Rasulullah.', 'Stage 10', 3, 'Nuraniyyah;Al Fath;Salatu Munajiyyah;Sayyid Salawat;Jawharatal Kamal;Salatu Nariyah;Salawat Dhatiyyah;Salatu Ulul Azm;Salawat Kamaliya;Salati Jibiya;Salawat Sa’dah;Salawat al Askandari'),
(323, 'Who were the asharah mubasharah?', 'Stage 10', 3, 'Abu bakr;Umar;Uthman;Ali;Talha;Zubayr;Abdur Rahman;Sa’ad;Abu Ubaid;Said Ibn Zayd;Ayman;Abdullah'),
(324, 'Name the Arabic numbers from 11 to 22.', 'Stage 10', 3, 'Ahada ashar;ithna ashar;thalatha ashar; arba’ata ashar;khamsata ashar;sittata ashar;sab’ata ashar;thamanyata ashar;tis’ata ashar;a’ishrun;wahid wa asharun;ithnan asharun'),
(325, 'Who were the group of Masumeen?', 'Stage 10', 3, 'Ali;Hasan;Husain;Ali Zayn;Muhammad al Baqir;Jafar Sadiq;Musa al kadhi;Ali ar raza;Muhammad at taqi;Ali an naqi;Hasan al askari;Muhammad al Mahdi'),
(326, 'Give the last 12 Arabic Alphabet.', 'Stage 10', 3, 'Ya;Waw;Ha;Nun;Mim;Lam;Kaf;Qaf;Fa;Ghayn;Ayn;Za'),
(327, 'What are the commonly used words in the Quran?', 'Stage 10', 3, 'Bismillah;Alayhim;Ala;Alathee;Gafoor;Raheem;Huddan;Huwa;Illa;Insan;Kareem;Rahman'),
(328, 'Name the first 12 prophets of Islam.', 'Stage 10', 3, 'Adam;Idris;Nuh;Hud;Salih;Ibrahim;Lut;Ismail;Ishaq;Yaqub;Yusuf;Ayyub'),
(329, 'Name of the devil in the Quran.', 'Stage 1', 4, 'Shaytan;Iblis;Dajjal'),
(330, 'Name the Islamic Religious leaders.', 'Stage 1', 4, 'Ulama;Imam;Mufti'),
(331, 'Name the types of tawhid.', 'Stage 1', 4, 'Rubbubiyyah;Uluhiyyah;Asmae wassifat'),
(332, 'Name the things that cannot be done when praying.', 'Stage 1', 4, 'Sleeping;Drinking;Eating'),
(333, 'Name the things that are sunnah in the day of Jum’ah.', 'Stage 1', 4, 'Cutting Nails;Reading Quran;Ghusl'),
(334, 'Name 3 of the Prophet Muhammad’s uncle who were supportive to him.', 'Stage 1', 4, 'Abu talib;Hamza;Al abbas'),
(335, 'Name the holy cities of Islam.', 'Stage 1', 4, 'Makkah;Madinah;Jerusalem'),
(336, 'Name the fruits that are mentioned in the Quran.', 'Stage 1', 4, 'Fig;Dates;Olive'),
(337, 'Name the biggest sin in Islam.', 'Stage 1', 4, 'Shirk;Disobeying parents;Zina'),
(338, 'Name a dhikr that Muslim usually says.', 'Stage 1', 4, 'Bismillah;Alhamdulillah;Allahu akbar'),
(339, 'Name the revealed books.', 'Stage 2', 4, 'Tawrat;Zabur;Injil;Quran'),
(340, 'Name the surah that start with “F”.', 'Stage 2', 4, 'Furqan;Fajr;Fussilat;Fath'),
(341, 'Name the rightly guided caliphs.', 'Stage 2', 4, 'Abu bakr;Uthman;Omar;Ali '),
(342, 'Name a hadith Collections.', 'Stage 2', 4, 'Sahih Bukhari;Sahih Muslim;Sunan AbuDawud;Jami Tirmidhi'),
(343, 'Places and times where the dua is answered.', 'Stage 2', 4, 'Laylatul Qadr;In the depths of the nigh;Praying;Sujud'),
(344, 'Name the Sahabi of Prophet Muhammad.', 'Stage 2', 4, 'Ali;Abu bakr;Uthman;Omar'),
(345, 'Name the types of prayers.', 'Stage 2', 4, 'Fardh;Wajib;Sunnah;Nafl'),
(346, 'Name the Arabic Tenses.', 'Stage 2', 4, 'Fatha;Kasra;Damma;Sukun'),
(347, 'Name the angels of Allah.', 'Stage 2', 4, 'Jibril;Mikail;Israfil;Izrail'),
(348, 'Name of the Prophets whose name starts with “Y”.', 'Stage 2', 4, 'Yunus;Yakob;Yusuf;Yahya'),
(349, 'Name the Pillars of Islam.', 'Stage 3', 4, 'Shahada;Salah;Zakat;Sawm;Hajj'),
(350, 'Name the things to do during the month of Ramadhan.', 'Stage 3', 4, 'Fasting;Recite the Quran;Suhur;Iftar;Pray'),
(351, 'Things to do before going to bed that are sunnah in Islam.', 'Stage 3', 4, 'Say bismillah;Do Miswak;Ablution;Ayatul Kursi;Dhikr'),
(352, 'Name the prayers aside from the five daily prayer.', 'Stage 3', 4, 'Jum’ah prayer;Tarawih;Tahajjud;Witr;Sunnah'),
(353, 'Name the women who are mentioned in the Holy Quran.', 'Stage 3', 4, 'Hawwa;Maryam;Umm-e-Musa;Bilquis;Nuh’s wife'),
(354, 'What are the names of Allah that can be recited when doing Dhikr.', 'Stage 3', 4, 'Ya Allah;Al Awwalu;Al Aleem;Al Azeez;Al Akram'),
(355, 'Name the daily prayers.', 'Stage 3', 4, 'Fajr;Dhuhr;Asr;Maghrib;Isha'),
(356, 'Name the Surah’s in the Quran that starts with letter “N”.', 'Stage 3', 4, 'Naml;Nisaa;Nahl;Noor;Najm'),
(357, 'Who were the Ahl Al kisa?', 'Stage 3', 4, 'Prophet Muhammad;Imam Ali;Fatimah;Imam hasan;Imam husain'),
(358, 'Who were the Ulu’l-Azm Prophets?', 'Stage 3', 4, 'Nuh;Ibrahim;Musa;Isa;Muhammad'),
(359, 'Name the short surah’s in the Quran. ', 'Stage 4', 4, 'Kawthar;Nasr;Ikhlas;Falaq;Naas;Masad'),
(360, 'Name the longest surah’s in the Quran.', 'Stage 4', 4, 'Baqarah;Nisaa;Imran;A’raf;Shuraa;Saaffat '),
(361, 'What is the other names of prophet Muhammad’s father?', 'Stage 4', 4, 'Abdullah;Ibn Abdul-Mutallib;Ibn Hashim;Ibn Abd-Manaf;Ibn Qusayy;Ibn Kilaab'),
(362, 'Name the pillars of iman.', 'Stage 4', 4, 'Belief in Allah;Belief in angels;Belief in the revealed books;Belief in prophets;Belief in hereafter;Belief in Predestination'),
(363, 'Name the famous narrator of Hadith.', 'Stage 4', 4, 'Abdullah bin Umar;Anas bin Malik;Aisha;Abdullah bin Abbas;Jabir bin Abdullah;Abdullah bin salam'),
(364, 'Name some dhikr that are mostly used by the Muslim in tasbih.', 'Stage 4', 4, 'Subhanallah;Alhamdulillah;Allahu Akbar;Astagfirullah;La ilaha ilallah;Durood'),
(365, 'What did a Muslim do during hajj?', 'Stage 4', 4, 'Mina;Arafat;Muzdalifa;Jamarat;Tawaf;Hajj'),
(366, 'Who were the paternal aunties of the prophet?', 'Stage 4', 4, 'Safiyyah;Arwa;Atiqah;Umm Hakim;Barrah;Umaymah '),
(367, 'Name something that are prohibited for  women during menstruation.', 'Stage 4', 4, 'Praying;Fasting;Hajj;Tawaf;Jamarat;Arafat'),
(368, 'Name some of the Madani Surah’s.', 'Stage 4', 4, 'Baqarah;Imran;Nisa;Ma’ida;Anfal;Tawbah'),
(369, 'What are the branches of Islam?', 'Stage 5', 4, 'Jihad;Amr bil Ma’ruf;Nahyan al Munkar;Tawalla;Tabarra;Ijtihad;Taqlid'),
(370, 'Name the asmaul husna that starts with “W”.', 'Stage 5', 4, 'Wahab;Wasi;Wadud;Wakil;Wali;Wajid;Wahid'),
(371, 'Name the  kinds of Jannah.', 'Stage 5', 4, 'Daral Salam;Daral Jalal;Mava;Khuld;Adan;Firdaws;Naeem'),
(372, 'Name the Sifat al Salbiyah.', 'Stage 5', 4, 'Shareek;Murakkab;Makaan;Hulool;Mahal al-hawadith;Mar’I;Ihtiyaj'),
(373, 'Name kinds of ghusl that are wajib.', 'Stage 5', 4, 'Janabat;Haiz;Nifas;Istihaza;Mayyit;Massal Mayyit;Nadhar'),
(374, 'Besides praying, name something that a people do during Jum’ah prayer.', 'Stage 5', 4, 'Khutba;Dhikr;Salawat;Sunnah;Durood;Dua;Sujud'),
(375, 'Name the Sifat al thubutiyah.', 'Stage 5', 4, 'Qadim;Qadir;Ali;Hayy;Mureed;Mudrik;Mutakallim'),
(376, 'What were the names of Muhammad that people used to call him?', 'Stage 5', 4, 'Muhammad;Ahmad;Al Mahi;Al Hashir;Al Aqib;Al Sadiq;Al Amin'),
(377, 'Name surah that starts with letter “M”.', 'Stage 5', 4, 'Maida;Maryam;Muminun;Mujadila;Mumtahana;Munafiqun;Mulk'),
(378, 'Name a Surah whose name starts with “H”.', 'Stage 5', 4, 'Hud;Hijr;Hajj;Hujurat;Hadid;Hashr;Haqqa'),
(379, 'Name some Surah that starts with “A”.', 'Stage 6', 4, 'Alaq;A’la;An am;Anqabut;A’raf;Anfal;Anbiya;Ahzab'),
(380, 'What are the first 8 surah in the Quran?', 'Stage 6', 4, 'Fatiha;Baqarah;Imran;Nisaa;Maida;An’am;A’raf;Anfal'),
(381, 'Name the Surah that has sajda in it.', 'Stage 6', 4, 'A’raf;Rad;Nahl;Hajj;Inshiqaq;Alaq;Sad;Furqan'),
(382, 'What are the negative attributes which cannot be found in Allah?', 'Stage 6', 4, 'Shareek;Murakkab;Makaan;Hulool;Mahal al-hawadith;Mar’I;Ihtiyaj;Sifat alzaid'),
(383, 'Name the Asmaul husna that starts with letter “M”.', 'Stage 6', 4, 'Malik;Mu’min;Muhaymin;Mutakabbir;Musawwir;Mu’izz;Muzil;Muqit'),
(384, 'Name the grandchildren of the prophet.', 'Stage 6', 4, 'Ali;Umamah;Abdullah;Hasan;Hussain;Muhsin;Umm Kulthum;Zaynab'),
(385, 'Name some surah’s that is sunnah to recite before sleeping.', 'Stage 6', 4, 'Baqarah;Mulk;Kafirun;Isra;Zumar;Ayatul Kursi;Naas;Falaq'),
(386, 'Name some of the sunnah food according to Prophet Muhammad.', 'Stage 6', 4, 'Barley;Dates;Figs;Grapes;Honey;Olives;Pomegranate;Melon'),
(387, 'Name the first 8 of the Arabic Letters.', 'Stage 6', 4, 'Alif;Ba;Ta;Tha;Jim;Ha;Kha;Dal'),
(388, 'Name the positive attributes which are befitting Allah.', 'Stage 6', 4, 'Qadim;Qadir;Alim;Haay;Murid;Mudrik;Mutakallim;Sadiq'),
(389, 'Name the durood sharif.', 'Stage 7', 4, 'Durood Ibrahim;Durood Fath;Durood Shafi;Durood Dawami;Durood Tunajinna;Durood Qurani;Durood Sadaqah;Durood Wali;Durood Ali'),
(390, 'What are the names of prophet Muhammad?', 'Stage 7', 4, 'Amin;Sadiq;Kareem;Mustafa;Shahid;Aqib;Rasul;Nabi;Tayyib'),
(391, 'Name the last 9 surah’s of the Quran.', 'Stage 7', 4, 'Quraysh;Maun;Kawthar;Kafirun;Nasr;Masad;Ikhlas;Falaq;Naas'),
(392, 'Name the Arabic vowels and tenses.', 'Stage 7', 4, 'Fatha;Kasra;Damma;Sukun;Tanween;Madi;Mudari;Amr;Shadda'),
(393, 'Name an asmaul husna that starts with letter “H”.', 'Stage 7', 4, 'Hakam;Halim;Hafidh;Hasib;Hakim;Haqq;Hamidu;Hayy;Hadi'),
(394, 'Name the list of Hadith Collections.', 'Stage 7', 4, 'Sahih Bukhari;Sahih Muslim;Sunan Ibn Majah;Sunan Abu Dawud;Sunan Tirmidhi;Sunan Nasai;Al Muwatta;Sunan Al Darimi;Sahih Ibn Hibban'),
(395, 'Name the fundamental principles or belief that is essential for Muslims.', 'Stage 7', 4, 'Salah;Sawm;Haii;Zakat;Khums;Jihad;Nahyan al munkar;Tawalla;Tabarra'),
(396, 'What are the Surah’s that starts with letter “T”?', 'Stage 7', 4, 'Taha;Tur;Taghabun;Talaq;Tahrim;Tariq;Tawbah;Tin;Takathur'),
(397, 'Name some of the expression that a Muslim usually says.', 'Stage 7', 4, 'Bismillah;Alhamdulillah;Mashallah;Subhanallah;Allahu Akbar;Astagfirullah;Ashokulillah;Inshallah;Rahimakallah'),
(398, 'Name the Arabic alphabet that are mentioned in the Quran.', 'Stage 7', 4, 'Alif;Lam;Ra;Ya;Sin;Sad;Ta;Ha;Mim'),
(399, 'Muslim usually recites surahs when praying, but aside from reciting surahs, what do they do?', 'Stage 8', 4, 'Sajda;Ruku;Dua;Salawat;Tashahud;Dhikr;Shahada;Salam;Takbir;Niyyah'),
(400, 'Name the women after Khadijah.', 'Stage 8', 4, ' Sawdah;Aisha;Hafsah;Zaynab bint Jas;Umm salamah;Zaynab bint khuzaymah;Juwairiyah;Umm Habebah;Safiyyah;Maymunah'),
(401, 'Name the first 10 of arabic Alpabet.', 'Stage 8', 4, 'Alif;Ba;Ta;Sa;Jim;Ha;Kha;Dal;Dhal;Ra'),
(402, 'Name the Angels of Islam.', 'Stage 8', 4, 'Jibril;Mikail;Israfil;Izrail;Malik;Ridwan;Munkar;Nakir;Raqib;Atid'),
(403, 'Name the tribes and clans during the time of Prophet Muhammad.', 'Stage 8', 4, 'Quraish;Banu Kinanah;Banu Hashim;Banu Hotail;Banu bariq;Banu hubu;Banu Hilal;Banu tamim;Banu sad;Banu amr'),
(404, 'Name the first 10 prophets of Islam.', 'Stage 8', 4, 'Adam;Idris;Nuh;Hud;Salih;Lut;Ibrahim;Ismail;Ishaq;Yaqub'),
(405, 'Who were the paternal uncles of the Prophet?', 'Stage 8', 4, 'Harith;Abu Talib;Gheedaq;Muqawwam;Dhirar;Quthm;Abdul Ka’bah;Hijl;Hamza;Abbas'),
(406, 'What are the obligatory prayers?\r\n', 'Stage 8', 4, 'Fajr;Dhuhr;Asr;Maghrib;Isha;Jum’ah;Ihtiyat;Salatul mayyit;Qadha;Ijarah'),
(407, 'Who were the Asharah Mubasharah?', 'Stage 8', 4, 'Abu bakr;Umar;Uthman;Ali;Talha;Zubayr;Abdur-Rahman;Sa’ad;Abu Ubaida;Said ibn Zayd'),
(408, 'Name the  Arabic numbers from 1 to 10.', 'Stage 8', 4, 'Wahid;Isnin;Salasa;Arba;Khamsa;Sitta;Sab’a;Thamanya;Tis’a;Ashara'),
(409, 'Name the Women scholars of Hadith.', 'Stage 9', 4, 'Fatimah;Zaynab;Aisha;Hafsa;Umm Darda;Al Shifa;Hafsa bint Sirin;Umm Salamah;Aisha bint Talhah;Fatimah bint Musa;Sayyida Nafisa'),
(410, 'Name the Women scholars of Hadith.', 'Stage 9', 4, 'Fatimah;Zaynab;Aisha;Hafsa;Umm Darda;Al Shifa;Hafsa bint Sirin;Umm Salamah;Aisha bint Talhah;Fatimah bint Musa;Sayyida Nafisa'),
(411, 'Name the famous tribes during the time of Prophet Muhammad.', 'Stage 9', 4, 'Quraish; Banu Kinanah;Banu Al Akdari;Banu Jadhimah;Banu Tamim;Banu Amr;Banu Hilal;Banu Bariq;Banu Utub;Banu Kalb;Banu Jumah'),
(412, 'Names that are mentioned in the Quran.', 'Stage 9', 4, 'Adam;Ayyub;Dawud;Imran;Yusuf;Yunus;Hud;Ishaq;Ismail;Idris;Yaqub'),
(413, 'Name an 11 prophet before Isa (AS).', 'Stage 9', 4, 'Ismail;Yahya;Zakariya;Sulaiman;Dawud;Harun;Musa;Shuaib;Yusuf;Yaqub;Ishaq'),
(414, 'Name the layers of Jannah.', 'Stage 9', 4, 'Firdaws;Daral Maqamah;Janatul Aliyah;Daral Salam;Daral Akhirah;Al Jannah; Jannat Al Adn; Jannat al Khuld;Jannat al Naim;Maqad al Sidq;Maqam Al Amin'),
(415, 'Name the prophets before Muhammad.', 'Stage 9', 4, 'Isa;Musa;Ibrahim;Idris;Nuh;Lut;Yahya;Yunus;Yusuf;Yakob;Dawud'),
(416, 'Name the Gates of Jannah.', 'Stage 9', 4, 'Babus salah;Babul jihad;Babus sadaqah;Babur rayyan;Babul hajj;Babul kazimin al ghayz;Babul iman;Babuz dhikr;Firdaws;Zakah;Dhikr');
INSERT INTO `difficult_question_table` (`difficultQuestionId`, `difficultQuestion`, `stage`, `categoryId`, `difficultAnswer`) VALUES
(417, 'What are the things that are wajib in prayers?', 'Stage 9', 4, 'Niyyah;Takbiratul ihram;Qiyam;Ruku;Sajdah;Qira’at;Dhikr;Tashahud;Salam;Tartib;Muwalat'),
(418, 'Name the doors of Jannah.', 'Stage 9', 4, 'Firdaws;Mava;Maqam;Salam;Khuld;Adan;Naeem;Kasif;Salah;Sadaqah;Hajj'),
(419, 'What are the commonly used words in the Quran?', 'Stage 10', 4, 'Bismillah;Alayhim;Ala;Alathee;Gafoor;Raheem;Huddan;Huwa;Illa;Insan;Kareem;Rahman'),
(420, 'Who were the asharah mubasharah?', 'Stage 10', 4, 'Abu bakr;Umar;Uthman;Ali;Talha;Zubayr;Abdur Rahman;Sa’ad;Abu Ubaid;Said Ibn Zayd;Ayman;Abdullah'),
(421, 'Name the Islamic Months.', 'Stage 10', 4, 'Muharram;Safar;Rabil Awwal;Rabil Akhir;Jamadil Awwal;Jamadi Akhir;Rajab;Sha’ban;Ramadan;Shawwal;Dhul Qayda;Dhul hajji'),
(422, 'Give the last 12 Arabic Alphabet.', 'Stage 10', 4, 'Ya;Waw;Ha;Nun;Mim;Lam;Kaf;Qaf;Fa;Ghayn;Ayn;Za'),
(423, 'Name the Arabic numbers from 11 to 22.', 'Stage 10', 4, 'Ahada ashar;ithna ashar;thalatha ashar; arba’ata ashar;khamsata ashar;sittata ashar;sab’ata ashar;thamanyata ashar;tis’ata ashar;a’ishrun;wahid wa asharun;ithnan asharun'),
(424, 'Name the first 12 of asmaul husna.', 'Stage 10', 4, 'Ar Rahman;Ar Rahim;Al Malik;Al Quddus;As Salam;Al Mu’min;Al Muhaymin;AAll Aziz;Al Jabbar;Al Mutakkabir;Al Khaliq;Al Bariq'),
(425, 'Name the first 12 prophets of Islam.', 'Stage 10', 4, 'Adam;Idris;Nuh;Hud;Salih;Ibrahim;Lut;Ismail;Ishaq;Yaqub;Yusuf;Ayyub'),
(426, 'Name the Salawats on the sayyidina Rasulullah.', 'Stage 10', 4, 'Nuraniyyah;Al Fath;Salatu Munajiyyah;Sayyid Salawat;Jawharatal Kamal;Salatu Nariyah;Salawat Dhatiyyah;Salatu Ulul Azm;Salawat Kamaliya;Salati Jibiya;Salawat Sa’dah;Salawat al Askandari.'),
(427, 'Name some of the durood sharief.', 'Stage 10', 4, 'Ibrahimi;Nahariya;Fath;Safi’i;Dawami;Tunajina;Qurani;Sadaqah;Wali;Ghausia;Akbar;Noor'),
(428, 'Who were the group of Masumeen?', 'Stage 10', 4, 'Ali;Hasan;Husain;Ali Zayn;Muhammad al Baqir;Jafar Sadiq;Musa al kadhi;Ali ar raza;Muhammad at taqi;Ali an naqi;Hasan al askari;Muhammad al Mahdi');

-- --------------------------------------------------------

--
-- Table structure for table `easy_question_table`
--

CREATE TABLE `easy_question_table` (
  `easyQuestionId` int(6) NOT NULL,
  `question` text,
  `choiceA` text,
  `choiceB` text,
  `choiceC` text,
  `choiceD` text,
  `answer` text,
  `categoryId` int(6) DEFAULT NULL,
  `stage` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easy_question_table`
--

INSERT INTO `easy_question_table` (`easyQuestionId`, `question`, `choiceA`, `choiceB`, `choiceC`, `choiceD`, `answer`, `categoryId`, `stage`) VALUES
(3, 'What is Du\'a?', 'The act of supplication.  It is calling out to God.', 'The act Eating', 'The act of Greeting ', 'The act of breathing', 'choiceA', 3, 'Stage 1'),
(4, 'â€œInnad dua huwal ibadahâ€ means?', 'Dua is greeting in Islam', 'Dua is the worship', 'Dua is thanking someone', 'None of the above', 'choiceB', 3, 'Stage 1'),
(5, 'We say â€œBismillahâ€ when we start everything we do. What is the meaning of â€œBismillahâ€ ?', 'In the name of Allah (SWT)', 'Glory be to Allah (SWT) ', 'May Allah (SWT)  Bless us ', 'I seek forgiveness', 'choiceA', 3, 'Stage 1'),
(6, 'â€œLaa baâ€™sa tahoorun inshaaâ€™Allahâ€. This is a dua for visiting a  sick person, meaning', 'Donâ€™t worry, it will be a purification (for you), if Allah (SWT) wills.', 'May Allah make you well', 'Allah will ease your pain', 'none of the above', 'choiceA', 3, 'Stage 1'),
(7, 'It is a Dua means seeking forgiveness of allah for the sins so far committed and turning repentant unto Allah (SWT)?', 'Aoodhubillah', ' Istighfaar', 'Bismillah', 'Barakkallah', 'choiceB', 3, 'Stage 1'),
(8, 'What is a Dua before eating?', 'Aoodhubillah', 'Istighfar', 'Bismillah', 'Barakkallah', 'choiceC', 3, 'Stage 1'),
(9, 'â€œBismillahifee â€˜awwalihi wa â€˜aakhiriâ€ is a dua when we forgot to say bismillah before eating. It means,', 'Oh Allah, forgive me!', 'May Allah Forgive us', 'With the name of Allah, in the beginning and in the end', 'Thank you Allah for this Blessing', 'choiceC', 3, 'Stage 1'),
(10, 'It is a Dua (supplication) before starting ablution.', 'Barakkallah', 'Bismillah', 'Istighfar', 'Aoodhubillah', 'choiceB', 3, 'Stage 1'),
(11, 'â€œAsh-hadu â€˜an laa â€˜ilaaha â€˜illallahu wahdahu laa shareekalahu wa ash hadu anna muhammadan abduhu wa rasooluhuâ€ is a dua ', 'Upon completing the ablution', 'Upon Taking exam', 'After prayer', 'None of the above', 'choiceA', 3, 'Stage 1'),
(12, 'A supplication at the start of the prayer.', 'Aoodhubillahi minas shaytanir rajeem', 'Subhanaka Allahumma wa bihamdika, wa tabaraskasmuka, wa taâ€™aala     jadduka wa laa ilaha ghayruka.', 'Bismillahir rahmanir raheem', 'none of the above', 'choiceB', 3, 'Stage 1'),
(13, 'A supplication while in rukoo.', 'Bismikallahuma', 'Subhanna kallahuma', 'Tabarakallah', 'Subhanna Rabbiyal Adheem', 'choiceD', 3, 'Stage 2'),
(15, 'It is a supplication upon rising from rukoo.', 'Tabarakkalah', 'Jaza kallahu Khayran', 'Samiâ€™allahu liman hamidah', 'None of the above', 'choiceC', 3, 'Stage 2'),
(16, 'It is a supplication while in sujood.', 'Subhaana Rabbiyal Aâ€™laa', 'Aoodhubillahi minas shaytanir rajeem', 'Bismillahir rahmanir raheem', 'Jaza kallahu Khayran', 'choiceA', 3, 'Stage 2'),
(17, 'It is a supplication when sitting between the two sujood.', 'Bismillah (3x)', 'Aoodhubillah (3x)', 'Rabbigfirlee (3x)', 'Subhanallah (3x)', 'choiceC', 3, 'Stage 2'),
(18, 'It is a supplication for one afflicted by whisperings in prayer or recitation.', 'Aoodhubillahi minas shaytanir rajeem', 'Bismillah', 'Salam', 'None of the above', 'choiceA', 3, 'Stage 2'),
(19, 'It is a supplication when startled', 'Ya rabbi', 'Allahi', 'La hawla wala quwatta illa billah', 'Laa ilaha illalah', 'choiceD', 3, 'Stage 2'),
(20, 'â€œBismillahi wa â€˜alaa sunnati rasoolillahiâ€ is a supplication when placing the deceased in the grave. It means,', 'May Allah enter you in Jannah', 'In the name of Allah and according to the sunnah of the messenger of Allah', 'Surely, Allah takes what is His. ', 'Have patient and be rewarded', 'choiceB', 3, 'Stage 2'),
(21, 'It is a supplication after burying the deceased.', 'Allahum-magfirli lahu allahuma thabbitu', 'Laa ilaha illalah', 'La hawla wala quwatta illa billah', 'Ya rabbi', 'choiceA', 3, 'Stage 2'),
(22, ' A supplication upon hearing the Athan.', 'Allahum-magfirli lahu allahuma thabbitu', 'Laa ilaha illalah', 'La hawla wala quwatta illa billah', 'Ya rabbi', 'choiceC', 3, 'Stage 2'),
(23, 'â€œAllahumma inee as aluka khayraha, wa aoothubika min  sharrihaâ€ is a supplication during a wind storm. It means,', 'O Allah! seek refuge in You against its evil.', 'O Allah! I ask you for the good of it', 'O Allah! I ask you for the good of it and seek refuge in You against its evil.', 'None of the Above', 'choiceC', 3, 'Stage 2'),
(24, 'What is meant by Subhanallah?', 'Glory be to Allah (SWT)', ' There is no God but Allah (SWT)', 'In the name of Allah (SWT)', 'None of the Above', 'choiceA', 3, 'Stage 3'),
(25, 'What is the key to Jannah?', 'Zakat', 'Salah', 'Dua', 'Istighfar', 'choiceB', 3, 'Stage 3'),
(26, 'It is a supplication when intending to do something.', 'Alhamdulillah', 'Inshaallah', 'Mashallah', 'Jazakallah', 'choiceB', 3, 'Stage 3'),
(27, 'Upon Sneezing say:', 'Alhamdulillah', 'Inshaallah', 'Mashallah', 'Jazakallah', 'choiceA', 3, 'Stage 3'),
(28, 'What is the supplication when something is being praised?', 'Jazakallah', 'Mashallah', 'Subhanallah', 'Wallah Billah', 'choiceC', 3, 'Stage 3'),
(29, 'When you thank someone, say:', 'Subhanallah', 'Mashallah', 'Jazak Allah', 'Wallah Billah', 'choiceC', 3, 'Stage 3'),
(30, 'When expressing appreciation, say:', 'Jazakallah', 'Masallah', 'Subhanallah', 'Wallah Billah', 'choiceB', 3, 'Stage 3'),
(31, 'When repenting of a sin say:', 'Astagh feerullah', 'Fisabilillah', 'Amantobillah', 'Ya Allah', 'choiceA', 3, 'Stage 3'),
(32, 'When in pain and distress, say:', 'Astaghfeerullah', 'Fisabillah', 'Amantobillah', 'Ya Allah', 'choiceD', 3, 'Stage 3'),
(33, 'When someone else sneezes, say:', 'Astaghfeerullah', 'Yarhamokallah', 'Fisabillah', 'None of the Above', 'choiceB', 3, 'Stage 3'),
(34, 'When having love for someone, say:', ' Lihubbulah', 'Fi amaanallah', 'Bismillah', 'Inshallah', 'choiceA', 3, 'Stage 4'),
(35, 'â€œAstagfhirullaha wa atuubu ilaihiâ€ means,', 'May Allah blessed you', 'O Allah, I seek your forgiveness', 'I seek the forgiveness of Allah and repent to Him', 'None of the Above', 'choiceC', 3, 'Stage 4'),
(36, 'If someone greet you â€œAssalamu Alaykumâ€ you reply him with?', 'Wa alaykumus salam!', 'Wassalam!', 'Ahlan Wasahlan!', 'Sukran!', 'choiceA', 3, 'Stage 4'),
(37, 'What is the meaning of Assalamu Alaykumâ€?', 'Thank you!', 'Peace be with you!', 'Peace!', 'Welcome!', 'choiceB', 3, 'Stage 4'),
(38, 'Wa alaykumus Salam means,', 'Thank You!', 'Peace', 'Peace be with you too!', 'Welcome', 'choiceC', 3, 'Stage 4'),
(39, 'What are the things that nullify prayer (Salah)?', 'Eating', 'Drinking', 'Laughing', 'All of the Above', 'choiceD', 3, 'Stage 4'),
(40, 'It is the Unity of Allah (SWT) in the performance of worship', 'Tawhid', 'Salah', 'Zakat', 'Sawm', 'choiceA', 3, 'Stage 4'),
(41, 'Tawhid ur rububiyyah means:', 'Unity of worship', 'Unity of Lordship', 'Unity Allahâ€™s names and attributes', 'None of the Above', 'choiceB', 3, 'Stage 4'),
(42, 'What is considered as the biggest sin?', 'Shirk', 'Tawhid', 'Salah', 'Zakat', 'choiceA', 3, 'Stage 4'),
(43, 'What is the meaning of Shirk?', ' It is the opposite of oneness of Allah (SWT) that is Tawheed', 'is holding anything partner to Allah, in both/either body or properties', 'is the sin of practicing idolatry or polytheism', 'All of the Above', 'choiceD', 3, 'Stage 4'),
(44, 'What is the name of our Holy Prophet?', 'Yusuf (AS)', 'Muhammad (SAW)', 'Adam (AS)', 'Hud(AS)', 'choiceB', 2, 'Stage 1'),
(45, 'In Arabic history, what is the name of year when our beloved prophet (SAW) was born?', 'year of elephant (Am al-fil)', 'year of Quraishi', 'before the hijra', 'Shaâ€™ban', 'choiceA', 2, 'Stage 1'),
(46, 'Who was the first prophet?', 'Yakob (AS)', 'Adam (AS)', 'Hud (AS)', 'Ibrahim (AS)', 'choiceB', 2, 'Stage 1'),
(47, 'Who protected prophet Muhammad (PBUH) after motherâ€™s death?', 'Abu Talib', 'Abdul Muttalib', 'Abu Jahl', 'Abu hurayrah', 'choiceB', 2, 'Stage 1'),
(48, 'Who is the Rasul (Messenger) who came just before prophet Isa (AS)?', 'Prophet Dawud (AS)', 'Prophet Ibrahim (AS)', 'Prophet Musa (AS)', 'Prophet yahya (AS)', 'choiceC', 2, 'Stage 1'),
(49, 'The prophet who was sent to the tribe of thamud?', 'Prophet Salih (AS)', 'Prophet Nuh (AS)', 'Prophet Isa (AS)', 'Prophet Ibrahim (AS)', 'choiceA', 2, 'Stage 1'),
(50, 'During childhood (up to age 6 years), the prophet (PBUH) was living with?', 'Banu Saâ€™d', 'Banu Hashim', 'Banu Auz', 'none of the above', 'choiceA', 2, 'Stage 1'),
(51, 'Who is the sahabi who accompanied the prophet (PBUH) during Hijra?', 'Uthman (RA)', 'Abu bakr (RA)', 'Umar (RA)', 'none of the above', 'choiceB', 2, 'Stage 1'),
(52, 'Which prophet is also known as â€˜Israelâ€™?', 'Prophet Yaâ€™kub (AS)', 'Prophet Lut (AS)', 'Prophet Yusuf (AS)', 'Prophet Musa (AS)', 'choiceA', 2, 'Stage 1'),
(53, ' Where was the Prophet sallallaahu \'alaehe wasallam born?', 'Makkah', 'Madina', 'Israel', 'Yemen', 'choiceA', 2, 'Stage 1'),
(54, 'What is the name of the Prophet\'s sallallaahu \'alaehe wasallamâ€™s father?', 'Abdul Muttallib.', 'Abdullah bin Abdul Muttallib', 'Ahmed.', 'Nafeesah.', 'choiceB', 2, 'Stage 2'),
(55, 'What is the name of the Prophet\'s sallallaahu \'alaehe wasallam grandfather?', 'Abu ibn khatab', 'Abu Hurayrah', 'Abu Tallib', 'Abdul Muttallib.', 'choiceD', 2, 'Stage 2'),
(56, 'How long did she suckle the Prophet sallallaahu \'alaehe wasallam?', '5 years', '6 years', '2 years', '4 years', 'choiceC', 2, 'Stage 2'),
(57, 'Who named the Prophet sallallaahu \'alaehe wasallam Mohammed?', 'Aminah', 'Abdul Muttalib.', 'Halimah', 'Khadijah', 'choiceB', 2, 'Stage 2'),
(58, 'What did Muhammad\'s sallallaahu \'alaehe wasallam mother named him?', 'Talib', 'Muhammad', 'Ahmad.', 'Khalid', 'choiceC', 2, 'Stage 2'),
(59, 'How old was Mohammed sallallaahu alayhi wasallam when his mother died?', '7 years', '10 years', '6 years', '15 years', 'choiceC', 2, 'Stage 2'),
(60, '17.	How long did Abdul Muttalib take care of Mohammad (pbuh)?', '2 years', '5 years', '6 years', '11 years', 'choiceA', 2, 'Stage 2'),
(61, 'How old was Mohammad (pbuh) when his grandfather Abdul Muttalib died?', '1 year old', '8 years old', '10 years old', '5 years old', 'choiceB', 2, 'Stage 2'),
(62, 'What did Mohammad (pbuh) do in chilhood?', 'He used to tend the goat', 'He used to tend the camel', 'He used to tend the sheep', 'He used to tend the Cow', 'choiceC', 2, 'Stage 2'),
(63, 'Who took care of Mohammad (pbuh) after the death of Abdul Muttalib?', 'Abu talib', 'Ahmad', 'Sulaiman (A.S)', 'Ibrahim (A.S)', 'choiceA', 2, 'Stage 2'),
(64, 'Who negotiated with Mohammad (pbuh) on behalf of Khadijah radiallaahu anha for marriage?', 'Nafeesah.', 'Fatima (R.A)', 'Hadhrat A\'isha (R.A)', 'Hadhrat Sumayya (R.A)', 'choiceA', 2, 'Stage 3'),
(65, 'What did Muhammad (pbuh) give Khadijah radiallahu anha as Maher (dower)?', '30 Camels', '20 Camels', '50 Camels', '10 Camels', 'choiceB', 2, 'Stage 3'),
(66, 'How old was Khadijah radiallaahu anha when she died?', '65 years old', '70 years old', '55 years old', '45 years old', 'choiceA', 2, 'Stage 3'),
(67, 'Did Muhammad (pbuh) make trade journey after marriage?', 'Yes', ' No', 'Maybe', 'Not sure', 'choiceB', 2, 'Stage 3'),
(68, 'Did Muhammad (pbuh) get any sort of education?', 'No', 'Yes', 'Maybe', 'Not sure', 'choiceA', 2, 'Stage 3'),
(69, 'How many times is the name of Muhammad (pbuh) mentioned in the Qu\'ran?', '8 times', '5 times', '4 times', '2 times', 'choiceC', 2, 'Stage 3'),
(70, 'Who was Rasulullah\'s wet nurse?', 'Halimah', 'Khadijiah ', 'Aminah', 'Fatimah (RA)', 'choiceA', 2, 'Stage 3'),
(71, 'Which is the only month mentioned in the Qur\'an?', 'Dhul hijah', 'Rajab', 'Ramadan', 'Muharam', 'choiceC', 2, 'Stage 3'),
(72, 'One that has to wash his/her face, hands and feet before the Salah, what is that called?', 'Ghusl', 'Wudu (Ablution)', 'Tayammum', 'None of the Above', 'choiceB', 2, 'Stage 3'),
(73, 'Which is the 1st Mosque on Earth?', 'Masjid e Haram (Khan e Kaba)', 'Masjid Al Aqsa', 'Masjid in Madina', 'None of the above', 'choiceA', 2, 'Stage 4'),
(74, 'When did the Prophet SAW die?', '633 A.D 13 Rabi ul Awwal ', '634 A.D 14 Rabi ul Awwal', '632 A.D. 12 Rabi ul Awwal ', 'None of the above', 'choiceC', 2, 'Stage 4'),
(75, 'Who neither eats, nor drinks nor sleeps?', 'Mikail', 'Jibril', 'Muhammad', 'Allah (SWT)', 'choiceD', 2, 'Stage 4'),
(76, 'What do the angels do?', 'flying', 'eating', 'Carry out the orders of Allah', 'sleeping', 'choiceC', 2, 'Stage 4'),
(77, 'What is the Arabic word for Angels?', 'Malaikah', 'Malkalmawt', 'dajjal', 'Nabi', 'choiceA', 2, 'Stage 4'),
(78, 'Is it true that Allah (SWT)  doesâ€™nt like a person who is proud of themselves?', 'True', 'False', 'Maybe', 'Not sure', 'choiceA', 2, 'Stage 4'),
(79, 'Does a person become a Muslim if they recite the Shahadah without understanding its meaning and sense?', 'Yes', 'No', 'Maybe', 'Not sure', 'choiceB', 2, 'Stage 4'),
(80, 'Who was Hadrat Ali\'s (RA) father?', 'Ibrahim (A.S)', 'abu talib', 'Ahmad', 'Adam', 'choiceB', 2, 'Stage 4'),
(81, 'With which foot you should enter the toilet?', 'Right', 'Left', 'Both', 'Not sure', 'choiceB', 2, 'Stage 4'),
(83, 'How old was Prophet Muhammad (pbuh) when she died?', '75 years old', '60 years old', '50 years old', '45 years old', 'choiceC', 2, 'Stage 3'),
(84, 'When you sneeze, you say what?', 'Alhamdulillah', 'Aâ€™udhu billah', 'ashtagfirollah', 'La illaha ilallah', 'choiceA', 2, 'Stage 4'),
(85, 'Who called Bilqas to Islam?', 'Prophet Isha (AS)', 'Prophet Muhammad (pbuh)', 'Prophet Suleman (AS)', 'Prophet Moses (AS)', 'choiceC', 2, 'Stage 5'),
(86, 'What should you say before making a promise?', 'Insha Allah', 'Alhamdulillah', 'Bismillah', 'Aâ€™udhu billah', 'choiceA', 2, 'Stage 5'),
(87, 'Who was Hadrat Hassan and Hussain\'s (R.A) mother?', 'Khadijiah', 'Fatimah (R.A)', 'Halimah', 'Zulaika', 'choiceB', 2, 'Stage 5'),
(88, 'Who was the first man to commit a murder?', 'Ismael', 'Ishaq', 'Qabil, the son of Adam', 'Umm khultum', 'choiceC', 2, 'Stage 5'),
(89, 'On what mountain did Musa (A.S) climb to praise Allah (SWT)?', 'Madinah', 'Hira', 'Tur', 'Sinai', 'choiceD', 2, 'Stage 5'),
(90, 'Who was Hadrat Usman\'s (R.A) first wife?', 'Ruqayyah (R.A)', 'Zulaika', 'Aisha', 'Saddiyah', 'choiceA', 2, 'Stage 5'),
(91, 'In which city is the Hira cave?', 'Saudi Arabia', 'Syria', 'Makkah', 'Madinah', 'choiceC', 2, 'Stage 5'),
(92, 'Who in the family of Lut (A.S.) refused to believe and follow in Allah(SWT)?', 'His Wife', 'His Father', 'His Mother', 'His Son', 'choiceA', 2, 'Stage 5'),
(93, 'What does Hijri/Hijrah mean?', 'Arabic Calendar', 'The slamic calendar year', 'Old Calendar', 'Ramadhan Calendar', 'choiceB', 2, 'Stage 5'),
(94, 'Who was the first Martyr in Islam?', 'Uthman bin Affan (R.A)', 'Zaid bin Harith (R.A)', 'Abdullah', 'Hadhrat Sumayya (R.A)', 'choiceD', 2, 'Stage 5'),
(95, 'What is the meaning of hadith?', 'refers to any of the various collected accountings of words, actions, and habits of prophet Muhammad', 'a narration of Musa (AS)', 'a collected actions of Ibrahim (AS)', 'habits of Yusuf (AS)', 'choiceA', 1, 'Stage 1'),
(96, 'Prophet Muhammad  (pbuh) said â€œ A good man treat women with honourâ€. It was found in the hadith collection of', 'Tirmidhi', 'Ibn Majah', 'Saheeh Bukhari', 'None of the choices', 'choiceA', 1, 'Stage 1'),
(97, 'Prophet Muhammad said â€œWhoever recites Surah at- takathur before sleeping will be saved from what?', 'saved by angels', 'saved from the horrors of the grave', 'saved from the hell fire', 'saved from the death', 'choiceB', 1, 'Stage 1'),
(98, 'Islam is built upon five: to worship Allah, to disbelieve in what is worshipped beside him, to establish prayer, to give charity, perform hajj and fast in the month of ramadan.This hadith was reported by', 'Ibn Umar', 'Ibn Khatab', 'Aisha', 'Abu Hurayrah', 'choiceA', 1, 'Stage 1'),
(99, 'Prophet Muhammad (pbuh) said â€œ Leave what makes you doubt for what does not make you doubt. Verily, truth brings peace of mind and falsehood sows doubtâ€. It was narrated by', 'Ibn al Khatab', 'Al- hasan Ibn Ali', 'Abu hurayrah', 'Abu Dawud', 'choiceB', 1, 'Stage 1'),
(100, 'Ali ibn Hussein reported that  prophet Muhammad (pbuh) said:', 'Verily, from the perfection of Islam is that a person leaves what does not concern him', 'Verily, for every hardship, there is relief', 'Loving one another', 'Love yourself', 'choiceA', 1, 'Stage 1'),
(101, 'Anas Ibn Malik reported that Muhammad (pbuh) said ', 'None of you has faith until he loves for his brothers what he loves for himself', 'Loving is caring', 'Feel blessed everyday', 'None of the choices', 'choiceA', 1, 'Stage 1'),
(102, 'Prophet Muhammad (pbuh) said that the â€œGreatest JIHAD is to battle your own soul , to fight the evil within yourselfâ€. JIHAD means?', 'struggling against the temptations of Satan.', 'struggling against oneâ€™s own evil traits in order to become a better person.', 'struggle or strive, and is often incorrectly interpreted as â€˜holy warâ€™', 'All of the choices', 'choiceD', 1, 'Stage 1'),
(103, 'What is the tribe of our holy prophet?', ' Quraish', 'Yemen', 'Israrel', 'None of the choices', 'choiceA', 1, 'Stage 1'),
(104, 'One of the authentic books of Hadith?', 'Sahih Bukhari', 'Ibn Khatibin', 'Aisha (RA)', 'Hadith Qudsi', 'choiceA', 1, 'Stage 1'),
(105, 'What is the meaning of fardh salah?', 'Obligatory Salah', 'Prayer', 'Sunnah', 'None of the choices', 'choiceA', 1, 'Stage 2'),
(106, 'The most important source of Muslim is the Holy Qurâ€™an. What is the second source?', 'Seerah', 'Sunnah of prophet Muhammad', 'Ahlaq al Islam', 'None of the choices', 'choiceB', 1, 'Stage 2'),
(107, 'It is one of the Arkan al Islam that is the declaration of faith.', 'Shahadah', 'Salah', 'Zakah', 'Hajj', 'choiceA', 1, 'Stage 2'),
(108, 'Who has been mentioned in the Quran as Rahmatulil Alamin?', 'Prophet Musa (AS)', 'Prophet Yusuf (AS)', ' Prophet Muhammad (AS)', 'Prophet Ibrahim (AS)', 'choiceC', 1, 'Stage 2'),
(109, 'Arkan â€“ al Islam, meaning regular prayers.', 'Salah', 'Zakah', 'Shahadah', 'Hajj', 'choiceA', 1, 'Stage 2'),
(110, 'Arkan al Islam which means charity.', 'Shahadah', 'Salah', 'Zakah', 'Hajj', 'choiceC', 1, 'Stage 2'),
(111, 'Arkan Al Islam which means to fast in the month of ramadan.', 'sawm', 'salah', 'zakah', 'hajj', 'choiceA', 1, 'Stage 2'),
(112, 'What is shukr means?', 'Thankfulness', 'Forgiveness', 'Exertion', 'Glory', 'choiceA', 1, 'Stage 2'),
(113, 'Why do Muslim Observe Salah?', 'To surrender oneâ€™s self to Godâ€™s will', 'To feel free', 'To be happy', 'None of the choices', 'choiceA', 1, 'Stage 2'),
(114, 'How many times in a day should one observe salah?', '2 times', '3 times', '4 times', '5 times', 'choiceD', 1, 'Stage 2'),
(115, 'Prophet Muhammad said that', 'Every act of kindness is charity', 'Every act of kindness is reward', 'Being kind is good', 'Be kind', 'choiceA', 1, 'Stage 3'),
(116, 'A man asked the prophet (pbuh)â€œ What is the best deen in Islam? The prophet said:', 'Feeding others and giving the greeting of salam to those whom you know and whom you do not know ', 'Cook a food for a friend', 'Feed the one you know', 'None of the choices', 'choiceA', 1, 'Stage 3'),
(117, 'What is the first pillar of Islam?', 'Fasting', 'Shahada', 'Prayer', 'Zakat', 'choiceB', 1, 'Stage 3'),
(118, 'Eating before dawn is called?', 'Fasting', 'Suhur', 'Break', 'Taâ€™jil', 'choiceB', 1, 'Stage 3'),
(119, 'The fifth pillar of iman is to believe in?', 'Holy Books', 'Prophets', 'The day of Qiyamah', 'Qada and Qadar', 'choiceC', 1, 'Stage 3'),
(120, 'Sunan ibn Majah is a collection of hadith compiled by', 'Imam Muhammad bin yazid ibn majah al-Qazvini', 'Jamiâ€™ at Tirmidhi', 'Abu Hurayrah', 'Abu Dawud', 'choiceA', 1, 'Stage 3'),
(121, 'Jamiâ€™a at Tirmidhi is a collection of hadith compiled by ', 'Imam Abu Isa Muhammad at tirmidhi', 'Sahih Bukhari ', 'Sahih Muslim', 'Ibn Majah', 'choiceA', 1, 'Stage 3'),
(122, 'What is meant by Sahih Hadith?', 'Very well hadith', 'Very well authenticated hadith which has no weaknesses in its chain of transmission', 'Very powerful hadith', 'first hadith', 'choiceB', 1, 'Stage 3'),
(123, 'Prophet Muhammad (pbuh) said:â€ If anyone of you enters a mosque, he should pray two rakaâ€™ah before sitting. It was found in', 'Sahih Bukhari', 'Sahih Muslim', 'Ibn Majah', 'at tirmidhi', 'choiceA', 1, 'Stage 3'),
(124, 'What did prophet ordered the people to pay before going to the eid prayer?', 'Zakat-ul-fitr', 'Zakat', 'Bill', 'None of the choices', 'choiceA', 1, 'Stage 3'),
(125, 'What did Muhammad (pbuh) used to practice in the last 10 days of the month of Ramadan?', 'Sawm', 'fast', 'sahur', 'Itikaf', 'choiceD', 1, 'Stage 4'),
(126, 'What did the messenger (pbuh) said to anyone who is attending the Friday prayer?', 'sleep first', 'give zakat', 'eat first', 'Should take a bath', 'choiceD', 1, 'Stage 4'),
(127, 'The prophet said that, â€œAz- Zulm (oppression) will be a', 'light in the face of Muâ€™min', 'darkness on the day of resurrection', 'saved everyone', 'none of the choices', 'choiceB', 1, 'Stage 4'),
(128, 'The prophet said,â€ All drinks that produce intoxication are?', 'Halal', 'Sunah', 'Haram', 'Fardh', 'choiceC', 1, 'Stage 4'),
(129, 'Whoever does not recite Al-Fatiha in his prayer, his prayer is?', 'valid', 'invalid', 'Sunnah', 'Fardh', 'choiceB', 1, 'Stage 4'),
(130, 'The prophet said â€œEat Suhur, for in suhur, there is blessing. It was narrated by?', 'Bukhari', 'Muslim', 'Ibn Majah', 'Abu Dawud', 'choiceC', 1, 'Stage 4'),
(131, 'It was narrated by Ibn Majah that the Prophet (pbuh) said: â€œGive the worker his wage before', 'He get mad', 'His sweat dries', 'He kill himself', 'He left', 'choiceB', 1, 'Stage 4'),
(132, 'The messenger of Allah said:  â€Do wudu properlyâ€. Wudu means', 'Ablution', 'Taking a bath', 'Eating', 'none of the choices', 'choiceA', 1, 'Stage 4'),
(133, 'What is the scripture of Islam?', 'Quran', 'Torah', 'Injeel', 'None of the above', 'choiceA', 4, 'Stage 1'),
(134, 'What is Quran?', 'a scheme of life as revealed to Mohammad by Allah', 'a book of life', 'key to jannah', 'all of the above', 'choiceA', 4, 'Stage 1'),
(135, 'What is the meaning of the word â€œQurâ€™anâ€?', 'The Book', 'First Book', 'That which is read', 'Read', 'choiceC', 4, 'Stage 1'),
(136, 'A night that the first Qurâ€™an was revealed?', 'A night before eid-ul fitr', 'First night of Ramadhan', 'Last night of Ramadhan', 'Lailatul-Qadr', 'choiceD', 4, 'Stage 1'),
(137, 'Who revealed the Qurâ€™an?', 'Angel Jibril', 'Allah (SWT)', 'Angel Mikail', 'Angel Israfil', 'choiceA', 4, 'Stage 1'),
(138, 'Through whom was the Qurâ€™an revealed?', 'Angel Jibril', 'Allah (SWT)', 'Angel Mikail', 'Angel Israfil', 'choiceA', 4, 'Stage 1'),
(139, 'To whom was the Qurâ€™an revealed?', 'Prophet Musa', 'Prophet Isa', 'Prophet Ibrahim', 'Prophet Muhammad', 'choiceD', 4, 'Stage 1'),
(140, 'What was the age of Prophet Muhammad (pbuh) when Qurâ€™an was first revealed to him through Angel Jibril?', '35 years', '20 years', '40 years', '50 years', 'choiceC', 4, 'Stage 1'),
(141, 'What was the interval between the first and the second revelation?', '2 years and 6 months', '4 years', '7 years', '1 year', 'choiceA', 4, 'Stage 1'),
(142, 'How long Prophet Muhammad (pbuh) did receive the revelation of the Qurâ€™an in Makkah?', '11 years', '12 years', '13 years', '14 years', 'choiceC', 4, 'Stage 1'),
(143, 'How long Prophet Muhammad (pbuh) did receive the revelation of the Qurâ€™an in Madina?', '9 years', '10 years', '11 years', '12 years', 'choiceB', 4, 'Stage 2'),
(144, 'Where was the first Surah revealed?', 'Makkah', 'Madinah', 'Syria', 'Yemen', 'choiceA', 4, 'Stage 2'),
(145, 'Where was the last Surah revealed?', 'Makkah', 'Madinah', 'Syria', 'Yemen', 'choiceB', 4, 'Stage 2'),
(146, 'How many years did it take for the complete revelation of the Qurâ€™an?', '10 years', '35 years', '19 years', '23 years', 'choiceD', 4, 'Stage 2'),
(147, 'How many chapters are there in Quran?', '119', '114', '109', '104', 'choiceB', 4, 'Stage 2'),
(148, 'What is the first chapter of the Qurâ€™an?', 'Al Baqarah', 'Al Adiyat', 'Al- Fatihah', 'At- Takathur', 'choiceC', 4, 'Stage 2'),
(149, 'It is the longest chapter of the Qurâ€™an?', 'Al Baqarah', 'Al Adiyat', 'Al- Fatihah', 'At- Takathur', 'choiceA', 4, 'Stage 2'),
(150, 'How many Makki Surahs (chapters) are there in the Qurâ€™an?', '34 chapters', '45 chapters', '76 chapters', '86 chapters', 'choiceD', 4, 'Stage 2'),
(151, 'How many Madani Surah (chapters) are there in Qurâ€™an?', '76 chapters', '86 chapters', '28 chapters', '20 chapters', 'choiceC', 4, 'Stage 2'),
(152, 'What is the last chapter in the Quran?', 'Al Falaq', 'Al baqarah', 'An-Nas', 'At Takathur', 'choiceC', 4, 'Stage 2'),
(153, 'How many Makki Surahs (chapters) are there in the Qurâ€™an? ', '75 chapters', '86 chapters', '80 chapters', '68 chapters', 'choiceB', 4, 'Stage 3'),
(154, 'Quran is divided into how many parts?', '30', '50', '20', '10', 'choiceA', 4, 'Stage 3'),
(155, 'Ar rahman means:', 'the sustainer', 'the merciful', 'the loving', 'the great', 'choiceB', 4, 'Stage 3'),
(156, 'What is the other term for taqdir?', 'Qadar', 'Qadar', 'salah', 'muâ€™min', 'choiceA', 4, 'Stage 3'),
(157, 'The 49th chapter of the Quran', 'Hujurat', 'Adiyat', 'Kawthar', 'Nissa', 'choiceA', 4, 'Stage 3'),
(158, 'The 1st chapter of the Quran', 'At-Takathur', 'Al Mulk', 'Al Baqarah', 'Al Fatihah', 'choiceD', 4, 'Stage 3'),
(159, 'Who revealed the quran?', 'Allah', 'Angels', 'Muhammad', 'Ismael', 'choiceA', 4, 'Stage 3'),
(160, 'Which is the longest Surah (chapter) in the quran?', 'Al Baqarah', 'Al Gashiyah', 'Al Anfal', 'Al Balad', 'choiceA', 4, 'Stage 3'),
(161, 'Shortest Surah(Chapter) in the Quran', 'Al Falaq', 'An Nas', 'Al Ikhlas', 'Al Kawthar', 'choiceD', 4, 'Stage 3'),
(162, 'In which Surah (Chapter) in the Quran that â€œBismillahâ€ is repeated twice?', 'Al Anfal', 'An Naml', 'Al Adiyat', 'Zalzalah', 'choiceB', 4, 'Stage 3'),
(163, 'How many verses of Prostration are there in the Qurâ€™an?', '17 verses', '12 verses', '15 verses', '16 verses', 'choiceC', 4, 'Stage 4'),
(164, 'In which Surah do you find the first verse about Sajda (Prostration)?', 'Al- Aâ€™raf (verse 206)', 'Al Adiyat', 'As-Sharh', 'Al Humazah', 'choiceA', 4, 'Stage 4'),
(165, 'Who is the man about whom, Allah has said in the Qurâ€™an that his body is kept as an admonishing example for future generations to come?', 'Ahmad', 'Zulqarnain', 'Suleiman', 'Firâ€™aun (Pharaoh)', 'choiceD', 4, 'Stage 4'),
(166, 'What is the name of satan or devil mentioned in the Qurâ€™an?', 'Iblees', 'Jinn', 'ghayb', 'none of the above', 'choiceA', 4, 'Stage 4'),
(167, 'Which category of creature does the Qurâ€™an put satan into?', 'Iblees', 'Ghayb', 'Jinn', 'none of the above', 'choiceC', 4, 'Stage 4'),
(168, 'Which Surah is regarded as the heart of the Qurâ€™an?', 'Yaseen', 'Al-Ghasiyah', 'At- tariq', 'Ad- dariyat', 'choiceA', 4, 'Stage 4'),
(169, 'Which is the Surah that does not start with â€œBismillahâ€?', 'An Naml', 'At-Tawbah', 'Al Yunus', 'Al-Hud', 'choiceB', 4, 'Stage 4'),
(170, 'In which Surah of the Qurâ€™an Do you find â€˜Ayat al kursiâ€™?', 'Al Waaqia (56:2)', 'Al Baqarah (2:255)', 'Al Hadid (57:29)', 'Al Yusuf (12:99)', 'choiceB', 4, 'Stage 4'),
(171, 'What is the meaning of â€˜Ayatul Kursiâ€™?', 'Verse of the Throne', 'Verse of the prophet', 'Verse of the Qurâ€™an', 'all of the above', 'choiceA', 4, 'Stage 4'),
(172, 'How many different names of Allah (SWT) are mentioned in the Qurâ€™an?', '78 names', '79 names', '89 names', '99 names', 'choiceD', 4, 'Stage 4'),
(173, 'What does the Qurâ€™an say about property and Wealth?', 'It is a treasure', 'They are tests to oneâ€™s faith (2:155)', 'Must give it to the poor', 'none of the Above', 'choiceB', 4, 'Stage 5'),
(174, 'According to the Qurâ€™an, what is the other name of Madinah?', 'Ummul Qura (42:7)', 'Baladul Ameen (3:96)', 'Bakkah (95:3)', 'Yathrib (33:13)', 'choiceD', 4, 'Stage 5'),
(175, 'Which verse in the Qurâ€™an prohibits the consumption of Alcohol?', 'Al Maâ€™idah (5:90)', 'At Takathur (102:7)', 'An Nas (114:6)', 'As Sharh (94:8)', 'choiceA', 4, 'Stage 5'),
(176, 'What is the term used by Muslims for people who have completely memorized the Holy Qurâ€™an?', 'Hafiz', 'Ummah', 'Nabi', 'none of the above', 'choiceA', 4, 'Stage 5'),
(177, 'Which Surah in the Qurâ€™an is named after an Israelite Prophet who was sent to Iraq about 800 BC for the guidance of the Assyrians?', 'Muhammad (AS)', 'Hud (AS)', 'Yunus (AS)', 'Isa (AS)', 'choiceC', 4, 'Stage 5'),
(178, 'The Qurâ€™an repeatedly warns of a certain day. Which day it is?', 'Yaumul Qiyamah', 'Jumâ€™ah', 'Sabbath', 'None of the above', 'choiceD', 4, 'Stage 5'),
(179, 'It is a verse found in Surah As Sharh verse 6.', 'Verily, with every difficulty there is relief', 'A lying, sinful forelock', 'That ye should worship Allah, fear Him and obey me', 'So I have called to them aloud', 'choiceA', 4, 'Stage 5'),
(180, 'It was found in Surah Al Baqarah verse 54 that said:', 'Indeed, Allah is with Patient', 'Indeed, my lord is near and responsive', 'And kill your egos', 'Success is only by Allah', 'choiceC', 4, 'Stage 5'),
(181, 'asda', 'sdasd', 'asda', 'da', 'sdasd', 'choiceA', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `player_table`
--

CREATE TABLE `player_table` (
  `playerId` int(6) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_table`
--

INSERT INTO `player_table` (`playerId`, `username`, `password`) VALUES
(1, 'player', 'player'),
(2, 'asd', '123'),
(3, 'toto', 'toto'),
(4, 'acrima', 'acrima'),
(5, 'krim', 'krim'),
(6, 'Radiya Ambal', 'Nashdiya01');

-- --------------------------------------------------------

--
-- Table structure for table `setting_table`
--

CREATE TABLE `setting_table` (
  `settingId` int(6) NOT NULL,
  `playerId` int(6) DEFAULT NULL,
  `music` text,
  `sound` text,
  `background` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_table`
--

INSERT INTO `setting_table` (`settingId`, `playerId`, `music`, `sound`, `background`) VALUES
(1, 1, 'music2', 'sound1', 'background1'),
(2, 3, 'music2', 'sound3', 'background3'),
(3, 2, 'music1', 'sound2', 'background2'),
(4, 4, 'music1', 'sound1', 'background1'),
(5, 5, 'music1', 'sound1', 'background1'),
(6, 6, 'music1', 'sound1', 'background1');

-- --------------------------------------------------------

--
-- Table structure for table `solo_player_game_history_table`
--

CREATE TABLE `solo_player_game_history_table` (
  `soloPlayerGameHistoryId` int(6) NOT NULL,
  `playerId` int(6) DEFAULT NULL,
  `score` int(6) DEFAULT NULL,
  `categoryId` int(6) DEFAULT NULL,
  `difficulty` varchar(60) DEFAULT NULL,
  `dateAndtime` date DEFAULT NULL,
  `coins` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solo_player_game_history_table`
--

INSERT INTO `solo_player_game_history_table` (`soloPlayerGameHistoryId`, `playerId`, `score`, `categoryId`, `difficulty`, `dateAndtime`, `coins`) VALUES
(1, 1, 10, 3, 'Easy', '2018-12-11', 100),
(2, 1, 10, 3, 'Easy', '2018-12-11', 100),
(3, 1, 4, 3, 'Easy', '2018-12-11', 0),
(4, 1, 4, 3, 'Easy', '2018-12-11', 100),
(5, 1, 12, 3, 'Easy', '2018-12-11', 200),
(6, 2, 4, 3, 'Easy', '2018-12-11', 0),
(7, 1, 0, 2, 'Easy', '2018-12-11', 0),
(8, 1, 1, 3, 'Easy', '2018-12-12', 0),
(9, 1, 2, 3, 'Easy', '2018-12-12', 0),
(10, 1, 8, 3, 'Easy', '2018-12-12', 0),
(11, 1, 8, 3, 'Easy', '2018-12-12', 100),
(12, 1, 0, 3, 'Easy', '2018-12-12', 0),
(13, 1, 0, 3, 'Easy', '2018-12-12', 0),
(14, 1, 1, 3, 'Easy', '2018-12-13', 0),
(15, 1, 2, 3, 'Easy', '2018-12-13', 0),
(16, 1, 1, 3, 'Easy', '2018-12-13', 0),
(17, 1, 3, 3, 'Easy', '2018-12-13', 0),
(18, 1, 12, 3, 'Easy', '2018-12-13', 0),
(19, 1, 0, 4, 'Average', '2018-12-14', 0),
(20, 1, 1, 4, 'Average', '2018-12-21', 0),
(21, 1, 5, 4, 'Average', '2018-12-21', 100),
(22, 1, 0, 4, '', '2018-12-21', 0),
(23, 1, 3, 4, 'Average', '2018-12-21', 0),
(24, 1, 3, 4, 'Average', '2018-12-21', 100),
(25, 1, 0, 4, '', '2018-12-22', 0),
(26, 1, 0, 1, 'Easy', '2018-12-22', 0),
(27, 1, 0, 1, 'Easy', '2018-12-22', 0),
(28, 1, 4, 1, 'Easy', '2018-12-22', 50),
(29, 1, 1, 1, 'Average', '2018-12-28', 0),
(30, 1, 0, 1, '', '2018-12-28', 0),
(31, 1, 9, 1, 'Easy', '2018-12-28', 200),
(32, 1, 0, 1, '', '2018-12-28', 0),
(33, 3, 4, 4, 'Easy', '2018-12-29', 100),
(34, 3, 1, 4, '', '2018-12-29', 0),
(35, 3, 0, 1, 'Easy', '2018-12-29', 0),
(36, 3, 0, 1, 'Easy', '2018-12-29', 0),
(37, 3, 0, 1, 'Easy', '2018-12-29', 0),
(38, 3, 1, 1, 'Easy', '2018-12-29', 0),
(39, 3, 6, 4, 'Easy', '2018-12-29', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `solo_player_game_history_view`
-- (See below for the actual view)
--
CREATE TABLE `solo_player_game_history_view` (
`soloPlayerGameHistoryId` int(6)
,`playerId` int(6)
,`score` int(6)
,`categoryId` int(6)
,`difficulty` varchar(60)
,`dateAndtime` date
,`coins` int(6)
,`username` varchar(60)
,`password` varchar(60)
);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `testId` int(6) NOT NULL,
  `test` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_table`
--

INSERT INTO `test_table` (`testId`, `test`) VALUES
(4, 'rex'),
(5, 'rex'),
(6, 'rex'),
(7, 'rex'),
(8, 'rex'),
(9, '8'),
(10, '9'),
(11, '10'),
(12, '21'),
(13, '22');

-- --------------------------------------------------------

--
-- Structure for view `solo_player_game_history_view`
--
DROP TABLE IF EXISTS `solo_player_game_history_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id8368605_arazga`@`%` SQL SECURITY DEFINER VIEW `solo_player_game_history_view`  AS  select `solo_player_game_history_table`.`soloPlayerGameHistoryId` AS `soloPlayerGameHistoryId`,`solo_player_game_history_table`.`playerId` AS `playerId`,`solo_player_game_history_table`.`score` AS `score`,`solo_player_game_history_table`.`categoryId` AS `categoryId`,`solo_player_game_history_table`.`difficulty` AS `difficulty`,`solo_player_game_history_table`.`dateAndtime` AS `dateAndtime`,`solo_player_game_history_table`.`coins` AS `coins`,`player_table`.`username` AS `username`,`player_table`.`password` AS `password` from (`solo_player_game_history_table` join `player_table` on((`solo_player_game_history_table`.`playerId` = `player_table`.`playerId`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `average_question_table`
--
ALTER TABLE `average_question_table`
  ADD PRIMARY KEY (`averageQuestionId`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `difficult_question_table`
--
ALTER TABLE `difficult_question_table`
  ADD PRIMARY KEY (`difficultQuestionId`);

--
-- Indexes for table `easy_question_table`
--
ALTER TABLE `easy_question_table`
  ADD PRIMARY KEY (`easyQuestionId`),
  ADD KEY `FK_easy_question_table` (`categoryId`);

--
-- Indexes for table `player_table`
--
ALTER TABLE `player_table`
  ADD PRIMARY KEY (`playerId`);

--
-- Indexes for table `setting_table`
--
ALTER TABLE `setting_table`
  ADD PRIMARY KEY (`settingId`),
  ADD KEY `FK_setting_table` (`playerId`);

--
-- Indexes for table `solo_player_game_history_table`
--
ALTER TABLE `solo_player_game_history_table`
  ADD PRIMARY KEY (`soloPlayerGameHistoryId`),
  ADD KEY `FK_solo_player_game_history_table` (`playerId`),
  ADD KEY `FK_solo_player_game_history_table1` (`categoryId`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`testId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `adminId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `average_question_table`
--
ALTER TABLE `average_question_table`
  MODIFY `averageQuestionId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `categoryId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `difficult_question_table`
--
ALTER TABLE `difficult_question_table`
  MODIFY `difficultQuestionId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `easy_question_table`
--
ALTER TABLE `easy_question_table`
  MODIFY `easyQuestionId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `player_table`
--
ALTER TABLE `player_table`
  MODIFY `playerId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting_table`
--
ALTER TABLE `setting_table`
  MODIFY `settingId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `solo_player_game_history_table`
--
ALTER TABLE `solo_player_game_history_table`
  MODIFY `soloPlayerGameHistoryId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `testId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `easy_question_table`
--
ALTER TABLE `easy_question_table`
  ADD CONSTRAINT `FK_easy_question_table` FOREIGN KEY (`categoryId`) REFERENCES `category_table` (`categoryId`);

--
-- Constraints for table `setting_table`
--
ALTER TABLE `setting_table`
  ADD CONSTRAINT `FK_setting_table` FOREIGN KEY (`playerId`) REFERENCES `player_table` (`playerId`);

--
-- Constraints for table `solo_player_game_history_table`
--
ALTER TABLE `solo_player_game_history_table`
  ADD CONSTRAINT `FK_solo_player_game_history_table` FOREIGN KEY (`playerId`) REFERENCES `player_table` (`playerId`),
  ADD CONSTRAINT `FK_solo_player_game_history_table1` FOREIGN KEY (`categoryId`) REFERENCES `category_table` (`categoryId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
