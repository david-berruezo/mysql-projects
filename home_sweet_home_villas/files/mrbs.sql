
use mrbs;
select * from mrbs_area;
/*
select * from mrbs_entry;
select * from mrbs_participants;
select * from mrbs_repeat;
select * from mrbs_room;
select * from mrbs_sessions;
select * from mrbs_users;
select * from mrbs_variables;
select * from mrbs_zoneinfo;
*/

/*
USE pisosenm_inmobiliaria_dos;

CREATE TABLE mrbs_area
(
  id                          int NOT NULL auto_increment,
  disabled                    tinyint(1) DEFAULT 0 NOT NULL,
  area_name                   varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  sort_key                    varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  timezone                    varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  area_admin_email            text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  resolution                  int,
  default_duration            int,
  default_duration_all_day    tinyint(1) DEFAULT 0 NOT NULL,
  morningstarts               int,
  morningstarts_minutes       int,
  eveningends                 int,
  eveningends_minutes         int,
  private_enabled             tinyint(1),
  private_default             tinyint(1),
  private_mandatory           tinyint(1),
  private_override            varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  min_create_ahead_enabled    tinyint(1),
  min_create_ahead_secs       int,
  max_create_ahead_enabled    tinyint(1),
  max_create_ahead_secs       int,
  min_delete_ahead_enabled    tinyint(1),
  min_delete_ahead_secs       int,
  max_delete_ahead_enabled    tinyint(1),
  max_delete_ahead_secs       int,
  max_per_day_enabled         tinyint(1) DEFAULT 0 NOT NULL,
  max_per_day                 int DEFAULT 0 NOT NULL,
  max_per_week_enabled        tinyint(1) DEFAULT 0 NOT NULL,
  max_per_week                int DEFAULT 0 NOT NULL,
  max_per_month_enabled       tinyint(1) DEFAULT 0 NOT NULL,
  max_per_month               int DEFAULT 0 NOT NULL,
  max_per_year_enabled        tinyint(1) DEFAULT 0 NOT NULL,
  max_per_year                int DEFAULT 0 NOT NULL,
  max_per_future_enabled      tinyint(1) DEFAULT 0 NOT NULL,
  max_per_future              int DEFAULT 0 NOT NULL,
  max_secs_per_day_enabled    tinyint(1) DEFAULT 0 NOT NULL,
  max_secs_per_day            int DEFAULT 0 NOT NULL,
  max_secs_per_week_enabled   tinyint(1) DEFAULT 0 NOT NULL,
  max_secs_per_week           int DEFAULT 0 NOT NULL,
  max_secs_per_month_enabled  tinyint(1) DEFAULT 0 NOT NULL,
  max_secs_per_month          int DEFAULT 0 NOT NULL,
  max_secs_per_year_enabled   tinyint(1) DEFAULT 0 NOT NULL,
  max_secs_per_year           int DEFAULT 0 NOT NULL,
  max_secs_per_future_enabled tinyint(1) DEFAULT 0 NOT NULL,
  max_secs_per_future         int DEFAULT 0 NOT NULL,
  max_duration_enabled        tinyint(1) DEFAULT 0 NOT NULL,
  max_duration_secs           int DEFAULT 0 NOT NULL,
  max_duration_periods        int DEFAULT 0 NOT NULL,
  custom_html                 text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  approval_enabled            tinyint(1),
  reminders_enabled           tinyint(1),
  enable_periods              tinyint(1),
  periods                     text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  confirmation_enabled        tinyint(1),
  confirmed_default           tinyint(1),
  times_along_top             tinyint(1) NOT NULL DEFAULT 0,
  default_type                char DEFAULT 'E' NOT NULL,

  PRIMARY KEY (id),
  UNIQUE KEY uq_area_name (area_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_room
(
  id               int NOT NULL auto_increment,
  disabled         tinyint(1) DEFAULT 0 NOT NULL,
  area_id          int DEFAULT '0' NOT NULL,
  room_name        varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  sort_key         varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  description      varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  capacity         int DEFAULT '0' NOT NULL,
  room_admin_email text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  invalid_types    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON encoded',
  custom_html      text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,

  PRIMARY KEY (id),
  FOREIGN KEY (area_id)
    REFERENCES mrbs_area(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  UNIQUE KEY uq_room_name (area_id, room_name),
  KEY idxSortKey (sort_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_repeat
(
  id             int NOT NULL auto_increment,
  start_time     int DEFAULT '0' NOT NULL COMMENT 'Unix timestamp',
  end_time       int DEFAULT '0' NOT NULL COMMENT 'Unix timestamp',
  rep_type       int DEFAULT '0' NOT NULL,
  end_date       int DEFAULT '0' NOT NULL COMMENT 'Unix timestamp',
  rep_opt        varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  room_id        int DEFAULT '1' NOT NULL,
  timestamp      timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  create_by      varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  modified_by    varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  name           varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  type           char DEFAULT 'E' NOT NULL,
  description    text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  rep_interval   smallint DEFAULT 1 NOT NULL,
  month_absolute smallint DEFAULT NULL,
  month_relative varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  status         tinyint unsigned NOT NULL DEFAULT 0,
  reminded       int,
  info_time      int,
  info_user      varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  info_text      text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  ical_uid       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  ical_sequence  smallint DEFAULT 0 NOT NULL,

  PRIMARY KEY (id),
  FOREIGN KEY (room_id)
    REFERENCES mrbs_room(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_entry
(
  id                          int NOT NULL auto_increment,
  start_time                  int DEFAULT '0' NOT NULL COMMENT 'Unix timestamp',
  end_time                    int DEFAULT '0' NOT NULL COMMENT 'Unix timestamp',
  entry_type                  int DEFAULT '0' NOT NULL,
  repeat_id                   int DEFAULT NULL,
  room_id                     int DEFAULT '1' NOT NULL,
  timestamp                   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  create_by                   varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  modified_by                 varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  name                        varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  type                        char DEFAULT 'E' NOT NULL,
  description                 text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  status                      tinyint unsigned NOT NULL DEFAULT 0,
  reminded                    int,
  info_time                   int,
  info_user                   varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  info_text                   text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  ical_uid                    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  ical_sequence               smallint DEFAULT 0 NOT NULL,
  ical_recur_id               varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  allow_registration          tinyint(1) DEFAULT 0 NOT NULL,
  registrant_limit            int DEFAULT 0 NOT NULL,
  registrant_limit_enabled    tinyint(1) DEFAULT 1 NOT NULL,
  registration_opens          int DEFAULT 1209600 NOT NULL COMMENT 'Seconds before the start time', -- 2 weeks
  registration_opens_enabled  tinyint(1) DEFAULT 0 NOT NULL,
  registration_closes         int DEFAULT 0 NOT NULL COMMENT 'Seconds before the start_time',
  registration_closes_enabled tinyint(1) DEFAULT 0 NOT NULL,

  PRIMARY KEY (id),
  FOREIGN KEY (room_id)
    REFERENCES mrbs_room(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  FOREIGN KEY (repeat_id)
    REFERENCES mrbs_repeat(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  KEY idxStartTime (start_time),
  KEY idxEndTime   (end_time),
  KEY idxRoomStartEnd (room_id, start_time, end_time)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_participants
(
  id          int NOT NULL auto_increment,
  entry_id    int NOT NULL,
  username    varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  create_by   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  registered  int,

  PRIMARY KEY (id),
  UNIQUE KEY uq_entryid_username (entry_id, username),
  FOREIGN KEY (entry_id)
    REFERENCES mrbs_entry(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_variables
(
  id               int NOT NULL auto_increment,
  variable_name    varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  variable_content text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,

  PRIMARY KEY (id),
  UNIQUE KEY uq_variable_name (variable_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_zoneinfo
(
  id                 int NOT NULL auto_increment,
  timezone           varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' NOT NULL,
  outlook_compatible tinyint unsigned NOT NULL DEFAULT 0,
  vtimezone          text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  last_updated       int NOT NULL DEFAULT 0,

  
  PRIMARY KEY (id),
  UNIQUE KEY uq_timezone (timezone, outlook_compatible)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_sessions
(
  id      varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  access  int unsigned DEFAULT NULL,
  data    text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id),
  KEY idxAccess (access)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE mrbs_users
(
  id                int NOT NULL auto_increment,
  level             smallint DEFAULT '0' NOT NULL,  
  name              varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  display_name      varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  password_hash     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  email             varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  timestamp         timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  last_login        int DEFAULT '0' NOT NULL,
  reset_key_hash    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  reset_key_expiry  int DEFAULT 0 NOT NULL,

  PRIMARY KEY (id),
  UNIQUE KEY uq_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO mrbs_variables (variable_name, variable_content)
  VALUES ( 'db_version', '81');
INSERT INTO mrbs_variables (variable_name, variable_content)
  VALUES ( 'local_db_version', '1');
*/