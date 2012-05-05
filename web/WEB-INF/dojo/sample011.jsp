<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Tutorial: Hello Dojo!</title>
        <!-- load Dojo -->
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"
                data-dojo-config="async: true"></script>
        <script type="text/javascript">
            require(["dojo/dom", "dojo/fx", "dojo/domReady!"] , function (dom, fx) {
                // The piece we had before...
                var greeting = dom.byId("greeting");
                greeting.innerHTML += " from Dojo!";
                // ...but now, with a fun animation!
                fx.slideTo({
                    top: 100,
                    left: 200,
                    node: greeting
                }).play();
            });
        </script>
    </head>
    <body class="claro">
        <h1 id="greeting" style="padding: 10px;">click here to see how it works</h1>
    </body>
</html>