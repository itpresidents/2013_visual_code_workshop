void setup() {
  size(600, 400);
  background(255);
  noStroke();
}

void draw() {
  float d = random(10, 100);
  fill(random(255), 0, 0, random(255));
  ellipse(mouseX, mouseY, d, d);
}
