//Processing

int size = 300;
float x;
float y;
float deg;

void drawCircle() {
  pushMatrix();
  translate(width/2, height/2);

  x+= 0.001;
  deg += 0.01;
  pushMatrix();
  rotate(deg);
  translate(x, y);
  fill(0);
  rect(0, 0, 1, 1);
  popMatrix();

  popMatrix();
}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  noStroke();

  x = size * 0.35;
  y = size * 0.35;
}

void draw() {

  drawCircle();  

}

