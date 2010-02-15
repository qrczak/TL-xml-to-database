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
	`plTourOperator`
	`plPriceType`
	
	//trip
	`trDate`
	`trPeriod`
	`trCatalog`
	`trTemplate`
	`trId`



	//Hotele
	`hCode`
	`hDestCode`
	`hCity`
	`hRegion`
	`hCountry`
	`hName`
	`hCategory`
	`hRoom`
	`hRoomDescription`
	`hBookBeds`
	`hMaintenance`
	`hMaintenceDescription`
	`hMinAdults`
	`hMaxAdults`
	`hMinPersons`
	`hMaxPersons`
	`hDefPersons`
	`hHMCode`
	`hBasePrice`

	//Price
	`pAdult`
	`pCurrency`
	`pChild`
	`pAgeFrom`
	`pAgeTo`

	//flight
	`fAirlineCode`
	`fAirlineDesc`
	`fFlightNr`
	`fFMCode`

	//departure (dla ofert samolotowych)
	`fdepCode`
	`fdepDescription`
	`fdepFCode`
	`fdepDepDate`
	`fdepDepTime`
	`fdepArrDate`
	`fdepArrTime`
	`fdepRetCode`

	//destination (dla ofert samolotowych)
	`fdesCode`
	`fdesDescription`
	`fdesDepDate`
	`fdesDepTime`
	`fdesArrDate`
	`fdesArrTime`
	`fdesRetCode`

	//bus
	`bDestination`
	`bDestinationDesc`
	`bTripCode`
	`bBMCode`

	//departure (dla ofert autobusowych)
	`bdepCity`
	`bdepCityDesc`
	`bdepStop`
	`bdepStopDesc`
	`bdepDepDate`
	`bdepDepTime`
	`bdepArrDate`
	`bdepArrTime`
	`bdepBaseBusStop`

	//destination (dla ofert autobusowych)
	`bdesCity`
	`bdesCityDesc`
	`bdesStop`
	`bdesStopDesc`
	`bdesDepDate`
	`bdesDepTime`
	`bdesArrDate`
	`bdesArrTime`
  PRIMARY KEY  (`id`),
) ENGINE=MyISAM DEFAULT CHARSET=utf8;