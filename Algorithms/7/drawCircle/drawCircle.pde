//Processing

int radius = 150;

void drawCircle(){

  noFill();

  for(int i=0; i<36; i++){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(i*10));
    ellipseMode(CORNER);
    ellipse(0, 0, radius, radius);
    popMatrix();
  }

}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  drawCircle();
}

