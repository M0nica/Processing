
//display cross (in absence of arrows)
void fixationCross(){
  stroke(0);
  strokeWeight(3);
  line (centerX, centerY + 40, centerX, centerY-40);
  line(centerX - 40, centerY, centerX + 40, centerY);
  showArrow = false; 
}

//pick direction of the arrow that replaces the fixation cross
void pickDirection() {

  arrowDirection = (int) random(0, 2);
  arrowProbeTime();

}

//draw left arrow
void drawLeftArrow() {
 
 
  line(centerX - 20, centerY, centerX + 20, centerY);
  line(centerX - 20, centerY, centerX, centerY - 10);
  line(centerX - 20, centerY, centerX, centerY + 10);
}

//draw right arrow
void drawRightArrow() {
  
    line(centerX + 20, centerY, centerX - 20, centerY);
    line(centerX + 20, centerY, centerX, centerY + 10);
    line(centerX + 20, centerY, centerX, centerY - 10);
  }

//draw grey square inside of left black square
void drawLeftProbe(){
  
  if (leftCued) {
         noStroke();
         fill(130, 130, 130);
         rect(160, 210, 50, 50);
          drawRightProbeBool = false;
          drawLeftProbeBool = true;
  }
          
        // println("testing leftP");
}

//draw grey square inside of right black square
void drawRightProbe(){
  
  if (rightCued) {
  noStroke();
    fill(130, 130, 130);
    rect(425, 210, 50, 50);
     drawLeftProbeBool = false;
      drawRightProbeBool = true;
    //println("testing rightP");
  }

}

//show right reaction time
void rightRTMessage(){
pushStyle();
    fill(0, 0, 255);
    text("Right RT = "+ rightRT + " millisecs. ", 300, 75); 
    popStyle();
  
}

//show left reaction time
void leftRTMessage(){
  fill(0, 0, 255);
    text("Left RT = "+ leftRT  + " millisecs. ", 300, 25); 
    popStyle();
  
}

//display late message if probe is hit after the trial runs

void setLateMessage() {
   passedTime = millis() - savedTime;
   
  //if(passedTime <= totalTime){
   lateMessage = true; 
   //pickDirection();
 //  }
   if(passedTime >= totalTime) {
     lateMessage = false;
      }
 
}

//determine if right or left cue is displayed

void getCued(){
//  now = millis();
//  
//  if (now > fixationStartTime && fixationStartTime < fixationEndTime){
//  }
 
  cued = (int) random(0, 2);
  
  //savedTime = savedTime + 5000;
//  passedTime = millis() - savedTime;
//  
// //if( passedTime <= totalCuedTime) {
//   
//   if (passedTime >= fixationEndTime && passedTime <= totalCuedTime){
  
 //  if(5000 <= passedTime && passedTime <= totalCuedTime) {
  
   if(cued == 0){
   leftCued = true;
    drawLeftProbeBool = true;
       drawRightProbeBool = false;
   rightCued = false;
   }
  
   if (cued == 1){
     drawLeftProbeBool = false;
   drawRightProbeBool = true;
   
   leftCued = false;
   rightCued = true;
    }
    
  // }
   
   
    if(passedTime >= totalCuedTime) {
      
      drawLeftProbeBool = false;
      drawRightProbeBool = false;
      
      leftCued = false;
      rightCued = false;
      
    }

}


void trialNumber(){
  //declare myFont as a PFont
  PFont myFont = createFont("Arial", 24);
  textFont(myFont);
  textAlign(LEFT, CENTER);
   //blue fill for the text
   fill(0, 0, 255);
  //text("string", x coordinate, y coordinate);

  text("Trial Number " + trialNumber +" : ", 15, 25);
}
