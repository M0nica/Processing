void keyPressed(){
  //keyPressed returns the key value
 char theKey = key;
 
 switch(theKey){
 case 's':
 currentSeperation = currentSeperation + 10;
 break;
 
 case 'a':
 currentSeperation = currentSeperation - 10;
 break;
 
 case 'y':
trialNumber = trialNumber + 1;
 break;
 
 case 'c':
 pickCueDirection();
 calculateCueTime();
 showCue = true;
 break;
 
 case 'q':
     aLeft = 150;
    aRight = 150;
    trialNumber = 1;
    break;
    
 case '1': 
 drawLeftProbeBool = 1;
 calculateLeftProbeTime();
 break;
 
  case '2': 
 drawRightProbeBool = 1;
 calculateRightProbeTime();
 break;
 
 }
}
