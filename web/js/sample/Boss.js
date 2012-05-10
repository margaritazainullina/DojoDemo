// in my/Boss.js
define(['dojo/_base/declare', 'sample/Employee'], function(declare, Employee){
  return declare(Employee, {
    askForRaise: function(){
      return this.salary * 0.25;
    }
  });
});