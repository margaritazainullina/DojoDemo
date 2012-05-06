<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>
        <script type="text/javascript">
            require(["dojo/dom", "dojo/_base/xhr", "dojo/domReady!"],
            function(dom, xhr) {
                xhr.get({
                    url: "getAjaxString.action",
                    load: function(result) {
                        dom.byId("d1").innerHTML = result;
                    }
                });
            });
        </script>        
    </head>
    <body class="claro">
        <div id="d1" style="padding: 10px;">click here to see how it works</div>
    </body>
</html>