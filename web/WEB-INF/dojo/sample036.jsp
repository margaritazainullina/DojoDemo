<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo: DOM Functions</title>
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/dojo/1.6/dijit/themes/claro/claro.css" media="screen"/>
        <script>
            require(["dojo/query", "dojo/NodeList-data", "dojo/domReady!"], function(query, NodeList) {
                function mark(evt){
                    var nodeList = new NodeList(this); // make a new NodeList from the clicked element
                    nodeList.data("updated", new Date());   // update the 'updated' key for this element via the NodeList
                }
				
                query("li")                 // get all list items
                .data("updated", new Date()) // set the initial data for each matching element
                .on("click", mark);              // add the event handler
			
                query("#btn").on("click", function(){
                    query("li").data("updated").forEach(function(date){
                        console.log(date.getTime());
                    });
                });
            });
        </script>
        <style>
            li { position: relative; width: 400px; }
        </style>
    </head>
    <body class="claro">
        <h1>Demo: NodeList Extensions: dojo/NodeList-data</h1>
        <button id="btn">Inspect Data</button>
        <h3>Fruits</h3>
        <p>Click the fruits you like!</p>
        <ul class="fruitList">
            <li class="fresh" data-dojo-dataid="pid0">Apples</li>
            <li class="fresh" data-dojo-dataid="pid1">Persimmons</li>
            <li class="fresh" data-dojo-dataid="pid2">Grapes</li>
            <li class="fresh" data-dojo-dataid="pid3">Fresh Figs</li>
            <li class="dried" data-dojo-dataid="pid4">Dates</li>
            <li class="dried" data-dojo-dataid="pid5">Raisins</li>
            <li class="dried" data-dojo-dataid="pid6">Prunes</li>
            <li class="fresh dried" data-dojo-dataid="pid7">Apricots</li>
            <li class="fresh" data-dojo-dataid="pid8">Peaches</li>
            <li class="fresh" data-dojo-dataid="pid9">Bananas</li>
            <li class="fresh" data-dojo-dataid="pid10">Cherries</li>
        </ul>
    </body>
</html>