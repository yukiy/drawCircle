//Processing

void drawCircle() {
  int radius = 150;
  float k = 4.0 * (sqrt(2.0) - 1.0) / 3.0 * radius;
  int ox = width/2;
  int oy = height/2;
  beginShape();

  vertex(ox, oy - radius);

  bezierVertex(
    ox + k,      oy - radius, 
    ox + radius, oy - k, 
    ox + radius, oy
  );

  bezierVertex(
    ox + radius, oy + k, 
    ox + k,      oy + radius, 
    ox,          oy + radius
  );

  bezierVertex(
    ox - k,      oy + radius, 
    ox - radius, oy + k, 
    ox - radius, oy
  );

  bezierVertex(
    ox - radius, oy - k, 
    ox - k,      oy - radius, 
    ox,          oy - radius
  );

  noFill();
  stroke(0);
  endShape();
}


void setup() {
  size(600, 600);
  background(255);
  smooth();
  drawCircle();
}

