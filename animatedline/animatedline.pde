int n;

void setup(){
size(640, 480);      //set up window
n = 0;
}

void draw(){
 background(255, 255, 255);
 line(300, 240, 340 + n, 240);
 n = n + 1;
if (keyPressed == true){
  n = 0;
}
 //println(n);
}
