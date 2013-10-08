import processing.pdf.*;

void setup() {
  size(600, 400);
  beginRecord(PDF, "grab" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + "_" + millis() + ".pdf"); 
  background(255);
  noStroke();
  background(255);
  for (int i = 0; i < 200; i++) {
    circle(random(width), random(height), random(10, 300), random(255), random(100, 200));
  }
  endRecord();
}

void circle(float x, float y, float d, float c, float a) {  
  fill(10, 100, c, a);
  ellipse(x, y, d, d);
}
