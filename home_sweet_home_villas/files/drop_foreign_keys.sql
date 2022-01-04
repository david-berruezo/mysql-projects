use pisosenm_inmobiliaria_dos;

# show tables
# show create table mrbs_repeat;
# show create table mrbs_room;
# show create table mrbs_entry;

# delete all constrints mrbs room
# ALTER TABLE `mrbs_room` DROP FOREIGN KEY `mrbs_room_ibfk_1`; 	
# alter table `mrbs_room` drop key `uq_room_name`;
# alter table `mrbs_room` drop key `idxSortKey`;

# delete all constrints mrbs repeat
# ALTER TABLE `mrbs_repeat` DROP FOREIGN KEY `mrbs_repeat_ibfk_1`; 


# delete all constrints mrbs entry
# ALTER TABLE `mrbs_entry` DROP FOREIGN KEY mrbs_entry_ibfk_1; 
# ALTER TABLE `mrbs_entry` DROP FOREIGN KEY mrbs_entry_ibfk_2; 

# delete all tables
# drop table `mrbs_room`;
# drop table `mrbs_repeat`;


INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_secs_per_day_enabled`, `max_secs_per_day`, `max_secs_per_week_enabled`, `max_secs_per_week`, `max_secs_per_month_enabled`, `max_secs_per_month`, `max_secs_per_year_enabled`, `max_secs_per_year`, `max_secs_per_future_enabled`, `max_secs_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`, `times_along_top`, `default_type`) VALUES
(1, 0, 'home sweet home villas', 'home sweet home villas', 'Europe/Madrid', '', 1800, 3600, 1, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 0, '[\"Period 1\",\"Period 2\"]', 1, 1, 0, 'I');

/*
CREATE TABLE `mrbs_entry` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `start_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
   `end_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
   `entry_type` int(11) NOT NULL DEFAULT '0',
   `repeat_id` int(11) DEFAULT NULL,
   `room_id` int(11) NOT NULL DEFAULT '1',
   `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `type` char(1) NOT NULL DEFAULT 'E',
   `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
   `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `reminded` int(11) DEFAULT NULL,
   `info_time` int(11) DEFAULT NULL,
   `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
   `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
   `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
   `ical_recur_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
   `allow_registration` tinyint(1) NOT NULL DEFAULT '0',
   `registrant_limit` int(11) NOT NULL DEFAULT '0',
   `registrant_limit_enabled` tinyint(1) NOT NULL DEFAULT '1',
   `registration_opens` int(11) NOT NULL DEFAULT '1209600' COMMENT 'Seconds before the start time',
   `registration_opens_enabled` tinyint(1) NOT NULL DEFAULT '0',
   `registration_closes` int(11) NOT NULL DEFAULT '0' COMMENT 'Seconds before the start_time',
   `registration_closes_enabled` tinyint(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`id`),
   KEY `repeat_id` (`repeat_id`),
   KEY `idxStartTime` (`start_time`),
   KEY `idxEndTime` (`end_time`),
   KEY `idxRoomStartEnd` (`room_id`,`start_time`,`end_time`),
   CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE,
   CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4


CREATE TABLE `mrbs_repeat` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`start_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
`end_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
`rep_type` int(11) NOT NULL DEFAULT '0',
`end_date` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
`rep_opt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`room_id` int(11) NOT NULL DEFAULT '1',
`timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`type` char(1) NOT NULL DEFAULT 'E',
`description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
`rep_interval` smallint(6) NOT NULL DEFAULT '1',
`month_absolute` smallint(6) DEFAULT NULL,
`month_relative` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`status` tinyint(3) unsigned NOT NULL DEFAULT '0',
`reminded` int(11) DEFAULT NULL,
`info_time` int(11) DEFAULT NULL,
`info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
`ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`ical_sequence` smallint(6) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`),
KEY `room_id` (`room_id`),
CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `mrbs_room` ( 
`id` int(11) NOT NULL AUTO_INCREMENT,
`disabled` tinyint(1) NOT NULL DEFAULT '0',  
`area_id` int(11) NOT NULL DEFAULT '0',
`room_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT "",
`sort_key` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`description` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`capacity` int(11) NOT NULL DEFAULT '0',
`room_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
`invalid_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT "",
`custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
PRIMARY KEY (`id`),
UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
KEY `idxSortKey` (`sort_key`),
CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


*/