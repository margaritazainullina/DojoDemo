// in my/Blizzard.js
define(['dojo/_base/declare', 'sample/ingredients'], function(declare, ingredients){
  return declare([ ingredients.VanillaSoftServe, ingredients.OreoMixin, ingredients.CookieDoughMixin ], {
    constructor: function(){
      console.debug("A blizzard with " +
        this.kind + " oreos and " +
        this.chunkSize + "-sized chunks of cookie dough."
      );
    }
  });
});