define(["dojo/dom", 'dojo/_base/declare'], function(dom, declare) {
    declare("FooModule", null, {
        attributeOne : new Array(),
        attributeTwo : null,
        constructor: function(args){
        //declare.safeMixin(this, args);
        },
        bar : function() {
            alert("Hello from FooModule!");
        }
    });
});