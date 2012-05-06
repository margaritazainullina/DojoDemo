<!DOCTYPE html>
<html >
    <head>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/tundra/tundra.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css"/> 
        
        <script type="text/javascript">
            var dojoConfig = {
                isDebug: true,
                parseOnLoad: true,
                packages: [ 
                    { name: "foo", location: "./js/foo" } 
                ]
            };
        </script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" />
        <script type="text/javascript">
            dojo.require("foo.FooModule");
            dojo.addOnLoad(function(){
                dojo.connect(dojo.byId("d1"), "onmouseover", null, foo.FooModule());
            });
        </script>        
    </head>
    <body class="claro">
        <div id="d1" style="padding: 10px;">click here to see how it works</div>
    </body>
</html>