//canvas size
size (640, 480);

//midpoint of canvas = (320, 240)


//left rectangle
rect(130, 185, 100, 100);



//outer right rectangle
rect(400, 185,100,100);

//inner right rectangle
noStroke();
fill(139, 139, 139);
rect(425, 210,50,50);

//cross
stroke(0);
strokeWeight(4);
line (320, 280, 320, 200);
line(280, 240, 360, 240);


