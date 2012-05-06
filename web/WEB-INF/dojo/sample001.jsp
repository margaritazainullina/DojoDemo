  
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorial: Hello Dojo!</title>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/tundra/tundra.css"/> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css"/>
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: false"></script>
        <script>
            dojoConfig= {
                has: {
                    "dojo-firebug": true
                },
                parseOnLoad: false,
                foo: "bar",
                async: true
            };
        </script>
        <script>
            // Require the registry, parser, Dialog, and wait for domReady
            require(["dijit/registry", "dojo/parser", "dijit/Dialog", "dojo/domReady!"], function(registry, parser) {
                // Explicitly parse the page
                parser.parse();
                // Find the dialog
                var dialog = registry.byId("dialog");
                // Set the content equal to what dojo.config is
                dialog.set("content", "<pre>" + dojo.toJson(dojo.config, true) + "</pre>");
                // Show the dialog
                dialog.show();
            });
        </script>
    </head>
    <body>
        <h1 id="greeting">Hello</h1>
        <!-- and later in the page -->
        <div id="dialog" data-dojo-type="dijit.Dialog" data-dojo-props="title: 'dojoConfig / dojo.config'"></div
    </body>
</html>    
