<html>
    <head>
        <style type="text/css">
            @import "http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css";
        </style>
        <script type="text/javascript">
            var dojoConfig = {
                async: true, 
                tlmSiblingOfDojo: false,
                parseOnLoad: true, 
                packages: [
                    { location: "../dijit", name: "dijit" },
                    { location: "../dojox", name: "dojox" },
                    { location: ".",        name: "dojo" },                        
                    { location: "/dojo/js/sample", name: "sample" }
                ]
            };
        </script>
        <script data-dojo-config="isDebug: true, async: true" 
                src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
        </script>
        <script type="text/javascript">
            require(["dojo/dom", "sample/sample028", "dojo/domReady!"],
            function(sample028) { 
                sample028.bar();
            });
        </script>
        <style type="text/css">
            .div1{
                background: gray;
                border: 1px solid;
            }
        </style>
    </head>
    <body>
        <h1>Demo: Send Form Data via xhr.post</h1>
        <p>Click the button below to send the form to the server using xhr.post</p>
       <form id="formNode">
            <label class="qhead">Your Name</label>
            <input type="text" name="name">
            <br>
            <label class="qhead">Your Bio</label>
            <textarea cols="20" rows="5" name="bio"></textarea>
            <br>
            <label class="qhead">Your Color</label>
            <select name="favoriteColor">
                <option value="Red">Red</option>
                <option value="Green">Green</option>
                <option value="Blue">Blue</option>
            </select>
            <br>
            <label class="qhead">Dojo User?</label>
            <input id="dojoUser1" type="radio" value="Yes" name="dojoUser">
            <label for="dojoUser1">Yes</label>
            <input id="dojoUser2" type="radio" value="No" name="dojoUser">
            <label for="dojoUser2">No</label>
            <br>
            <label class="qhead">Favorite Days</label>
            <input id="day1" type="checkbox" value="Sunday" name="favoriteDays[]">
            <label for="day1">Sunday</label>
            <input id="day2" type="checkbox" value="Monday" name="favoriteDays[]">
            <label for="day2">Monday</label>
            <input id="day3" type="checkbox" value="Tuesday" name="favoriteDays[]">
            <label for="day3">Tuesday</label>
            <input id="day4" type="checkbox" value="Wednesday" name="favoriteDays[]">
            <label for="day4">Wednesday</label>
            <input id="day5" type="checkbox" value="Thursday" name="favoriteDays[]">
            <label for="day5">Thursday</label>
            <input id="day6" type="checkbox" value="Friday" name="favoriteDays[]">
            <label for="day6">Friday</label>
            <input id="day7" type="checkbox" value="Saturday" name="favoriteDays[]">
            <label for="day7">Saturday</label>
        </form>
        <div>
            <button id="sendForm">Send Form</button>
        </div>
        <pre id="formResultNode" class="div1"></pre>
    </body>
</html>