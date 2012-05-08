<%-- 
    Document   : sample029
    Created on : May 8, 2012, 7:38:18 PM
    Author     : jrita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script type="text/javascript">
            require(["dojo/_base/Deferred", "dojo/_base/xhr", "dojo/_base/array", "dojo/dom-construct", "dojo/dom", "dojo/domReady!"], function(Deferred, xhr, baseArray, domConstruct, dom) {
                var def = new Deferred(),
                userlist = dom.byId("userlist");
                def.then(function(res){
                    baseArray.forEach(res, function(user){
                        domConstruct.create("li", {
                            id: user.id,
                            innerHTML: user.username + ": " + user.name
                        }, userlist);
                    });
                },function(err){
                    domConstruct.create("li", {
                        innerHTML: "Error: " + err
                    }, userlist);
                });
                xhr.get({
                    url: "jsonSample029.action",
                    handleAs: "json",
                    load: function(res){
                        // Resolve when content is received
                        def.resolve(res);
                    },
                    error: function(err){
                        // Reject on error
                        def.reject(err);
                    }
                });
            });
        </script>
    </head>
    <body>
        <h1>Demo: dojo/Deferred</h1>
        <ul id="userlist">
        </ul>
    </body>
</html>
