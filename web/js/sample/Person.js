// in my/Person.js
define(['dojo/_base/lang', 'dojo/_base/declare'], function(lang, declare){
  return declare(null, {
    name: "Anonymous",
    age: null,
    residence: "Universe A",

    constructor: function(/*Object*/ kwArgs){
      lang.mixin(this, kwArgs);
    },

    moveTo: function(/*string*/ residence){
      this.residence = residence;
    }
  });
});