//Processing

int radius = 150;

void drawCircle(){
  
  for(int i=0; i<36000; i++){
    float rad = radians(i);
    float x = random(cos(rad)*radius) + width/2; 
    float y = random(sin(rad)*radius) + height/2; 
    fill(0, 0, 0, 127);
    rect(x, y, 1, 1);
  }

}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  noStroke();
  drawCircle();

}

