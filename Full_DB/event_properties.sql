/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `event_properties` (
  `entry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT '5184000' COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT '2592000' COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Client side holiday id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description of the event displayed in console',
  `world_event` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 if normal event, 1 if world event',
  `announce` tinyint(3) unsigned DEFAULT '2' COMMENT '0 dont announce, 1 announce, 2 value from config',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM `event_properties`;
/*!40000 ALTER TABLE `event_properties` DISABLE KEYS */;
INSERT INTO `event_properties` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`, `announce`) VALUES
	(1, '2016-06-21 01:01:00', '2020-12-31 06:00:00', 525600, 20160, 341, 'Midsummer Fire Festival', 0, 2),
	(2, '2016-12-15 07:00:00', '2020-12-31 06:00:00', 525600, 25920, 141, 'Winter Veil', 0, 2),
	(3, '2013-02-03 01:01:00', '2020-12-31 06:00:00', 131040, 8639, 376, 'Darkmoon Faire (Terokkar Forest)', 0, 2),
	(4, '2013-03-03 01:01:00', '2020-12-31 06:00:00', 131040, 8639, 374, 'Darkmoon Faire (Elwynn Forest)', 0, 2),
	(5, '2013-01-06 01:01:00', '2020-12-31 06:00:00', 131040, 8639, 375, 'Darkmoon Faire (Mulgore)', 0, 2),
	(6, '2010-01-01 07:00:00', '2020-12-31 06:00:00', 525600, 120, 0, 'New Year\'s Eve', 0, 2),
	(7, '2013-01-27 01:01:00', '2020-12-31 06:00:00', 525600, 20160, 327, 'Lunar Festival', 0, 2),
	(8, '2013-02-10 01:01:00', '2020-12-31 06:00:00', 525600, 20160, 423, 'Love is in the Air', 0, 2),
	(9, '2016-03-27 01:01:00', '2020-12-31 06:00:00', 524160, 10080, 181, 'Noblegarden', 0, 2),
	(10, '2016-05-02 01:01:00', '2020-12-31 06:00:00', 525600, 10080, 201, 'Children\'s Week ', 0, 2),
	(11, '2016-09-09 01:01:00', '2020-12-31 06:00:00', 525600, 10080, 321, 'Harvest Festival', 0, 2),
	(12, '2016-10-18 02:00:00', '2020-12-31 06:00:00', 525600, 20160, 324, 'Hallow\'s End', 0, 2),
	(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'AQ War Effort', 0, 2),
	(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'Scourge Invasion', 0, 2),
	(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'Elemental Invasions', 0, 2),
	(14, '2012-01-01 01:00:00', '2020-12-31 06:00:00', 10080, 1440, 0, 'Stranglethorn Fishing Extravaganza Announce', 0, 2),
	(16, '2007-08-05 05:00:00', '2020-12-31 06:00:00', 180, 120, 0, 'Gurubashi Arena Booty Run', 0, 2),
	(15, '2012-01-01 15:00:00', '2020-12-31 06:00:00', 10080, 120, 301, 'Stranglethorn Fishing Extravaganza Fishing Pools', 0, 2),
	(18, '2010-05-07 08:00:00', '2020-12-31 06:00:00', 60480, 6240, 283, 'Call to Arms: Alterac Valley!', 0, 2),
	(19, '2010-04-02 08:00:00', '2020-12-31 06:00:00', 60480, 6240, 284, 'Call to Arms: Warsong Gulch!', 0, 2),
	(20, '2010-04-23 08:00:00', '2020-12-31 06:00:00', 60480, 6240, 285, 'Call to Arms: Arathi Basin!', 0, 2),
	(21, '2010-04-30 08:00:00', '2020-12-31 06:00:00', 60480, 6240, 353, 'Call to Arms: Eye of the Storm!', 0, 2),
	(23, '2011-03-03 01:01:00', '2020-12-31 06:00:00', 131040, 4320, 0, 'Darkmoon Faire Building (Elwynn Forest)', 0, 2),
	(24, '2016-09-20 01:01:00', '2020-12-31 06:00:00', 525600, 21600, 372, 'Brewfest', 0, 2),
	(25, '2008-01-02 22:00:00', '2020-12-31 06:00:00', 1440, 720, 0, 'Nights', 0, 2),
	(27, '2008-03-24 06:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Gri\'lek', 0, 2),
	(28, '2008-04-07 07:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Hazza\'rah', 0, 2),
	(29, '2008-04-21 07:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Renataki', 0, 2),
	(30, '2008-05-05 07:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Wushoolay', 0, 2),
	(31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Tournament', 0, 2),
	(32, '2008-05-15 21:00:00', '2020-01-01 08:00:00', 10080, 5, 0, 'L70ETC Concert', 0, 2),
	(52, '2010-12-25 06:00:00', '2020-12-31 06:00:00', 525600, 11700, 0, 'Winter Veil: Gifts', 0, 2),
	(51, '2016-11-01 02:00:00', '2020-12-31 06:00:00', 525600, 2820, 409, 'Day of the Dead', 0, 2),
	(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Wintergrasp Alliance Defence', 5, 2),
	(49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Wintergrasp Horde Defence', 5, 2),
	(53, '2010-04-09 08:00:00', '2020-12-31 10:00:00', 60480, 6240, 400, 'Call to Arms: Strand of the Ancients!', 0, 2),
	(55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Season 3', 0, 2),
	(56, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Season 4', 0, 2),
	(57, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Season 5', 0, 2),
	(58, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Season 6', 0, 2),
	(59, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Season 7', 0, 2),
	(60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Season 8', 0, 2),
	(54, '2010-04-16 08:00:00', '2020-12-31 10:00:00', 60480, 6240, 420, 'Call to Arms: Isle of Conquest!', 0, 2),
	(50, '2016-09-19 01:01:00', '2020-12-31 05:00:00', 525600, 1440, 398, 'Pirates\' Day', 0, 2),
	(61, '2010-09-07 01:00:00', '2010-10-10 01:00:00', 9999999, 47520, 0, 'Zalazane\'s Fall', 0, 2),
	(62, '2012-01-01 15:00:00', '2020-12-31 06:00:00', 10080, 180, 0, 'Stranglethorn Fishing Extravaganza Turn-ins', 0, 2),
	(63, '2012-01-07 14:00:00', '2020-12-31 06:00:00', 10080, 180, 424, 'Kalu\'ak Fishing Derby Turn-ins', 0, 2),
	(64, '2012-01-07 15:00:00', '2020-12-31 06:00:00', 10080, 60, 0, 'Kalu\'ak Fishing Derby Fishing Pools', 0, 2),
	(26, '2016-11-21 02:00:00', '2020-12-31 06:00:00', 525600, 10020, 404, 'Pilgrim\'s Bounty', 0, 2),
	(33, '2011-03-22 00:10:00', '2020-03-22 00:00:00', 30, 5, 0, 'Dalaran: Minigob', 0, 2),
	(65, '2008-01-02 15:55:00', '2020-12-31 06:00:00', 240, 15, 0, 'Perry Gatner', 0, 2),
	(34, '2012-10-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month October', 0, 2),
	(35, '2012-11-01 00:01:00', '2020-12-31 06:00:00', 525600, 43200, 0, 'Brew of the Month November', 0, 2),
	(36, '2012-12-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month December', 0, 2),
	(37, '2012-01-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month January', 0, 2),
	(38, '2012-02-01 00:01:00', '2020-12-31 06:00:00', 525600, 40320, 0, 'Brew of the Month February', 0, 2),
	(39, '2012-03-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month March', 0, 2),
	(40, '2012-04-01 00:01:00', '2020-12-31 06:00:00', 525600, 43200, 0, 'Brew of the Month April', 0, 2),
	(41, '2012-05-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month May', 0, 2),
	(42, '2012-06-01 00:01:00', '2020-12-31 06:00:00', 525600, 43200, 0, 'Brew of the Month June', 0, 2),
	(43, '2012-07-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month July', 0, 2),
	(44, '2012-08-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month August', 0, 2),
	(45, '2012-09-01 00:01:00', '2020-12-31 06:00:00', 525600, 44640, 0, 'Brew of the Month September', 0, 2),
	(67, '2010-01-02 00:40:00', '2020-12-31 06:00:00', 60, 5, 0, 'AT Event Trigger (Tirion Speech)', 0, 2),
	(68, '2010-01-02 00:55:00', '2020-12-31 06:00:00', 60, 5, 0, 'AT Event Trigger (Horde Event)', 0, 2),
	(69, '2010-01-02 00:10:00', '2020-12-31 06:00:00', 60, 5, 0, 'AT Event Trigger (Alliance Event)', 0, 2);
/*!40000 ALTER TABLE `event_properties` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
