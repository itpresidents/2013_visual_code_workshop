/**
 * ControlP5 ControlWindow
 * by andreas schlegel, 2012
 */

import controlP5.*;

ControlP5 cp5;
ColorPicker cp;

ControlWindow controlWindow;

public int H = 40;
public int S = 40;
public int B = 40;

void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);  

  cp5 = new ControlP5(this);

  controlWindow = cp5.addControlWindow("GUI Window", 100, 100, 200, 200)
    .hideCoordinates()
    .setBackground(color(40))
    ;
  
  cp5.addSlider("H")
    .setRange(0, 360)
    .setPosition(20, 20)
    .setSize(150, 15)
    .moveTo(controlWindow)
    ;

  cp5.addSlider("S")
    .setRange(0, 100)
    .setPosition(20, 40)
    .setSize(150, 15)
    .moveTo(controlWindow)
    ;

  cp5.addSlider("B")
    .setRange(0, 100)
    .setPosition(20, 60)
    .setSize(150, 15)
    .moveTo(controlWindow)
    ;
}


void draw() {
  background(H, S, B);
}
