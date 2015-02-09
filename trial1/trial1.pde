//canvas size
//640px wide by 480px tall
//this is a commonly used dimension
int al = 150;
int ar = 150;
int b = 185;
int c = 100;
int d = 100;
int i = 1;
//setup is stuff that happens only one, draw happens
//again and again in a loop (forever)
void setup() {
  size (640, 480);
  background(139, 139, 139);



//declare variables, after setting canvas size
int centerX = width/2;
int centerY = height/2;
println(centerX);
println(centerY);

//cross using a variable to position relative to center
stroke(0);
strokeWeight(4);
line (centerX, centerY + 40, centerX, centerY-40);
line(centerX - 40, centerY, centerX + 40, centerY);

}

void draw(){


//midpoint of canvas = (320, 240)


//if (keyPressed == false)
//left rectangle
 rect(al-20, b, c, d);
//rect(centerX - 20, centerY + 50, 100, 100);


//outer right rectangle
 rect(ar + 250, b, c, d);



//declare myFont as a PFont
PFont myFont = createFont("Arial", 24);
textFont(myFont);
textAlign(LEFT, CENTER);
fill(0, 0, 255);
//text("string", x coordinate, y coordinate);

text("Trial Number " + i +" : ", 15, 25);
}

//inner right rectangle

void mousePressed(){
noStroke();
fill(139, 139, 139);
rect(425, 210,50,50);
}

void keyPressed(){
 
  int x = 150;

    setup();
    
    if (key == 'y' || key == 'Y'){
  i = i + 1;
    }
   
    if (key == 's' || key == 'S'){
      //move the squares further apart
      
      ar = ar + 20;
      al = al - 20;
        //left rectangle
   //     rect(x-40, 185, 100, 100);
        //rect(centerX - 20, centerY + 50, 100, 100);
      
        //outer right rectangle
     //    rect(x+270, 185, 100,100);
          }
  
  if (key == 'a' || key == 'A'){
    //move the squares closer together
     ar = ar - 20;
     al = al + 20;
   
        setup();
        //left rectangle
    //     rect(x+40, 185, 100, 100);
         //rect(centerX - 20, centerY + 50, 100, 100);
          
         //outer right rectangle
     //     rect(x+310, 185, 100,100);
  }
  
  
  
if (key == 'Q' || key == 'q'){
      setup();
      al = 150;
      ar = 150;
      i = 1;
}
}


