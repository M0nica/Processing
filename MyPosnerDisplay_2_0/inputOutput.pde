void keyPressed() {
   int passedTime = millis() - startTime;

  int x = 150;
  
  setup();
 
  
  if (key == '1'){
        int startTime = millis();
        int passedTime = millis() - startTime;
         while (passedTime < totalTime){
         noStroke();
         fill(139, 139, 139);
         rect(295, 80, 50, 50);
         drawRightProbeBool = false;
         println("testing rightP");
    }
  }
  
  if (key == '2'){
    int passedTime = millis() - startTime;
         while (passedTime < totalTime){
          fill(139, 139, 139);
          rect(425, 210, 50, 50);
          drawLeftProbeBool = false;
               println("testing leftP");
         }
  }

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
    //left rectangle
    //     rect(x-40, 185, 100, 100);
    //rect(centerX - 20, centerY + 50, 100, 100);

    //outer right rectangle
    //    rect(x+270, 185, 100,100);
  }

  if (key == 'a' || key == 'A') {
    //move the squares closer together
    //if statement prevents squares from overlapping
   if (aRight > 125){
    aRight -= 20;
    aLeft +=  20;
    }

    //  setup();
    //left rectangle
    //     rect(x+40, 185, 100, 100);
    //rect(centerX - 20, centerY + 50, 100, 100);

    //outer right rectangle
    //     rect(x+310, 185, 100,100);
  }



  if (key == 'Q' || key == 'q') {
    setup();
    aLeft = 150;
    aRight = 150;
    trialNumber = 1;
  }
}

