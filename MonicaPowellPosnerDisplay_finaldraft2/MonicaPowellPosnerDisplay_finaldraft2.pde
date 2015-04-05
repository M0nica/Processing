//canvas size
//640px wide by 480px tall
//this is a commonly used dimension

int numTrialsPerCondition = 5;
int numConditions = 12;
int totalTrials = numConditions * numTrialsPerCondition;

int[] trialConditionOrder = new int[totalTrials];

int var3;
int cueSide;
int probeSide;


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
boolean restart;

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

//int[] data;

PImage flatDuck;
PImage realDuck;
PImage rubberDuck;
 PrintWriter output;

//setup is stuff that happens only one, draw happens
//again and again in a loop (forever)
void setup() {
  size (640, 480);
   // Load text file as a string
  //String[] stuff = loadStrings("SubjectData.txt");
   //data = int(split(stuff[0],','));
   
    output = createWriter("SubjectData.txt"); 
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
  flatDuck = loadImage("flatDuck.jpeg");
realDuck = loadImage("realDuck.jpg");
rubberDuck = loadImage("rubberDuck.gif");
 drawLeftProbeBool = false;
 drawRightProbeBool = false;

  
}


void draw() {
  background(139, 139, 139);
  
   now = millis();
   fixationCross();

  rect(aLeft - 20, b, c, d);
  rect(aRight + 250, b, c, d);
  
  fill(255, 255, 255);
  textSize(15);
   text("Press the space bar when a grey square appears", 15,50);
  if (cuedBool)
  {
   
    if( startCue <= now && now <= endCue)
    {
       if (leftCued){
         stroke(0);
         strokeWeight(4);
         rect(aLeft - 20, b, c, d);
         rightCued = false;
     
      //left rectangle
      }
      if (rightCued){
      stroke(0);
      strokeWeight(4);
      rect(aRight + 250, b, c, d);
      leftCued = false;
      }
  }
    
    if (endCue < now)
    {
      leftCued = false; //jjn
      rightCued = false; //jjn
      cuedBool = false;
    }
 
  
  startIst = endCue;
  endIst = startIst + istDuration;
   
  
  
  if( startIst <= now && now <= endIst){


  istDone = true;
  }
  

   
  }
  
  
  
    if(/*istDone &&*/ startProbe <= now)
  {
  
    // println("draw probe");
    
    
     if (drawLeftProbeBool) 
     {
       
       leftProbeTime();
      drawLeftProbe();
      
      
    
    
    }
    
    if (drawRightProbeBool) 
    {

      rightProbeTime();
      drawRightProbe();  
       
     }
   
  }

  
//  if (drawLeftProbeBool && timerMessageLeft)
//  {
//    drawLeftProbeBool = false;
//    startNewTrial();
//   
//  }
//  
//  if (drawRightProbeBool && timerMessageRight)
//  {
//    drawRightProbeBool = false;
//    startNewTrial();
//  }
//  
  
  
   noStroke();
   


  //outer right rectangle
   
  fill(255, 255, 255);
  

  noStroke();
  
  if (restart){
  startNewTrial();
  restart = false;
}
    
   
  if (timerMessageRight && !drawRightProbeBool){
 //  restart = false;
 rightRTMessage();
 println("TRIALS OVER");

  
}

if(timerMessageLeft && !drawLeftProbeBool){ pushStyle();
//restart = false;
   leftRTMessage();
   println("TRIALS OVER");

  }
  
  
   

  
  if (var3 == 0){
    fixationCross();
  }
  
  else {
  duckies();
}
 


 fill(0, 0, 255);
     text("Trial Number: " + numTrials, 15, 25);
     fill(255, 255, 255);

if (showSplashScreen){ 
background(139, 139, 139);
text("Press 'E' to begin", 15, 25);
}
    }
    
    

