//Processing

int size = 150;

void drawCircle(){

  noFill();

  for(int i=0; i<36; i++){
    pushMatrix();
    rectMode(CORNER);
    translate(width/2, height/2);
    rotate(radians(i*10));
    rect(0, 0, size, size);
    popMatrix();
  }

}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  drawCircle();
}

