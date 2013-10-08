import processing.pdf.*;

boolean savePDF = false;
boolean next = true;
void setup() {
  size(600, 400);
  background(255);
}

void draw() {  
  if (savePDF) {
    beginRecord(PDF, "frame-####.pdf"); 
  }
  noStroke();
  if (next == true) {
    background(255);
    circle();
    next = false;
  }
  
  if (savePDF) {
    endRecord();
    savePDF = false;
  }
}

void keyPressed() {
  if (key == 'p') {
    savePDF = true;
    next = true;
  }
}

void circle() {
  for (int i = 0; i < 200; i++) {
    float d = random(100, 200);
    fill(255, 0, 0, random(10, 50));
    ellipse(random(width), random(height), d,d);
  }
}

