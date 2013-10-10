ArrayList<Circle> circles;

int maxRows = 20;
int maxCol = 20;

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  circles = new ArrayList();
  
  for (int x = 0; x < width/maxCol; x++) {
    for (int y = 0; y < height/maxRows; y++) {
      circles.add(new Circle(x*(width/maxCol), y*(height/maxRows), random(10, 40), random(255), random(100, 200)));
    }
  }
  
  translate(15, 10);
  for (int i = 0; i < circles.size(); i++) {
      circles.get(i).display();
  }
}
