<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script type="text/javascript">
            var dojoConfig = {
                async: true, 
                baseUrl: "/dojo/js/",
                tlmSiblingOfDojo: false,
                parseOnLoad: true, 
                packages: [
                    { name: "dojo", location: "//ajax.googleapis.com/ajax/libs/dojo/1.7.2/" },
                    { name: "foo", location: "./foo" }
                ]
            };
        </script>
        <script type="text/javascript" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>

        <script type="text/javascript">
            require(
            ["dojo/on", "dojo/mouse", "foo/FooModule", "dojo/domReady!"],
            function(on, mouse, FooModule) {
                on(document.getElementById("d1"), mouse.enter, function(evt){ FooModule.bar(); });
            }
        );            
        </script>        
    </head>
    <body class="claro">
        <div id="d1" style="padding: 10px;">click here to see how it works</div>
    </body>
</html>