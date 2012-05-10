define(['dojo/_base/declare'], function(declare){
    var Demo = declare("my.Demo", null, {
        constructor: function(){
            console.debug("this is Demo object #" + Demo.counter++);
        }
    });
    Demo.counter = 0;
    return Demo;
});