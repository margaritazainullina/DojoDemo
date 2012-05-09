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
            require(["dojo/_base/Deferred", "dojo/_base/xhr", "dojo/_base/array", "dojo/dom-construct", 
                "dojo/dom", "dojo/domReady!"], 
            function(Deferred, xhr, domConstruct, dom) {
                var def = new Deferred();
                def.then(function(res){
                    console.log("The answer is", response);
                    return res;
                },
                function(res){
                    console.log("Yes, indeed. The answer is", response);
                    return res;
                },
                function(err){console.log("An error occurred", response);
                    return res;
                });
                       
            });
            
        </script>
    </head>
    <body>
       
    </body>
</html>