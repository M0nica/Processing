//canvas size
//640px wide by 480px tall
//this is a commonly used dimension
size (640, 480);

//declare variables, after setting canvas size
int centerX = width/2;
int centerY = height/2;
println(centerX);
println(centerY);

//midpoint of canvas = (320, 240)


//left rectangle
rect(130, 185, 100, 100);
//rect(centerX - 20, centerY + 50, 100, 100);


//outer right rectangle
rect(400, 185,100,100);

//inner right rectangle
noStroke();
fill(139, 139, 139);
rect(425, 210,50,50);

//cross using a variable to position relative to center
stroke(0);
strokeWeight(4);
line (centerX, centerY + 40, centerX, centerY-40);
line(centerX - 40, centerY, centerX + 40, centerY);

//declare myFont as a PFont
PFont myFont = createFont("Arial", 24);
textFont(myFont);
textAlign(LEFT, CENTER);
fill(0, 0, 255);
//text("string", x coordinate, y coordinate);
text("Trial Number 1: ", 15, 25);



