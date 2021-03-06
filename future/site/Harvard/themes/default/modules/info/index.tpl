{extends file="findExtends:modules/{$moduleID}/index.tpl"}

{block name="pageTitle"}Harvard University Mobile Internet{/block}

{block name='description'}Harvard University is launching a university-wide mobile initiative to aggregate and deliver useful, usable, mobile-appropriate content to the Harvard community, locally and worldwide.{/block}

{block name="header"}
  	<div id="utility_nav">
    	<a href="http://www.harvard.edu" target="_blank">Harvard.edu</a>
        &nbsp;|&nbsp;
        <a href="http://news.harvard.edu/gazette/" target="_blank">Harvard Gazette</a>
        &nbsp;|&nbsp;
        <a href="http://news.harvard.edu/gazette/contact/#dComm" target="_blank">Contact</a>
        &nbsp;|&nbsp;
        Share &nbsp; <a href="http://facebook.com/harvard" title="Facebook" target="_blank"><img src="http://news.harvard.edu/gazette/wp-content/themes/gazette/hpac/images/icon_facebook.gif" alt="facebook"></a>  
		&nbsp;
		<a href="http://twitter.com/harvard" title="Twitter" target="_blank"><img src="http://news.harvard.edu/gazette/wp-content/themes/gazette/hpac/images/icon_twitter.gif" alt="twitter"></a>
    </div><!--/utility_nav-->
    
    <div id="logo">
    	<img src="/modules/info/images/Harvard_Shield_Horizontal.png" alt="Harvard University Mobile Internet" border="0" />
    </div><!--/logo-->
    
    <h1>m.harvard.edu</h1>
    <p>
        is a university-wide mobile initiative to aggregate and deliver useful,
		usable, mobile-appropriate content to the Harvard community, locally and
		worldwide.
    </p>
{/block}
    
