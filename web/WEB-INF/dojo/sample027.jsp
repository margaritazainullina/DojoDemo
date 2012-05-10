<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script type="text/javascript">
            var dojoConfig = {
                async: true, 
                tlmSiblingOfDojo: false,
                parseOnLoad: true, 
                packages: [
                    { location: "../dijit", name: "dijit" },
                    { location: "../dojox", name: "dojox" },
                    { location: ".",        name: "dojo" },                        
                    { location: "/dojo/js/sample", name: "sample" }
                ]
            };
        </script>
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>
        <script>
            require(["dojo/io/script", "dojo/on", "dojo/dom", "dojo/_base/array", "sample/sample027", "dojo/domReady!"],
            function(script, on, dom, arrayUtil) {
                on(dom.byId("getJson"), "click", function() {
                    var tweetsHolder = dom.byId("tweetsHolder");
                    script.get({
                        url: "http://search.twitter.com/search.json",
                        callbackParamName: "callback", 
                        content: {
                            q: "@dojo" // Searching for tweets about Dojo
                        },
                        load: function(tweetsJson) {
                            
                            sample027.bar(dom, "foo");
                            
                            
                            console.info("Twitter returned: ",tweetsJson);
                            var message = "";
                            if(tweetsJson.results && tweetsJson.results.length) {
                                message += "<ul>";
                                arrayUtil.forEach(tweetsJson.results,function(tweet) {
                                    message += "<li>" + tweet.from_user + " said: " + tweet.text + "</li>";
                                });
                                message += "</ul>";
                            }
                            else { message = "No tweets about Dojo were available.";
                            }
                            tweetsHolder.innerHTML = message;
                        },
                        error: function() {
                            tweetsHolder.innerHTML = "Error! Tweets could not be received.";
                        }
                    });
                });
            });
        </script>
    </head>
    <body>
        <h1>Demo: JSONP and dojo/io/script</h1>
        <div id="foo"></div>
        <button id="getJson">Get Tweets from Twitter</button>
        <br>
        <br>
        <div id="tweetsHolder">
        </div>
    </body>
</html>