  define(["dojo/domReady!"],
    function() {
        var ret = {};
        
        ret.bar = require(["dojo/io/script", "dojo/on", "dojo/dom", "dojo/_base/array", "dojo/domReady!"],
            function(script, on, dom, arrayUtil) {
                on(dom.byId("getJson"), "click", function() {
                    var tweetsHolder = dom.byId("tweetsHolder");
                    script.get({
                        url: "http://search.twitter.com/search.json",
                        callbackParamName: "callback", 
                        content: {
                            q: "@dojo " // Searching for tweets about Dojo
                        },
                        load: function(tweetsJson) { 
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
            return ret;   
    });
    