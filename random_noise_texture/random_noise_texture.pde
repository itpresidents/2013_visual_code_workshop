float noiseVal;
float noiseScale = 0.01;

void setup() {
  size(600,400);
  background(0);
  colorMode(HSB, 360, 100, 100);
  strokeWeight(2);
  
  //Loop through every pixel on the screen
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      noiseVal = noise(x * noiseScale, y * noiseScale);
      stroke(70, 100, 30 + noiseVal*60);
      point(x, y);
    }
  }
}
