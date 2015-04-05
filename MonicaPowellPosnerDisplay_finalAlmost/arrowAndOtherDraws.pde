
//display cross (in absence of arrows)
void fixationCross(){
  stroke(0);
  strokeWeight(3);
  line (centerX, centerY + 40, centerX, centerY-40);
  line(centerX - 40, centerY, centerX + 40, centerY);
 
}


void duckies(){
  
//image( flatDuck, centerX, centerY, 200, 200);

if (var3 == 1){
 image(realDuck, centerY + 25, centerX - 150, 120, 120);}
 
 if (var3 == 2){
  image(rubberDuck, centerY + 25, centerX - 150, 120, 120);
 }
}
//draw grey square inside of left black square
void drawLeftProbe(){
  

         noStroke();
         fill(130, 130, 130);
         rect(160, 210, 50, 50);
         drawRightProbeBool = false;
        
        
          
         
}

//draw grey square inside of right black square
void drawRightProbe(){
  

  noStroke();
    fill(130, 130, 130);
    rect(425, 210, 50, 50);
    //println("testing rightP");
    drawLeftProbeBool = false;


}

//show right reaction time
void rightRTMessage(){
pushStyle();
    fill(0, 0, 255);
    
    text("Right RT = "+ rightRT + " millisecs. ", 300, 75); 
    
 
    popStyle();
  
}

//show left reaction triime
void leftRTMessage(){
  fill(0, 0, 255);
 
    text("Left RT = "+ leftRT  + " millisecs. ", 300, 25); 
 
  
  
    popStyle();
  
}



//determine if right or left cue is displayed

void getCued(){
  
 
 
  cued = (int) random(0, 2);
  
  
  
   if(cued == 0){
   leftCued = true;
   //rightCued = false;
   }
  
   if (cued == 1){
   //leftCued = false;
   rightCued = true;
    }
 
 

}

void getProbe(){
  
  
   probe = (int) random(0, 2);
  
  if(probe == 0){
    drawLeftProbeBool = true;
   

   }
   
    if (probe == 1){

   drawRightProbeBool = true;
    }

}
