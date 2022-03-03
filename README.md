# P5 boilerplate for Raycast app
A shell script for [Raycast app](https://raycast.com/) so I can easily fire up new generative art sketches using [P5 library](https://p5js.org/).

## How does it work?
1. Fire up Raycast app and type in "P5" → "Your project name"
2. This creates a boilerplate folder with todays date and your project name _(YYMMDD - YOUR PROJECT NAME)_.
3. Opens the folder in VS Code.
4. Fire up the "Liveserver plugin" and you're good to go.

## What's included?
* P5 library CDN link
* Chroma.js CDN link _(for easier color manipulation)_
* Day.js CDN link _(date/time formatting - used in screenshot file naming)_
* Basic CSS reset and vertical centering of the canvas
* Keyboard event function _(press "S")_ for saving the current frame as .png file. Naming: "img-YYMMDD-HHmmss@2x.png".

## Created folder structure
* YYMMDD - PROJECT NAME
  *\_renders _(folder for screenshots)_
  *img _(folder for image assets)_
  *index.html
  *main.css
  *sketch.js
    
You probably want to modify this to your needs. I keep the shell script in the current year folder.
Check [Raycast Github page](https://github.com/raycast/script-commands#install-script-commands-from-this-repository) on how to set it up.
Let me know if you have any tips and tricks to share.
