//canvas size
//640px wide by 480px tall
//this is a commonly used dimension
int[] trialConditionOrder = new int[4];

int aLeft = 150;
int aRight = 150;
int b = 185;
int c = 100;
int d = 100;

int trialNumber = 0;

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
int totalCuedTime = 10000;
int totalArrowTime = 5000;

int x = 150;
  
//int durationRT;
int now;
int passedTime;

int savedTime;

int numTrials = 0;
int condition;


boolean lateMessage;

boolean drawLeftProbeBool;
boolean drawRightProbeBool;
boolean timerMessageRight;
boolean timerMessageLeft;
boolean cross;
boolean keyB;
boolean istDone;
boolean showSplashScreen;


int cued;
int probe;
boolean probeBool;
boolean istBool;
boolean cuedBool;
boolean leftCued;
boolean rightCued;


int startTrial;
int startCue;
int cueDuration = 1000;
int endCue;

int startFixation;
int endFixation;
int fixationDuration = 500;

int startIst;
  
int endIst;

int istDuration = 500;

int startProbe;
int endProbe;
int probeDuration = 2000;
 





//setup is stuff that happens only one, draw happens
//again and again in a loop (forever)
void setup() {
  size (640, 480);
  //background(139, 139, 139);

  //initialize variables, after setting canvas size
  centerX = width/2;
  centerY = height/2;
  savedTime = millis();
  istDone = false;
  //drawLeftProbeBool = false;
  //drawRightProbeBool = false;
  lateMessage = false; 
  rightCued = false;
  leftCued = false;
  showSplashScreen = true;
  
}


void draw() {
  background(139, 139, 139);
  
   now = millis();
   fixationCross();
   //getProbe(); commented out JJN
  
 //if (cuedBool){
// getCued();
// }
  rect(aLeft - 20, b, c, d);
  rect(aRight + 250, b, c, d);
  
  fill(255, 255, 255);
  textSize(15);
   text("Press the space bar when a grey square appears", 15,50);
  if (cuedBool)
  {
    //println("TRUE");
    
    
      
  //startIst = endCue;
 // endIst = startIst + istDuration;
   
    if( startCue <= now && now <= endCue)
    {
       if (leftCued){
         //rightCued = false;
         stroke(0);
         strokeWeight(4);
         rect(aLeft - 20, b, c, d);
     
      //left rectangle
      }
      if (rightCued){
     // leftCued = false;
      stroke(0);
      strokeWeight(4);
      rect(aRight + 250, b, c, d);
      }
  }
    
    if (endCue < now)
    {
      leftCued = false; //jjn
      rightCued = false; //jjn
      //println("ALL DONE WITH CUE");
      cuedBool = false;
    }
    
    // passedTime = millis() - savedTime;
  /*
    if(passedTime >= totalTime) {
  
    leftCued = false;
    rightCued = false;
    }
   */ //jjn
  
  startIst = endCue;
  endIst = startIst + istDuration;
   
  
  
  if( startIst <= now && now <= endIst){

 //println("IST time");
  istDone = true;
  }
  

   
  }
  
  
  //startProbe = endIst;  //commented out JJN
  //endProbe = startProbe + probeDuration; //commented out JJN
   
 //now = millis();
// if(startProbe <= now && now <= endProbe){

  //if(/*istDone &&*/ startProbe <= now && now <= endProbe)
    if(/*istDone &&*/ startProbe <= now)
  {
  
    // println("draw probe");
    
    
     if (drawLeftProbeBool) 
     {
       //now = millis();
      
      //  drawRightProbeBool = false;
       leftProbeTime();
      drawLeftProbe();
      println("DRAWING LEFT PROBE");
      //startNewTrial();
    
    
    }
    
    if (drawRightProbeBool) 
    {
       
       // drawLeftProbeBool = false;
      rightProbeTime();
       drawRightProbe();  
       println("DRAWING RIGHT PROBE");
       //startNewTrial();
      
     }
   
  }
//  //  following two if-then's did the trick - JJN
//  
//  if (drawLeftProbeBool && endProbe < now)
//  {
//    drawLeftProbeBool = false;
//    drawRightProbeBool = false;
//    startNewTrial();
//  }
//  
//  if (drawRightProbeBool && endProbe < now)
//  {
//    drawLeftProbeBool = false;
//    drawRightProbeBool = false;
//    startNewTrial();
//  }

//  following two if-then's did the trick - JJN
  
  if (drawLeftProbeBool && timerMessageLeft)
  {
    drawLeftProbeBool = false;
    //drawRightProbeBool = false;
    startNewTrial();
   
  }
  
  if (drawRightProbeBool && timerMessageRight)
  {
    //drawLeftProbeBool = false;
    drawRightProbeBool = false;
    startNewTrial();
  }
  
  
  
   noStroke();
   


  //outer right rectangle
   
  fill(255, 255, 255);
  

  noStroke();
    
   
  if (timerMessageRight && !drawRightProbeBool){
   
 rightRTMessage();
 println("TRIALS OVER");
 startNewTrial();
  
}

if(timerMessageLeft && !drawLeftProbeBool){ pushStyle();
   leftRTMessage();
   println("TRIALS OVER");
 startNewTrial();
  }
   
//if( startCue <= now && now <= endCue){
  // if( startCue  <= millis() && millis() <= endCue){
//    println("this is now" + now);
    
//  cuedBool = true;
 // }
  
//  if(cross){
  
    fixationCross();
 
//}

/*
if (keyB){
  now = millis();
  startCue = now + 500;
 calculateTime();
 if( startCue  <= now && now <= endCue){
    println("this is now" + now);
    
  cuedBool = true;
  //getCued();
 
  }
}
 if (cuedBool && !istBool){
 //getCued();
 cuedBool = false;
   }
   
*/
 
 //if (probeBool  && !istBool){
 //getProbe();
 
 //probeBool = false;
 
 // trialNumber += 1;
// }

 fill(0, 0, 255);
     text("Trial Number: " + numTrials, 15, 25);
     fill(255, 255, 255);

if (showSplashScreen){ 
background(139, 139, 139);
text("Press 'E' to begin", 15, 25);
}
    }
    
    

