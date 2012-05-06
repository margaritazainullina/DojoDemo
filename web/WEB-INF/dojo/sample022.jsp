<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>
        <script>
            require(["dojo/_base/xhr", "dojo/on", "dojo/dom", "dojo/domReady!"],
            function(xhr, on, dom) {
                function refreshContent() {
                    xhr.get({
                        url: "getAjaxString.action",
                        load: function(newContent) {
                            dom.byId("contentNode").innerHTML = newContent;
                        },
                        error: function() {},
                        preventCache: true
                    });
                }
                refreshContent();
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