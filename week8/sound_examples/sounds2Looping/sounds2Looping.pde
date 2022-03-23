/*
This is a sound file player. 
 
 Mouse press changes between two tracks.
 
 Reference: https://processing.org/reference/libraries/sound/index.html
 */


import processing.sound.*; //import Processing sound library

//Create SoundFile objects
SoundFile sample1; 
SoundFile sample2;

String looping= "sample1"; //track which file is looping

void setup() {
  //Load SoundFiles and designate path
  sample1 = new SoundFile(this, "sample1.aiff");
  sample2 = new SoundFile(this, "sample2.aiff");

  // Play sample1 in a loop to start
  sample1.loop();
}      


void draw() {
  println (looping);
}

void mousePressed() {
  if (looping=="sample1") {
    sample1.stop();
    sample2.loop(); 
    looping="sample2";
  } else if (looping== "sample2") {
    sample2.stop();
    sample1.loop();
    looping= "sample1";
  }
}
