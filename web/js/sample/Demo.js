define(['dojo/_base/declare', 'sample/Foo'], function(declare, Foo){
    return declare(null, {
        arr: [ 1, 2, 3, 4 ], // object. shared by all instances!
        num: 5,              // non-object. not shared.
        str: "string",       // non-object. not shared.
        obj: new Foo("Rita", 17, "Kharkov"),      // object. shared by all instances!

        constructor: function(){
            this.arr = [ 1, 2, 3, 4 ]; // per-instance object.
            this.obj = new Foo("Rita", 17, "Kharkov");      // per-instance object.
        }
    });
});