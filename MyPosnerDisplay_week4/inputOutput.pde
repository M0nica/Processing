void keyPressed() {
  
  if (key == '1'){
     savedTime = millis();

     drawLeftProbeBool = true;
 }
  
  
  if (key == '2'){
     savedTime = millis();

    drawRightProbeBool = true;
  }

//move this outside of 
  if (key == 'y' || key == 'Y') {
    trialNumber += 1;
  }

  if (key == 's' || key == 'S') {
    //move the squares further apart
    //if statements prevents squares from going off the screen
  if (aLeft > 40) {
    aRight += 20;
    aLeft -= 20;
  }
    
  }

  if (key == 'a' || key == 'A') {
    //move the squares closer together
    //if statement prevents squares from overlapping
   if (aRight > 125){
    aRight -= 20;
    aLeft +=  20;
    }
  }
  
  if (key == 'b' || key == 'B'){
    savedTime = millis();
    //cross = true;
    
     //  if (passedTime >= totalArrowTime){
   //passedTime =- 5000;
   getCued();
  // }

  }
  
  if (key == 'c' || key == 'C'){
     savedTime = millis();
     //showArrow = true;
    //pickDirection();
     
     // int passedTime = millis() - savedTime;
     //println(arrowDirection);
}



  if (key == 'Q' || key == 'q') {
    setup();
    aLeft = 150;
    aRight = 150;
    trialNumber = 1;
    timerMessageLeft = false;
    drawLeftProbeBool = false;
     timerMessageRight = false;
      drawRightProbeBool = false;
  }
  
  if (key ==  ' '){
    if (drawLeftProbeBool){
    timerMessageLeft = true;
    drawLeftProbeBool = false;
    }
    
    if (drawRightProbeBool){
      timerMessageRight = true;
      drawRightProbeBool = false;
     }
  
  }

}



