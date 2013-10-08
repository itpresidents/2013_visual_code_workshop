Circle circles;

void setup() {
  size(600, 400);
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  for (int i = 0; i < 200; i++) {
    circles = new Circle(random(width), random(height), random(10, 300), random(255), random(100, 200));
    circles.display();
  }
}

