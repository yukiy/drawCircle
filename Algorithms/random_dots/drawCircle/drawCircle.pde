//Processing

int radius = 150;
float frame = 0;

void drawCircle(){
  frame += 0.5;
  
  for(int i=0; i<360; i++){
    float rad = radians(i);
    float x = random(cos(rad)*radius) + width/2; 
    float y = random(sin(rad)*radius) + height/2; 
    fill(frame%256, 127);

    rect(x, y, 1, 1);
  }

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
