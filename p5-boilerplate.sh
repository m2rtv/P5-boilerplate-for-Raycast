#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title P5 boilerplate
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Project name", "percentEncoded": true }

CURRENTDATE="$(date +%Y%m%d)"
CURRENTDATE=${CURRENTDATE:2}

mkdir "$CURRENTDATE - $1"
touch ./"$CURRENTDATE - $1"/index.html
cat << EOT >> ./"$CURRENTDATE - $1"/index.html
<html>
<head>
	<meta charset="UTF-8">
    <title>$CURRENTDATE - $1</title>
    <script src="https://cdn.jsdelivr.net/npm/p5@1.4.0/lib/p5.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chroma-js/2.1.2/chroma.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/dayjs/1.10.7/dayjs.min.js"></script>
	<script language="javascript" type="text/javascript" src="sketch.js"></script>
	<link rel="stylesheet" href="main.css">
</head>
<body>
	
</body>
</html>
EOT

touch ./"$CURRENTDATE - $1"/main.css
cat << EOT >> ./"$CURRENTDATE - $1"/main.css
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

/* User styles start from here */

html, body {
	height: 100%;
}

body {
    background-color: #fff;
	margin: 0;
	display: flex;
	/* This centers our sketch horizontally. */
	justify-content: center;
	/* This centers our sketch vertically. */
	align-items: center;
}
EOT

touch ./"$CURRENTDATE - $1"/sketch.js
cat << EOT >> ./"$CURRENTDATE - $1"/sketch.js
function setup() {
    let width = 1080;
    let height = 1080;
    createCanvas(width, height);
}

function draw() {
}

function keyTyped() {
	let timeStamp = dayjs().format('YYMMDD-HHmmss');
    if (key === 's') {
        saveCanvas('img-' + timeStamp + '@2x', 'png');
    }
}
EOT

mkdir ./"$CURRENTDATE - $1"/_renders
mkdir ./"$CURRENTDATE - $1"/img

open -a "Visual Studio Code" ./"$CURRENTDATE - $1"