
//display cross (in absence of arrows)
void fixationCross(){
  stroke(0);
  strokeWeight(3);
  line (centerX, centerY + 40, centerX, centerY-40);
  line(centerX - 40, centerY, centerX + 40, centerY);
 
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



//determine if right or left cue is displayed

void getCued(){
  
 
 
  cued = (int) random(0, 2);
  
  //savedTime = savedTime + 5000;
  //passedTime = millis() - savedTime;
  
 //if( passedTime <= totalCuedTime) {
  
 //  if(5000 <= passedTime && passedTime <= totalCuedTime) {
  
   if(cued == 0){
   leftCued = true;
   rightCued = false;
   }
  
   if (cued == 1){
   leftCued = false;
   rightCued = true;
    }
 
 
    
   //}
   
   
    if(passedTime >= totalCuedTime) {
      
      drawLeftProbeBool = false;
      drawRightProbeBool = false;
      
      leftCued = false;
      rightCued = false;
      
    }
  
}

void getProbe(){
  
  if(cued == 0){
    drawLeftProbeBool = true;
    drawRightProbeBool = false;
   }
   
    if (cued == 1){
   drawLeftProbeBool = false;
   drawRightProbeBool = true;
    }

}
