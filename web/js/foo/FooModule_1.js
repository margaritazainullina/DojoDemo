// in "my/foo/blah.js"
define([ "my/otherModule", "my/foo/bar" ], function(otherModule, bar){
    // …
});

dojo.provide("foo.FooModule");
foo.FooModule = function() {
    alert("Hello from FooModule!");
}