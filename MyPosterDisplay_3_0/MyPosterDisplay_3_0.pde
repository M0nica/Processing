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

void setup(){
 
  now = millis();
  
}

void draw(){
  drawTrialNumber();
  drawProbeLocations();
  
  //drawLeftArrow();
  //drawRightArrow();
  
//  if(showCue){
//  if (now > endCue){
//  showCue = false;
//  }
//  if ( >){
//  }
//  if(cueDirection == 1){
//    drawRightArrow();
//   }
//  if(cueDirection == 2){
//    drawRightArrow();
//   }
//  }

if(drawLeftProbeBool){
  if (now > startLeftProbe && now < endLeftProbe){
   drawLeftProbe();
  }
  else {
  drawLeftProbe(false);
}
 }
  
  
  if(drawRightProbeBool){
  if (now > startRightProbe && now < endRightProbe){
   drawRightProbe();
  }
  else {
  drawRightProbe(false);
}
 }
  

  
}
