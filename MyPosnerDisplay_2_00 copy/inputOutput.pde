void keyPressed() {
  
  if (key == '1'){
    // int passedTime = millis() - savedTime;
     drawLeftProbeBool = true;
 }
  
  
  if (key == '2'){
  //  int passedTime = millis() - savedTime;
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
  
  if (key == 'c'){
    showArrow = true;
    pickDirection();
    int passedTime = millis() - savedTime;
    println(arrowDirection);
}



  if (key == 'Q' || key == 'q') {
    setup();
    aLeft = 150;
    aRight = 150;
    trialNumber = 1;
  }
  
  if (key ==  ' '){
    if (drawLeftProbeBool){
    pushStyle();
    fill(0, 0, 255);
    text("Left RT = "+ leftRT, 400, 25); 
    popStyle();
    
    }
    
    if (drawRightProbeBool){
    pushStyle();
    fill(0, 0, 255);
    text("Right RT = "+ rightRT, 400, 75); 
    popStyle();
    }
    
    //if ((drawLeftProbeBool == false) && (drawRightProbeBool == false)){
      // setLateMessage();
    //}
  
  }

}

