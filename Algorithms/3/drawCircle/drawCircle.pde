//Processing
// based on https://processing.org/discourse/alpha/board_Programs_action_display_num_1084560588.html

int radius = 150;

void drawCircle() {
  int px = radius;
  int s;
  int cx = width/2;
  int cy = height/2;

  for(int y=0; y<=radius; y++){

    s = (int) sqrt(radius*radius - y*y); 

    for(int x=s; x<=px; x++){ 
      set(cx+x, cy+y, 0); 
      set(cx-x, cy-y, 0); 
      set(cx+x, cy-y, 0); 
      set(cx-x, cy+y, 0);
    } 

    px = s;

  }

}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  drawCircle();
}

