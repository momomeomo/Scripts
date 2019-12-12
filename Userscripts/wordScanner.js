// ==UserScript==
// @name     wordScanner
// @include  *
// @version  1
// @grant    none
// @author   https://github.com/momomeomo
// @description  searches page for Key word and keeps refreshing till it finds it
// ==/UserScript==

// greasemonkey mozilla

var Key = null;

if ( Key === null){alert("set Key");}

if (Key != null){
	var pattern = new RegExp(Key,"gi");
	var match = document.body.textContent.match(pattern);
  
	if(match === null){location.reload();}
	else{alert("Found");}
}

// need to save variables to local storage to work
// word scanner pseudo code