/*
A little demo on creating and displaying fonts.

For reference, check out the PFont class in Processing
https://processing.org/reference/PFont.html 

Read about differences between 
loadFont() and createFont() in Processing reference.

Two basic methods:
In Processing menu, go to Tools --> "Create Font" to load .vlw file into data folder. 
Use loadFont() when loading that font into sketch and into a font object. 

Or pull a .ttf or .otf file into your data folder from elsewhere.
(Googling "free fonts" will give lots of options.)
Use createFont() to load font into a font object.

Remember that a font file must be in data folder in order to share the sketch with others consistently.
*/


PFont font1, font2; // creates font1 and font 2 objects from PFont class

void setup() {
  size(800, 800);
  font1 = loadFont("HiraginoSans-W0-72.vlw"); //from Processing tools
  font2 = createFont("BeautifulPeoplePersonalUse-dE0g.ttf", 72); //downloaded from https://www.fontspace.com/beautiful-people-font-f29700
  textAlign(CENTER);
}

void draw() {
  background(55);
  textFont(font1, 72);
  text("here is my first font", width/2, height/2);
  textFont(font2, 66);
  text("and my second font", width/2, height/2 + 100);
}
