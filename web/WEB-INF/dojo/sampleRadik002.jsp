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
            require(["dojo/dom", "sample/Person", "dojo/domReady!"],
            function(dom, Person) {
                var anon  = new Person(),
                alice = new Person({ name: "Alice", age: 42, residence: "Universe 1" });
                console.log(anon.name, alice.name); // "Anonymous", "Alice"
                console.log(anon.residence, alice.residence); // "Universe A", "Universe 1"
                alice.moveTo("Universe 420");
                console.log(alice.residence); // "Universe 420"
            });
        </script>
    </head>
    <body>
        <div id="foo"></div>
    </body>
</html>