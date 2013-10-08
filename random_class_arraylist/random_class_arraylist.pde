ArrayList<Circle> circles;

void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  circles = new ArrayList();
  for (int i = 0; i < 50; i++) {
    circles.add(new Circle(random(width), random(height), random(10, 300), random(255), random(100, 200)));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < circles.size(); i++) {
    circles.get(i).display();
  }  
}

void mousePressed() {
  circles.add(new Circle(mouseX, mouseY, random(10, 300), random(255), random(100, 200)));
}
