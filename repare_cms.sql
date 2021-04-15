DROP TABLE IF EXISTS cms_cache_cadres;
DROP TABLE IF EXISTS cms_modules_extensions_datas;

CREATE TABLE cms_cache_cadres (
  cache_cadre_hash varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  cache_cadre_type_content varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  cache_cadre_create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  cache_cadre_content mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (cache_cadre_hash,cache_cadre_type_content)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE cms_modules_extensions_datas (
  id_extension_datas int(10) NOT NULL AUTO_INCREMENT,
  extension_datas_module varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  extension_datas_type varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  extension_datas_type_element varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  extension_datas_num_element int(10) NOT NULL DEFAULT '0',
  extension_datas_datas blob,
  PRIMARY KEY (id_extension_datas)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;