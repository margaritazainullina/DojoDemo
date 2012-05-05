<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo: DOM Functions</title>
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>
        <script>
            require(["dojo/query", "dojo/domReady!"], function(query) {
                var nodes = query("li.fresh");
                nodes.on("click", function(evt){
                    alert("I love fresh " + this.innerHTML);
                });
            });       
        </script>
    </head>
    <body>
        <h3>Fresh Fruits</h3>
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