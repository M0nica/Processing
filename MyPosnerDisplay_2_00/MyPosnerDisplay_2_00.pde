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

int startLeftProbe;
int endLeftProbe;
int leftProbeDuration;
int leftRT;
int startLeftRT;
int endLeftRT;

int arrowDirection; 

int startRightProbe;
int endRightProbe;
int rightProbeDuration;
int rightRT;
int startRightRT;
int endRightRT;

int totalTime = 5000;

int x = 150;
  
//int durationRT;
int now;
int passedTime;

int savedTime;


boolean lateMessage;
boolean showArrow;
boolean drawLeftProbeBool;
boolean drawRightProbeBool;
boolean timerMessageRight;
boolean timerMessageLeft;


int cued;
boolean leftCued;
boolean rightCued;


//setup is stuff that happens only one, draw happens
//again and again in a loop (forever)
void setup() {
  size (640, 480);
  //background(139, 139, 139);

  //initialize variables, after setting canvas size
  centerX = width/2;
  centerY = height/2;
  savedTime = millis();
  lateMessage = false; 
}


void draw() {
  background(139, 139, 139);
  
  if(showArrow)
  
  {
    if (arrowDirection == 0) {
         arrowProbeTime();
         drawLeftArrow();
    }
  
    if (arrowDirection == 1) {
         arrowProbeTime();
         drawRightArrow();
    }
  }
  
  
  
  
if ((drawLeftProbeBool == false) && (drawRightProbeBool == false)){
     lateMessage = true;
   }
    
  if(lateMessage){
    
  
   tooLate();

  }
  
 fill(0);
  //fill(255, 255, 255);
   if (leftCued){
     stroke(255);
     strokeWeight(4);
     
  //left rectangle
  
  
  
  }
  
  rect(aLeft - 20, b, c, d);
 

  
  //rect(centerX - 130, centerY + 50, 100, 100);
  //rect(centerX + 130, centerY + 50, 100, 100);


  //outer right rectangle
   
  fill(0);
  
  if (rightCued){
      stroke(255);
      strokeWeight(4);
  }
  
    passedTime = millis() - savedTime;
  
    if(passedTime >= totalTime) {
    println("this should turn off now");
    leftCued = false;
    rightCued = false;
    }
   
  rect(aRight + 250, b, c, d);
  
  
 
 if (drawLeftProbeBool) {
   //now = millis();
          leftProbeTime();
          drawLeftProbe();
        
    }
    
    if (drawRightProbeBool) {
      rightProbeTime();
     drawRightProbe();  
    }
   
   
  if (timerMessageRight && !drawRightProbeBool){
   
 rightRTMessage();
  
}

if(timerMessageLeft && !drawLeftProbeBool){ pushStyle();
   leftRTMessage();
  }
   

//when the arrow is showing 
if(showArrow == false){
  //fixation cross uses variables to position relative to center
  fixationCross();
}
trialNumber();


    }
    
    
//   THIS IS THE END OF THE DRAW LOOP


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


