<!DOCTYPE html>
<html >
    <head>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/tundra/tundra.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css"/> 
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: true"></script>
        <script>require(["dojo/query", "dojo/_base/fx", "dojo/_base/connect", "dojo/domReady!"],
            function(query, baseFx, conn){
                query("#showMe").on("click", function(e){
                    var node = this,
                    anim = baseFx.anim(node, {
                        backgroundColor: "#363636",
                        color: "#f7f7f7"
                    }, 1000);

                    conn.connect(anim, "onEnd", function(){
                        baseFx.anim(node, { color: "#363636" }, null, null, function(){
                            node.innerHTML = "wow, that was easy!";
                            baseFx.anim(node, { color: "white" });
                        });
                    });
                });
            });
        </script>
    </head>
    <body class="claro">
        <div id="showMe" style="padding: 10px;">click here to see how it works</div>
    </body>
</html>