class QuadShape {
  float x;
  float y;
  PVector p1;
  PVector p2;
  PVector p3;
  PVector p4;
  float c;
  float a;
  
  QuadShape(float _x, float _y, PVector _p1, PVector _p2, PVector _p3, PVector _p4, float _c, float _a) {  
    x = _x;
    y = _y;
    p1 = _p1;
    p2 = _p2;
    p3 = _p3;
    p4 = _p4;
    c = _c;
    a = _a;
  }
  
  void display() {
    fill(10, 100, c, a);
    pushMatrix();
    translate(x, y);
    quad(p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y);
    popMatrix();
  }
}
