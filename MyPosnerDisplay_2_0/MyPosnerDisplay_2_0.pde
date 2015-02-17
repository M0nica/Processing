//canvas size
//640px wide by 480px tall
//this is a commonly used dimension

//consider creating one function that determines the seperation between 
//the rectangles as opposed to right vs. left

int aLeft = 150;
int aRight = 150;

int b = 185;
int c = 100;
int d = 100;

int trialNumber = 1;

int centerX;
int centerY;

int startTime;
int totalTime;

int startLeftProbe;
int endLeftProbe;
int leftProbeDuration;
int leftRT;
int startLeftRT;
int endLeftRT;

//all ints, declare the same for Right

int startRightProbe;
int endRightProbe;
int rightProbeDuration;
int rightRT;
int startRightRT;
int endRightRT;

int durationRT;
int now;

boolean drawLeftProbeBool;
boolean drawRightProbeBool;
 //boolean probeVisiblity = false;
  //Timer timer;

//setup is stuff that happens only one, draw happens
//again and again in a loop (forever)
void setup() {
  size (640, 480);
  //background(139, 139, 139);

  //initialize variables, after setting canvas size
  centerX = width/2;
  centerY = height/2;
  
  //startTime = millis();
  totalTime = 2000;
  int duration;
  
  drawLeftProbeBool = false;
 drawRightProbeBool = false;
  
 // probeVisiblity = false;
 // println(centerX);
  //println(centerY);
}


//    void rightP (){
//     if (keyPressed == true && key == '1'){
//        int startTime = millis();
//        int passedTime = millis() - startTime;
//         while (passedTime < totalTime){
//         noStroke();
//         fill(139, 139, 139);
//         rect(295, 80, 50, 50);
//         drawRightProbeBool = false;
//         println("testing rightP");
//         }
//
//    }
//}

//void leftP (){
//if (keyPressed == true && key == '2'){
//   int passedTime = millis() - startTime;
//         while (passedTime < totalTime){
//          fill(139, 139, 139);
//          rect(425, 210, 50, 50);
//          drawLeftProbeBool = false;
//               println("testing leftP");
//         }
//
//}}

void draw() {
  
  keyPressed();
  //when pressing C. 
  //draw arrow start = now
  //draw arrow end = draw arrow start + draw fixation
  // arrow fixation duration =22000;

  background(139, 139, 139);

  //fixation cross uses variables to position relative to center
  stroke(0);
  strokeWeight(3);
  line (centerX, centerY + 40, centerX, centerY-40);
  line(centerX - 40, centerY, centerX + 40, centerY);


  //midpoint of canvas = (320, 240)


 
  //left rectangle
  fill(255, 255, 255);
  rect(aLeft - 20, b, c, d);
  //rect(centerX - 130, centerY + 50, 100, 100);
  //rect(centerX + 130, centerY + 50, 100, 100);


  //outer right rectangle
  fill(255, 255, 255);
  rect(aRight + 250, b, c, d);


  //right probe
  
 //rightP();
 //leftP();
//{
//  if (mousePressed == true) {
    
  //  noStroke();
   // fill(139, 139, 139);
   //rect(425, 210, 50, 50);
  //}
  //}


  //declare myFont as a PFont
  PFont myFont = createFont("Arial", 24);
  textFont(myFont);
  textAlign(LEFT, CENTER);
   //blue fill for the text
   fill(0, 0, 255);
  //text("string", x coordinate, y coordinate);

  text("Trial Number " + trialNumber +" : ", 15, 25);
//}




 
    }
    
    




//void leftP() {
// if (key == '1'){
//     noStroke();
//     fill(139, 139, 139);
//     rect(295, 80, 50, 50);
//      probeVisiblity = true;
//    
// }
//}



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


//***NOTES FOR NEXT WEEK***//
//counters to make sure the left and right probe are shown
//equally but we need to use the random function. Random does
//not distribute evenly
//int leftProbeTrials = 10;
//int rightProbeTrials = 10;

//we will be using the function random(1,2);
//also include a loop that ensures that leftProbeTrials is above 0, if not 
//then you need to default to right probe trials

//pick random numbber 1 or 2

//if 1
//check the value of left probe trial, if > 0 good. we're done.
  //leftProbeTrial -= 1; decrement the leftProbeTrial
  
//if 2
//check the value of right probe trial, if > 0 good. we're done.
  //rightProbeTrial -= 1; decrement the rightProbeTrial

//at some point instead of seperate variables, we will create a matrix that stores all the values in the same place
//in a list

//**WE WILL BE LOOKING AT TIME SOON**//

//= millis() = now;
//int fixationDuration = 1000;
//fixationStartTime = now;
//fixactionEndTime = now + fixationDuration;
//if now > fixationStartTime && fixationStartTime < fixationEndTime;
//then display dixation point


