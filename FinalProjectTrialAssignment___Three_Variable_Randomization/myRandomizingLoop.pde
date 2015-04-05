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
        cueSide   = 0;
        probeSide = 0;
        var3      = 0;
        break;
      
      case 1:
        cueSide   = 0;
        probeSide = 0;
        var3      = 1;
        break;
        
      case 2: 
        cueSide   = 0;
        probeSide = 0;
        var3      = 2;
        break;
        
      case 3:
        cueSide   = 0;
        probeSide = 1;
        var3      = 0;
        break;
        
      case 4:
        cueSide   = 0;
        probeSide = 1;
        var3      = 1;
        break;
        
      case 5: 
        cueSide   = 0;
        probeSide = 1;
        var3      = 2;
        break;
        
      case 6:
        cueSide   = 1;
        probeSide = 0;
        var3      = 0;
        break;
      
      case 7:
        cueSide   = 1;
        probeSide = 0;
        var3      = 1;
        break;
        
      case 8: 
        cueSide   = 1;
        probeSide = 0;
        var3      = 2;
        break;
        
      case 9:
        cueSide   = 1;
        probeSide = 1;
        var3      = 0;
        break;
     
      case 10: 
        cueSide   = 1;
        probeSide = 1;
        var3      = 1;
        break;
        
      case 11:
        cueSide   = 1;
        probeSide = 1;
        var3      = 2;
        break;
      
        
    }
    //println("Trial #" + numTrials + " Condition: " + trialConditionOrder[numTrials]);
    println(numTrials + "\t" + trialConditionOrder[numTrials] + "\t" + cueSide + "\t" + probeSide + "\t" + var3);
  }
  println();
}



