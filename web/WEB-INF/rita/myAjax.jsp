<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Fun with Deferreds!</title>
        <script type="text/javascript"
                src="http://o.aolcdn.com/dojo/1.1/dojo/dojo.xd.js">
        </script>
        <script type="text/javascript">
            dojo.addOnLoad(function() {
                //Вызвать функцию, запускающую асинхронный запрос,
                //которая вернет объект Deferred
                var d = dojo.xhrGet({
                    url: "http://localhost:8080",
                    timeout : 5000,
                    load : function(response, ioArgs) {
                        console.log("Load response is:", response);
                        console.log("Executing the callback chain now...");
                        return response;
                    },
                    error : function(response, ioArgs) {
                        console.log("Error!", response);
                        console.log("Executing the errback chain now...");
                        return response;
                    }
                });
                console.log("xhrGet fired. Waiting on callbacks or errbacks");
                //Добавить несколько функций обратного вызова
                d.addCallback(
                function(result) {
                    console.log("Callback 1 says that the result is ",
                    result);
                    return result;
                }
            );
                d.addCallback(
                function (result) {
                    console.log("Callback 2 says that the result is ",
                    result);
                    return result;
                }
            );
                //Добавить несколько обработчиков ошибок
                d.addErrback(
                function(result) {
                    console.log("Errback 1 says that the result is ",
                    result);
                    return result;
                }
            );
                d.addErrback(
                function(result) {
                    console.log("Errback 2 says that the result is ",
                    result);
                    return result;
                }
            );
            });
        </script>
    </head>
    <body>
        Check the Firebug console.
    </body>
</html>
