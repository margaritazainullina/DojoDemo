<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Tutorial: Hello Dojo!</title>
        <!-- load Dojo -->
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
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"
        data-dojo-config="async: true"></script>
        <script type="text/javascript">
            // Require the module we just created
            require(["foo/myModule"], function(myModule){
                // Use our module to change the text in the greeting
                myModule.setText("greeting", "Hello Dojo!");
                 // After a few seconds, restore the text to its original state
                setTimeout(function(){ myModule.restoreText("greeting"); }, 3000);
            });               
        </script>
    </head>
    <body class="claro">
        <h1 id="greeting" style="padding: 10px;">click here to see how it works</h1>
    </body>
</html>