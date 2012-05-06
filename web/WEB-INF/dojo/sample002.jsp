<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
    <head>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/resources/dojo.css"> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/tundra/tundra.css"> 
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dijit/themes/claro/claro.css"> 
        <script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js" data-dojo-config="parseOnLoad: true"></script>
        <script>require(["dojo/parser", "dijit/layout/BorderContainer", "dijit/layout/TabContainer", "dijit/layout/AccordionContainer", "dijit/layout/ContentPane", "dijit/layout/AccordionPane"]);</script>
    </head>
    <body class="claro">
        <div data-dojo-type="dijit.layout.BorderContainer" style="width: 100%; height: 100%;">
            <div data-dojo-type="dijit.layout.ContentPane" data-dojo-props="region:'top'">Top pane</div>
            <div data-dojo-type="dijit.layout.AccordionContainer" data-dojo-props="region:'leading'">
                <div data-dojo-type="dijit.layout.AccordionPane" title="pane #1">accordion pane #1</div>
                <div data-dojo-type="dijit.layout.AccordionPane" title="pane #2">accordion pane #2</div>
                <div data-dojo-type="dijit.layout.AccordionPane" title="pane #3">accordion pane #3</div>
            </div>
            <div data-dojo-type="dijit.layout.TabContainer" data-dojo-props="region:'center'">
                <div data-dojo-type="dijit.layout.ContentPane" title="tab #1">tab pane #1</div>
                <div data-dojo-type="dijit.layout.ContentPane" title="tab #2">tab pane #2</div>
                <div data-dojo-type="dijit.layout.ContentPane" title="tab #3">tab pane #3</div>
            </div>
            <div data-dojo-type="dijit.layout.ContentPane" data-dojo-props="region:'trailing'">Trailing pane</div>
            <div data-dojo-type="dijit.layout.ContentPane" data-dojo-props="region:'bottom'">Bottom pane</div>
        </div>
    </body>
</html>