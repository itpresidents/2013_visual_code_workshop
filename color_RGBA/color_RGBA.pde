int circleSize = 100;


void setup() {
  size(600, 400);
  background(255);
  
  //RGBA (Red, Green, Blue and Alpha Mode)
  //All ranging from values from 0-255
  noStroke();
  
  translate(width/2, height/2);
  //red
  fill(255, 0, 0, 255);
  ellipse(-circleSize/2, 0, circleSize, circleSize);

  //green
  fill(0, 255, 0, 100);
  ellipse(0, 0, circleSize, circleSize);
  
  //blue
  fill(0, 0, 255, 200);
  ellipse(circleSize/2, 0, circleSize, circleSize);
}
