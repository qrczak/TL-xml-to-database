<?php if (!defined('TL_ROOT')) die('You can not access this file directly!');

/**
 * TYPOlight webCMS
 * Copyright (C) 2005-2009 Leo Feyer
 *
 * This program is free software: you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation, either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program. If not, please visit the Free
 * Software Foundation website at http://www.gnu.org/licenses/.
 *
 * PHP version 5
 * @copyright  Kamil Kuzminski 2010, Marcin Lachowski 2010 
 * @author     Kamil Kuzminski <kamil.kuzminski@gmail.com>, Marcin Lachowski <qrczak@gmail.com> 
 * @package    XmlToDb 
 * @license    GNU/LGPL 
 * @filesource
 */


/**
 * Class XmlToDb
 *
 * Provide methods to fetch remote xml file and insert data to table.
 * @copyright  Kamil Kuzminski 2010, Marcin Lachowski 2010 
 * @author     Kamil Kuzminski <kamil.kuzminski@gmail.com>, Marcin Lachowski <qrczak@gmail.com> 
 * @package    Controller
 */
class XmlToDb extends Frontend
{
  
  /**
   * Clear XmlToDb table and put the fresh data
   * @param array
   */
  public function insertData()
  {
    // Fetch xml file
    $objXml = $this->fetchXmlFile();
    
    // Parse data
    $arrData = $this->parseXml($objXml);
    
    // Insert to database
    # ...
  }     

  /**
   * Fetch remote xml file
   */     
  public function fetchXmlFile()
  {
    // Get file
    $file = 'http://someurl.com/wakacje.xml';
    
    // Load xml
    $objXml = simplexml_load_file($file);
  
    return $objXml;    
  }
  
  /**
   * Parses xml data to ready-to-save array
   * @param array
   */
  public function parseXml($objXml)
  {
    // Prase object data to neat array
    # ...
    
    return $arrData;
  }

  /**
   * Clear XmlToDb table and put the fresh data
   * @param array
   */
  private function getXMLfiles()
  {
    // tworzymy plik we wczesniej utworzonym katalogu system/xml/ ktory musi miec prawa zapisu
	$datawyj = strtotime("now");
    $archiveXml = 'system/xml/' . date("dmY", $datawyj);
    
	// Download the archive
	if (!file_exists(TL_ROOT . '/' . $archiveXml))
	{
		$objRequest = new Request();
		//na razie zostawiam to tak bo nie wiem jak dokladnie bedzie wygladal url do tego pliku
		$objRequest->send('http://www.url.com/zip/. '$login' ./. '$pass' ./ALFA');

		$objFile = new File($archiveXml);
		$objFile->write($objRequest->response);
		$objFile->close();
	}
	
	//czytamy zipa
	$objArchive = new ZipReader($archiveXml);
	
	//lista plikow w zipie
	$arrFiles = $objArchive->getFileList();
	array_shift($arrFiles);
	
    // Parse data
    $arrData = $this->parseXml($arrFiles);
    
    // Insert to database
    # ...
  }   

}

?>