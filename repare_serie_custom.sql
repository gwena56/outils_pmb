DROP TABLE IF EXISTS serie_custom;
DROP TABLE IF EXISTS serie_custom_lists;
DROP TABLE IF EXISTS serie_custom_values;

CREATE TABLE serie_custom (
  idchamp int(10) unsigned NOT NULL AUTO_INCREMENT,
  num_type int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  titre varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  datatype varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `options` text COLLATE utf8_unicode_ci,
  multiple int(11) NOT NULL DEFAULT '0',
  obligatoire int(11) NOT NULL DEFAULT '0',
  ordre int(11) DEFAULT NULL,
  search int(1) unsigned NOT NULL DEFAULT '0',
  export int(1) unsigned NOT NULL DEFAULT '0',
  exclusion_obligatoire int(1) unsigned NOT NULL DEFAULT '0',
  pond int(11) NOT NULL DEFAULT '100',
  opac_sort int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (idchamp)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE serie_custom_lists (
  serie_custom_champ int(10) unsigned NOT NULL DEFAULT '0',
  serie_custom_list_value varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  serie_custom_list_lib varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  ordre int(11) DEFAULT NULL,
  KEY editorial_custom_champ (serie_custom_champ),
  KEY editorial_champ_list_value (serie_custom_champ,serie_custom_list_value)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE serie_custom_values (
  serie_custom_champ int(10) unsigned NOT NULL DEFAULT '0',
  serie_custom_origine int(10) unsigned NOT NULL DEFAULT '0',
  serie_custom_small_text varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  serie_custom_text text COLLATE utf8_unicode_ci,
  serie_custom_integer int(11) DEFAULT NULL,
  serie_custom_date date DEFAULT NULL,
  serie_custom_float float DEFAULT NULL,
  KEY editorial_custom_champ (serie_custom_champ),
  KEY editorial_custom_origine (serie_custom_origine)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;