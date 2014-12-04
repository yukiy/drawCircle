//Processing

int dia = 300;
PImage img = new PImage();

void drawCircle() {

  img.width = dia;
  img.height =dia;
  img.loadPixels();
  for (int y=0; y < img.height; y++) {
    for(int x=0; x < img.width; x++){
      int xx = (int)( sqrt(sq(img.width/2) - sq(img.height/2 - y)));
      int xx2 = xx + img.width/2;
      xx = img.width/2 - xx;
      int pos = img.width*y + x;
      if(x == xx || x == xx2 ){
        img.pixels[pos] = color(0);      
     }else{
        img.pixels[pos] = color(255);            
      }
    }    
  }
  img.updatePixels();
  image(img, width/2 - dia/2, height/2 - dia/2, dia, dia);

}


void setup() {

  size(600, 600);
  background(255);
  smooth();
  noStroke();

  drawCircle();
}

