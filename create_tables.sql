CREATE TABLE `paths` (
  `me` int(11) NOT NULL,
  `up` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf16 NOT NULL,
  `namespace` varchar(16) CHARACTER SET utf16 NOT NULL,
  PRIMARY KEY (`me`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

CREATE TABLE `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(128) CHARACTER SET utf16 DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf16 DEFAULT NULL,
  `album` varchar(128) CHARACTER SET utf16 DEFAULT NULL,
  `genre` varchar(64) CHARACTER SET utf16 DEFAULT NULL,
  `source` varchar(32) CHARACTER SET utf16 DEFAULT NULL,
  `duration` time DEFAULT '00:00:00',
  `publisher` varchar(64) CHARACTER SET utf16 DEFAULT NULL,
  `composer` varchar(64) CHARACTER SET utf16 DEFAULT NULL,
  `track` varchar(16) CHARACTER SET utf16 DEFAULT NULL,
  `copyright` varchar(64) CHARACTER SET utf16 DEFAULT NULL,
  `disc` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `parent` int(11) NOT NULL,
  `fname` varchar(128) CHARACTER SET utf16 NOT NULL,
  `namespace` varchar(16) CHARACTER SET utf16 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artist` (`artist`),
  KEY `title` (`title`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf16;

CREATE TABLE `devices` (
  `alsa_name` varchar(64) NOT NULL,
  `friendly_name` varchar(64) NOT NULL,
  PRIMARY KEY (`alsa_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
