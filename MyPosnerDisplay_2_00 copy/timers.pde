void leftProbeTime(){
  passedTime = millis() - savedTime;
   
  //if(passedTime <= totalTime){
     drawLeftProbeBool = true;
 //  }
   if(passedTime >= totalTime) {
     drawLeftProbeBool = false;
      leftRT = passedTime;
      }
    }
    
    
    
void rightProbeTime(){
  passedTime = millis() - savedTime;
   
  //if(passedTime <= totalTime){
     drawRightProbeBool = true;
 //  }
   if(passedTime >= totalTime) {
     drawRightProbeBool = false;
      leftRT = passedTime;
      }
    }
