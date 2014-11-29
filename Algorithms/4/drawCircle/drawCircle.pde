//Processing

int radius = 150;
int vertex = 100;

void drawCircle(){

  int[] xs = new int[vertex]; 
  int[] ys = new int[vertex]; 
  
  
  for(int i=0; i<vertex; i++){
    int x = (int) (cos(radians(i*360/vertex))*radius) + width/2;
    xs[i] = x;
    int y = (int) (sin(radians(i*360/vertex))*radius) + height/2;
    ys[i] = y;
  }
  
  
  for(int i=0; i<vertex; i++){
    if(i < vertex-1 ){
      line(xs[i],ys[i], xs[i+1], ys[i+1]);
    }else if(i == vertex-1){
      line(xs[i],ys[i], xs[0], ys[0]);    
    }
  }

}


void setup() {
  size(600, 600);
  background(255);
  smooth();
  drawCircle();
}

