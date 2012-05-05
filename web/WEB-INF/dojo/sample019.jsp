<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo: DOM Functions</title>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>        
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js"
                data-dojo-config="isDebug: true, async: true">
        </script>
        <script>
            require(["dojo/query", "dojo/NodeList-data", "dojo/domReady!"], function(query, NodeList) {
                function mark(evt){
                    var nodeList = new NodeList(this); // make a new NodeList from the clicked element
                    nodeList.data("updated", new Date());   // update the 'updated' key for this element via the NodeList
                }
     
                query("li")                  // get all list items
                .data("updated", new Date()) // set the initial data for each matching element
                .on("click", mark);          // add the event handler
 
                query("#btn").on("click", function(){
                    query("li").data("updated").forEach(function(date){
                        console.log(date.getTime());
                    });
                });
            });  
        </script>
    </head>
    <body class="claro">
        <h3>Fresh Fruits</h3>
        <button id="btn">Click me!</button>
        <ul id="freshList"></ul>
        <h3>Fruits</h3>
        <ul>
            <li class="fresh">Apples</li>
            <li class="fresh">Persimmons</li>
            <li class="fresh">Grapes</li>
            <li class="fresh">Fresh Figs</li>
            <li class="dried">Dates</li>
            <li class="dried">Raisins</li>
            <li class="dried">Prunes</li>
            <li class="fresh dried">Apricots</li>
            <li class="fresh">Peaches</li>
            <li class="fresh">Bananas</li>
            <li class="fresh">Cherries</li>
        </ul>        
    </body>
</html>