<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Fun with Dojo!</title>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"/> 
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: false"></script>
        <script>
            var handle = dojo.connect(
            dojo.byId("s1"), //контекст
            "onmouseclick", //событие
            null, //контекст
            function(evt) {alert("onmouseclick event");} //обработчик события
        );
        </script>
    </head>
    <body>
        <div id="s1">Кнопка</div>
    </body>
</html