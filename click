// ==UserScript==
// @name         Continuous Clicker with Variable Class Number
// @namespace    http://tampermonkey.net/
// @version      1.0
// @description  Continuously clicks on elements with a class name ending in a number every 5 seconds
// @author       YourName
// @match        *://*/*  // Replace this with the specific URL where you want the script to run
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    // Function to click the specified element
    function clickElement() {
        // Use a wildcard to match any number at the end of the class name
        //const element = document.querySelector("div.tvw-essence.vc-essence4");
        const element = document.querySelector("div.tvw-essence[class^='vc-essence']");

        if (element) {
            element.click();
            console.log("Element clicked.");
        } else {
            console.log("Element not found.");
        }
    }

    // Set an interval to click the element every 5 seconds
    setInterval(clickElement, 5000); // 5000 milliseconds = 5 seconds

})();
