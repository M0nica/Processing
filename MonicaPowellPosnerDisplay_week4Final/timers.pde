void calculateTime(){

  startCue = millis() + 500;
 //  now = millis();
  // millis() = now;
  endCue = startCue + cueDuration;
  
  // println(startCue);
//   println(endCue);
//   println(now);
   
 // if( startCue <= now && now <= endCue){
  // if( startCue  <= millis() && millis() <= endCue){
//    println("this is now" + now);
    
  //cuedBool = true;
  //getCued();
 // println(cuedBool);
 
//  }
  
 // istBool = true;
  
  startIst = endCue;
  endIst = startIst + istDuration;
  
 //  if( startIst <= now && now <= endIst){
     //if( now <= endIst){
 // cuedBool = false;
//  istBool = true;
 // println(istBool);
//  }
 
  startProbe = endIst;
  endProbe = startProbe + probeDuration;
  
   //if( startProbe >= now && now >= endProbe){
     // if( !cuedBool && now <= endProbe){
      //if( startProbe <= now && now <= endProbe){
 // istBool = false;
  //probeBool = true;
  //getProbe();
  //println(probeBool);
 // }
  
  
  
}



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
    
// void arrowProbeTime(){
//  passedTime = millis() - savedTime;
//   
//  //if(passedTime <= totalTime){
//   showArrow = true;
//   //pickDirection();
// //  }
//   if(passedTime > totalTime) {
//     showArrow = false;
//      }
//    }
    

