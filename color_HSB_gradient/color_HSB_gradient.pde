void setup() {
  size(400,400);
  background(255);
  noStroke();
  colorMode(HSB, width);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < width; j++) {
      strokeWeight(2);
      stroke(i, j, width);
      point(i, j);
    }
  }
}
