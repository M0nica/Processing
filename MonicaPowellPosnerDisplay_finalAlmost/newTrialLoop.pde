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
 
    
    if (59 <= numTrials && numTrials < totalTrials){
   output.println(totalTrials + "\t" + trialConditionOrder[numTrials] + "\t" + cueSide + "\t" + probeSide + "\t" + var3 + "\t " + leftRT + "\t" + rightRT);
      // output.println(numTrials + "\t" + trialConditionOrder[numTrials] + "\t" + cueSide + "\t" + probeSide + "\t" + var3 + "\t " + leftRT + "\t" + rightRT);
         numTrials++;
    //    output.println(numTrials + "\t" + trialConditionOrder[numTrials] + "\t" + cueSide + "\t" + probeSide + "\t" + var3);
        
     output.flush();  // Writes the remaining data to the file
  output.close();  // Finishes the file
  //exit();  // Stops the program
}
if (numTrials < 59){
  //cuedBool = true;
      condition = trialConditionOrder[numTrials];
      
      switch(trialConditionOrder[numTrials])
    {
       case 0:
      cuedBool = true;
        leftCued = true;
         cueSide = 0;
        drawLeftProbeBool = true;
        probeSide = 0;
        var3      = 0; //fixation cross
         newTrialTimer();
         numTrials++;
        break;
      
      case 1:
      cuedBool = true;
       leftCued = true;
        cueSide = 0;
        drawLeftProbeBool = true;
        probeSide = 0;
        var3      = 1; //realDuck
         newTrialTimer();
         numTrials++;
        break;
        
      case 2: 
      cuedBool = true;
       leftCued = true;
        cueSide = 0;
        drawLeftProbeBool = true;
        probeSide = 0;
        var3      = 2; //rubberDuck 
         newTrialTimer();
         numTrials++;
        break;
        
      case 3:
      cuedBool = true;
        leftCued = true;
         cueSide = 0;
         drawRightProbeBool = true;
          probeSide = 1;
        var3      = 0;
         newTrialTimer();
         numTrials++;
        break;
        
      case 4:
      cuedBool = true;
        leftCued = true;
        drawRightProbeBool = true;
         cueSide = 0;
         probeSide = 1;
        var3      = 1;
         newTrialTimer();
         numTrials++;
        break;
        
      case 5: 
      cuedBool = true;
       leftCued = true;
        cueSide = 0;
         drawRightProbeBool = true;
          probeSide = 1;
        var3      = 2;
         newTrialTimer();
         numTrials++;
        break;
        
      case 6:
      cuedBool = true;
        rightCued = true;
         cueSide = 1;
        drawLeftProbeBool = true;
        probeSide = 0;
        var3      = 0;
         newTrialTimer();
         numTrials++;
        break;
      
      case 7:
      cuedBool = true;
         rightCued = true;
          cueSide = 1;
        drawLeftProbeBool = true;
        probeSide = 0;
        var3      = 1;
         newTrialTimer();
         numTrials++;
        break;
        
      case 8: 
      cuedBool = true;
         rightCued = true;
          cueSide = 1;
        drawLeftProbeBool = true;
        probeSide = 0;
        var3      = 2;
         newTrialTimer();
         numTrials++;
        break;
        
      case 9:
      cuedBool = true;
       rightCued = true;
        cueSide = 1;
         drawRightProbeBool = true;
          probeSide = 1;
        var3      = 0;
         newTrialTimer();
         numTrials++;
        break;
     
      case 10: 
      cuedBool = true;
         rightCued = true;
          cueSide = 1;
        drawRightProbeBool = true;
         probeSide = 1;
        var3      = 1;
         newTrialTimer();
         numTrials++;
        break;
        
      case 11:
      cuedBool = true;
       rightCued = true;
        cueSide = 1;
       probeSide = 1;
         drawRightProbeBool = true;
        var3      = 2;
         newTrialTimer();
         numTrials++;
        break;
      
    }
      
       output.println(numTrials + "\t" + trialConditionOrder[numTrials] + "\t" + cueSide + "\t" + probeSide + "\t" + var3 + "\t " + leftRT + "\t" + rightRT);
       
      // output.println(numTrials + "\t" + trialConditionOrder[numTrials] + "\t" + cueSide + "\t" + probeSide + "\t" + var3);
       output.flush();  // Writes the remaining data to the file
 //newTrialTimer();
//      if (condition == 0) {
//        cuedBool = true;
//        drawLeftProbeBool = true;
//         drawRightProbeBool = false;
//        leftCued = true;
//          newTrialTimer();
//          numTrials++;
//     
//         //numTrials++;
//      }
//
//      if (condition == 1) {
//        cuedBool = true;
//        drawRightProbeBool = true;
//         drawLeftProbeBool = false;
//        leftCued = true;
//         newTrialTimer();
//         numTrials++;
//     
//        // numTrials++;
//      }
//
//
//      if (condition == 2) {
//        cuedBool = true;
//        drawRightProbeBool = true;
//         drawLeftProbeBool = false;
//        rightCued = true;
//         newTrialTimer();
//         numTrials++;
//     
//        // numTrials++;
//      }
//
//
//      if (condition == 3) {
//        cuedBool = true;
//        drawLeftProbeBool = true;
//         drawRightProbeBool = false;
//        rightCued = true;
//         newTrialTimer();
//         numTrials++;
//     
//     //    numTrials++;
//      }
}
      
//newTrialTimer();

}
