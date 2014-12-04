//Processing

int radius = 150;

void drawCircle(){

  for(int r=0; r<360; r++){
    float x = cos(radians(r))*radius  + width/2;
    float y = sin(radians(r))*radius  + height/2; 
    rect(x, y , 1, 1);
  }

}


void setup() {
  
  size(600, 600);
  background(255);
  smooth(); 
  
  drawCircle();

}

