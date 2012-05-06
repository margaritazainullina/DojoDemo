<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Demo: DOM Functions</title>
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js"
                data-dojo-config="async: true">
        </script>
        <script>
            // Wait for the DOM to be ready before working with it
            require(["dojo/query", "dojo/dom-class", "dojo/domReady!"],
            function(query, domClass) {
         
                query(".odd").forEach(function(node, index, nodelist){
                    // for each node in the array returned by query,
                    // execute the following code
                    domClass.add(node, "red");
                });
         
            });          
        </script>
    </head>
    <body>
        <ul id="list">
            <li class="odd">
                <div class="bold">
                    <a class="odd">Odd</a>
                </div>
            </li>
            <li class="even">
                <div class="italic">
                    <a class="even">Even</a>
                </div>
            </li>
            <li class="odd">
                <a class="odd">Odd</a>
            </li>
            <li class="even">
                <div class="bold">
                    <a class="even">Even</a>
                </div>
            </li>
            <li class="odd">
                <div class="italic">
                    <a class="odd">Odd</a>
                </div>
            </li>
            <li class="even">
                <a class="even">Even</a>
            </li>
        </ul>

        <ul id="list2">
            <li class="odd">Odd</li>
        </ul>
    </body>
</html>