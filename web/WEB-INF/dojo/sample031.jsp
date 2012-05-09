<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>

        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>        
        <script type="text/javascript">
            require(["dojo/_base/xhr", "dojo/_base/array", "dojo/dom-construct", "dojo/dom", "dojo/domReady!"],
            function(xhr, baseArray, domConstruct, dom) {
     
                var def = xhr.get({
                    url: "jsonSample029.action",
                    handleAs: "json"
                });
 
                def.then(function(res){
                    var userlist = dom.byId("userlist");
                    baseArray.forEach(res, function(user){
                        domConstruct.create("li", {
                            id: user.id,
                            innerHTML: user.username + ": " + user.name
                        }, userlist);
                    });
                },function(err){
                    // This shouldn't occur, but it's defined just in case
                    alert("An error occurred: " + err);
                });
     
                def.then(function(res){
                   var div = dom.byId("elements");
                   baseArray.forEach(res, function(item){
                        domConstruct.create("h1",{id: item.id,
                        rita: "rita" + item.id,
                        innerHTML: item.username + " loves Rita"}, div)
                   });
                },function(err){
                    // This shouldn't occur, but it's defined just in case
                    alert("An error occurred: " + err);
                });
     
            });
        </script>
    </head>
    <body>
        <h1>Demo: dojo/Deferred with dojo/_base/xhr</h1>
        <div id="elements"></div>
        <ul id="userlist"></ul>
    </body>
</body>
</html>