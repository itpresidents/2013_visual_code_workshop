float a = 10;
float b = 20;
float c = 30;
float d = 40;

void setup() {
  size(600, 400);
  smooth();
  
  for (int y = 0; y <= height; y += c) {
    for (int x = 0; x <= width; x += d) {
      pushMatrix();
      // Mondulo divides two numbers and returns the remainer
      if ((y/c) % 2 == 0) translate(x - b, y);
      else translate(x, y);
      //translate(x, y);
      
      fill(5, 133, 170);
      quad(0, -c, b, -b, 0, -a, -b, -b);
      fill(1, 40, 76);
      quad(-b, -b, 0, -a, 0, a, -b, 0);
      fill(155);
      quad(b, -b, b, 0, 0, a, 0, -a);
      
      popMatrix();
      
    }
  }
}
