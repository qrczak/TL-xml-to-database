-- **********************************************************
-- *                                                        *
-- * IMPORTANT NOTE                                         *
-- *                                                        *
-- * Do not import this file manually but use the TYPOlight *
-- * install tool to create and maintain database tables!   *
-- *                                                        *
-- **********************************************************


-- --------------------------------------------------------

-- 
-- Table `tl_xmltodb`
-- 

CREATE TABLE `tl_xmltodb` (
	`id` int(10) unsigned NOT NULL auto_increment,
	`tstamp` int(10) unsigned NOT NULL default '0',
	//priceList
	`plTourOperator` varchar(64) NOT NULL default '',
	`plPriceType` varchar(64) NOT NULL default '',
	
	//trip
	`trDate` - czy datê bêdziemy konwertowaæ do unix timestamp?
	`trPeriod` varchar(64) NOT NULL default '',
	`trCatalog` varchar(64) NOT NULL default '',
	`trId` varchar(64) NOT NULL default '',



	//Hotele
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

	//Price
	`pAdult` varchar(64) NOT NULL default '',
	`pCurrency` varchar(64) NOT NULL default '',
	`pChild` varchar(64) NOT NULL default '',
	`pAgeFrom` smallint(5) unsigned NOT NULL default '0',
	`pAgeTo` smallint(5) unsigned NOT NULL default '0',

	//flight
	`fAirlineCode` varchar(64) NOT NULL default '',
	`fAirlineDesc` varchar(64) NOT NULL default '',
	`fFlightNr` varchar(64) NOT NULL default '',
	`fFMCode` varchar(64) NOT NULL default '',

	//departure (dla ofert samolotowych)
	`fdepCode` varchar(64) NOT NULL default '',
	`fdepDescription` varchar(64) NOT NULL default '',
	`fdepFCode` varchar(64) NOT NULL default '',
	`fdepDepDate`
	`fdepDepTime`
	`fdepArrDate`
	`fdepArrTime`
	`fdepRetCode` varchar(64) NOT NULL default '',

	//destination (dla ofert samolotowych)
	`fdesCode` varchar(64) NOT NULL default '',
	`fdesDescription` varchar(64) NOT NULL default '',
	`fdesDepDate`
	`fdesDepTime`
	`fdesArrDate`
	`fdesArrTime`
	`fdesRetCode` varchar(64) NOT NULL default '',

	//bus
	`bDestination` varchar(64) NOT NULL default '',
	`bDestinationDesc` varchar(64) NOT NULL default '',
	`bTripCode` varchar(64) NOT NULL default '',
	`bBMCode` varchar(64) NOT NULL default '',

	//departure (dla ofert autobusowych)
	`bdepCity` varchar(64) NOT NULL default '',
	`bdepCityDesc` varchar(64) NOT NULL default '',
	`bdepStop` varchar(64) NOT NULL default '',
	`bdepStopDesc` varchar(64) NOT NULL default '',
	`bdepDepDate`
	`bdepDepTime`
	`bdepArrDate`
	`bdepArrTime`
	`bdepBaseBusStop` varchar(64) NOT NULL default '',

	//destination (dla ofert autobusowych)
	`bdesCity` varchar(64) NOT NULL default '',
	`bdesCityDesc` varchar(64) NOT NULL default '',
	`bdesStop` varchar(64) NOT NULL default '',
	`bdesStopDesc` varchar(64) NOT NULL default '',
	`bdesDepDate`
	`bdesDepTime`
	`bdesArrDate`
	`bdesArrTime`
  PRIMARY KEY  (`id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;