//Processing

int dia = 300;

void arrayGenerate() {
  String[] text = {};

  for (int y=0; y < dia; y++) {
    for(int x=0; x < dia; x++){
      int xx = (int)( sqrt(sq(dia/2) - sq(dia/2 - y)));
      int xx2 = xx + dia/2;
      xx = dia/2 - xx;
      int pos = dia*y + x;
      if(x == xx || x == xx2 ){
        text = append(text, "0");
     }else{
        text = append(text, "1");
      }
    }    
  }
  saveStrings("data.txt", text);
}

void drawCircle(){
  String[] data = loadStrings("data.txt");
  println(data.length);

  for(int i=0; i<data.length; i++){
    int x = i % dia;
    int y = ceil( i / dia);
    String s = data[i];
    if(s.equals("0")){
      fill(0);
    }else{
      fill(255);
    }
    rect(x, y, 1, 1);
  }
}

void setup() {

  size(600, 600);
  background(255);
  smooth();
  noStroke();

  //arrayGenerate();
 drawCircle();
}

