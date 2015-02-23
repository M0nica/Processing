PFont myFont;

int centerX; 
int centerY; 

int currentSeparation;
int originalSeparation;

int trialNumber;

//*****************************************************************************************************

void setup()
{
 
  size(640, 480);                //set up window
  
  //        CALCULATE CENTER OF DISPLAY
  //****************************************************************************
   
   centerX = width/2;             //finding the horizontal center line
   centerY = height/2;            //finding the vertical center line
   
   originalSeparation = 130;
   currentSeparation = 130;
   
   trialNumber = 1;


   
  //****************************************************************************/
 
  //        CREATE FONT
  //****************************************************************************
   
   myFont = createFont("Arial", 24);
   textFont(myFont);
   textAlign(LEFT, CENTER);

   
   //****************************************************************************/
  
}
//*****************************************************************************************************

void keyPressed()
{
  
  if (key == 's')
  {
    currentSeparation = currentSeparation + 10;
  }
  
  if (key == 'a')
  {
    currentSeparation = currentSeparation - 10;
  }
  
  if (key == 'y')
  {
    trialNumber = trialNumber + 1;
  }
  
  if (key == 'q')
  {
    trialNumber = 1;
    currentSeparation = originalSeparation;
  }
 
}

//*****************************************************************************************************

//************************mouse press function which only works for one frame
/***********************************************************
void mousePress()
{
   fill(225, 225, 225);
   rect(centerX + currentSeparation, centerY, 30, 30);
   fill(255, 255, 255);
}
************************************************************/

void draw()
{
  //        DRAW LINES AND RECTANGLES WITH VARIABLES - COORDINATES FROM WINDOW CENTER AND RECT CENTER
  //****************************************************************************
   background(200);
   rectMode(CENTER);
   
   line(centerX - 20, centerY, centerX + 20, centerY);
   line(centerX, centerY - 20, centerX, centerY + 20);
   
   drawProbeLocations();
   
   //pushStyle();
     fill(0, 0, 255);
     text("Trial Number: " + trialNumber, 15, 25);
     fill(255, 255, 255);
   //popStyle();
   //fill(255, 255, 255);
   
  //****************************************************************************/
  
}





