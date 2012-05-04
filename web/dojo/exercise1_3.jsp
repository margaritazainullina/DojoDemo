<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Fun with Dojo!</title>
        <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dijit/themes/tundra/tundra.css" />
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"
        data-dojo-config="async: true"></script>
        <style type="text/css">
            .blue {color: blue;}
        </style>
    </head>
    <body>
        <div id="d1" class="blue">A div with id=d1 and class=blue</div>
        <div id="d2">A div with id=d2</div>
        <div id="d2">Another div with id=d2</div>
        <div id="d4">A div with id=d4.
            <span id="s1">
                This sentence is in a span that's contained in d4.
                The span's id is s1.
            </span>
        </div>
        <form name="foo" action="">
            A form with name="foo"
        </form>
        <div id="foo">
            A div with id=foo
        </div>
    </body>
</html>
