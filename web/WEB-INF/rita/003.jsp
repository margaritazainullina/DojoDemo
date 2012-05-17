<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: false"></script>
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

        <script type="text/javascript">
            require(["dojo/query", "dojo/on", "dojo/_base/fx", "dojo/domReady!"], 
            function(query, on, baseFx) {
                console.log("function called");
                var btn = query( ".pane .delete");
                console.log(btn);
                on(btn,"click",function(e){
                    console.log("click");
                    var animation = baseFx.fadeOut({node:this.parentNode, duration:1000, 
                 onEnd: dojo.partial(dojo.style, this.parentNode, "display", "none")}).play();
                })
            });           
        </script>
    </head>

    <body>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img class="delete" alt="delete" src="images/btn-delete.gif">
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img class="delete" alt="delete" src="images/btn-delete.gif">
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img class="delete" alt="delete" src="images/btn-delete.gif">
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img class="delete" alt="delete" src="images/btn-delete.gif">
        </div>
        <div class="pane">
            <h3>Sample heading</h3>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi malesuada, ante at feugiat tincidunt, enim massa gravida metus, commodo lacinia massa diam vel eros. Proin eget urna. Nunc fringilla neque vitae odio. Vivamus vitae ligula.</p>
            <img class="delete" alt="delete" src="images/btn-delete.gif">
        </div>
    </body>
</body>
</html>
