<?php
/**
* UCF Mobile Map
* Web Communications - Fall 2010
*/

require_once realpath(LIB_DIR.'/Module.php');
class MapModule extends Module {
  protected $id = 'map';
  
  /****************************************************************************\
    Constructor
      - sets the correct page
  \****************************************************************************/
  function __construct($page='index', $args=array()){
    parent::__construct($page, $args);
    $map_pages = array(
      'options',
      'search',
      'building',
    );
    if(!in_array($this->page, $map_pages)){
      $this->page = 'index';
    }
  }
  
  
  /****************************************************************************\
    Manditory, abstract method of Module.php
  \****************************************************************************/
  protected function initializeForPage() {
    switch ($this->page) {
      
      case 'index':
        $this->map();
        break;
      
      case 'building':
        $this->map();
        break;
      
      case 'search':
        $this->search();
        break;
        
    }
  }
  
  
  /****************************************************************************\
    Search - passes query to the Campus Map
  \****************************************************************************/
  protected function search() {
    
    $results = array();
    $this->assignByRef('results', $results);
    
    if(!isset($_GET['q'])) return;
    
    // TODO: move to config/web/map.ini
    $map_api = 'http://webcom.dev.smca.ucf.edu/map/json/search?q=';
    
    $query = trim(stripslashes(strip_tags($_GET['q'])));
    if(empty($query)) return;
    $this->assign('search_q', $query);
    $url = $map_api . urlencode($query);
    
    $contents = file_get_contents($url);
    $contents = utf8_encode($contents);
    $results = json_decode($contents);
    
  }
  
  
  /****************************************************************************\
    Map - pulls all data and tiles from the Campus Map
  \****************************************************************************/
  protected function map() {
    
    $this->addExternalJavascript('http://maps.google.com/maps/api/js?sensor=false');
    
    $url = URL_PREFIX . 'map/options/';
    $js=<<<JS
    
      // the only variable exposed to the window should be Campus_Map
      var Campus_Map = { };
      Campus_Map.device = "$this->platform";
      Campus_Map.urls   = {
        "map-options" : "$url"
      }
JS;
    
    $this->addInlineJavascript($js);
    $this->addInlineJavascriptFooter("Campus_Map.gmap();");
    
    if($this->page == 'building'){
      die('oh yeah');
    }
    
    
  }
  
  
} /* MapModule */