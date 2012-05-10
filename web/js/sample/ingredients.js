// in my/ingredients.js
define(['dojo/_base/declare'], function(declare){
    return {
        VanillaSoftServe: declare(null, {
            constructor: function(){
                console.debug ("adding soft serve");
            }
        }),

        OreoMixin: declare(null, {
            constructor: function(){
                console.debug("mixing in oreos");
            },
            kind: "plain"
        }),

        CookieDoughMixin: declare(null, {
            constructor: function(){
                console.debug("mixing in cookie dough");
            },
            chunkSize: "medium"
        })
    }}
);