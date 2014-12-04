//Processing

int radius = 150;
float r = 0;
void drawCircle(){
  r += 0.01;
  pushMatrix();
  translate(width/2, height/2);
  rotate(r);
  fill(0);
  rect(0,-radius,1,1);
  popMatrix();
  
}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  noStroke();

}

void draw(){

  drawCircle();

}
