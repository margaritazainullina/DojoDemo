<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>
        <script>
           require(["sample/sample026", "dojo/domReady!"], function(sample026){ sample026.bar(); });
        </script>
    </head>
    <body>
        <h1>Demo: JSONP and dojo/io/script</h1>
        <button id="getJson">Get Tweets from Twitter</button>
        <br>
        <br>
        <div id="tweetsHolder">
        </div>
    </body>
</html>