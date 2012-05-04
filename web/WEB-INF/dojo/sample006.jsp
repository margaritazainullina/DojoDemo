<!DOCTYPE html>
<html >
    <head>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/tundra/tundra.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css"/> 
        <script type="text/javascript">
            var dojoConfig = {
                parseOnLoad: true
            };
        </script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js">
        </script>
        <script type="text/javascript">
            dojo.addOnLoad(function(){
               dojo.connect(dojo.byId("d1"), "onmouseover", null, function(evt){ alert("Thank you"); });
            });
        </script>        
    </head>
    <body class="claro">
        <div id="d1" style="padding: 10px;">click here to see how it works</div>
    </body>
</html>
