void pickDirection() {

  arrowDirection = (int) random(0, 2);

}

void drawLeftArrow() {
 
 
  line(centerX - 20, centerY, centerX + 20, centerY);
  line(centerX - 20, centerY, centerX, centerY - 10);
  line(centerX - 20, centerY, centerX, centerY + 10);
}

void drawRightArrow() {
  
    line(centerX + 20, centerY, centerX - 20, centerY);
    line(centerX + 20, centerY, centerX, centerY + 10);
    line(centerX + 20, centerY, centerX, centerY - 10);
  }

//void setLateMessage() {
  
  //lateMessage = true; 
 
//}
