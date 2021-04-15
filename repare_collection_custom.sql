DROP TABLE IF EXISTS collection_custom;
DROP TABLE IF EXISTS collection_custom_lists;
DROP TABLE IF EXISTS collection_custom_values;


CREATE TABLE collection_custom (
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

CREATE TABLE collection_custom_lists (
  collection_custom_champ int(10) unsigned NOT NULL DEFAULT '0',
  collection_custom_list_value varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  collection_custom_list_lib varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  ordre int(11) DEFAULT NULL,
  KEY editorial_custom_champ (collection_custom_champ),
  KEY editorial_champ_list_value (collection_custom_champ,collection_custom_list_value)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE collection_custom_values (
  collection_custom_champ int(10) unsigned NOT NULL DEFAULT '0',
  collection_custom_origine int(10) unsigned NOT NULL DEFAULT '0',
  collection_custom_small_text varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  collection_custom_text text COLLATE utf8_unicode_ci,
  collection_custom_integer int(11) DEFAULT NULL,
  collection_custom_date date DEFAULT NULL,
  collection_custom_float float DEFAULT NULL,
  KEY editorial_custom_champ (collection_custom_champ),
  KEY editorial_custom_origine (collection_custom_origine)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;