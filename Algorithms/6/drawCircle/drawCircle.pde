//Processing

int size = 150;

void drawCircle(){

  for(int i=0; i<360; i++){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(i));
    line(0, 0, size, size);
    popMatrix();
  }

}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  drawCircle();
}

