void generateTrialList(){
 int numTrialsPerCondition = 3;
 
//myCondition= [1, 2, 3];
myCondition [0] = numTrialsPerCondition;
myCondition [1] =  numTrialsPerCondition;
myCondition [2] =  numTrialsPerCondition;
}

for (int numTrials = 0, numTrials < numTrialsPerCondition * 3, numTrials++){
randomPick = int(random(0,3));

while  (myCondition[randomPick] == 0) {
      randomPick = int (random(0,3));
      println(randomPick);
  }
  
  trialConditions[randomPick]--;
 // numTrials ++;
}
