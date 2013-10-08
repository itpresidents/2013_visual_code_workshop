int numPoints = 100;
float noiseCount = 0;

void setup() {
  size(600, 400);
  background(0);
  smooth();
  noStroke();
  
  ArrayList<PVector> points = new ArrayList<PVector>();
  
  for (int i = 0; i < numPoints; i++) {
    float x = random(width);
    float y = random(height);
    float n = noise(noiseCount) * 20;
    points.add(new PVector(x + n, y + n));
    noiseCount += 0.2;
  }
  
  for (int i = 0; i < 500; i++) {
    fill(int(random(50, 255)), 0, 0, 30);
    PVector loc1 = points.get(int(random(0, points.size())));
    PVector loc2 = points.get(int(random(0, points.size())));
    PVector loc3 = points.get(int(random(0, points.size())));
    triangle(loc1.x, loc1.y, loc2.x, loc2.y, loc3.x, loc3.y);
  }

}
