void generateTrialList()
{
  int numTrialsPerCondition = 1;
  int numConditions = 4;
  int totalTrials = numConditions * numTrialsPerCondition;
  
  
  int[] trialConditions = new int[4];
  
  int randomPick = 0;
  
  trialConditions[0] = numTrialsPerCondition; //left cue - left probe
  trialConditions[1] = numTrialsPerCondition; //left cue - right probe
  trialConditions[2] = numTrialsPerCondition; //right cue - right probe
  trialConditions[3] = numTrialsPerCondition; //right cue - left probe
  
  textSize(32);
  
  for (int numTrials = 0; numTrials < totalTrials; numTrials++ )
  {
    randomPick = int(random(0, numConditions));
    
    while (trialConditions[randomPick] == 0)
    {
      randomPick = int(random(0, numConditions));
    }
    
    trialConditions[randomPick]--;
  
    if (randomPick == 0)
    {
     // text("0", 20 + numTrials * 30, 200);
      //numTrials++;
      // probe = 1;
      //cued = 0;
    }
    
    if (randomPick == 1)
    {
     // text("1", 20 + numTrials * 30, 200);
     // numTrials++;
      //probe = 1;
      //cued = 1;
    }
    
    if (randomPick == 2)
    {
      //text("2", 20 + numTrials * 30, 200);
      //numTrials++;
     
    }
     
    if (randomPick == 3)
    {
      //text("3", 20 + numTrials * 30, 200);
      //numTrials++;
     
    }
    trialConditionOrder[numTrials] = randomPick; 
  }
  for (int numTrials = 0; numTrials < totalTrials; numTrials++)
  {
    println("Trial #" + trialConditionOrder[numTrials] + ": " + trialConditionOrder[numTrials] + " --> " + "trialConditionOrder[" + numTrials + "] = " + trialConditionOrder[numTrials]);
  }
  println();
}
