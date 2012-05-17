<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: false"></script>
        <script type="text/javascript">
            require(["dojo/query", "dojo/on", "dojo/dom", "dojo/_base/event", 
                "dojo/dom-style", "dojo/_base/fx", "dojo/domReady!"], 
            function(query, on, dom, event, domStyle, baseFx) {
                var btn = query(".btn-slide");
                on(btn,"click",function(e){
                    event.stop(e);
                    var panel = dom.byId('panel');
                    if(domStyle.get(panel, 'height')!=0){
                        baseFx.animateProperty({
                            node: panel, properties: { height: 0 }
                        }).play();
                    }else{
                        baseFx.animateProperty({
                            node: panel, properties: { height: 200 }
                        }).play();
                    }
                })
            });
        </script>
        <style>
            body {
                margin: 0 auto;
                padding: 0;
                width: 570px;
                font: 75%/120% Arial, Helvetica, sans-serif;
            }
            a:focus { outline: none; }
            #panel {
                background: #754c24;
                height: 0px;
                /*display: none;*/
            }
            .slide {
                margin: 0;
                padding: 0;
                border-top: solid 4px #422410;
                background: url(images/btn-slide.gif) no-repeat center top;
            }
            .btn-slide {
                background: url(images/white-arrow.gif) no-repeat right -50px;
                text-align: center;
                width: 144px;
                height: 31px;
                padding: 10px 10px 0 0;
                margin: 0 auto;
                display: block;
                font: bold 120%/100% Arial, Helvetica, sans-serif;
                color: #fff;
                text-decoration: none;
            }
            .active {
                background-position: right 12px;
            }
        </style>
    </head>
    <body>
        <div id="panel"> panel </div>
        <p class="slide">
            <a class="btn-slide" id="btn" href="#">Slide Panel</a>
        </p>
    </body>
</html>