<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <script type="text/javascript">
            require(["dojo/dom-construct", "dojo/_base/window", "dojo/dom", "dojo/domReady!"],
            function(domConstruct, window, dom) {
                var currentBody = window.body(); 
                var obj = require(["sample/sample033", "dojo/domReady!"], function(sample033){ sample033(); });
                domConstruct.place(obj, currentBody, "first");
            });
        </script>
    </head>

    <body>

    </body>
</body>
</html>