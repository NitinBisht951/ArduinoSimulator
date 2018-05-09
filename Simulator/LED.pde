class LED implements PinEventListener {
  int pin;
  boolean status;
  color colour;

  int brightLevel;

  LED(int pin, boolean status) {
    this.pin = pin;
    this.status = status;
    this.colour = color(YELLOW);
    setBrightLevel();
  }

  void draw(PVector p) {
    fill(colorLevel(brightLevel));
    noStroke();
    //strokeWeight(6);
    //stroke(colorLevel(DIM_COLOR_SCALE));
    rect(197, 73, 8, 6);
    println("inside Led draw");
  } 

  color colorLevel(int scale) {
    //extract the red, green and blue levels
    int r = (colour >> 16) & 0xFF;
    int g = (colour >> 8) & 0xFF;
    int b = (colour) & 0xFF;

    //scale them
    r = (r * scale/ 255) << 16;
    g = (g * scale/ 255) << 8;
    b = (b * scale/ 255);

    int c = (0xFF000000|r|g|b);            //0xFF000000 is for alpha (here it's 0 % transparent)
    //return the new color
    return c;
  }

  void setDigitalValue(int pinId, boolean value) {
    if (pinId == this.pin) {
      status = value;
      setBrightLevel();
    }
  }

  void toggle() {
    status = !status;
    setBrightLevel();
  }

  void setBrightLevel() {
    this.brightLevel = status ? BRIGHT_COLOR_SCALE : DIM_COLOR_SCALE;
  }
}
