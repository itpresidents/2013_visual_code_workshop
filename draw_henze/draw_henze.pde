int circleResolution = 15;
float circleRadius = 100;
float displaceAmount = 2;
float[] x = new float[circleResolution];
float[] y = new float[circleResolution];

void setup() {
  size(600, 400);
  smooth();
  colorMode(HSB, 360, 100, 100);
  
  //Set up drawing
  float angle = radians(360/float(circleResolution));
  for (int i = 0; i < circleResolution; i++) {
    x[i] = cos(angle*i) * circleRadius;
    y[i] = sin(angle*i) * circleRadius;
  }
  
  stroke(0, 25);
  background(255);
}

void draw() {
  // Calculate new points every frame
  for(int i = 0; i < circleResolution; i++) {
    x[i] += random(-displaceAmount, displaceAmount);
    y[i] += random(-displaceAmount, displaceAmount);
  }
  strokeWeight(0.75);
  fill(10, 90, 80, random(5));
  
  translate(mouseX, mouseY);
  
  beginShape();
  // Beginning vertex point
  curveVertex(x[circleResolution-1], y[circleResolution-1]);
  // The rest of the vertex points
  for (int i = 0; i < circleResolution; i++) {
    curveVertex(x[i], y[i]);
  }
  // Two end points
  curveVertex(x[0], y[0]);
  curveVertex(x[1], y[1]);
  endShape();
}
