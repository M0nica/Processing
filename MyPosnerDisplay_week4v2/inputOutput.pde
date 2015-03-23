void keyPressed() {

//  if (key == '1') {
//    savedTime = millis();
//    drawLeftProbeBool = true;
//  }
//
//
//  if (key == '2') {
//    savedTime = millis();
//    drawRightProbeBool = true;
//  }

//  //move this outside of 
//  if (key == 'y' || key == 'Y') {
//    trialNumber += 1;
//  }


  if (key == 'b' || key == 'B') {
    // savedTime = millis();
    now = millis();
   //cuedBool = true;
    getCued();
  }

//  if (key == 'c' || key == 'C') {
//    savedTime = millis();
//    showArrow = true;
//    pickDirection();
//  }



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

  if (key ==  ' ') {
    if (drawLeftProbeBool) {
      timerMessageLeft = true;
      drawLeftProbeBool = false;
    }

    if (drawRightProbeBool) {
      timerMessageRight = true;
      drawRightProbeBool = false;
    }
  }
}


