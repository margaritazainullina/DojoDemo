<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: false"></script>
        <script type="text/javascript">
            require(["dojo/on","dojo/query","dojo/dom-style", "dojo/NodeList-dom", "dojo/dom-class", "dojo/domReady!"], 
            function(on, query, domStyle, domClass) {
                on(function(){
                    query(".btn-slide").on("onclick",function(e){
                        event.stop(e);
                        var panel = dom.byId('panel');
                        if (domStyle.et(panel, 'height') != 0) {
                            dojo.anim(panel, {height:0}).play();
                        } else {
                            function(fx){
                                fx.anim(panel, {height:200}).play();
                            }
                        }
                        function(domClass){
                            domClass.toggle(this, "active");
                        };
                    });}
        </script>
        <style>
            body {
                margin: 0 auto;
                padding: 0;
                width: 570px;
                font: 75%/120% Arial, Helvetica, sans-serif;
            }
            a:focus {
                outline: none;
            }
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
        <div id="panel"> </div>
        <p class="slide">
            <a class="btn-slide" href="#">Slide Panel</a>
        </p>
    </body>
</html>
