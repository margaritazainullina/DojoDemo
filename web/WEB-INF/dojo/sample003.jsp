<!DOCTYPE html>
<html >
    <head>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/tundra/tundra.css"> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css"> 
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: true"></script>
        <script>require(["dojo/ready", "dijit/layout/BorderContainer", "dijit/layout/ContentPane", "dijit/layout/TabContainer"], 
            function(ready, BorderContainer, ContentPane, TabContainer){
                ready(function(){
                    // create a BorderContainer as the top widget in the hierarchy
                    var bc = new BorderContainer({style: "height: 500px; width: 800px;"});

                    // create a ContentPane as the left pane in the BorderContainer
                    var cp1 = new ContentPane({
                        region: "left",
                        style: "height: 100px",
                        content: "hello world"
                    });
                    bc.addChild(cp1);

                    // create a TabContainer as the center pane in the BorderContainer,
                    // which itself contains two children
                    var tc = new TabContainer({region: "center"});
                    var tab1 = new ContentPane({title: "tab 1"}),
                    tab2 = new ContentPane({title: "tab 2"});
                    tc.addChild( tab1 );
                    tc.addChild( tab2 );
                    bc.addChild(tc);

                    // put the top level widget into the document, and then call startup()
                    document.body.appendChild(bc.domNode);
                    bc.startup();
                });
            });</script>
    </head>
    <body class="claro">
    </body>
</html>