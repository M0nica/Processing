int numTrialsPerCondition = 5;
int numConditions = 12;
int totalTrials = numConditions * numTrialsPerCondition;

int[] trialConditionOrder = new int[totalTrials];

int cueSide;
int probeSide;
int var3;

void setup()
{
  background(200);
  size(500, 500);
}

void draw()
{
  
}

void keyPressed()
{
  background(200);
  generateTrialList();
}
