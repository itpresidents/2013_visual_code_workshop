int rectSize = 100;

void setup() {
  size(600, 400);
  background(255);
  
  //RGB (Red, Green and Blue Mode)
  //All ranging between values of 0-255, 0 is black and 255 is white
  rectMode(CENTER);
  
  translate(width/2, height/2);
  //red
  fill(255);
  stroke(0);
  rect(-rectSize - 20, 0, rectSize, rectSize);

  //green
  noStroke();
  fill(100);
  rect(0, 0, rectSize, rectSize);
  
  //blue
  fill(0);
  rect(rectSize + 20, 0, rectSize, rectSize);
}
