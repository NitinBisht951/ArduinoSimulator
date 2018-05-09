
ArduinoBoard myArduino;
LED myLed;
String[] uno = {"uno.png", "Arduino.png", "arduino-uno.jpg", "ArduinoUNO_bb.png"};

void setup() {
  size(600, 500);
  println(width, height);
  myArduino = new ArduinoBoard();
  myLed = new LED(13, HIGH);
  myArduino.addPinEventListener(myLed);

  // setup() function of the arduino sketch
  myArduino.sketchSetup();

  //run arduino code in a different thread
  thread("arduinoRun");
}

void draw() {
  background(0);
  myArduino.draw();
  myLed.draw(new PVector(width/2, height/3));
}

void arduinoRun() {
  while (true) 
    myArduino.sketchRun();
}
