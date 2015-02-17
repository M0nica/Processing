//canvas size
//640px wide by 480px tall
//this is a commonly used dimension
int aLeft = 150;
int aRight = 150;
int b = 185;
int c = 100;
int d = 100;
int trialNumber = 1;
int centerX;
int centerY;
//setup is stuff that happens only one, draw happens
//again and again in a loop (forever)
void setup() {
  size (640, 480);
  //background(139, 139, 139);



  //initialize variables, after setting canvas size
  centerX = width/2;
  centerY = height/2;
 // println(centerX);
  //println(centerY);
}

void draw() {
  background(139, 139, 139);

  //cross using a variable to position relative to center
  stroke(0);
  strokeWeight(3);
  line (centerX, centerY + 40, centerX, centerY-40);
  line(centerX - 40, centerY, centerX + 40, centerY);


  //midpoint of canvas = (320, 240)


  //if (keyPressed == false)
  //left rectangle
  fill(255, 255, 255);
  rect(aLeft - 20, b, c, d);
  //rect(centerX - 130, centerY + 50, 100, 100);
  //rect(centerX + 130, centerY + 50, 100, 100);


  //outer right rectangle
  fill(255, 255, 255);
  rect(aRight + 250, b, c, d);

  if (mousePressed == true) {
    noStroke();
    fill(139, 139, 139);
    rect(425, 210, 50, 50);
  }


  //declare myFont as a PFont
  PFont myFont = createFont("Arial", 24);
  textFont(myFont);
  textAlign(LEFT, CENTER);
   //blue fill for the text
   fill(0, 0, 255);
  //text("string", x coordinate, y coordinate);

  text("Trial Number " + trialNumber +" : ", 15, 25);
}



void keyPressed() {

  int x = 150;

  setup();

  if (key == 'y' || key == 'Y') {
    trialNumber += 1;
  }

  if (key == 's' || key == 'S') {
    //move the squares further apart

    aRight += 20;
    aLeft -= 20;
    //left rectangle
    //     rect(x-40, 185, 100, 100);
    //rect(centerX - 20, centerY + 50, 100, 100);

    //outer right rectangle
    //    rect(x+270, 185, 100,100);
  }

  if (key == 'a' || key == 'A') {
    //move the squares closer together
    aRight -= 20;
    aLeft +=  20;

    //  setup();
    //left rectangle
    //     rect(x+40, 185, 100, 100);
    //rect(centerX - 20, centerY + 50, 100, 100);

    //outer right rectangle
    //     rect(x+310, 185, 100,100);
  }



  if (key == 'Q' || key == 'q') {
    setup();
    aLeft = 150;
    aRight = 150;
    trialNumber = 1;
  }
}

//use push and pop when you are making a lot of style changes
//that will only apply to one shape:
// pushStyle(); pushes instructions down in stack
// popStyle(); removes instructions from the stack


//inner right rectangle

//void mousePressed() {
//  noStroke();
//  fill(139, 139, 139);
//  rect(425, 210, 50, 50);
//}

