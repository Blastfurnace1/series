CREATE TABLE `series` (
  `id` bigint(23) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The Unique Id for this Series',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT 'The Name for the Series',
  `log_file` varchar(200) NOT NULL DEFAULT '' COMMENT 'The file that holds the individual episodes for the Series',
  `run_dates` varchar(45) NOT NULL DEFAULT '' COMMENT 'The dates the Series was aired',
  `genre` varchar(120) NOT NULL DEFAULT '' COMMENT 'The genre for this Series',
  `episode_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The Number of episodes known for this Series',
  `country` varchar(45) NOT NULL DEFAULT '' COMMENT 'The country this series originated from',
  `broadcast_over` varchar(45) NOT NULL DEFAULT '' COMMENT 'The network or syndication for the Series',
  `last_update` varchar(45) NOT NULL DEFAULT '' COMMENT 'The last time the log for the series was updated',
  `program_length` varchar(45) NOT NULL DEFAULT '00:30:00' COMMENT 'The Usual length of this series programs',
  `indexed` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Have the files been matched to episodes of this series',
  `search_title` varchar(150) NOT NULL DEFAULT '' COMMENT 'Primary search title',
  `goldin_page_ref` varchar(150) NOT NULL DEFAULT '' COMMENT 'GoldIndex search Program',
  `salmonson_page_ref` varchar(150) NOT NULL DEFAULT '' COMMENT 'Samonson search Program',
  `jerry_page_ref` varchar(150) NOT NULL DEFAULT '' COMMENT 'Jerry search Program',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2698 DEFAULT CHARSET=latin1 COMMENT='Information on an OTR series';

CREATE TABLE `series_summary` (
  `id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique Id for this series summary',
  `series_id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'The Unique Id for the associated series of this summary',
  `summary` text CHARACTER SET latin1 NOT NULL COMMENT 'An overview of the series'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `series_alias` (
  `id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique Id for this series alias',
  `series_id` bigint(23) unsigned NOT NULL DEFAULT '0' COMMENT 'The Unique Id for the associated series of this Alias',
  `alias` varchar(50) CHARACTER SET latin1 NOT NULL COMMENT 'An alias for the series'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
