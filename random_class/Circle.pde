class Circle {
  float x;
  float y;
  float d;
  float c;
  float a;
  
  Circle(float _x, float _y, float _d, float _c, float _a) {  
    x = _x;
    y = _y;
    d = _d;
    c = _c;
    a = _a;
  }
  
  void display() {
    fill(10, 100, c, a);
    ellipse(x, y, d, d);
  }
}
