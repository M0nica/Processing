void newTrialTimer(){
//trialNumber += 1;
   now = millis();
   savedTime = millis();
   calculateTime();
}

void startNewTrial(){

  
//numTrials++;



//generateTrialList();
    
//increment the trialNumber after all 4 conditions have been cycled through
 // if (numTrials == 5){
  // trialNumber += 1;
 //}
    
if (numTrials < 4){
  //cuedBool = true;
      condition = trialConditionOrder[numTrials];
      
      
 //newTrialTimer();
      if (condition == 0) {
        cuedBool = true;
        drawLeftProbeBool = true;
         drawRightProbeBool = false;
        leftCued = true;
          newTrialTimer();
          numTrials++;
     
         //numTrials++;
      }

      if (condition == 1) {
        cuedBool = true;
        drawRightProbeBool = true;
         drawLeftProbeBool = false;
        leftCued = true;
         newTrialTimer();
         numTrials++;
     
        // numTrials++;
      }


      if (condition == 2) {
        cuedBool = true;
        drawRightProbeBool = true;
         drawLeftProbeBool = false;
        rightCued = true;
         newTrialTimer();
         numTrials++;
     
        // numTrials++;
      }


      if (condition == 3) {
        cuedBool = true;
        drawLeftProbeBool = true;
         drawRightProbeBool = false;
        rightCued = true;
         newTrialTimer();
         numTrials++;
     
     //    numTrials++;
      }
}
      
//newTrialTimer();

}