{block name="content"}
  	<div class="leftcol">
    	<h2>Mobile Web Application</h2>
        <p>
            You can reach the mobile web application by going to <a href="http://m.harvard.edu">m.harvard.edu</a> on your
            web browser on any internet-enabled mobile device. The mobile web
            application includes all the features listed at right.
        </p>
        <p>
        	<a href="#" onclick="javascript:window.open('http://m.harvard.edu/home','HarvardMobile','width=350,height=550');" id="preview_site"></a>
        </p>
    	<h2>Native iPhone Application</h2>
        <p>
        	The Harvard iPhone app can be used with the iPhone 4, 3GS, and 3G hardware, 
            but users must download the free iOS 4 software update. 
        </p>
        <table cellpadding="0" cellspacing="0" id="download" align="right">
          <tr>
            <td>
        	Download iPhone app 
            </td>
            <td>
            <a href="http://itunes.apple.com/us/app/harvard-mobile/id389199460" target="_blank"><img src="/modules/info/images/App_Store_Badge21.png" alt="Harvard Mobile iPhone App Download" width="90" height="31" /></a>
            </td>
          </tr>
        </table>
        
        <div class="clr"></div>
        
    	<h2>What's next?</h2>
        <p>
            We recognize that this is just the starting point for providing a better
            Harvard mobile experience for students, faculty, staff, alumni, and
            visitors. We will continue to roll out new features, including fully
            integrated shuttle tracking in October 2010.
        </p>
        
        <div class="feedback">
        	<p>
            <span class="black_font"><strong>Feedback</strong></span>
            <br />
            Find a bug? Want to recommend a feature? This initiative is 1.0, and your
            ideas and usage will help inform future development. Please send your feedback
            to <a href="mailto:digitalcomms@harvard.edu">digitalcomms@harvard.edu</a>.      
            </p>
        </div><!--/feedback-->
        
    </div><!--/leftcol-->
    
    <div class="rightcol">
    	<h2>Features</h2>
        
    	<table cellpadding="0" cellspacing="0" id="features">
          <tr>
            <td>
              <img src="/modules/info/images/icons/people.png" alt="People Directory" />
            </td>
            <td>
            <h2>People Directory</h2>
            <p>
            Search by first and last name for phone numbers, email addresses, and office location for Harvard students, faculty and staff. Note that contact details vary and are informed by individual privacy settings.
            </p>
            </td>
          </tr>
          <tr>
            <td>
              <img src="/modules/info/images/icons/map.png" alt="Campus Map" />
            </td>
            <td>
            <h2>Campus Map</h2>
            <p> 
            Navigate around Harvard’s campus by searching for classroom buildings, houses, and offices. The map will display the location, and you can zoom in, zoom out or scroll in any direction. You can also browse locations by type, such as libraries or museums.
            </p>
            </td>
          </tr>

          <tr>
            <td>
              <img src="/modules/info/images/icons/calendar.png" alt="Events" />
            </td>
            <td>
            <h2>Events</h2>
            <p>
            Find out what&#8217;s going on today at Harvard or coming up soon. Events from the Harvard Gazette calendar are available by category with the date and time, and location. Where available, you can click on the event’s location to see it on the map.
            </p>
            </td>
          </tr>

          <tr>
            <td>
              <img src="/modules/info/images/icons/stellar.png" alt="Courses" />
            </td>
            <td>
            <h2>Courses</h2>
            <p>
            The complete course catalog is searchable across all of Harvard’s schools or individually within each school. You can type in a keyword or subject to access general information about the course including the course description, meeting times, location, and instructor name where provided. 
            </p>
            </td>
          </tr>

          <tr>
            <td>
              <img src="/modules/info/images/icons/news.png" alt="News" />
            </td>
            <td>
            <h2>News</h2>
            <p>
            Get the latest Harvard news from the Harvard Gazette, the University newspaper, which features latest news about the Harvard community, arts and culture, and science and research. You can share articles using email, Facebook, or Twitter. 
            </p>
            </td>
          </tr>

          <tr>
            <td>
              <img src="/modules/info/images/icons/dining.png" alt="Student Dining" />
            </td>
            <td>
            <h2>Student Dining</h2>
            <p>
            What&#8217;s for dinner, and where? Student dining includes current and upcoming menus for breakfast, lunch, and dinner. Also find out the hours for each of the dining halls and current and upcoming interhouse restrictions.
            </p>
            </td>
          </tr>
          <tr>
            <td>
              <img src="/modules/info/images/icons/search.png" alt="Search" />
            </td>
            <td>
            <h2>Search</h2>
            <p>
            Search offers a quick and powerful way to search across content from most or all of the features above. Search results will be presented grouped by type, and recent search queries will be saved and auto-suggested for even faster and easier access.
            </p>
            </td>
          </tr>
          
        </table>
    </div><!--/rightcol-->

	<div class="clr"></div>
{/block}
    
{block name="footer"}
  <span class="copyright">&copy; 2010 <a href="http://www.harvard.edu" target="_blank">The President and Fellows of Harvard College</a></span>
{/block}

{block name="footerJavascript"}
  {literal}
    var _sf_async_config={uid:2327,domain:"m.harvard.edu"};
    (function(){
      function loadChartbeat() {
        window._sf_endpt=(new Date()).getTime();
        var e = document.createElement('script');
        e.setAttribute('language', 'javascript');
        e.setAttribute('type', 'text/javascript');
        e.setAttribute('src',
           (("https:" == document.location.protocol) ? "https://s3.amazonaws.com/" : "http://") +
           "static.chartbeat.com/js/chartbeat.js");
        document.body.appendChild(e);
      }
      var oldonload = window.onload;
      window.onload = (typeof window.onload != 'function') ?
         loadChartbeat : function() { oldonload(); loadChartbeat(); };
    })();
    
      // Google master profile start
      var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
      document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' 				type='text/javascript'%3E%3C/script%3E"));
    
      try {
      var pageTracker = _gat._getTracker("UA-2923555-18");
      pageTracker._trackPageview();
      } catch(err) {}
      // Google master profile end
  {/literal}
{/block}
