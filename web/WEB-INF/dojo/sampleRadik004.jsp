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
                    { location: ".",        name: "dojo"  },                        
                    { location: "/dojo/js/sample", name: "sample" }
                ]
            };
        </script>
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>
        <script>
            require(["dojo/dom", "sample/Boss", "sample/Employee"],
            function(dom, Boss, Employee) {
                var kathryn = new Boss("Kathryn", 26, "Minnesota", 9000),
                matt    = new Employee("Matt", 33, "California", 1000);

                console.log(kathryn.askForRaise(), matt.askForRaise()); // 2250, 20
            });
        </script>
    </head>
    <body>
        <div id="foo"></div>
    </body>
</html>