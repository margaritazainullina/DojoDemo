define(["dojo/domReady!"],
    function() {
        var ret = {};
        ret.bar = require(["dojo/_base/xhr", "dojo/on", "dojo/dom", "dojo/domReady!"],
            function(xhr, on, dom) {
                on(dom.byId("sendForm"), "click", function() {
                    var resultNode = dom.byId("formResultNode");
                    xhr.post({
                        url: "userForm.action",
                        form: dom.byId("formNode"),
                        load: function(newContent) {
                            resultNode.style.display = "block";
                            resultNode.innerHTML = newContent;
                        },
                        error: function() {
                            resultNode.innerHTML = "Your form could not be sent.";
                        }
                    });
                });
            });
        return ret;    
    }
);