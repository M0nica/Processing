void drawLeftArrow(){
line(centerX - 20, centerY, centerX + 20, centerY);
line(centerX - 20, centerY, centerX, centerY - 10);
line(centerX - 20, centerY, centerX, centerY + 10);
}

void drawLeftProbe() {}

void drawRightArrow(){}

void drawTrialNumber(){}

void  drawProbeLocations(){}

void drawLeftRT(){
pushStyle();
fill(0, 0, 255);
text("Left RT = "+ leftRT, 400, 50);
popStyle;
}

void drawRightRT(){
pushStyle();
fill(0, 0, 255);
text("Right RT = "+ RightRT, 400, 50);
popStyle;
}
