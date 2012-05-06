<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo: DOM Functions</title>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>        
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"
                data-dojo-config="isDebug: true, async: true">
        </script>
        <script>
            require(["dojo/query", "dojo/NodeList-traverse", "dojo/NodeList-dom", "dojo/domReady!"], function(query) {
                query("li.yum")         // get LI elements with the class 'yum'
                .addClass("highlight")  // add a 'highlight' class to those LI elements
                .closest(".fruitList")  // find the closest parent elements of those LIs with the class 'fruitList'
                .prev()                 // get the previous sibling (headings in this case) of each of those fruitList elements
                .addClass("happy")      // add a 'happy' class to those headings
                .style({backgroundPosition: "left", paddingLeft: "20px"}); // add some style properties to those headings
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
            <li class="fresh yum">Fresh Figs</li>
            <li class="dried">Dates</li>
            <li class="dried">Raisins</li>
            <li class="dried">Prunes</li>
            <li class="fresh dried">Apricots</li>
            <li class="fresh">Peaches</li>
            <li class="fresh yum">Bananas</li>
            <li class="fresh">Cherries</li>
        </ul>        
    </body>
</html>