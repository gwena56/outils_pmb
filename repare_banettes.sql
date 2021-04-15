DROP TABLE IF EXISTS bannette_facettes;
DROP TABLE IF EXISTS bannettes_descriptors;

CREATE TABLE bannette_facettes (
  num_ban_facette int(10) unsigned NOT NULL DEFAULT '0',
  ban_facette_critere int(5) NOT NULL DEFAULT '0',
  ban_facette_ss_critere int(5) NOT NULL DEFAULT '0',
  ban_facette_order int(1) NOT NULL DEFAULT '0',
  KEY bannette_facettes_key (num_ban_facette,ban_facette_critere,ban_facette_ss_critere)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE bannettes_descriptors (
  num_bannette int(11) NOT NULL DEFAULT '0',
  num_noeud int(11) NOT NULL DEFAULT '0',
  bannette_descriptor_order int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (num_bannette,num_noeud)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;