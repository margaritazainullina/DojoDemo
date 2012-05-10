// in my/Alpha.js
define(['dojo/_base/lang', 'dojo/_base/declare'], function(lang, declare){
  return declare(null, {
    constructor: function(name, age, residence){
      this.name = name;
      this.age = age;
      this.residence = residence;
    }
  });
});