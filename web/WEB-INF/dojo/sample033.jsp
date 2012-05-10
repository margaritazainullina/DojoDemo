<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            var dojoConfig = {
                async: true, 
                tlmSiblingOfDojo: false,
                parseOnLoad: true, 
                packages: [
                    { location: "../dijit", name: "dijit" },
                    { location: "../dojox", name: "dojox" },
                    { location: ".",        name: "dojo" },                        
                    { location: "/dojo/js/sample", name: "sample" }
                ]
            };
        </script>
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>  
        <script type="text/javascript">
            require(["dojo/_base/declare", "dojo/dom-construct", "dojo/_base/window", "dojo/dom", "dojo/domReady!"],
            function(declare, domConstruct, window, dom) {
                var currentBody = window.body(); 
                var d1 = dom.byId("d1");
                var MyButton = declare("sample.Button", Button, {
                    label: "My Button",
                    onClick: function(evt){
                        console.log("I was clicked!");
                        this.inherited(arguments);
                    }
                });
                var obj = new MyButton();
                ////require(["sample/sample033", "dojo/domReady!"], new sample.Button());
                // new sample033());
                domConstruct.place(obj, d1, "first");
            });
        </script>
    </head>
    <body>
        <div id="d1"/>
    </body>
</body>
</html>