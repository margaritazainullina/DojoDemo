<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Disappear</title>
        <script type="text/javascript">
            var dojoConfig = { async: true, tlmSiblingOfDojo: false, parseOnLoad: true, isDebug: true,
                packages: [
                    { location: "../dijit", name: "dijit" },
                    { location: "../dojox", name: "dojox" },
                    { location: ".",        name: "dojo"  },                        
                    { location: "/dojo/js/sample", name: "sample" } ]};
        </script>
        <script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js"></script>
        <script>
            require(["dojo/dom", "dojo/_base/lang", "dojo/dom-style", "dojo/_base/fx", "dojo/query", "dojo/domReady!"], 
            function(dom, lang, domStyle, fx, query) {
                query(".pane .delete").on("click", function(e){
                    var animation = fx.fadeOut({ 
                        node:this.parentNode,
                        duration:1000,
                        onEnd:lang.partial(domStyle.set, this.parentNode, "display", "none" )
                    });
                    animation.play();
                });
            });
        </script>
        <!--script type="text/javascript">
            dojo.addOnLoad(function(){
                dojo.query(".pane .delete").connect("onclick",function(){
                    dojo.fadeOut({node:this.parentNode, duration:1000, 
                    onEnd: dojo.partial(dojo.style, this.parentNode, "display", "none")}).play();
                });
            });
        </script-->
        <style type="text/css">
            body {
                margin: 10px auto;
                width: 470px;
            }
            h3 {
                margin: 0;
                padding: 0 0 .3em;
            }
            p {
                margin: 0;
                padding: 0 0 .5em;
            }
            .pane {
                background: #edf5e1;
                padding: 10px 20px 10px;
                position: relative;
                border-top: solid 2px #c4df9b;
            }
            .pane .delete {
                position: absolute;
                top: 10px;
                right: 10px;
                cursor: pointer;
            }
        </style>        
    </head>
    <body>
        <div class="pane" id="a22">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img src="images/btn-delete.gif" alt="delete" class="delete" />
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img src="images/btn-delete.gif" alt="delete" class="delete" />
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img src="images/btn-delete.gif" alt="delete" class="delete" />
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img src="images/btn-delete.gif" alt="delete" class="delete" />
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img src="images/btn-delete.gif" alt="delete" class="delete" />
        </div>        
    </body>
</html>