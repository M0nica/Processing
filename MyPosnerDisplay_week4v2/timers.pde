void leftProbeTime(){
  
  passedTime = millis() - savedTime;
   
  //if(passedTime <= totalTime){
     drawLeftProbeBool = true;
     leftRT = passedTime;
 //  }
   if(passedTime >= totalTime) {
     drawLeftProbeBool = false;
      
      }
    }
    
    
    
void rightProbeTime(){
  passedTime = millis() - savedTime;
   
  //if(passedTime <= totalTime){
     drawRightProbeBool = true;
     rightRT = passedTime;
 //  }
   if(passedTime >= totalTime) {
     drawRightProbeBool = false;
      }
    }
    
 void arrowProbeTime(){
  passedTime = millis() - savedTime;
   
  //if(passedTime <= totalTime){
   showArrow = true;
   //pickDirection();
 //  }
   if(passedTime > totalTime) {
     showArrow = false;
      }
    }
    

void fixationTime(){
  passedTime = millis() - savedTime;

//   
//  //if(passedTime <= totalTime){
//   showArrow = true;
//   //pickDirection();
// //  }
//   if(passedTime > totalTime) {
//     showArrow = false;
//      }
    }
    
    
   void cuedTime(){
  passedTime = millis() - savedTime;
   
  //if(passedTime <= totalTime){
   cuedBool = true;
   //pickDirection();
 //  }
   if(passedTime > totalTime) {
     cuedBool = false;
      }
    }

