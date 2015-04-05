void generateTrialList()
{
 
  /* 



TrialCondition    CueSide      Probe Side     Variable3
0                 0            0              0 
1                 0            0              1
2                 0            0              2
3                 0            1              0
4                 0            1              1
5                 0            1              2
6                 1            0              0
7                 1            0              1
8                 1            0              2
9                 1            1              0
10                1            1              1
11                1            1              2

*/

  
  
  int[] trialConditions = new int[numConditions];
  
  int num;
  
  int randomPick = 0;
  
  for (num = 0; num < numConditions; num++)
  {
    trialConditions[num] = numTrialsPerCondition;
  }

  
  textSize(32);
  
//***********************************************************************************************************************  
  
  for (int numTrials = 0; numTrials < totalTrials; numTrials++ )
  {
    randomPick = int(random(0, numConditions));
    
    while (trialConditions[randomPick] == 0)
    {
      randomPick = int(random(0, numConditions));
    }
    
    trialConditions[randomPick]--;

    trialConditionOrder[numTrials] = randomPick; 
  }
  
//***********************************************************************************************************************
  
  
  
  
  
  
  println("Trial Number" + "\t" + "Trial Condition" + "\t"+ "Cue Side" + "\t" + "Probe Side" + "\t" + "Variable 3");
  for (int numTrials = 0; numTrials < totalTrials; numTrials++)
  {
    
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
    
    if (rightCued){
    cuedBool = true;
    cueSide = 1;
    }
    if(leftCued){
    cueSide = 0;
    }
    
    
    if (drawRightProbeBool){
    probeSide = 1;
    }
    
    if (drawLeftProbeBool){
    probeSide = 0;
    }
    
    //println("Trial #" + numTrials + " Condition: " + trialConditionOrder[numTrials]);
    println(numTrials + "\t" + trialConditionOrder[numTrials] + "\t" + cueSide + "\t" + probeSide + "\t" + var3);
  }
  println();
}










