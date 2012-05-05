<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Fun With the Genie!</title>
        <script
            type="text/javascript"
            src="http://o.aolcdn.com/dojo/1.1/dojo/dojo.xd.js">
    djConfig="modulePaths:{dtdg:'./dtdg',baseUrl:'./'}">
        </script>
        <script type="text/javascript">
            // загрузить модуль
            dojo.require("dtdg.Genie");
            // обеспечить безопасное обращение к dtdg.Genie внутри addOnLoad
            dojo.addOnLoad(function() {
                //создать экземпляр
                var g = new dtdg.Genie;
                //инициализировать, а все остальное он сделает сам
                g.initialize();
            });
        </script>
    </head>
    <body>
    </body>
</html>