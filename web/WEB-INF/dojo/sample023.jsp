<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>
        <script>
            require(["dojo/_base/xhr", "dojo/on", "dojo/dom", "dojo/dom-class", "dojo/_base/lang", "dojo/domReady!"],
            function(xhr, on, dom, domClass, lang) {
                var availabilityNode = dom.byId("availabilityNode");
                var usernameNode = dom.byId("usernameInput");
                on(usernameNode, "keyup", function(){
                    // Get the value
                    var value = lang.trim(usernameNode.value.toLowerCase());
                    // If there's code...
                    if(value != "") {
                        // Using xhr.get, as very little information is being sent
                        xhr.get({
                            // The URL of the request
                           url: "checkUsername.action",
                            // Allow only 2 seconds for username check
                            timeout: 2000,
                            // Send the username to check base on an INPUT node's value
                            content: {
                                username: value
                            },
                            // The success callback with result from server
                            load: function(result) {
                                if(result == "available") {
                                    domClass.add(availabilityNode,"demoAvailable");
                                    domClass.remove(availabilityNode,"demoTaken");
                                    availabilityNode.innerHTML = "Username available!";
                                }
                                else {
                                    domClass.add(availabilityNode,"demoTaken");
                                    domClass.remove(availabilityNode,"demoAvailable");
                                    availabilityNode.innerHTML = "Username taken! Please try another.";
                                }
                            }
                        });
                    }
                    else {
                        availabilityNode.innerHTML = "";
                    }
                });
            });
        </script>
    </head>
    <body>
        <h1>Demo: Check a Username's Availability</h1>
        <p>
            Type a username to know its availability.
            <em>("dojo" and "sitepen" are taken)</em>
        </p>
        <br>
        <br>
        <strong>Desired Username: </strong>
        <input id="usernameInput" type="text" size="12">
        <span id="availabilityNode"></span>
    </body>
</html>