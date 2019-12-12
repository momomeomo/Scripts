// ==UserScript==
// @name         LKQpartPriceSearch
// @namespace    https://github.com/momomeomo
// @version      1
// @description  uncompleted
// @author       momomeomo
// @match        *://www.lkqpickyourpart.com/*
// @grant        none
// ==/UserScript==

function ConcatOperations() {
    if (window.location.href == "https://www.lkqpickyourpart.com/") {
        if (confirm("Execute Part price search?")) {
            var Zip = window.prompt("Enter zip code: ");
            var a = "https://www.lkqpickyourpart.com/locations/?zip=";
            var b = "&range=50";
            var c = (a.concat(Zip,[b]));
            window.open(c);
        }
    } else {
        var here = window.location.href;
        if (here.includes("/locations/")) {
            var mainElement = document.getElementsByClassName("pypfys_links");
            for (var i = 0; i < mainElement.length; i++) {
                var children = mainElement[i].childNodes;
                for (var j = 0; j < children.length; j++) {
                    if (children[j].innerText == "Go to Store") {
                        window.open(children[j], '_blank');
                    }
                }
            }
        }
    }
}

ConcatOperations();
