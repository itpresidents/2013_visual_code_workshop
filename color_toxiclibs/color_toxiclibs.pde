import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 1, 1, 1);
  noStroke();
  smooth();
  
  // to create colors from a color theory, first you must pick a base color
  TColor col = TColor.newHSV(.25, 1, 1);
  
  /* 
    Then you need to pick a strategy. These are the strategies you can use:

    AnalogousStrategy
    ComplementaryStrategy
    CompoundTheoryStrategy
    LeftSplitComplementaryStrategy
    MonochromeTheoryStrategy
    RightSplitComplementaryStrategy
    SingleComplementStrategy
    SplitComplementaryStrategy
    TetradTheoryStrategy
    TriadTheoryStrategy
   */

  ColorTheoryStrategy s = new AnalogousStrategy();
  
  // now get a list of colors from the base color and this strategy
  // this will only be a small list of colors (3 for analogous, etc)
  ColorList colors = ColorList.createUsingStrategy(s, col);
  
  // if you want to, you can create a lot more colors from this colorlist
  // here we're creating 50 colors by using a new ColorRange
  ColorList moreColors = new ColorRange(colors).getColors(null, 50, 0.05);
  
  // draw the 50 colors randomly on the screen
  translate(width/2-(25*10), height/2-(100/2));
  for (Iterator j = moreColors.iterator(); j.hasNext();) {
    for (int i = 0; i < 50; i++) {
      TColor c = (TColor) j.next();
      fill(c.hue(), c.saturation(), c.brightness());
      rect(i*10, 0, 10, 100);
    }
  }
}
