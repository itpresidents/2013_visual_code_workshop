ArrayList<QuadShape> quadShape;

int maxRows = 20;
int maxCol = 20;
PVector point1, point2, point3, point4;

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  quadShape = new ArrayList();
  translate(-30, -30);
  for (int x = 0; x < width/maxCol; x++) {
    for (int y = 0; y < height/maxRows; y++) {
      point1 = new PVector(random(10, 100), random(10, 100));
      point2 = new PVector(random(10, 100), random(10, 100));
      point3 = new PVector(random(10, 100), random(10, 100));
      point4 = new PVector(random(10, 100), random(10, 100));
      int xLoc = x*width/maxCol;
      int yLoc = y*height/maxRows;
      fill(0, 100, 100);
      quadShape.add(new QuadShape(xLoc, yLoc, point1, point2, point3, point4, random(255), random(100, 200)));
    }
  }
  
  for (int i = 0; i < quadShape.size(); i++) {
      quadShape.get(i).display();
  }
}
