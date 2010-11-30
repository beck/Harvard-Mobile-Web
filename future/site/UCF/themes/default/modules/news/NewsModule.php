<?php
/**
 * @author Jared Lang
 **/
class NewsModule extends Module{
	protected $id    = 'news';
	protected $feeds = array();
	
	function getFeedBySlug($slug){
		foreach ($this->feeds as $index => $feed){
			if ($feed['SLUG'] == $slug){
				return $this->getFeed($index);
			}
		}
		return null;
		
	}
	
	function getFeed($index){
		if (isset($this->feeds[$index])) {
			$feedData = $this->feeds[$index];
			$controller = RSSDataControllerUCF::factory($feedData);
			$controller->setDebugMode($GLOBALS['siteConfig']->getVar('DATA_DEBUG'));
			return $controller;
		} else {
			throw new Exception("Error getting news feed for index $index");
		}
	}
	
	function initialize(){
		$this->feeds      = $this->loadFeedData();
		$this->maxPerPage = $GLOBALS['siteConfig']->getVar('NEWS_MAX_RESULTS');
		
		$this->feedIndex = $this->getArg('section', 0);
		if (!isset($this->feeds[$this->feedIndex])) {
		  $this->feedIndex = 0;
		}
		
		$this->feed = $this->getFeed($this->feedIndex);
	}
	
	function indexPage(){
		$slug = $this->getSlugFromURL();
		if (!$slug){
			$slug = $GLOBALS['siteConfig']->getVar('NEWS_DEFAULT_FEED');
			$this->redirectTo($slug.'/index');
		}
		
		$page  = $this->getArg('page', 0);
		$limit = $GLOBALS['siteConfig']->getVar('NEWS_ITEMS_PER_PAGE');
		$start = $page * $limit;
		
		$feed     = $this->getFeedBySlug($slug);
		$articles = $feed->items($start, $limit, $total);
		
		$page = array(
			'hasNext' => ($start + $limit < $total),
			'hasPrev' => ($start > 0),
			'current' => $page,
		);
		
		foreach($articles as $index=>$article){
			$article->url = $this->buildURL('article', array(
				'id'  => $article->getGUID(),
			));
			$article->image   = $article->getImage();
			$articles[$index] = $article;
		}
		
		
		$this->assign('page', $page);
		$this->assign('articles', $articles);
		$this->assign('feed', $feed);
		$this->setPageTitle($feed->title);
		return;
	}
	
	function getSlugFromURL(){
		$suburl  = $GLOBALS['parts'][1];
		$matched = preg_match('/(.*)\/([^\/]+).php/i', $suburl, $matches);
		if ($matched){
			$slug = $matches[1];
			return $slug;
		}else{
			error_log('Couldn\'t parse feed slug from url: "{$suburl}".');
			return null;
		}
	}
	
	function feedsPage(){
		$slug  = $this->getSlugFromURL();
		$cfeed = $this->getFeedBySlug($slug);
		$feeds = array();
		foreach($this->feeds as $index => $feed){
			$feeds[$index] = array(
				'title' => $feed['TITLE'],
				'feed'  => $feed['BASE_URL'],
				'slug'  => $feed['SLUG'],
				'url'   => $this->buildURL($feed['SLUG'].'/index'),
			);
		}
		
		$this->assign('feeds', $feeds);
		$this->assign('cfeed', $cfeed);
		$this->setPageTitle('Categories');
		return;
	}
	
	function articlePage(){
		$slug = $this->getSlugFromURL();
		$feed = $this->getFeedBySlug($slug);
		
		$article = $this->getArg('id', null);
		$article = $feed->getItem($article);
		
		$this->assign('feed', $feed);
		$this->assign('article', $article);
		$this->setPageTitle($article->getTitle());
		return;
	}
	
	function initializeForPage(){
		switch($this->page){
			case 'index':
				#List stories of feed, if feed is not defined, redirect to default
				$this->indexPage();
				break;
			case 'feeds':
				$this->feedsPage();
				break;
			case 'article':
				$this->articlePage();
				break;
			default:
				#raise 404
				header("HTTP/1.0 404 Not Found");
				exit();
				break;
		}
	}
} // END class 
?>