<!DOCTYPE html>
<html >
    <head>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/tundra/tundra.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css"/> 
        <script type="text/javascript">
            var dojoConfig = {
                async: true, packages: [{ name: "my", location: "js" }]
            };
        </script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js">
        </script>
        <script type="text/javascript">
            require(["my/FooModule"], function(FooModule){
                // ...
            });
        </script>        
    </head>
    <body class="claro">
        <div id="showMe" style="padding: 10px;">click here to see how it works</div>
    </body>
</html>
