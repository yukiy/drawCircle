//Processing

int dia = 300;

void drawCircle(){

  arc(width/2, height/2, dia, dia, 0, 2*PI);

}

void setup(){

  size(600, 600);
  background(255);
  smooth();
  drawCircle();

}

