void setup() {
  size(600, 400);
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  for (int i = 0; i < 200; i++) {
    circle(random(width), random(height), random(10, 300), random(255), random(100, 200));
  }
}

void circle(float x, float y, float d, float c, float a) {  
  fill(200, 100, c, a);
  ellipse(x, y, d, d);
}
