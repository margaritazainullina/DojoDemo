<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>
        <script>
            require(["dojo/_base/xhr", "dojo/on", "dojo/dom", "dojo/json", "dojo/domReady!"],
            function(xhr, on, dom, json) {
                var contentNode = dom.byId("contentNode");
                function getJSON() {
                    xhr.get({
                        url: "json.action",
                        handleAs: "json",
                        load: function(newContent) {
                            contentNode.style.display = "";
                            contentNode.innerHTML = "<strong>JSON loaded from server:</strong><br /><br />" +
                                json.stringify(newContent) +
                                "<br /><br /><strong>Look at the JSON data in the console as well!</strong>";
                            console.info("JSON loaded from server: ", newContent);
                        },
                        error: function() {}
                    });
                }
                on(dom.byId("getJson"), "click", getJSON);
            }); 
        </script>
    </head>
    <body>
        <h1>Demo: Fetch JSON Data</h1>
        <button id="getJson">Get JSON</button>
        <br>
        <br>
        <pre id="contentNode" style="display:none;"></pre>
    </body>
</html>