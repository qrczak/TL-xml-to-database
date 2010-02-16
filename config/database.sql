-- **********************************************************
-- *                                                        *
-- * IMPORTANT NOTE                                         *
-- *                                                        *
-- * Do not import this file manually but use the TYPOlight *
-- * install tool to create and maintain database tables!   *
-- *                                                        *
-- **********************************************************

-- *	priceList - prefix: pl
-- *	trip - prefix: tr
-- *	Hotele - prefix: h
-- *	Price - prefix: p
-- *	flight - prefix: f
-- *	departure (dla ofert samolotowych) - prefix: fdep
-- *	destination (dla ofert samolotowych) - prefix: fdes
-- *	bus - prefix: b
-- *	departure (dla ofert autobusowych) - prefix: bdep
-- *	destination (dla ofert autobusowych) - prefix: bdes
-- --------------------------------------------------------

-- 
-- Table `tl_xmltodb`
-- 

CREATE TABLE `tl_xmltodb` (
	`id` int(10) unsigned NOT NULL auto_increment,
	`tstamp` int(10) unsigned NOT NULL default '0',
	`plTourOperator` varchar(64) NOT NULL default '',
	`plPriceType` varchar(64) NOT NULL default '',
	`trDate` - czy datê bêdziemy konwertowaæ do unix timestamp?
	`trPeriod` varchar(64) NOT NULL default '',
	`trCatalog` varchar(64) NOT NULL default '',
	`trId` varchar(64) NOT NULL default '',
	`hCode` varchar(64) NOT NULL default '',
	`hDestCode` varchar(64) NOT NULL default '',
	`hCity` varchar(64) NOT NULL default '',
	`hRegion` varchar(64) NOT NULL default '',
	`hCountry` varchar(64) NOT NULL default '',
	`hName` varchar(64) NOT NULL default '',
	`hCategory` varchar(64) NOT NULL default '',
	`hRoom` varchar(64) NOT NULL default '',
	`hRoomDescription` varchar(64) NOT NULL default '',
	`hBookBeds` varchar(64) NOT NULL default '',
	`hMaintenance` varchar(64) NOT NULL default '',
	`hMaintenceDescription` varchar(64) NOT NULL default '',
	`hMinAdults` smallint(5) unsigned NOT NULL default '0',
	`hMaxAdults` smallint(5) unsigned NOT NULL default '0',
	`hMinPersons` smallint(5) unsigned NOT NULL default '0',
	`hMaxPersons` smallint(5) unsigned NOT NULL default '0',
	`hDefPersons` smallint(5) unsigned NOT NULL default '0',
	`hHMCode` varchar(64) NOT NULL default '',
	`pAdult` varchar(64) NOT NULL default '',
	`pCurrency` varchar(64) NOT NULL default '',
	`pChild` varchar(64) NOT NULL default '',
	`pAgeFrom` smallint(5) unsigned NOT NULL default '0',
	`pAgeTo` smallint(5) unsigned NOT NULL default '0',
	`fAirlineCode` varchar(64) NOT NULL default '',
	`fAirlineDesc` varchar(64) NOT NULL default '',
	`fFlightNr` varchar(64) NOT NULL default '',
	`fFMCode` varchar(64) NOT NULL default '',
	`fdepCode` varchar(64) NOT NULL default '',
	`fdepDescription` varchar(64) NOT NULL default '',
	`fdepFCode` varchar(64) NOT NULL default '',
	`fdepDepDate` int(10) unsigned NOT NULL default '0',
	`fdepDepTime` int(10) unsigned NOT NULL default '0',
	`fdepArrDate` int(10) unsigned NOT NULL default '0',
	`fdepArrTime` int(10) unsigned NOT NULL default '0',
	`fdepRetCode` varchar(64) NOT NULL default '',
	`fdesCode` varchar(64) NOT NULL default '',
	`fdesDescription` varchar(64) NOT NULL default '',
	`fdesDepDate` int(10) unsigned NOT NULL default '0',
	`fdesDepTime` int(10) unsigned NOT NULL default '0',
	`fdesArrDate` int(10) unsigned NOT NULL default '0',
	`fdesArrTime` int(10) unsigned NOT NULL default '0',
	`fdesRetCode` varchar(64) NOT NULL default '',
	`bDestination` varchar(64) NOT NULL default '',
	`bDestinationDesc` varchar(64) NOT NULL default '',
	`bTripCode` varchar(64) NOT NULL default '',
	`bBMCode` varchar(64) NOT NULL default '',
	`bdepCity` varchar(64) NOT NULL default '',
	`bdepCityDesc` varchar(64) NOT NULL default '',
	`bdepStop` varchar(64) NOT NULL default '',
	`bdepStopDesc` varchar(64) NOT NULL default '',
	`bdepDepDate` int(10) unsigned NOT NULL default '0',
	`bdepDepTime` int(10) unsigned NOT NULL default '0',
	`bdepArrDate` int(10) unsigned NOT NULL default '0',
	`bdepArrTime` int(10) unsigned NOT NULL default '0',
	`bdepBaseBusStop` varchar(64) NOT NULL default '',
	`bdesCity` varchar(64) NOT NULL default '',
	`bdesCityDesc` varchar(64) NOT NULL default '',
	`bdesStop` varchar(64) NOT NULL default '',
	`bdesStopDesc` varchar(64) NOT NULL default '',
	`bdesDepDate` int(10) unsigned NOT NULL default '0',
	`bdesDepTime` int(10) unsigned NOT NULL default '0',
	`bdesArrDate` int(10) unsigned NOT NULL default '0',
	`bdesArrTime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;