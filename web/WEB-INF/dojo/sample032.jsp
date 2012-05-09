<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>        
        <script>	
            require(["dojo/_base/xhr", "dojo/_base/array", "dojo/_base/json", "dojo/dom-construct", "dojo/dom", "dojo/domReady!"], 
            function(xhr, baseArray, baseJson, domConstruct, dom) {
                var original = xhr.get({
                    url: "jsonSample029.action",
                    handleAs: "json"
                });
                
                var result = original.then(function(res){
                    var userlist = dom.byId("userlist1");

                    return baseArray.map(res, function(user){
                        domConstruct.create("li", {
                            innerHTML: baseJson.toJson(user)
                        }, userlist);

                        return {
                            id: user[0],
                            username: user[1],
                            name: user[2]
                        };
                    });
                });

                result.then(function(objs){
                    var userlist = dom.byId("userlist2");

                    baseArray.forEach(objs, function(user){
                        domConstruct.create("li", {
                            innerHTML: baseJson.toJson(user)
                        }, userlist);
                    });
                });

                original.then(function(res){
                    var userlist = dom.byId("userlist3");

                    baseArray.forEach(res, function(user){
                        domConstruct.create("li", {
                            innerHTML: baseJson.toJson(user)
                        }, userlist);
                    });
                });
				
            });
			
        </script>
    </head>
    <body>
        <h1>Demo: Chaining Deferreds</h1>
        <h2>Result from chaining from original deferred</h2>
        <ul id="userlist1"></ul>
        <h2>Result from chaining from original.then()</h2>
        <ul id="userlist2"></ul>
        <h2>Result from chaining from original deferred after previous calls</h2>
        <ul id="userlist3"></ul>
    </body>
</body>
</html>