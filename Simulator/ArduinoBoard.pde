class ArduinoBoard {
  PImage boardImg;
  private PVector topLeftPos = new PVector(10, 10);
  ArduinoSketch myArduinoSketch;

  private ArrayList<PinEventListener> pinEventListenersList ;

  //Button reset;
  //AnalogPin[] analogPin;
  //DigitalPin[] digitalPin;

  ArduinoBoard() {
    boardImg = loadImage(uno[0]);
    myArduinoSketch = new ArduinoSketch();
    pinEventListenersList = new ArrayList<PinEventListener>();
    reset();
  }

  void sketchSetup() {
    myArduinoSketch.setup();
  }

  public void addPinEventListener(PinEventListener newListener) {
    pinEventListenersList.add(newListener);
  }

  void draw() {
    //draw the Arduino Board and show the status of Pins
    //imageMode(CENTER);
    image(boardImg, topLeftPos.x, topLeftPos.y, 300*1.38, 300);
  }

  void sketchRun() {
    //run the code in ArduinoCode
    myArduinoSketch.loop();
  }

  void reset() {
    //resets the Arduino default settings
  }

  void pause() {
    //pause the code
  }

  void exit() {
    //exit the code
  }

  void pinMode(int pin, String mode) {
  }

  void digitalWrite(int pin, boolean value) {
    for (PinEventListener p : pinEventListenersList)
      p.setDigitalValue(pin, value);
  }

  void digitalRead(int pin) {
  }

  void analogRead(int pin) {
  }  

  void analogWrite(int pin, int value) {
  }
}
