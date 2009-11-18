CREATE TABLE printer
(
	id VARCHAR(50) NOT NULL COMMENT '<make>-<model> is the ID format. Spaces are replaced with _',
	make VARCHAR(40) NOT NULL,
	model VARCHAR(40) NOT NULL,
	pcmodel VARCHAR(6),
	functionality ENUM('A', 'B', 'D', 'F') NOT NULL,
	mechanism ENUM('laser', 'led', 'dotmatrix', 'inkjet', 'impact', 'sublimation', 'transfer') NOT NULL,
	color BOOL NOT NULL DEFAULT FALSE,
	res_x SMALLINT UNSIGNED NOT NULL DEFAULT 0,
	res_y SMALLINT UNSIGNED NOT NULL DEFAULT 0,
	url TINYTEXT,
	unverified BOOL NOT NULL DEFAULT 0,
	postscript BOOL NOT NULL,
	postscript_level VARCHAR(8),
	pdf BOOL NOT NULL,
	pdf_level VARCHAR(8),
	pcl BOOL NOT NULL,
	pcl_level VARCHAR(8),
	escp BOOL NOT NULL,
	escp_level VARCHAR(8),
	escp2 BOOL NOT NULL,
	escp2_level VARCHAR(8),
	hpgl2 BOOL NOT NULL,
	hpgl2_level VARCHAR(8),
	tiff BOOL NOT NULL,
	tiff_level VARCHAR(8),
	lips BOOL NOT NULL,
	lips_level VARCHAR(8),
	proprietary BOOL NOT NULL DEFAULT FALSE,
	pjl BOOL NOT NULL DEFAULT FALSE,
	text VARCHAR(10),
	general_ieee1284 TEXT,
	general_manufacturer VARCHAR(40),
	general_model VARCHAR(40),
	general_commandset VARCHAR(30),
	general_description VARCHAR(1024),
	parallel_ieee1284 TEXT,
	parallel_manufacturer VARCHAR(40),
	parallel_model VARCHAR(40),
	parallel_commandset VARCHAR(30),
	parallel_description VARCHAR(1024),
	usb_ieee1284 TEXT,
	usb_manufacturer VARCHAR(40),
	usb_model VARCHAR(40),
	usb_commandset VARCHAR(30),
	usb_description VARCHAR(1024),
	snmp_ieee1284 TEXT,
	snmp_manufacturer VARCHAR(40),
	snmp_model VARCHAR(40),
	snmp_commandset VARCHAR(30),
	snmp_description VARCHAR(1024),
	default_driver VARCHAR(50),
	ppdentry TEXT NULL,
	contrib_url TINYTEXT,
	comments TEXT NULL,
	CONSTRAINT pkey PRIMARY KEY(id)
) ENGINE=InnoDB;
