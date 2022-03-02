
//REVIEW: CREATE SIMPLE COUNTER TO TRACK MOUSE CLICKS


int counter=0;
float r,g,b=0;
int x=0;

void setup(){
  size(500,500);
  textAlign(CENTER);
}

void draw(){
  background(r,g,b);
  textSize(44);
  text(counter, width/2, height/2);
  /* //No! This doesn't work! Uncomment to see why!
  if(mousePressed){
    counter++;
  }
  */
}


void mousePressed(){
  counter++;
  r= random(255);
  g=random(50,100);
  b=0;
}
