<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo: DOM Functions</title>
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>
        <script>
            // Require the DOM resource
            //            require(["dojo/dom", "dojo/domReady!"], function(dom) {
            //                function setText(node, text){
            //                    node = dom.byId(node);
            //                    node.innerHTML = text;
            //                }
            //                var one = dom.byId("one");
            //                setText(one, "One has been set");
            //                setText("two", "Two has been set as well");
            //            });
            require(["dojo/dom", "dojo/dom-construct", "dojo/domReady!"], 
            function(dom, domConstruct) {
     
                var list = dom.byId("list"),
                three = dom.byId("three");
 
                domConstruct.create("li", {
                    innerHTML: "Six"
                }, list);
 
                domConstruct.create("li", {
                    innerHTML: "Seven",
                    className: "seven",
                    style: {
                        fontWeight: "bold"
                    }
                }, list);
 
                domConstruct.create("li", {
                    innerHTML: "Three and a half"
                }, three, "after");
     
            });            
        </script>
    </head>
    <body>
        <ul id="list">
            <li id="one">One</li>
            <li id="two">Two</li>
            <li id="three">Three</li>
            <li id="four">Four</li>
            <li id="five">Five</li>
        </ul>
    </body>
</html>