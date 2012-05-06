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
         
                function moveFirst(){
                    var list = dom.byId("list"),
                    three = dom.byId("three");
 
                    domConstruct.place(three, list, "first");
                }
 
                function moveBeforeTwo(){
                    var two = dom.byId("two"),
                    three = dom.byId("three");
 
                    domConstruct.place(three, two, "before");
                }
 
                function moveAfterFour(){
                    var four = dom.byId("four"),
                    three = dom.byId("three");
 
                    domConstruct.place(three, four, "after");
                }
 
                function moveLast(){
                    var list = dom.byId("list"),
                    three = dom.byId("three");
 
                    domConstruct.place(three, list);
                }
 
                // Connect the buttons
                on(dom.byId("moveFirst"), "click", moveFirst);
                on(dom.byId("moveBeforeTwo"), "click", moveBeforeTwo);
                on(dom.byId("moveAfterFour"), "click", moveAfterFour);
                on(dom.byId("moveLast"), "click", moveLast);
         
            });         
        </script>
    </head>
    <body>
        <button id="moveFirst">The first item</button>
        <button id="moveBeforeTwo">Before Two</button>
        <button id="moveAfterFour">After Four</button>
        <button id="moveLast">The last item</button>        
        <ul id="list">
            <li id="one">One</li>
            <li id="two">Two</li>
            <li id="three">Three</li>
            <li id="four">Four</li>
            <li id="five">Five</li>
        </ul>
    </body>
</html>