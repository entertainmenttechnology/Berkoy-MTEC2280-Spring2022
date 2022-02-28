
/*

FOR LOOPS! (review)

basic structure:
for (initialization; boolean test; incrementation){
  //statements
}

*/


void setup(){
  size (800,800);
}

void draw(){
  background(255);
  //"ellipse frame"
  for(int i=0; i<= width; i+= 20){
    ellipse(i, 20, 30, 30);
    ellipse(i, height-20, 30, 30);
    ellipse(20, i, 30, 30);
    ellipse(width-20, i, 30, 30);
  } 
  //concentric circles
  for(int i= 700; i > 0; i-= 50){
    ellipse(width/2, height/2, i, i);
  }
}
