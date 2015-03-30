void newTrialTimer(){
//trialNumber += 1;
   now = millis();
   savedTime = millis();
   calculateTime();
}

void startNewTrial(){

numTrials++;



//generateTrialList();
    
//increment the trialNumber after all 4 conditions have been cycled through
  if (numTrials == 5){
   trialNumber += 1;
 }
    
if (numTrials < 4){
  cuedBool = true;
      condition = trialConditionOrder[numTrials];
     
      
 newTrialTimer();
      if (condition == 0) {
        cuedBool = true;
        drawLeftProbeBool = true;
        leftCued = true;
          //newTrialTimer();
        // numTrials++;
      }

      if (condition == 1) {
        cuedBool = true;
        drawRightProbeBool = true;
        leftCued = true;
         //  newTrialTimer();
        //  numTrials++;
      }


      if (condition == 2) {
        cuedBool = true;
        drawRightProbeBool = true;
        rightCued = true;
         // newTrialTimer();
        // numTrials++;
      }


      if (condition == 3) {
        cuedBool = true;
        drawLeftProbeBool = true;
        rightCued = true;
        //  newTrialTimer();
        // numTrials++;
      }
}
      
//newTrialTimer();

}
