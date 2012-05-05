<script type="text/javascript">
    var dojoConfig = {
        async: true,
        packages: [
            {
                name: "my",
                location: "/absolute/path/to/local/modules"
            }
        ]
    };
</script>

<!-- Bootstrap Dojo From Google's CDN -->
<script
    type="text/javascript"
    src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.1/dojo/dojo.js">
</script>

<script type="text/javascript">
    require(["my/FooModule"], function(FooModule){
        // ...
    });
</script>