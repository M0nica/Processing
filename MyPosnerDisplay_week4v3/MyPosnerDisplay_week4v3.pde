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
int totalCuedTime = 10000;
int totalArrowTime = 5000;

int x = 150;
  
//int durationRT;
int now;
int passedTime;

int savedTime;


boolean lateMessage;

boolean drawLeftProbeBool;
boolean drawRightProbeBool;
boolean timerMessageRight;
boolean timerMessageLeft;
boolean cross;
boolean keyB;


int cued;
boolean probeBool;
boolean istBool;
boolean cuedBool;
boolean leftCued;
boolean rightCued;


int startTrial;
int startCue;
int cueDuration = 1000;
int endCue;

int startIst;
  
int endIst;

int istDuration = 500;

int startProbe;
int endProbe;
int probeDuration = 2000;
 

int fixationDuration = 500;



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
  rightCued = false;
  leftCued = false;
  now = millis();
}


void draw() {
  background(139, 139, 139);
  
   
    fixationCross();
  
 if (cuedBool){
 getCued();
 }

  fill(255, 255, 255);
   if (leftCued){
     rightCued = false;
     stroke(0);
     strokeWeight(4);
     rect(aLeft - 20, b, c, d);
 
  //left rectangle
  }
   noStroke();
   
  rect(aLeft - 20, b, c, d);
 

  //outer right rectangle
   
  fill(255, 255, 255);
  
  if (rightCued){
      leftCued = false;
     
      stroke(0);
      strokeWeight(4);
       rect(aRight + 250, b, c, d);
      
  }
  noStroke();
    
    passedTime = millis() - savedTime;
  
    if(passedTime >= totalTime) {
  
    leftCued = false;
    rightCued = false;
    }
   
  rect(aRight + 250, b, c, d);
  

 
 if (drawLeftProbeBool) {
   //now = millis();
   drawRightProbeBool = false;
          leftProbeTime();
          drawLeftProbe();
          
        
    }
    
    if (drawRightProbeBool) {
       drawLeftProbeBool = false;
      rightProbeTime();
     drawRightProbe();  
    
    }
   
   
  if (timerMessageRight && !drawRightProbeBool){
   
 rightRTMessage();
  
}

if(timerMessageLeft && !drawLeftProbeBool){ pushStyle();
   leftRTMessage();
  }
   


  
  if(cross){
  
    fixationCross();
 
}


if (keyB){
 // now = millis();
  //startCue = now + 500;
 calculateTime();
 if( startCue  <= now && now <= endCue){
    println("this is now" + now);
    
  cuedBool = true;
  getCued();
 
  }
}
 if (cuedBool && !istBool){
 getCued();
 cuedBool = false;
   }
   

 
 if (probeBool  && !istBool){
 getProbe();
 probeBool = false;
  trialNumber += 1;
 }

 fill(0, 0, 255);
     text("Trial Number: " + trialNumber, 15, 25);
     fill(255, 255, 255);


    }
    
    

