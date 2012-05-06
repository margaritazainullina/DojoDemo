<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>
        <script type="text/javascript">
            require(["dojo/on", "dojo/_base/xhr", "dojo/dom", "dojo/domReady!"],
            function(on, xhr, dom) {
                // Using xhr.get, as very little information is being sent
                xhr.get({
                    // The URL of the request
                    url: "getAjaxString.action",
                    // The success callback with result from server
                    load: function(newContent) {
                        dom.byId("contentNode").innerHTML = newContent;
                    },
                    // The error handler
                    error: function() {
                        // Do nothing -- keep old content there
                    },
                    preventCache: true
                });
                refreshContent();
                // Connect button
                on(dom.byId("refreshButton"), "click", refreshContent);
            }); 
        </script>    
    </head>
    <body>
        <h1>Demo: Refresh a Node's Content</h1>
        <p>Click the button below to refresh the content.</p>
        <button id="refreshButton">Refresh Content</button>
        <br>
        <br>
        <p id="contentNode"></p>
    </body>
</html>
