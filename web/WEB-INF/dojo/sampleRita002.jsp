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
            require(["sample/Blizzard", "sample/ingredients"], function(Blizzard){
                // This will print to console:
                // "adding soft serve",
                // "mixing in oreos",
                // "mixing in cookie dough",
                // "A blizzard with plain oreos and medium-sized chunks of cookie dough."
                var yummyTreat = new Blizzard();
            });
        </script>
    </head>
    <body>
    </body>
</html>