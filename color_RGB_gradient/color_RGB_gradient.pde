void setup() {
  size(400,400);
  background(255);
  noStroke();
  colorMode(RGB, width);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      strokeWeight(2);
      stroke(i, j, 0);
      point(i, j);
    }
  }
}
