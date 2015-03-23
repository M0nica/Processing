
//display cross (in absence of arrows)
void fixationCross(){
stroke(0);
  strokeWeight(3);
  line (centerX, centerY + 40, centerX, centerY-40);
  line(centerX - 40, centerY, centerX + 40, centerY);

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
         noStroke();
         fill(130, 130, 130);
         rect(160, 210, 50, 50);
        // println("testing leftP");
}

//draw grey square inside of right black square
void drawRightProbe(){
    fill(130, 130, 130);
    rect(425, 210, 50, 50);
    //println("testing rightP");

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
  
  cued = (int) random(0, 2);
  
  if(cued == 0){
  leftCued = true;
  rightCued = false;
  }
  
  if (cued == 1){
 rightCued = true;
 leftCued = false;
  }
  
}

void tooLate() {
 PFont mFont = createFont("Arial", 24);
  textFont(mFont);
  textAlign(LEFT, CENTER);
   //blue fill for the text
   fill(0, 0, 255);
  //text("string", x coordinate, y coordinate);
  text("Too late!", 35, 45);
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
