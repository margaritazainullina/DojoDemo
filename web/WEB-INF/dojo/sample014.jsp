<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo: DOM Functions</title>
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>
        <script>
            require(["dojo/dom", "dojo/dom-construct", "dojo/on", "dojo/domReady!"],
            function(dom, domConstruct, on){            
                function destroyFirst(){
                    var list = dom.byId("list"),
                    items = list.getElementsByTagName("li");
         
                    if(items.length){
                        domConstruct.destroy(items[0]);
                    }
                }
                function destroyAll(){
                    domConstruct.empty("list");
                }
         
                // Connect buttons to destroy elements
                on(dom.byId("destroyFirst"), "click", destroyFirst);
                on(dom.byId("destroyAll"), "click", destroyAll);      
            });            
        </script>
    </head>
    <body>
        <button id="destroyFirst">Destroy the first list item</button>
        <button id="destroyAll">Destroy all list items</button>       
        <ul id="list">
            <li id="one">One</li>
            <li id="two">Two</li>
            <li id="three">Three</li>
            <li id="four">Four</li>
            <li id="five">Five</li>
        </ul>
    </body>
</html>
